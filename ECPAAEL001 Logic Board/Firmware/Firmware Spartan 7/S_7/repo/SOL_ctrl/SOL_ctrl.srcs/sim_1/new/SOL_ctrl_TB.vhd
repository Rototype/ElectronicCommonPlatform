----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2019 12:23:10
-- Design Name: 
-- Module Name: PHS_ctrl_TB - Behavioral
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

-- To accelarate simulation drop this command to TCL console before to launch
-- "set_property unifast true [current_fileset simset]"
-- this turn on unifast library for entire project. pls read UG900 for more details.

entity SOL_ctrl_TB is
--  Port ( );
end SOL_ctrl_TB;

architecture Bhe of SOL_ctrl_TB is

component SOL_ctrl_TESTER is
Port ( 
       aclk         : OUT std_logic; 
       aresetn      : OUT std_logic := '1';
       --
	   pwm_val		: out	std_logic_vector(7 downto 0);
	   time_full	: out	std_logic_vector(10 downto 0);
	   run			: out	std_logic;
	   status		: in	std_logic_vector(1 downto 0);
	   vld_in		: in	std_logic;
	   vld_out		: out	std_logic    
);
end component;

component SOL_ctrl is
  Generic (
 		PRESENT		:   integer range 0 to 1 := 1		         -- 1 = the controller is present; 0 = the controllere isafake
    );
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
end component;


signal aclk         : std_logic := '0';    
signal aresetn      : std_logic := '1';
--
signal pwm_val		: std_logic_vector(7 downto 0);
signal time_full	: std_logic_vector(10 downto 0);
signal run			: std_logic;
signal status		: std_logic_vector(1 downto 0);
signal vld_in		: std_logic;
signal vld_out		: std_logic;
--
signal port_pwm	    : std_logic;

   
begin

Tester: SOL_ctrl_TESTER
Port map( 
       aclk             => aclk,
       aresetn          => aresetn,  
       --
	   pwm_val		    => pwm_val,
	   time_full	    => time_full,
	   run			    => run,
	   status		    => status,
	   vld_in		    => vld_in,
	   vld_out		    => vld_out
);

Dut: SOL_ctrl
Generic map(
    PRESENT		=> 1)
Port map( 
       aclk             => aclk,
       aresetn          => aresetn,  
       --
	   pwm_val		    => pwm_val,
	   time_full	    => time_full,
	   run			    => run,
	   status		    => status,
	   vld_in		    => vld_in,
	   vld_out		    => vld_out,
	   --
	   port_pwm		    => port_pwm      				   
    );

            
end Bhe;
