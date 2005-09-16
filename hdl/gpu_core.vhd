--ECE395 GPU Core:
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
		  
package gpu_core_pckg is
	component gpu_core 
	  	generic(
	    FREQ                 :     natural := 50_000;  -- operating frequency in KHz
	    DATA_WIDTH           :     natural := 16;  -- host & SDRAM data width
	    HADDR_WIDTH          :     natural := 23  -- host-side address width
	    );
	  port(
    clk                  : in  std_logic;  -- master clock
	 rst						 :	in  std_logic;  -- reset for this entity
 	 rd1                  : out  std_logic;  -- initiate read operation
    wr1                  : out  std_logic;  -- initiate write operation
    opBegun              : in std_logic;  -- read/write/self-refresh op begun (clocked)
    done1                : in std_logic;  -- read or write operation is done
    rdDone1					 : in std_logic;
	 hAddr1               : out  std_logic_vector(HADDR_WIDTH-1 downto 0);  -- address to SDRAM
    hDIn1                : out  std_logic_vector(DATA_WIDTH-1 downto 0);  -- data to dualport to SDRAM
    hDOut1               : in std_logic_vector(DATA_WIDTH-1 downto 0);  -- data from dualport to SDRAM
	 CacheDIn				 : inout std_logic_vector(15 downto 0);	-- data to SRAM Cache
	 CacheAddr				 : out std_logic_vector(14 downto 0);	-- address to SRAM Cache
	 cread 					 : out std_logic;	-- cache read active low
	 cwrite					 : out std_logic	-- cache write	active low
		 );
	end component gpu_core;
end package gpu_core_pckg;

library IEEE, UNISIM;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use UNISIM.VComponents.all;
use WORK.common.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity gpu_core is
  	generic(
    FREQ                 :     natural := 50_000;  -- operating frequency in KHz
    DATA_WIDTH           :     natural := 16;  -- host & SDRAM data width
    HADDR_WIDTH          :     natural := 23  -- host-side address width
    );
    Port ( 
    clk                  : in  std_logic;  -- master clock
	 rst						 :	in  std_logic;  -- reset for this entity
 	 rd1                  : out  std_logic;  -- initiate read operation
    wr1                  : out  std_logic;  -- initiate write operation
    opBegun              : in std_logic;  -- read/write/self-refresh op begun (clocked)
    done1                : in std_logic;  -- read or write operation is done
    rdDone1					 : in std_logic;
	 hAddr1               : out  std_logic_vector(HADDR_WIDTH-1 downto 0);  -- address to SDRAM
    hDIn1                : out  std_logic_vector(DATA_WIDTH-1 downto 0);  -- data to dualport to SDRAM
    hDOut1               : in std_logic_vector(DATA_WIDTH-1 downto 0);  -- data from dualport to SDRAM
	 CacheDIn				 : inout std_logic_vector(15 downto 0);	-- data to SRAM Cache
	 CacheAddr				 : out std_logic_vector(14 downto 0);	-- address to SRAM Cache
	 cread 					 : out std_logic;	-- cache read active low
	 cwrite					 : out std_logic	-- cache write	active low
	 );
end gpu_core;

architecture Behavioral of gpu_core is


signal source_address				: std_logic_vector(HADDR_WIDTH-1 downto 0);
signal target_address				: std_logic_vector(HADDR_WIDTH-1 downto 0);
signal wordread						: std_logic_vector(5 downto 0);
signal writemode 						: std_logic;
signal linecache 						: std_logic_vector(255 downto 0);



begin	

	cread <= '1';
	cwrite <= '1';
	CacheDIn <= (others => 'Z');
	CacheAddr <= "000000000000000";

	
--	process (clk, rst, writemode, done1, rddone1)
--	begin
--	if (rising_edge (clk)) then
--		if rst = '1' then
--			source_address <= "00000010010011000000000";
--			target_address <= "00000000000000000000000";
--			wordread <= "000000";
--			writemode <= '0';
--		end if;
--
--		if writemode = '0' then							 	--reading a line
--			rd1 <= '1';
--			wr1 <= '0';
--			hAddr1 <= source_address;
--
--			if opBegun = '1' and (wordread /= "010000") then
--				source_address <= source_address + 1;
--				wordread <= wordread + 1;
--			end if;
--
--			if rdDone1 = '1' then
--				linecache <= linecache(239 downto 0) & "0000000000000000"; 
--				linecache (15 downto 0) <= hDOut1;
--			end if;
--			
--			if  wordread = "010000" and rdDone1 = '0' then
--				wordread <= "000000";
--				writemode <= '1';
--			end if;
--		else
--			wr1 <= '1';
--			rd1 <= '0';
--			hDin1 <= linecache (255 downto 239);
--			hAddr1 <= target_address;
--			if (opBegun = '1' and wordread /= "010000") then
--				linecache <= linecache(239 downto 0) & "0000000000000000"; 
--				target_address <= target_address + 1;
--				wordread <= wordread + 1;
--		  	end if;
--			
----			if wordread = "000000" then
----			
----			end if;
----			
----			if wordread = "010000" then
----				wr1 <= '0';
----			end if;
----			
--			--	wordread <= wordread + 1;
--		  	--end if;
--			if wordread = "010000" and Done1 = '0' then
--				wordread <= "000000";
--				writemode <= '0';
--			end if;
--
--		end if;
--	end if;
--	end process;

end Behavioral;
