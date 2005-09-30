--ECE395 GPU:
--Top Level HDL
--=====================================================
--Designed by:
--Zuofu Cheng
--James Cavanaugh
--Eric Sands
--
--of the University of Illinois at Urbana Champaign
--under the direction of Dr. Lippold Haken
--====================================================
--
--Heavily based off of HDL examples provided by XESS Corporation
--www.xess.com
--
--Based in part on Doug Hodson's work which in turn
--was based off of the XSOC from Gray Research LLC.
--										
--
--release under the GNU General Public License
--and kindly hosted by www.opencores.org


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.common.all;
use WORK.xsasdram.all;
use WORK.sdram.all;
use WORK.vga_pckg.all;
use WORK.blitter_pckg.all;

entity gpuChip is
	
	generic(
      FREQ            :       natural                       := 50_000;  -- frequency of operation in KHz
      PIPE_EN         :       boolean                       := true;  -- enable fast, pipelined SDRAM operation
      MULTIPLE_ACTIVE_ROWS:   boolean 								:= true;  -- if true, allow an active row in each bank
		CLK_DIV         :       real								   := 1.0;  -- SDRAM Clock div
		NROWS           :       natural                       := 4096;  -- number of rows in the SDRAM
      NCOLS           :       natural                       := 512;  -- number of columns in each SDRAM row
   	SADDR_WIDTH 	 : 		natural								:= 12;
	  	DATA_WIDTH      :       natural 								:= 16;  -- SDRAM databus width
		ADDR_WIDTH      :       natural 								:= 23;  -- host-side address width
	 	VGA_CLK_DIV     :       natural 								:= 4;  -- pixel clock = FREQ / CLK_DIV
   	PIXEL_WIDTH     :       natural 								:= 8;  -- width of a pixel in memory
    	NUM_RGB_BITS    :       natural 								:= 2;  -- #bits in each R,G,B component of a pixel
    	PIXELS_PER_LINE :       natural 								:= 320; -- width of image in pixels
    	LINES_PER_FRAME :       natural 								:= 240;  -- height of image in scanlines
    	FIT_TO_SCREEN   :       boolean 								:= true;  -- adapt video timing to fit image width x 		 
	   PORT_TIME_SLOTS :       std_logic_vector(15 downto 0) := "0000111111111111"
   );
	
	port(
		pin_clkin   : in std_logic;       -- main clock input from external clock source
		pin_ce_n    : out std_logic;      -- Flash RAM chip-enable
		pin_pushbtn : in std_logic;
	
		-- vga port connections
		pin_red     : out std_logic_vector(1 downto 0);
		pin_green   : out std_logic_vector(1 downto 0);
		pin_blue    : out std_logic_vector(1 downto 0);
		pin_hsync_n : out std_logic;
		pin_vsync_n : out std_logic;

		-- SDRAM pin connections
		pin_sclkfb : in std_logic;                   -- feedback SDRAM clock with PCB delays
		pin_sclk   : out std_logic;                  -- clock to SDRAM
		pin_cke    : out std_logic;                  -- SDRAM clock-enable
		pin_cs_n   : out std_logic;                  -- SDRAM chip-select
		pin_ras_n  : out std_logic;                  -- SDRAM RAS
		pin_cas_n  : out std_logic;                  -- SDRAM CAS
		pin_we_n   : out std_logic;                  -- SDRAM write-enable
		pin_ba     : out std_logic_vector( 1 downto 0);      -- SDRAM bank-address
		pin_sAddr  : out std_logic_vector(11 downto 0);      -- SDRAM address bus
		pin_sData  : inout std_logic_vector (16-1 downto 0);  -- data bus to SDRAM
		pin_dqmh   : out std_logic;                  -- SDRAM DQMH
		pin_dqml   : out std_logic                   -- SDRAM DQML			
	);
end gpuChip;

