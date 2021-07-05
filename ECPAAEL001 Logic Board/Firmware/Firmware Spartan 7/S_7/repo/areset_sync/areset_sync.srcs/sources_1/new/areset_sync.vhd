----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.02.2020 17:48:01
-- Design Name: 
-- Module Name: areset_sync - rtl
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
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity areset_sync is
    Port ( aresetn_in : in STD_LOGIC;
           aclk : in STD_LOGIC;
           aresetn_out : out STD_LOGIC);
end areset_sync;

architecture rtl of areset_sync is

signal aresetn_loc    : std_logic := '0';
signal aresetn_loc_d1 : std_logic := '0';


attribute ASYNC_REG : string;
attribute ASYNC_REG of aresetn_loc: signal is "TRUE";
attribute ASYNC_REG of aresetn_loc_d1: signal is "TRUE";
begin

	resynch_reset: process( aclk ) is
	begin
	  if (rising_edge (aclk)) then
	       aresetn_loc     <= aresetn_in;
	       aresetn_loc_d1  <= aresetn_loc;
	       aresetn_out     <= aresetn_loc_d1;
	  end if;
	end process resynch_reset;
	
end rtl;
