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

entity PHS_ctrl_TB is
--  Port ( );
end PHS_ctrl_TB;

architecture Bhe of PHS_ctrl_TB is

component PHS_ctrl_TESTER is
 Port ( 
       signal aclk                       :   OUT std_logic;    
       signal aresetn                    :   OUT std_logic := '1';
       --
       signal ena                        :   OUT std_logic;
       --
       signal pwm_val                    :   out std_logic_vector(9 downto 0) := B"00_0000_0000";
	   signal vld                        :   out std_logic := '0';
	   --
	   signal port_phs_in                :   out std_logic := '0'       
 );
end component PHS_ctrl_TESTER;

component PHS_ctrl is
  Generic (
 		PRESENT		:   integer range 0 to 1 := 1		         -- 1 = the controller is present; 0 = the controllere isafake
    );
  Port ( 
        aclk          : in    std_logic;
        aresetn       : in    std_logic;
		--
        ena_in        : in    std_logic;
        ena_out       : out   std_logic;
        --
		pwm_val       : in	std_logic_vector(9 downto 0);
		status    	  : out	std_logic;        
        irq_mask      : in	std_logic_vector(1 downto 0);
		irq0_L2S      : out	std_logic;
		irq1_S2L      : out	std_logic;
		irq0_clr	  : in	std_logic;
		irq1_clr	  : in	std_logic;
		vld_out       : in	std_logic;
		vld_in		  : out	std_logic;
		--	
		port_pwm_out  : out	std_logic;
		port_phs_in   : in	std_logic
  				   
    );
end component PHS_ctrl;

signal  aclk          : std_logic := '0';
signal  aresetn       : std_logic := '0';
--
signal  ena_in        : std_logic := '0';
signal  ena_out       : std_logic := '0';
--
signal  pwm_val       : std_logic_vector(9 downto 0) := B"00_0000_0000";
signal  status    	  : std_logic := '0';       
signal  irq_mask      : std_logic_vector(1 downto 0) := "00";
signal  irq0_L2S      : std_logic := '0'; 
signal  irq1_S2L      : std_logic := '0'; 
signal  irq0_clr	  : std_logic := '0';
signal  irq1_clr	  : std_logic := '0';  
signal  vld_out       : std_logic := '0'; 
signal  vld_in		  : std_logic := '0'; 
--	
signal  port_pwm_out  : std_logic := '0'; 
signal  port_phs_in   : std_logic := '0'; 

signal  status1    	   : std_logic := '0';    
signal  irq_clr1	   : std_logic := '0'; 
signal  vld_in1        : std_logic := '0';
signal  irq0_L2S1      : std_logic := '0'; 
signal  irq1_S2L1      : std_logic := '0';  
signal  port_pwm_out1  : std_logic := '0'; 	

begin

tester: PHS_ctrl_TESTER
 Port map( 
       aclk                       => aclk,
       aresetn                    => aresetn,
       --
       ena                        => ena_in,
        --
       pwm_val                    => pwm_val,
	   vld                        => vld_out,
	   --
	   port_phs_in                => port_phs_in
 );

dut: PHS_ctrl
  Generic map(
 		PRESENT	=> 1		         -- 1 = the controller is present; 0 = the controllere isafake
    )
  Port map( 
       aclk                       => aclk,
       aresetn                    => aresetn,
       --
       ena_in                     => ena_in,
       ena_out                    => ena_out,
       --
       pwm_val                    => pwm_val,
       status                     => status,
       irq_mask                   => irq_mask,
       irq0_L2S                   => irq0_L2S,
       irq1_S2L                   => irq1_S2L,
	   irq0_clr                   => irq0_clr,
	   irq1_clr                   => irq1_clr,
       vld_out                    => vld_out,
       vld_in                     => vld_in,
       --	
       port_pwm_out               => port_pwm_out,
       port_phs_in                => port_phs_in     				   
    );
    
 dut1: PHS_ctrl
  Generic map(
 		PRESENT	=> 1		         -- 1 = the controller is present; 0 = the controllere isafake
    )
  Port map( 
       aclk                       => aclk,
       aresetn                    => aresetn,
       --
       ena_in                     => ena_out,
       ena_out                    => open,
       --
       pwm_val                    => pwm_val,
       status                     => status1,
       irq_mask                   => irq_mask,
       irq0_L2S                   => irq0_L2S1,
       irq1_S2L                   => irq1_S2L1,
	   irq0_clr                   => irq0_clr,
	   irq1_clr                   => irq1_clr,
       vld_out                    => vld_out,
       vld_in                     => vld_in1,
       --	
       port_pwm_out               => port_pwm_out1,
       port_phs_in                => port_phs_in     				   
    );   

end Bhe;