architecture arch of gpuChip is

	constant YES:	std_logic := '1';
	constant NO:	std_logic := '0';
	constant HI:	std_logic := '1';
	constant LO:	std_logic := '0';

	type gpuState is (
	 INIT,                           -- init
    INIT_BKG,
	 DRAW_BKG,
	 BLIT_REST,                           
    INIT_SPRITE,                       
	 DRAW_SPRITE,								
	 UPDATE  
	 );
	
	signal state_r, state_x : gpuState;  -- state register and next state

	--registers
	signal plane0_dest_r, plane0_dest_x 		: std_logic_vector (ADDR_WIDTH - 1 downto 0);  -- sprite dest register
	signal plane0_ypos_r, plane0_ypos_x			: std_logic_vector (11 downto 0);
	signal delay_r, delay_x 						: std_logic_vector (19 downto 0); 				  --20 bit counter for delay
	signal source_address_x, source_address_r : std_logic_vector (ADDR_WIDTH -1 downto 0);
	signal target_address_x, target_address_r : std_logic_vector (ADDR_WIDTH -1 downto 0);
	signal line_size_x, line_size_r 				: std_logic_vector (11 downto 0);
	signal source_lines_x, source_lines_r 		: std_logic_vector (15 downto 0);
	signal alphaOp_x, alphaOp_r 					: std_logic;
	signal front_buffer_x, front_buffer_r		: std_logic;

	--internal signals
   signal sysReset 										: std_logic;  -- system reset
	signal blit_reset										: std_logic;
	signal reset_blitter									: std_logic;

	-- Blitter signals
  	signal blit_begin										: std_logic;
  	signal source_address				            : std_logic_vector(ADDR_WIDTH-1 downto 0);
	signal source_lines									: std_logic_vector (15 downto 0);
	signal line_size										: std_logic_vector (11 downto 0);
	signal target_address								: std_logic_vector(ADDR_WIDTH-1 downto 0);
	signal blit_done									 	: std_logic;	
	signal alphaOp											: std_logic;
	signal front_buffer									: std_logic;

	 --Application Side Signals for the DualPort Controller
  	signal rst_i											: std_logic; 	--tied reset signal
   signal opBegun0, opBegun1                	   : std_logic;  -- read/write operation started indicator
   signal earlyOpBegun0, earlyOpBegun1          : std_logic;  -- read/write operation started indicator
   signal rdPending0, rdPending1					   : std_logic;  -- read operation pending in SDRAM pipeline indicator
   signal done0, done1		                     : std_logic;  -- read/write operation complete indicator
   signal rdDone0, rdDone1			               : std_logic;  -- read operation complete indicator
   signal hAddr0, hAddr1		       	         : std_logic_vector(ADDR_WIDTH-1 downto 0);  -- host-side address bus
   signal hDIn0, hDIn1			                  : std_logic_vector(DATA_WIDTH-1 downto 0);  -- host-side data to SDRAM
   signal hDOut0, hDOut1						      : std_logic_vector(DATA_WIDTH-1 downto 0);  -- host-side data from SDRAM
   signal rd0, rd1		                        : std_logic;  -- host-side read control signal
   signal wr0, wr1                              : std_logic;  -- host-side write control signal

  	-- SDRAM host side signals
	signal sdram_bufclk 									: std_logic;    -- buffered input (non-DLL) clock
	signal sdram_clk1x  									: std_logic;    -- internal master clock signal
	signal sdram_clk2x  									: std_logic;		-- doubled clock
	signal sdram_lock  									: std_logic;    -- SDRAM clock DLL lock indicator
	signal sdram_rst    									: std_logic;    -- internal reset signal
	signal sdram_rd     									: std_logic;    -- host-side read control signal
	signal sdram_wr     									: std_logic;    -- host-side write control signal
	signal sdram_earlyOpBegun							: std_logic;
	signal sdram_OpBegun									: std_logic;
	signal sdram_rdPending								: std_logic;
	signal sdram_done   									: std_logic;    -- SDRAM operation complete indicator
	signal sdram_rdDone 									: std_logic;		-- host-side read completed signal
	signal sdram_hAddr  									: std_logic_vector(ADDR_WIDTH -1 downto 0);  -- host address bus
	signal sdram_hDIn   									: std_logic_vector(DATA_WIDTH -1 downto 0);	-- host-side data to SDRAM
	signal sdram_hDOut  									: std_logic_vector(DATA_WIDTH -1 downto 0);	-- host-side data from SDRAM
	signal sdram_status 									: std_logic_vector(3 downto 0);  -- SDRAM controller status


	-- VGA related signals
	signal eof         									: std_logic;      -- end-of-frame signal from VGA controller
   signal full												: std_logic;      -- indicates when the VGA pixel buffer is full
   signal vga_address      							: unsigned(ADDR_WIDTH-1 downto 0);  -- SDRAM address counter 
	signal pixels											: std_logic_vector(DATA_WIDTH-1 downto 0);
	signal rst_n											: std_logic;		--VGA reset (active low)
	signal drawframe										: std_logic;  -- flag to indicate whether we are drawing current frame	

