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

entity DCM_ctrl_TESTER is
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
end DCM_ctrl_TESTER;

architecture Bhe of DCM_ctrl_TESTER is

constant clk200_frq_MHz				: real := 200.0;

constant clk200_frequency		    : real := clk200_frq_MHz * 1000000.0 ;		-- [Hz] 
constant clk200_period				: time := (1.0 / clk200_frequency) * (1 Sec); -- [S]

signal clk200_int                   : STD_LOGIC := '0';
signal aclk_int					    : STD_LOGIC := '0';
signal aresetn_int                  : STD_LOGIC := '0';

signal pwm_val_loc		            : std_logic_vector(7 downto 0);
signal pwm_frq_loc		            : std_logic_vector(6 downto 0);
signal dir_loc			            : std_logic;
signal run_loc		                : std_logic;
signal brake_loc		            : std_logic;
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
	clk200          <= clk200_int;
	aresetn			<= transport aresetn_int after 100 pS; 
	
--------------------------------------------------------

    dcm_data_gen: process
    begin
    
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      0, 8)); 
        pwm_frq_loc		            <= std_logic_vector(TO_UNSIGNED(      0, 7)); 
        dir_loc			            <= '0';
        run_loc		                <= '0';
        brake_loc		            <= '0';
        vld_out_loc		            <= '0';
    
    wait until (aresetn_int = '1');
    wait for 15 uS; 
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      50, 8));
    wait until rising_edge(aclk_int);
    wait for 1 uS; 
    wait until rising_edge(aclk_int); 
        pwm_frq_loc		            <= std_logic_vector(TO_UNSIGNED(      80, 7)); 
    wait until rising_edge(aclk_int);
    wait for 1 uS; 
    wait until rising_edge(aclk_int); 
        run_loc		                <= '1';
    wait until rising_edge(aclk_int);        
    wait for 100 uS;
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      25, 8));
    wait until rising_edge(aclk_int);
    wait for 100 uS;
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      1, 8));
    wait until rising_edge(aclk_int);
    wait for 100 uS; 
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(      0, 8));
    wait until rising_edge(aclk_int);
    wait for 100 uS; 
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(    100, 8));
    wait until rising_edge(aclk_int);
    wait for 100 uS;
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(     99, 8));
    wait until rising_edge(aclk_int);
    wait for 100 uS;  
    wait until rising_edge(aclk_int);
        pwm_val_loc		            <= std_logic_vector(TO_UNSIGNED(    50, 8));
    wait until rising_edge(aclk_int);
    wait for 100 uS;
     wait until rising_edge(aclk_int); 
        pwm_frq_loc		            <= std_logic_vector(TO_UNSIGNED(      40, 7));
    wait until rising_edge(aclk_int);
    wait for 100 uS; 
    wait until rising_edge(aclk_int);                        
    wait for 1 uS;  
    wait until rising_edge(aclk_int);
        run_loc		                <= '0';
    wait until rising_edge(aclk_int);                           
    wait;  -- forever       
   end process dcm_data_gen;

--------------------------------------------------------

    pwm_val		<= transport pwm_val_loc after 100 ps;
    pwm_frq		<= transport pwm_frq_loc after 100 ps;
    dir			<= transport dir_loc after 100 ps;
    run		    <= transport run_loc after 100 ps;
    brake		<= transport brake_loc after 100 ps;
    vld_out		<= transport vld_out_loc after 100 ps;
        

end Bhe;
