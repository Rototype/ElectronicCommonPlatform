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

entity SOL_ctrl_fake is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
		--	
		pwm_val		: in	std_logic_vector(7 downto 0);
		time_full	: in	std_logic_vector(10 downto 0);
		run			: in	std_logic;
		status		: out	std_logic_vector(1 downto 0);
		vld_in		: out	std_logic;
		vld_out		: in	std_logic;
		--
		port_pwm	: out	std_logic	      				   
    );
end SOL_ctrl_fake;

architecture rtl of SOL_ctrl_fake is

begin

    port_pwm <= '0';
    --
   vld_in	 <= '0';
   status	 <= "00";		

end rtl;
