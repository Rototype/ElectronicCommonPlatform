library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;


entity pseudo_c2c is
    Port ( aclk           : in STD_LOGIC;
           arstn          : in STD_LOGIC := '1';
           --
           clk_out_p      : out std_logic := '0';
           clk_out_n      : out std_logic := '1';           
           Data_out       : out STD_LOGIC_VECTOR(16 downto 0)
         );
end pseudo_c2c;

architecture rtl of pseudo_c2c is


signal arstn_loc: std_logic := '1';
signal rstn : std_logic := '1';
signal rst : std_logic := '0';

signal clk_out_loc : std_logic := '0';
signal Data_out_loc : STD_LOGIC_VECTOR(16 downto 0);

begin

    rst_gen: process(aclk)
    begin
        if rising_edge(aclk) then
            arstn_loc <= arstn;
            rst <= rstn;
        end if;
    end process rst_gen;
    
    rstn <= not(arstn_loc);
 
    cnt_17: process(aclk)
    begin
        if rising_edge(aclk) then
            if rst = '1' then
                Data_out_loc <= (others => '0');
                Data_out     <= (others => '0');                
            else
                Data_out_loc <= Data_out_loc + '1';
                Data_out <= Data_out_loc;
            end if;
        end if;
    end process cnt_17;    
    
   -- Clock forwarding.
    
   ODDR_inst : ODDR
   generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
      INIT => '0',   -- Initial value for Q port ('1' or '0')
      SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
   port map (
      Q => clk_out_loc,   -- 1-bit DDR output
      C => aclk,          -- 1-bit clock input
      CE => '1',          -- 1-bit clock enable input
      D1 => '1',          -- 1-bit data input (positive edge)
      D2 => '0',          -- 1-bit data input (negative edge)
      R => rst,           -- 1-bit reset input
      S => '0'            -- 1-bit set input
   );
   
   OBUFDS_inst : OBUFDS
   port map (
      O  => clk_out_p,
      OB => clk_out_n,
      I  => clk_out_loc
   );  
    
end rtl;
