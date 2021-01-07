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

entity SM_ctrl_null is
  Port ( 
        clk200      : in    std_logic;                      -- synchronous respect to aclk
		-- Stepper Motor server interface:
        smc_ACC    : out    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_EC      : out    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_RM      : out    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_req     : out	   std_logic;
        -- Status out
        smc_Next_EC : in     STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_Next_RM : in     STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_ack     : in     STD_LOGIC 	      				   
    );
end SM_ctrl_null;

architecture rtl of SM_ctrl_null is

begin

    smc_ACC     <= (others => '0');        
    -- Status in       
    smc_EC      <= (others => '1');
    smc_RM      <= (others => '0');
    smc_req     <= '0';
        
end rtl;
