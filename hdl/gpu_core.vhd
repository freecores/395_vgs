--ECE395 GPU:
--GPU Core Intermediate Block
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

library IEEE, UNISIM;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use UNISIM.VComponents.all;
use WORK.common.all;
use WORK.sdram.all;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
		  

package GPU_core_pckg is
	component GPU_core 
	  	generic(
	    FREQ                 :     natural := 50_000;  -- operating frequency in KHz
	    DATA_WIDTH           :     natural := 16;  -- host & SDRAM data width
	    HADDR_WIDTH          :     natural := 23  -- host-side address width
	    );
	  port(
    clk                  : in  std_logic;  -- master clock
	 rst					 :	in  std_logic;  -- reset for this entity
 	 rd1                  : out  std_logic;  -- initiate read operation
    wr1                  : out  std_logic;  -- initiate write operation
    opBegun1             : in std_logic;  -- read/write/self-refresh op begun (clocked)
    done1                : in std_logic;  -- read or write operation is done
	 rdPending1				 : in std_logic;	-- read operation is not done
    hAddr1               : out  std_logic_vector(HADDR_WIDTH-1 downto 0);  -- address to SDRAM
    hDIn1                : out  std_logic_vector(DATA_WIDTH-1 downto 0);  -- data to dualport to SDRAM
    hDOut1               : in std_logic_vector(DATA_WIDTH-1 downto 0);  -- data from dualport to SDRAM
	 start_read				 : in std_logic;
	 source_address		 : in std_logic_vector(HADDR_WIDTH-1 downto 0);
	 target_address		 : in std_logic_vector(HADDR_WIDTH-1 downto 0);
	 size						 : in std_logic_vector(9 downto 0)
		 );
	end component GPU_core;
end package GPU_core_pckg;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use WORK.fifo_cc_pckg.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GPU_core is
  	generic(
    FREQ                 :     natural := 50_000;  -- operating frequency in KHz
    DATA_WIDTH           :     natural := 16;  -- host & SDRAM data width
    HADDR_WIDTH          :     natural := 23  -- host-side address width
    );
    Port ( 
    clk                  : in  std_logic;  -- master clock
	 rst					 	 :	in  std_logic;  -- reset for this entity
 	 rd1                  : out  std_logic;  -- initiate read operation
    wr1                  : out  std_logic;  -- initiate write operation
    opBegun1             : in std_logic;  -- read/write/self-refresh op begun (clocked)
    done1                : in std_logic;  -- read or write operation is done
	 rdPending1				 : in std_logic;	-- read operation is not done
    hAddr1               : out  std_logic_vector(HADDR_WIDTH-1 downto 0);  -- address to SDRAM
    hDIn1                : out  std_logic_vector(DATA_WIDTH-1 downto 0);  -- data to dualport to SDRAM
    hDOut1               : in std_logic_vector(DATA_WIDTH-1 downto 0);  -- data from dualport to SDRAM
	 start_read				 : in std_logic;
	 source_address		 : in std_logic_vector(HADDR_WIDTH-1 downto 0);
	 target_address		 : in std_logic_vector(HADDR_WIDTH-1 downto 0);
	 end_address			 : in std_logic_vector(HADDR_WIDTH-1 downto 0)
	 );
end GPU_core;

architecture Behavioral of GPU_core is

type my_state is (wait4Go, getLine, writeLine);
signal state : my_state;

signal address : std_logic_vector(HADDR_WIDTH-1 downto 0);
signal output : std_logic_vector(15 downto 0);
signal stop_address : std_logic_vector(HADDR_WIDTH-1 downto 0);

signal wr_q, rd_q, full_q, empty_q : std_logic;
signal datain_q, dataout_q : std_logic_vector(DATA_WIDTH-1 downto 0);
signal level_q : std_logic_vector(7 downto 0);

begin

	statemachineread : process()
	begin

	case state is
		when halt =>

			rd1 <= '0';
			address <= source_address;

			if start_read = '1' then
				state <= readBegin;
			end if;

		when readBegin =>
			
			-- EXIT CONDITION
			if	end_address = address then
				state <= readEnd;
			elsif opBegun = '1' then
				state <= read1;
			end if;

			rd1 <= '1';
			hAddr1 <= address;

		when read1 =>

			-- EXIT CONDITION
			if end_address = address then
				state <= readEnd;
			elsif opBegun = '1' then
				state <= read2;
			end if;

			rd1 <= '1';
			address <= address + 1;
			hAddr1 <= address;

		when read2 =>

			-- EXIT CONDITION
			if end_address = address then
				state <= readEnd;
			elsif opBegun = '1' then
				state <= read1;
			end if;

			rd1 <= '1';
			address <= address + 1;
			hAddr1 <= address;
			
		when readEnd =>

			if rdPending = '0' and done1 = '0' then
				state <= writeBegin;
			end if;

			rd1 <= '0';
			address <= target_address;

		when writeBegin =>

			wr1 <= '1';
			hAddr1 <= address;
			rd_q <= '1';
			hDIn1 <= dataout_q;

		when write1 =>
		when write2 =>

	end process;

	getdata : process ( clk, rdDone1, hDOut1)
	begin
		if rising_edge(clk) then
			if rdDone1 = '1' then
				wr_q <= '1';
				datain_q <= hDOut1;
			else
				wr_q <= '0';
			end if;

			if rdDone1 = '0' and done1 = '1' then
				rd_q <= '1';
				hDIn1 <= dataout_q;
			else
				rd_q <= '0';
			end if;
		end if;
	end process;
	
u1 : fifo_cc
port map(
		clk=>clk,
		rst=>rst,
		rd=>rd_q,
		wr=>wr_q,
		data_in=>datain_q,
		data_out=>dataout_q,
		full=>full_q,
		empty=>empty_q,
		level=>level_q
		);

end Behavioral;