--------------------------------------------------------------------------------------------------------------
-- Beginning of Submodules
-- All instances of submodules and signals associated with them
-- are declared within. Signals not directly associated with
-- submodules are declared elsewhere.
--  
--------------------------------------------------------------------------------------------------------------

begin
 ------------------------------------------------------------------------
 -- Instantiate the dualport module
 ------------------------------------------------------------------------
  u1 : dualport
    generic map(
      PIPE_EN         => PIPE_EN,
      PORT_TIME_SLOTS => PORT_TIME_SLOTS,
      DATA_WIDTH      => DATA_WIDTH,
      HADDR_WIDTH     => ADDR_WIDTH
      )
    port map(
      clk             => sdram_clk1x,

		-- Memory Port 0 connections
		rst0            => rst_i,
      rd0             => rd0,
      wr0             => wr0,
      rdPending0      => rdPending0,
      opBegun0        => opBegun0,
      earlyOpBegun0   => earlyOpBegun0,
      rdDone0         => rdDone0,
      done0           => done0,
      hAddr0          => hAddr0,
      hDIn0           => hDIn0,
      hDOut0          => hDOut0,
      status0         => open,
		
		-- Memory Port 1 connections
      rst1            => rst_i,
      rd1             => rd1,
      wr1             => wr1,
      rdPending1      => rdPending1,
      opBegun1        => opBegun1,
      earlyOpBegun1   => earlyOpBegun1,
      rdDone1         => rdDone1,
      done1           => done1,
      hAddr1          => hAddr1,
      hDIn1           => hDIn1,
      hDOut1          => hDOut1,
      status1         => open,
      
		-- connections to the SDRAM controller
      rst             => sdram_rst,
      rd              => sdram_rd,
      wr              => sdram_wr,
      rdPending       => sdram_rdPending,
      opBegun         => sdram_opBegun,
      earlyOpBegun    => sdram_earlyOpBegun,
      rdDone          => sdram_rdDone,
      done            => sdram_done,
      hAddr           => sdram_hAddr,
      hDIn            => sdram_hDIn,
      hDOut           => sdram_hDOut,
      status          => sdram_status
      );

 
  ------------------------------------------------------------------------
  -- Instantiate the SDRAM controller that connects to the dualport
  -- module and interfaces to the external SDRAM chip.
  ------------------------------------------------------------------------
  u2 : xsaSDRAMCntl
    generic map(
      FREQ       				  => FREQ,
      CLK_DIV    				  => CLK_DIV,
      PIPE_EN     		     => PIPE_EN,
      MULTIPLE_ACTIVE_ROWS   => MULTIPLE_ACTIVE_ROWS,
		DATA_WIDTH  			  => DATA_WIDTH,
      NROWS        			  => NROWS,
      NCOLS        			  => NCOLS,
      HADDR_WIDTH  			  => ADDR_WIDTH,
      SADDR_WIDTH  			  => SADDR_WIDTH
      )
    port map(
	 	--Dual Port Controller (Host) Side
      clk          => pin_clkin,             -- master clock from external clock source (unbuffered)
      bufclk       => sdram_bufclk,  		   -- buffered master clock output
      clk1x        => sdram_clk1x,   		   -- synchronized master clock (accounts for delays to external SDRAM)
      clk2x        => sdram_clk2x,     		-- synchronized doubled master clock
      lock         => sdram_lock,       		-- DLL lock indicator
      rst          => sdram_rst,        		-- reset
      rd           => sdram_rd,         		-- host-side SDRAM read control from dualport
      wr           => sdram_wr,         		-- host-side SDRAM write control from dualport
      earlyOpBegun => sdram_earlyOpBegun,		-- early indicator that memory operation has begun 
		opBegun      => sdram_opBegun,       	-- indicates memory read/write has begun
		rdPending    => sdram_rdPending,   		-- read operation to SDRAM is in progress
      done         => sdram_done,        		-- indicates SDRAM memory read or write operation is done
      rdDone       => sdram_rdDone,      		-- indicates SDRAM memory read operation is done
      hAddr        => sdram_hAddr,           -- host-side address from dualport to SDRAM
      hDIn         => sdram_hDIn,            -- test data pattern from dualport to SDRAM
      hDOut        => sdram_hDOut,           -- SDRAM data output to dualport
      status       => sdram_status,          -- SDRAM controller state (for diagnostics)
     
	   --SDRAM (External) Side
	  	sclkfb       => pin_sclkfb,           -- clock feedback with added external PCB delays
      sclk         => pin_sclk,             -- synchronized clock to external SDRAM
      cke          => pin_cke,              -- SDRAM clock enable
      cs_n         => pin_cs_n,             -- SDRAM chip-select
      ras_n        => pin_ras_n,            -- SDRAM RAS
      cas_n        => pin_cas_n,            -- SDRAM CAS
      we_n         => pin_we_n,             -- SDRAM write-enable
      ba           => pin_ba,               -- SDRAM bank address
      sAddr        => pin_sAddr,            -- SDRAM address
      sData        => pin_sData,            -- SDRAM databus
      dqmh         => pin_dqmh,             -- SDRAM DQMH
      dqml         => pin_dqml              -- SDRAM DQML
      );

