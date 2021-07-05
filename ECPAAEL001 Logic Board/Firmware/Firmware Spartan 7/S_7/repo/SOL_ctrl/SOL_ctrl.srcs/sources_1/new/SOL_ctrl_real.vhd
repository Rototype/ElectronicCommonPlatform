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

entity SOL_ctrl_real is
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
end SOL_ctrl_real;

architecture rtl of SOL_ctrl_real is

------- reset tree resampling  -------------------------------------------------------
signal aresetn_loc      : std_logic := '1'; 
signal resetn           : std_logic := '0';    
signal reset            : std_logic := '1'; 

signal pwm_val_loc		: std_logic_vector(7 downto 0) := (others => '0');
signal time_full_loc    : std_logic_vector(10 downto 0) := std_logic_vector(TO_UNSIGNED(1, 11));

signal vld_out_loc : std_logic := '0';

signal run_d1      : std_logic := '0';
signal run_d2      : std_logic := '0';
signal run_on      : std_logic := '0';
signal run_off     : std_logic := '0';
signal run_loc     : std_logic := '0';

constant pwm_ena   : std_logic_vector(11 downto 0) := std_logic_vector(TO_UNSIGNED( 50,12)); -- 50 = 20 KHz, 100 = 10 KHz, 200 = 5KHz
constant ena_at_mS : std_logic_vector( 7 downto 0) := std_logic_vector(TO_UNSIGNED( 20, 8)); -- 20 = 20 KHz,  10 = 10 KHz,   5 = 5KHz  

signal ena_cnt     : std_logic_vector(11 downto 0) := (others => '1');
signal ena         : std_logic := '0';

signal pwm_cnt     : std_logic_vector(7 downto 0) := std_logic_vector(TO_UNSIGNED(1, 8));
signal mS_cnt      : std_logic_vector(7 downto 0) := X"00";
signal time_cnt    : std_logic_vector(10 downto 0) := std_logic_vector(TO_UNSIGNED(1, 11));

signal pwm_full    : std_logic := '0';

signal status_loc     : std_logic_vector(1 downto 0);
signal status_loc_d1  : std_logic_vector(1 downto 0);

begin

    rst_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         aresetn_loc <= aresetn;
         resetn      <= aresetn_loc;
         reset       <= not(aresetn_loc);      
       end if;
    end process rst_gen; 
    
    rst_100_out <= reset;
    
    sample_controls: process (aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then
                vld_out_loc        <= '0';
                pwm_val_loc		   <= B"0000_0000"; 
                time_full_loc	   <= B"000_0000_0000";           
            else
                vld_out_loc <= vld_out;
                
                if (vld_out_loc = '1') then
                    pwm_val_loc		   <= pwm_val;
                    time_full_loc	   <= time_full;
                end if;               
            end if;
        end if;
    end process sample_controls;  
    
    run_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         if (reset = '1') then
            run_d1       <= '0';
            run_d2       <= '0';
            run_on       <= '0';
            run_off      <= '0';  
            run_loc      <= '0';   
         else
         
            if (vld_out_loc = '1') then
                run_d1       <= run;
            end if;                   
            run_d2       <= run_d1;
            
            if (run_d1 = '1') and (run_d2 = '0') then
                run_on       <= '1';
                run_loc      <= '1';
                run_off      <= '0';
            elsif (run_d1 = '0') and (run_d2 = '1') then 
                run_on       <= '0';
                run_loc      <= '0';
                run_off      <= '1';            
            else
                run_on       <= '0';
                run_off      <= '0';  
            end if;
                                         
         end if;                                                                
       end if;
    end process run_gen;      
    
    ena_gen: process(aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then           
                ena_cnt  <= X"FFF";
                ena      <= '0';
            else
                if (ena_cnt = X"FFF") then
                    if (run_on   = '1') then
                        ena_cnt  <= X"001";
                        ena      <= '1';
                    else
                        ena_cnt  <= X"FFF";
                        ena      <= '0';
                    end if;
                elsif (ena_cnt = pwm_ena) then
                    if (run_loc = '1') then
                        ena_cnt <= X"001";
                        ena     <= '1';                        
                    else
                        ena_cnt  <= X"FFF";
                        ena      <= '0';
                    end if;                         
                else                                             
                    ena_cnt <= ena_cnt + X"1";
                    ena     <= '0';
                end if;               
            end if;
        end if;
    end process ena_gen;

    pwm_cnt_gen: process(aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then   
                pwm_cnt   <= X"01";
                mS_cnt    <= X"01";
                time_cnt  <= std_logic_vector(TO_UNSIGNED(1, 11));
                pwm_full  <= '0';
            else
                if (run_off = '1') then  -- stop anyway, even if "time_full_loc" has not yet passed
                    pwm_cnt <= X"01";
                    mS_cnt    <= X"01";                   
                    time_cnt  <= std_logic_vector(TO_UNSIGNED(1, 11));
                    pwm_full <= '0';
                elsif (run_on = '1') then  -- asynchronous start
                    pwm_cnt <= X"01";
                    mS_cnt    <= X"01";                   
                    time_cnt  <= std_logic_vector(TO_UNSIGNED(1, 11));
                    pwm_full <= '1';       
                elsif (run_loc = '1') then
                    if (ena = '1') then      -- counting "time_full_loc" mS
                        if (pwm_cnt = 100) then
                            pwm_cnt <= X"01";
                            if (mS_cnt = ena_at_mS) then
                                mS_cnt <= X"01";
                                if (time_cnt = time_full_loc) then
                                    time_cnt <= time_cnt;
                                    pwm_full <= '0';
                                else
                                    time_cnt <= time_cnt + X"1";
                                end if;                           
                            else
                                mS_cnt <= mS_cnt + X"1";                          
                            end if;
                        else
                            pwm_cnt <= pwm_cnt + X"1";
                        end if;   
                    end if;
                else            --run_loc = '0' reset between different activations 
                    pwm_cnt   <= X"01";
                    mS_cnt    <= X"01";                   
                    pwm_full  <= '0';
                end if;
            end if;               
        end if;
    end process pwm_cnt_gen;
    
    port_pwm_gen: process(aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then     
		      port_pwm	<= '0';                        
            else
                if (((run_loc) = '0') or (pwm_val_loc = 0)) then
		           port_pwm	<= '0';
		        elsif (pwm_full = '1') then
		           port_pwm	<= '1';             
                elsif not(pwm_cnt > pwm_val_loc) then
		           port_pwm	<= '1';
		        else
		           port_pwm	<= '0';
		        end if;                 
            end if;
        end if;
    end process port_pwm_gen;    
    
    status_gen: process(aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then  
                status_loc       <= "00";
                status_loc_d1    <= "00";
                vld_in           <= '0';                
                status           <= "00";
            else
                if (run_loc = '1') then
                    if (pwm_full = '1') then
                        status_loc <= "10";
                    else
                        status_loc <= "01";
                    end if;
                else
                    status_loc <= "00";
                end if;
                
                status_loc_d1 <= status_loc;                
                
                if (status_loc_d1 /= status_loc) then
                    vld_in           <= '1';
                else
                    vld_in           <= '0';
                end if;
                
                status <= status_loc_d1;                                       
            end if;                                 
        end if;
    end process status_gen;

end rtl;
