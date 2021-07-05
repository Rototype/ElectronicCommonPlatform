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

entity SOL_ctrl is
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
       
attribute IOB : string;
attribute IOB of port_pwm : signal is "TRUE";
    
end SOL_ctrl;

architecture rtl of SOL_ctrl is

component SOL_ctrl_real is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
        rst_100_out : out   std_logic;
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
end component SOL_ctrl_real;

component SOL_ctrl_fake is
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
end component SOL_ctrl_fake;

signal  rst_100_loc     : std_logic;
signal  port_pwm_loc	: std_logic := '0';

begin

R:	if (PRESENT = 1) generate
      begin
		SOL_ctrl : SOL_ctrl_real
		  Port map( 
				aclk        =>	aclk,     
				aresetn     =>	aresetn,
				rst_100_out =>  rst_100_loc,     
				--       
				pwm_val		=>	 pwm_val,	
				time_full	=>	 time_full,	
				run			=>	 run,			
				status		=>	 status,		
				vld_in		=>	 vld_in,		
				vld_out		=>	 vld_out,		
				--
				port_pwm	=>	 port_pwm_loc	
			);
   end generate;
   
F:	if (PRESENT = 0) generate
      begin
		SOL_ctrl : SOL_ctrl_fake
		  Port map( 
				aclk        =>	aclk,     
				aresetn     =>	aresetn,     
				--       
				pwm_val		=>	 pwm_val,	
				time_full	=>	 time_full,	
				run			=>	 run,			
				status		=>	 status,		
				vld_in		=>	 vld_in,		
				vld_out		=>	 vld_out,		
				--
				port_pwm	=>	 port_pwm_loc	
			);
   end generate;

    Out_registers: process (aclk)    
    begin       
       if rising_edge(aclk) then
           if (rst_100_loc = '1') then
				port_pwm	<=	'0';       
           else
				port_pwm	<=	port_pwm_loc;   
           end if;                                                                
       end if;
    end process Out_registers; 

end rtl;
