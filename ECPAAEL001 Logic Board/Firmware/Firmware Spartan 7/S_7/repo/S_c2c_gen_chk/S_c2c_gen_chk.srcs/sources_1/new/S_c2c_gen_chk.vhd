----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.09.2020 16:09:38
-- Design Name: 
-- Module Name: S_c2c_gen_chk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity S_c2c_gen_chk is
    Port (
            -- clk & reset
            aclk              : in STD_LOGIC;
            aresetn           : in STD_LOGIC;
            -- gen
            S_c2c_rxclk_out_p : out STD_LOGIC;
            S_c2c_rxclk_out_n : out STD_LOGIC;
            S_c2c_rxd_out     : out STD_LOGIC_VECTOR (16 downto 0);
            --
            to_ila_out        : out STD_LOGIC_VECTOR (16 downto 0);
            -- chk
            S_c2c_txclk_in_p  : in STD_LOGIC;
            S_c2c_txclk_in_n  : in STD_LOGIC;
            S_c2c_txd_in      : in STD_LOGIC_VECTOR (16 downto 0);
            --
            to_ILA            : out STD_LOGIC_VECTOR (16 downto 0);
            to_ILA_clk        : out STD_LOGIC
        );
end S_c2c_gen_chk;

architecture rtl of S_c2c_gen_chk is

signal cnt_17 : std_logic_vector(16 downto 0) := (others => '0');

signal clk_loc_ibufds : std_logic := '0';
signal clk_loc : std_logic := '0';

signal Data_in_loc  : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');

signal clk_out_loc : std_ulogic := '0';

begin

   -- data
   cnt17_gen: process(aclk)
   begin
        if rising_edge(aclk) then
            if (aresetn = '0') then
                cnt_17 <= (others => '0');
            else
                 cnt_17 <= cnt_17 + "01";           
            end if;      
        end if;
    end process cnt17_gen; 

    to_ila_out <= cnt_17;
 
   out_gen: process(aclk)
   begin
        if rising_edge(aclk) then
            if (aresetn = '0') then
                S_c2c_rxd_out <= (others => '0');
            else
                 S_c2c_rxd_out <= cnt_17;           
            end if;      
        end if;
    end process out_gen;    

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
      R => '0',           -- 1-bit reset input
      S => '0'            -- 1-bit set input
   );
   
   OBUFDS_inst : OBUFDS
   port map (
      O  => S_c2c_rxclk_out_p,
      OB => S_c2c_rxclk_out_n,
      I  => clk_out_loc
   );  

--------------------------------------------------------------------------------

   -- Clock input
   IBUFDS_inst : IBUFDS
   generic map (
      DIFF_TERM => FALSE, -- Differential Termination 
      IBUF_LOW_PWR => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
   port map (
      O  => clk_loc_ibufds,  -- Buffer output
      I  => S_c2c_txclk_in_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => S_c2c_txclk_in_n -- Diff_n buffer input (connect directly to top-level port)
   );
   
   BUFG_inst : BUFG
   port map (
      O => clk_loc,         -- 1-bit output: Clock output
      I => clk_loc_ibufds   -- 1-bit input: Clock input
   );   

   to_ILA_clk <= clk_loc;

   -- data
   sampler: process(clk_loc)
   begin
        if rising_edge(clk_loc) then
            Data_in_loc                   <= S_c2c_txd_in;
            to_ILA                        <= Data_in_loc;       
        end if;
    end process sampler; 
    
    
end rtl;
