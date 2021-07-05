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

entity DCM_ctrl_TB is
--  Port ( );
end DCM_ctrl_TB;

architecture Bhe of DCM_ctrl_TB is

component DCM_ctrl_TESTER is
Port ( 
       aclk                        : OUT std_logic; 
       aresetn                     : OUT std_logic := '1';
       --
       clk200                      : out std_logic;  -- synchronous respect to aclk
       --
	   pwm_val		               : out std_logic_vector(7 downto 0);
	   pwm_frq		               : out std_logic_vector(6 downto 0);
	   dir			               : out std_logic;
	   run		                   : out std_logic;
	   brake		               : out std_logic;
	   status		               : in	 std_logic_vector(1 downto 0);
	   vld_in		               : in	 std_logic;
	   vld_out		               : out std_logic     
);
end component;

component DCM_ctrl is
  Generic (
 		PRESENT		:   integer range 0 to 1 := 1		         -- 1 = the controller is present; 0 = the controllere isafake
    );
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
        clk200      : in    std_logic;
		--
		pwm_val		: in	std_logic_vector(7 downto 0);
		pwm_frq		: in	std_logic_vector(6 downto 0);
		dir			: in	std_logic;
		run		    : in	std_logic;
		brake		: in	std_logic;
		status		: out	std_logic_vector(1 downto 0);
		vld_in		: out	std_logic;
		vld_out		: in	std_logic;
		--
		port_pwm	: out	std_logic;
		port_in1    : out	std_logic;
		port_in2	: out	std_logic	      				   
    );
end component;


signal aclk         : std_logic := '0';    
signal aresetn      : std_logic := '1';
--
signal clk200       : std_logic := '0';  -- synchronous respect to aclk
--
signal pwm_val		: std_logic_vector(7 downto 0);
signal pwm_frq		: std_logic_vector(6 downto 0);
signal dir			: std_logic;
signal run		    : std_logic;
signal brake		: std_logic;
signal status		: std_logic_vector(1 downto 0);
signal vld_in		: std_logic;
signal vld_out		: std_logic;
--
signal port_pwm	    : std_logic;
signal port_in1     : std_logic;
signal port_in2	    : std_logic;

   
begin

Tester: DCM_ctrl_TESTER
Port map( 
       aclk             => aclk,
       aresetn          => aresetn,  
       --
       clk200           => clk200,
       --
	   pwm_val		    => pwm_val,
	   pwm_frq		    => pwm_frq,
	   dir			    => dir,
	   run		        => run,
	   brake		    => brake,
	   status		    => status,
	   vld_in		    => vld_in,
	   vld_out		    => vld_out
);

Dut: DCM_ctrl
Generic map(
    PRESENT		=> 1)
Port map( 
       aclk             => aclk,
       aresetn          => aresetn,  
       --
       clk200           => clk200,
       --
	   pwm_val		    => pwm_val,
	   pwm_frq		    => pwm_frq,
	   dir			    => dir,
	   run		        => run,
	   brake		    => brake,
	   status		    => status,
	   vld_in		    => vld_in,
	   vld_out		    => vld_out,
	   --
	   port_pwm		    => port_pwm,
	   port_in1		    => port_in1,
	   port_in2		    => port_in2	      				   
    );

            
end Bhe;
