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

entity DCM_ctrl_real is
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
end DCM_ctrl_real;

architecture rtl of DCM_ctrl_real is

------- reset tree resampling  -------------------------------------------------------
signal aresetn_loc      : std_logic := '1'; 
signal resetn           : std_logic := '0';    
signal reset            : std_logic := '1'; 

signal aresetn_loc_200  : std_logic := '1'; 
signal resetn_200       : std_logic := '0';    
signal reset_200        : std_logic := '1';

signal vld_out_loc      : std_logic := '0';
signal pwm_val_loc		: std_logic_vector(7 downto 0);
signal pwm_frq_loc		: std_logic_vector(6 downto 0);
signal pwm_ena          : std_logic_vector(8 downto 0) := std_logic_vector(TO_UNSIGNED(400, 9));

signal run_d1      : std_logic := '0';
signal run_d2      : std_logic := '0';
signal run_on      : std_logic := '0';
signal run_off     : std_logic := '0';
signal run_loc     : std_logic := '0';
signal run_fine    : std_logic := '0';

signal brake_d1      : std_logic := '0';
signal brake_d2      : std_logic := '0';
signal brake_on      : std_logic := '0';
signal brake_off     : std_logic := '0';
signal brake_loc     : std_logic := '0';
signal brake_fine    : std_logic := '0';

signal dir_d1      : std_logic := '0';
signal dir_d2      : std_logic := '0';
signal dir_loc     : std_logic := '0';


signal pwm_ena_loc : std_logic_vector(8 downto 0) := std_logic_vector(TO_UNSIGNED(400, 9));

signal ena_cnt     : std_logic_vector(8 downto 0) := std_logic_vector(TO_UNSIGNED(511, 9));
signal ena         : std_logic := '0';

signal pwm_cnt     : std_logic_vector(7 downto 0) := X"00";

signal status_loc     : std_logic_vector(1 downto 0);

signal status_loc_d1  : std_logic_vector(1 downto 0);
signal status_loc_d2  : std_logic_vector(1 downto 0);

signal vld_in_loc	  : std_logic := '0';

begin

