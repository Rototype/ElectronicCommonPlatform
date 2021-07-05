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

entity DCM_ctrl is
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
    
attribute IOB : string;
attribute IOB of port_pwm : signal is "TRUE";   
attribute IOB of port_in1 : signal is "TRUE"; 
attribute IOB of port_in2 : signal is "TRUE";    
    
end DCM_ctrl;

architecture rtl of DCM_ctrl is

component DCM_ctrl_real is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
        clk200      : in    std_logic;
        rst_200_out : out   std_logic;        
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
end component DCM_ctrl_real;

component DCM_ctrl_fake is
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
end component DCM_ctrl_fake;

signal  rst_200_loc	    : std_logic;

signal  port_pwm_loc	: std_logic := '0';
signal  port_in1_loc    : std_logic := '0';
signal  port_in2_loc	: std_logic := '0';	

begin

R:	if (PRESENT = 1) generate
      begin
		DCM_ctrl_i : DCM_ctrl_real
		  Port map( 
				aclk        =>	aclk,     
				aresetn     =>	aresetn,
				clk200      =>  clk200,
                rst_200_out =>  rst_200_loc,			     
				--      
				pwm_val		=>	pwm_val,   
				pwm_frq		=>	pwm_frq,   
				dir			=>	dir,   
				run		    =>	run,   
				brake		=>	brake,   
				status		=>	status,   
				vld_in		=>	vld_in,   
				vld_out		=>	vld_out,   
				--
				port_pwm	=>	port_pwm_loc,   
				port_in1    =>	port_in1_loc,   
				port_in2	=>	port_in2_loc   	   
			);
   end generate;
   
F:	if (PRESENT = 0) generate
      begin
		DCM_ctrl_i : DCM_ctrl_fake
		  Port map( 
				aclk        =>	aclk,     
				aresetn     =>	aresetn,
				clk200      =>  clk200,      
				--    
				pwm_val		=>	pwm_val,   
				pwm_frq		=>	pwm_frq,   
				dir			=>	dir,   
				run		    =>	run,   
				brake		=>	brake,   
				status		=>	status,   
				vld_in		=>	vld_in,   
				vld_out		=>	vld_out,   
				--
				port_pwm	=>	port_pwm_loc,   
				port_in1    =>	port_in1_loc,   
				port_in2	=>	port_in2_loc   	   
			);
   end generate;

    Out_registers: process (clk200)    
    begin       
       if rising_edge(clk200) then
           if (rst_200_loc = '1') then
				port_pwm	<=	'0';   
				port_in1    <=	'0';        
				port_in2	<=	'0';    
           else
				port_pwm	<=	port_pwm_loc;   
				port_in1    <=	port_in1_loc;   
				port_in2	<=	port_in2_loc;  
           end if;                                                                
       end if;
    end process Out_registers; 

end rtl;
