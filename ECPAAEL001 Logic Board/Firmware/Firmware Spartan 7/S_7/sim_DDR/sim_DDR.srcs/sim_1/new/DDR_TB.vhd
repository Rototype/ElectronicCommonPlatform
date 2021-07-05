----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2021 08:44:29
-- Design Name: 
-- Module Name: DDR_TB - Behavioral
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

entity DDR_TB is
--  Port ( );
end DDR_TB;

architecture Behavioral of DDR_TB is

Component DDR is
    Port (
        clk : in STD_LOGIC;
        rst : in std_logic;
        din : in STD_LOGIC_VECTOR (15 downto 0);
        dout : out STD_LOGIC_VECTOR (15 downto 0)
    );
end component DDR;



constant clk100_frq_MHz				: real := 100.0;

constant clk100_frequency		    : real := clk100_frq_MHz * 1000000.0 ;		-- [Hz] 
constant clk100_period				: time := (1.0 / clk100_frequency) * (1 Sec); -- [S]

signal clk100_int                   : STD_LOGIC := '0';
signal clk100                       : STD_LOGIC := '0';
signal rst_int                      : STD_LOGIC := '1';
signal rst                          : STD_LOGIC := '1';

signal din_int                      : std_logic_vector(15 downto 0) := X"0000";
signal din                          : std_logic_vector(15 downto 0) := X"0000";
signal dout                         : std_logic_vector(15 downto 0) := X"0000";
begin

	clk_int_gen : process
	begin  
		clk100_int	<= '0';
		wait for (clk100_period/2);
		clk100_int	<= '1';
		wait for (clk100_period/2);
	end process clk_int_gen;  
	
	clk100     <= clk100_int;
	
	rst_int    <= '0' after 0.1 uS;

--------------------------------------------------------	
	
    data_gen: process
    begin	
        din_int <= X"00_00";
        wait until falling_edge(rst_int);
        wait until rising_edge(clk100_int);
        wait for 1400 nS;
        wait until rising_edge(clk100_int);
        din_int <= X"F0_0F";
        wait until rising_edge(clk100_int);
        din_int <= X"0F_F0";
        wait until rising_edge(clk100_int);
        din_int <= X"00_00";                               
    end process data_gen;
    
--------------------------------------------------------	

	clk100     <= clk100_int;
	rst		   <= transport rst_int after 100 ps; 
    din		   <= transport din_int after 100 ps;
    
--------------------------------------------------------	                    
    
    DUT : DDR
        Port map(
            clk => clk100,
            rst => rst,
            din => din,
            dout => dout
        );
   
end Behavioral;