------- reset trees resampling  ----------------------------

    rst_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         aresetn_loc <= aresetn;
         resetn      <= aresetn_loc;
         reset       <= not(aresetn_loc);      
       end if;
    end process rst_gen; 

    rst_200_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         aresetn_loc_200 <= aresetn;
         resetn_200      <= aresetn_loc_200;
         reset_200       <= not(aresetn_loc_200);      
       end if;
    end process rst_200_gen; 
    
    rst_200_out <= reset_200;

    change_domain: process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                vld_out_loc     <= '0';
                pwm_val_loc		<= X"00";
                pwm_frq_loc		<= B"000_0101";  -- 5 [KHz]         
            else
                vld_out_loc <= vld_out;
            
                if (vld_out_loc = '1') then
                    pwm_val_loc		<= pwm_val;
                    pwm_frq_loc		<= pwm_frq; 
                end if;             
            end if;
        end if;
    end process change_domain;
    
    dir_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            dir_d1       <= '0';
            dir_d2       <= '0'; 
            dir_loc      <= '0';   
         else
            if (vld_out_loc = '1') then
                dir_d1       <= dir; 
            end if;  
            dir_d2       <= dir_d1;
            dir_loc      <= dir_d2;                        
         end if;                                                                
       end if;
    end process dir_gen;    

    run_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
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
    
    brake_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            brake_d1       <= '0';
            brake_d2       <= '0';
            brake_on       <= '0';
            brake_off      <= '0';  
            brake_loc      <= '0';   
         else
            if (vld_out_loc = '1') then
                brake_d1       <= brake;
            end if;  
            brake_d2       <= brake_d1;
            if (brake_d1 = '1') and (brake_d2 = '0') then
                brake_on       <= '1';
                brake_loc      <= '1';
                brake_off      <= '0';
            elsif (brake_d1 = '0') and (brake_d2 = '1') then 
                brake_on       <= '0';
                brake_loc      <= '0';
                brake_off      <= '1';            
            else
                brake_on       <= '0';
                brake_off      <= '0';  
            end if;                             
         end if;                                                                
       end if;
    end process brake_gen;
    
    pwm_ena_loc_gen: process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                pwm_ena_loc <= std_logic_vector(TO_UNSIGNED(400, 9));            
            else
                case (to_integer(unsigned(pwm_frq_loc))) is
                    when   5    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED(400, 9));
                    when  10    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED(200, 9));
                    when  15    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED(133, 9));
                    when  20    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED(100, 9));
                    when  25    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 80, 9));
                    when  30    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 67, 9));
                    when  35    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 57, 9));
                    when  40    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 50, 9));
                    when  45 	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 44, 9));
                    when  50	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 40, 9));
                    when  55	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 36, 9));
                    when  60	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 33, 9));
                    when  65	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 31, 9));
                    when  70	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 28, 9));
                    when  75	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 27, 9));
                    when  80	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 25, 9));
                    when  85	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 24, 9));
                    when  90	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 22, 9));
                    when  95	=> pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 21, 9));
                    when 100    => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED( 20, 9));
                    when others => pwm_ena_loc <= std_logic_vector(TO_UNSIGNED(400, 9));
                end case;
            end if;
        end if;
    end process pwm_ena_loc_gen;
    
    pwm_ena_gen: process(clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then           
                pwm_ena <= std_logic_vector(TO_UNSIGNED(400, 9));
            else    
                if (ena = '1') or (run_on   = '1') then
                    pwm_ena <= pwm_ena_loc;
                end if;
            end if;
        end if;
    end process pwm_ena_gen; 
    
    ena_gen: process(clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then           
                ena_cnt  <= std_logic_vector(TO_UNSIGNED(511, 9));
                ena      <= '0';
                run_fine <= '0';
            else
                if (ena_cnt = 511) then
                    if (run_on   = '1') then
                        ena_cnt  <= std_logic_vector(TO_UNSIGNED(1, 9));
                        ena      <= '1';
                        run_fine <= '1';
                    else
                        ena_cnt  <= std_logic_vector(TO_UNSIGNED(511, 9));
                        ena      <= '0';
                        run_fine <= '0';
                    end if;
                elsif (ena_cnt = pwm_ena) then
                    if (run_loc = '1') then
                        ena_cnt <= std_logic_vector(TO_UNSIGNED(1, 9));
                        ena     <= '1';
                    else
                        if (pwm_cnt = 100) then
                            ena_cnt  <= std_logic_vector(TO_UNSIGNED(511, 9));
                            ena      <= '0';
                            run_fine <= '0';
                        else
                            ena_cnt <= std_logic_vector(TO_UNSIGNED(1, 9));
                            ena     <= '1';
                        end if;
                    end if;                         
                else                                             
                    ena_cnt <= ena_cnt + X"1";
                    ena     <= '0';
                end if;               
            end if;
        end if;
    end process ena_gen;
    
    pwm_cnt_gen: process(clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then   
                pwm_cnt <= X"01";
            else
                if ena = '1' then
                    if pwm_cnt = 100 then
                        pwm_cnt <= X"01";
                    else
                        pwm_cnt <= pwm_cnt + X"1";
                    end if;   
                end if;
            end if;
        end if;
    end process pwm_cnt_gen;
    
    port_pwm_gen: process(clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then     
		      port_pwm	<= '0';                         
            else
                if (((run_loc or run_fine) = '0') or (pwm_val_loc = 0) or (brake_loc = '1')) then
		           port_pwm	<= '0';         
                elsif not(pwm_cnt > pwm_val_loc) then
		           port_pwm	<= '1';
		        else
		           port_pwm	<= '0';
		        end if;                 
            end if;
        end if;
    end process port_pwm_gen;
 
    in_1_2_gen: process(clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then     
	           port_in1	<= '0';
	           port_in2	<= '0';
            else
                if (brake_loc = '1') then
                   --braked
                   port_in1	<= '1';
                   port_in2	<= '1';
                else
                    if ((run_loc or run_fine) = '1') then
                        if (dir_loc = '0') then
                           --CW
                           port_in1	<= '0';
                           port_in2	<= '1';
                        else
                           --CCW
                           port_in1	<= '1';
                           port_in2	<= '0';                           
                        end if;                            
                    else
                       -- free
                       port_in1	<= '0';
                       port_in2	<= '0';
                    end if;
                end if;                               
            end if;
        end if;
    end process in_1_2_gen;
    
    status_loc_gen: process(clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then     
	           status_loc <= "00";
            else 
               if (brake_loc = '1') then
                   status_loc <= "10";               
               elsif ((run_loc or run_fine) = '1') then
                   status_loc <= "01";                
               else -- free
                   status_loc <= "00";                 
               end if;
            end if;
        end if;
    end process status_loc_gen;

    status_gen: process(aclk)
    begin       
        if rising_edge(aclk) then
            if (reset = '1') then  
                status_loc_d1    <= "00";
                status_loc_d2    <= "00";
                vld_in_loc       <= '0'; 
                vld_in           <= '0';                
                status           <= "00";
            else

                status_loc_d1 <= status_loc;                
                status_loc_d2 <= status_loc_d1;
                                 
                if (status_loc_d2 /= status_loc_d1) then
                    vld_in_loc           <= '1';
                else
                    vld_in_loc           <= '0';
                end if;
                
                vld_in <= vld_in_loc;
                status <= status_loc_d2;                                       
            end if;                                 
        end if;
    end process status_gen;
    
end rtl;