------------------------------------------------------------------------------------------------------------
-- Instance of VGA driver, this unit generates the video signals from VRAM
------------------------------------------------------------------------------------------------------------
 

 	u3 : vga
    generic map (
      FREQ            => FREQ,
      CLK_DIV         => VGA_CLK_DIV,
      PIXEL_WIDTH     => PIXEL_WIDTH,
      PIXELS_PER_LINE => PIXELS_PER_LINE,
      LINES_PER_FRAME => LINES_PER_FRAME,
      NUM_RGB_BITS    => NUM_RGB_BITS,
      FIT_TO_SCREEN   => FIT_TO_SCREEN
      )
    port map (
      rst             => rst_i,
      clk             => sdram_clk1x,   -- use the resync'ed master clock so VGA generator is in sync with SDRAM
      wr              => rdDone0,       -- write to pixel buffer when the data read from SDRAM is available
      pixel_data_in   => pixels, 		 -- pixel data from SDRAM
      full            => full,          -- indicates when the pixel buffer is full
      eof             => eof,           -- indicates when the VGA generator has finished a video frame
      r               => pin_red,       -- RGB components (output)
      g               => pin_green,
      b               => pin_blue,
      hsync_n         => pin_hsync_n,   -- horizontal sync
      vsync_n         => pin_vsync_n,   -- vertical sync
      blank           => open
      );

------------------------------------------------------------------------------------------------------------
-- instance of main blitter
------------------------------------------------------------------------------------------------------------
 
	u4: Blitter
	generic map(
    FREQ         	=> FREQ, 
    PIPE_EN       => PIPE_EN,
  	 DATA_WIDTH    => DATA_WIDTH,
    ADDR_WIDTH    => ADDR_WIDTH
    )
  port map (
    clk				 =>sdram_clk1x,             
	 rst				 =>blit_reset,		 
 	 rd             =>rd1,      
    wr             =>wr1,       
    opBegun        =>opBegun1,       
    earlyopBegun   =>earlyOpBegun1,       
    done           =>done1,
	 rddone		 	 =>rddone1,      
    rdPending		 =>rdPending1,
	 Addr           =>hAddr1,    
    DIn            =>hDIn1,     
    DOut           =>hDOut1,     
	 blit_begin		 =>blit_begin,
	 source_address =>source_address, 
	 source_lines	 =>source_lines,
	 target_address =>target_address,
	 line_size		 =>line_size,
	 alphaOp			 =>alphaOp,
	 blit_done		 =>blit_done,
	 front_buffer	 =>front_buffer
	 );

