----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2020 15:28:54
-- Design Name: 
-- Module Name: SM_ctrl_TESTER - Bhe
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

entity SOL_ctrl_TESTER is
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
end SOL_ctrl_TESTER;

architecture Bhe of SOL_ctrl_TESTER is

constant clk200_frq_MHz				: real := 200.0;

constant clk200_frequency		    : real := clk200_frq_MHz * 1000000.0 ;		-- [Hz] 
constant clk200_period				: time := (1.0 / clk200_frequency) * (1 Sec); -- [S]

signal clk200_int                   : STD_LOGIC := '0';
signal aclk_int					    : STD_LOGIC := '0';
signal aresetn_int                  : STD_LOGIC := '0';

signal pwm_val_loc		            : std_logic_vector(7 downto 0);
signal time_full_loc	            : std_logic_vector(10 downto 0);
signal run_loc			            : std_logic;
signal vld_out_loc		            : std_logic;  

begin

	clk_int_gen : process
	begin  
		clk200_int	<= '0';
		aclk_int	<= '0';
		wait for (clk200_period/2);
		clk200_int	<= '1';
		wait for (clk200_period/2);
		clk200_int	<= '0';
		aclk_int	<= '1';
		wait for (clk200_period/2);
		clk200_int	<= '1';
		wait for (clk200_period/2);
	end process clk_int_gen;  
  
	aresetn_int		<= '1' after 1 uS;	  
  
	aclk			<= aclk_int;
	aresetn			<= transport aresetn_int after 100 pS; 
	
--------------------------------------------------------

    dcm_data_gen: process
    begin
    
        pwm_val_loc		<= std_logic_vector(TO_UNSIGNED(      0, 8)); 
		time_full_loc	<= std_logic_vector(TO_UNSIGNED(      0, 11)); 
		run_loc			<= '0';
		vld_out_loc		<= '0'; 

    wait until (aresetn_int = '1');
    wait for 1 ms; 
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      50, 8));
    wait until rising_edge(aclk_int);
    wait for 1 uS; 
    wait until rising_edge(aclk_int); 
        time_full_loc		        <= std_logic_vector(TO_UNSIGNED(      3, 11)); 
    wait until rising_edge(aclk_int);
    wait for 1 uS; 
    wait until rising_edge(aclk_int); 	
 	vld_out_loc		<= '1';
    wait until rising_edge(aclk_int);
 	vld_out_loc		<= '0';
    wait for 1 uS;      	 
    wait until rising_edge(aclk_int); 
    run_loc		                <= '1';
    wait until rising_edge(aclk_int); 
    wait for 1 uS; 
    wait until rising_edge(aclk_int); 	
 	vld_out_loc		<= '1';
    wait until rising_edge(aclk_int);
 	vld_out_loc		<= '0';
    wait for 1 uS;    
    --
           
    wait for 5 mS;
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      25, 8));
    wait until rising_edge(aclk_int);
    wait for 5 mS;
    wait until rising_edge(aclk_int);    
        run_loc		                <= '0';
    wait until rising_edge(aclk_int);                           
    wait;  -- forever       
   end process dcm_data_gen;

--------------------------------------------------------

    pwm_val		<= transport pwm_val_loc after 100 ps;
    time_full   <= transport time_full_loc after 100 ps;
    run		    <= transport run_loc after 100 ps;
    vld_out		<= transport vld_out_loc after 100 ps;

end Bhe;
