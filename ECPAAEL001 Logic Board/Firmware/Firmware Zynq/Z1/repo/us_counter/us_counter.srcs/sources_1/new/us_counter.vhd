----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2019 17:49:23
-- Design Name: 
-- Module Name: SM_ctrl - rtl
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
use UNISIM.vcomponents.all;

entity us_counter is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
		--	
		counter		: out	std_logic_vector(31 downto 0);
		counter_val : out   std_logic      				   
    );
end us_counter;

architecture rtl of us_counter is

signal aresetn_loc      : std_logic := '1'; 
signal resetn           : std_logic := '0';    
signal reset            : std_logic := '1'; 

signal cnt32b           : std_logic_vector(31 downto 0) := (others => '0');
signal cnt100           : std_logic_vector( 7 downto 0) := (others => '0');

attribute USE_DSP : string;
attribute USE_DSP of cnt32b: signal is "YES";

begin

    rst_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         aresetn_loc <= aresetn;
         resetn      <= aresetn_loc;
         reset       <= not(aresetn_loc);      
       end if;
    end process rst_gen; 

    cnt: process (aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then
                cnt100       <= (others => '0');
                cnt32b       <= (others => '0');
                counter_val  <= '0';
            else
                if cnt100 = 99 then
                    cnt100       <= (others => '0');
                    cnt32b	     <= cnt32b + '1';
                    counter_val  <= '1'; 
                else
                    cnt100       <= cnt100 + '1';
                    counter_val  <= '0'; 
                end if;   
            end if;
        end if;
    end process cnt;      
    
    counter <= cnt32b;
    
end rtl;