--------------------------------------------------------------------------------------------------------------
-- End of Submodules
--------------------------------------------------------------------------------------------------------------
-- Begin Top Level Module

	-- connect internal signals	
	rst_i <= sysReset;
	pin_ce_n <= '1';						  -- disable Flash RAM
  	
	rd0 <= ((not full) and drawframe); -- negate the full signal for use in controlling the SDRAM read operation
	hDIn0 <= "0000000000000000"; 		  -- don't need to write to port 0 (VGA Port)
	wr0 <= '0';
	hAddr0 <= std_logic_vector(vga_address);
	
	blit_reset <= rst_i or reset_blitter;

	-- Port0 is reserved for VGA
	pixels <= hDOut0 when drawframe = '1' else "0000000000000000";

	source_address	<= source_address_r;
	line_size		<= line_size_r;
	target_address	<= target_address_r;
	source_lines	<= source_lines_r;
	alphaOp			<= alphaOp_r;
	front_buffer	<= YES;--front_buffer_r;	

	comb:process(state_r, delay_r, plane0_dest_r)
	begin
	  	blit_begin <= NO;						--default operations		
		reset_blitter <= NO;
		
		state_x 				<= state_r;			 		--default register values
		delay_x  			<= delay_r + 1;
	   source_address_x	<= source_address_r;
		line_size_x 		<= line_size_r;
		target_address_x 	<= target_address_r;
		source_lines_x		<= source_lines_r;
		alphaOp_x			<= alphaOp_r;
		plane0_dest_x 		<= plane0_dest_r;
		plane0_ypos_x	 	<= plane0_ypos_r;
		front_buffer_x 	<= front_buffer_r;
			
		case state_r is
			when INIT =>
				blit_begin <= NO;
				reset_blitter <= YES;
				state_x <= INIT_BKG;
				plane0_dest_x <= x"000060";
				plane0_ypos_x <= x"000";
				front_buffer_x <= YES;

			when INIT_BKG	=>
				--flip buffers	
				source_address_x	<= x"012C00";
				line_size_x       <= x"0A0";
				target_address_x  <= x"000000";
				source_lines_x		<= x"00EF";
				alphaOp_x 			<= NO; 				
				blit_begin <= YES;
				state_x <= DRAW_BKG;
		
			when DRAW_BKG =>
			   blit_begin <= YES;
			
				if (blit_done = YES) then
					reset_blitter <= YES;
					state_x <= BLIT_REST;
				end if;

			when BLIT_REST =>
				source_address_x	<= x"01EBE5";
				line_size_x 		<= x"024";
				target_address_x  <= plane0_dest_r;
				source_lines_x		<= x"004E";
				alphaOp_x			<= YES;
			
				reset_blitter <= YES;
				state_x <= INIT_SPRITE;

	   	when INIT_SPRITE =>
				blit_begin <= YES;

				state_x <= DRAW_SPRITE;
	                   
			when DRAW_SPRITE	=>
				blit_begin <= YES;

				if (blit_done = YES) then
					reset_blitter <= YES;
					state_x <= UPDATE;
				end if;	
		 						
			when UPDATE =>	
			 	reset_blitter <= YES;
				if (delay_r = x"FFFFF") then 
					plane0_dest_x <= plane0_dest_r + x"000140";
					plane0_ypos_x <= plane0_ypos_r + x"001";
					if (plane0_ypos_r = x"050") then 
						plane0_dest_x <= x"000060";
						plane0_ypos_x <= x"000";							
					end if;
					state_x <= INIT_BKG;
				end if;
			
		end case;
	end process;

   -- update the SDRAM address counter
   process(sdram_clk1x)
   begin
     if rising_edge(sdram_clk1x) then
		
		 --VGA Related Stuff
		 if eof = YES then
         drawframe <= not drawframe; 					 -- draw every other frame

			-- reset the address at the end of a video frame depending on which buffer is the front
			if (front_buffer = YES) then
				vga_address <= x"000000";
			else
				vga_address <= x"009600";
			end if;
		 elsif (earlyOpBegun0 = YES) then
		  	vga_address <= vga_address + 1;            -- go to the next address once the read of the current address has begun
		 end if;
   	
		--reset stuff
		if (sysReset = YES) then
		   state_r <= INIT;
		end if;

 		state_r 				<= state_x;
		delay_r  			<= delay_x;
		source_address_r	<= source_address_x;
		line_size_r 		<= line_size_x;
		target_address_r 	<= target_address_x;
		source_lines_r		<= source_lines_x;
     	alphaOp_r			<= alphaOp_x;
	   plane0_dest_r 		<= plane0_dest_x;
		plane0_ypos_r	 	<= plane0_ypos_x;
		front_buffer_r		<= front_buffer_x;
		  
	  end if;
   end process;

	--process reset circuitry
	process(sdram_bufclk)
	begin
		if (rising_edge(sdram_bufclk)) then
			if sdram_lock='0' then
				sysReset <= '1';     -- keep in reset until DLLs start up
			else
				--sysReset <= '0';
				sysReset <= not pin_pushbtn;  -- push button will reset
			end if;
		end if;
	end process;
end arch;