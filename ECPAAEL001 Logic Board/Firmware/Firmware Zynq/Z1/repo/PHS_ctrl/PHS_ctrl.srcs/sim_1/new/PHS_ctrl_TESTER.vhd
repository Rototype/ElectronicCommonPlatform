----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2019 12:03:46
-- Design Name: 
-- Module Name: PHS_ctrl_TESTER - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity PHS_ctrl_TESTER is
 Port ( 
       signal aclk                       :   OUT std_logic;    
       signal aresetn                    :   OUT std_logic:= '1';
       --
       signal ena                        :   OUT std_logic;
       --
       signal pwm_val                    :   out std_logic_vector(9 downto 0) := B"00_0000_0000";
	   signal vld                        :   out std_logic := '0';
	   --
	   signal port_phs_in                :   out std_logic := '0'	                  
 );
end PHS_ctrl_TESTER;

architecture bhe of PHS_ctrl_TESTER IS

constant aclk_frq_MHz				: real := 100.0;

constant aclk_frequency				: real := aclk_frq_MHz * 1000000.0 ;		-- [Hz] 
constant aclk_period				: time := (1.0 / aclk_frequency) * (1 Sec); -- [S]

signal aclk_int					    : STD_LOGIC := '0';
signal aresetn_int                  : STD_LOGIC := '0';

signal ena_int					    : STD_LOGIC := '0';
constant PWM_cycle_clks             : integer   := 1000; -- [Clk cycles]


signal ena_cnt                      : std_logic_vector(11 downto 0) := X"000";

signal pwm_val_int                  : integer := 0;
signal pwm_val_slv                  : std_logic_vector(9 downto 0) := B"00_0000_0000";
signal vld_int                      : std_logic := '0'; 

signal port_phs                     : std_logic := '0'; 

begin

	aclk_int_gen : process
	begin  
		aclk_int	<= '0';
		wait for (aclk_period/2);
		aclk_int	<= '1';
		wait for (aclk_period/2);
	end process aclk_int_gen;  
  
	aresetn_int		<= '1' after 1 uS;	  
  
	aclk			<= aclk_int;
	aresetn			<= transport aresetn_int after 100 pS; 
	
--------------------------------------------------------

    ena_proc: process (aclk_int)
    begin       
       if rising_edge(aclk_int) then
        if (aresetn_int = '0') then
            ena_cnt     <= X"000";
            ena_int     <= '0';
        else

            if (ena_cnt = 0) then
                ena_cnt <= ena_cnt + '1';
                ena_int     <= '0';
            elsif (ena_cnt = 1) then
                ena_cnt <= ena_cnt + '1';
                ena_int     <= '1';                
            elsif (ena_cnt = (PWM_cycle_clks - 1)) then
                ena_cnt <= X"000";
                ena_int     <= '0';
            else
                ena_cnt <= ena_cnt + '1';
                ena_int     <= '0';
            end if;
          end if;                                                                           
       end if;
    end process ena_proc; 
    
   ena			<= transport ena_int after 100 pS; 

   pwm_data_gen: process
   begin
        pwm_val_int <= 0;
        vld_int <= '0';   
    wait until (aresetn_int = '1');
    --  3
    wait for 1 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 3;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';
    --  1
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 1;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';       
    --  0       
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 0;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';       
    --  999  
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 999;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';            
    --  1000 
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 1000;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';       
    --  999 
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 999;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0'; 
    --  2000 
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 2000;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';
    --  500 
    wait for 25 uS;
    wait until rising_edge(aclk_int);
        pwm_val_int <= 500;
        vld_int <= '1';
    wait until rising_edge(aclk_int);
        vld_int <= '0';     
    wait;  -- forever       
   end process pwm_data_gen;

   pwm_val_slv <= std_logic_vector(TO_UNSIGNED(pwm_val_int, 10));
   
   vld         <= transport vld_int after 100 pS;
   pwm_val     <= transport pwm_val_slv after 100 pS;
   
   phs_data_gen: process
   begin
    port_phs <= '0';   
    wait until (aresetn_int = '1');
    wait for 3 uS;
    --  
    wait for 200 ns;
    port_phs <= '1';
    wait for 200 nS;
    port_phs <= '0';    
    --  
    wait for 500 nS;
    port_phs <= '1';
    wait for 500 nS;
    port_phs <= '0';       
    --  
    wait for 1 uS;
    port_phs <= '1';
    wait for 1 uS;
    port_phs <= '0';  
    --  
    wait for 500 nS;
    port_phs <= '1';
    wait for 500 nS;
    port_phs <= '0';  
    --  
    wait for 200 ns;
    port_phs <= '1';
    wait for 200 nS;
    port_phs <= '0';  
    --
    wait for 200 nS;
    port_phs <= '1'; 
    
    wait for 5 uS; 
    
    wait for 200 ns;
    port_phs <= '0';
    wait for 200 nS;
    port_phs <= '1';    
    --  
    wait for 500 nS;
    port_phs <= '0';
    wait for 500 nS;
    port_phs <= '1';       
    --  
    wait for 1 uS;
    port_phs <= '0';
    wait for 1 uS;
    port_phs <= '1';  
    --  
    wait for 500 nS;
    port_phs <= '0';
    wait for 500 nS;
    port_phs <= '1';  
    --  
    wait for 200 ns;
    port_phs <= '0';
    wait for 200 nS;
    port_phs <= '1';  
    --
    wait for 200 nS;
    port_phs <= '0'; 
       
    wait;  -- forever       
   end process phs_data_gen;
   
   port_phs_in     <= transport port_phs after 100 pS;      
   
end bhe;