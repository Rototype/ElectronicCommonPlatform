library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity PHS_ctrl_real is
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
    
 	attribute IOB : string;
    -- Place the register connected to port_pwm_out in the OFF logic site
    attribute IOB of port_pwm_out: signal is "TRUE";
    -- Place the register connected to port_phs_in in the IFF logic site    
    attribute IOB of port_phs_in: signal is "TRUE";     
          
end PHS_ctrl_real;

architecture rtl of PHS_ctrl_real is
------- reset tree resampling  -------------------------------------------------------
signal resetn                         :   std_logic := '0';    
signal reset                          :   std_logic := '1'; 

constant PWM_cycle_clks               :   integer   := 1000; -- [Clk cycles]
constant num_of_PHS                   :   integer   := 50;
constant ena_dly                      :   integer   := (PWM_cycle_clks / num_of_PHS);
signal ena                            :   std_logic :='0';
signal ena_dly_cnt                    :   std_logic_vector(7 downto 0) := X"00";

signal vld                            :   std_logic :='0';

signal pwm_int                        :   std_logic_vector(9 downto 0) := B"00_0000_0000";
signal pwm_maxcnt                     :   std_logic_vector(9 downto 0) := B"00_0000_0000";
signal pwm_cnt                        :   std_logic_vector(9 downto 0) := B"00_0000_0000";

signal status_i                       :   std_logic :='0';
signal status_i_d                     :   std_logic :='0';
signal vld_in_i                       :   std_logic :='0';
signal vld_in_i_d                     :   std_logic :='0';

signal port_phs                       :   std_logic := '0'; -- FF to be located "in IOB"
signal port_phs_meta                  :   std_logic := '0'; -- FF to remove metastability
signal deb_cnt                        :   std_logic_vector(7 downto 0) := X"00";

signal irq0_L2S_i                     :   std_logic := '0';
signal irq1_S2L_i                     :   std_logic := '0';

signal irq0_clr_i                     :   std_logic := '0';
signal irq1_clr_i                     :   std_logic := '0';


attribute ASYNC_REG : string;
-- Designates sync_regs as receiving asynchronous data
attribute ASYNC_REG of port_phs: signal is "TRUE";
attribute ASYNC_REG of port_phs_meta: signal is "TRUE";


begin

------- reset trees resampling  ----------------------------

    rst_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         resetn      <= aresetn;      
       end if;
    end process rst_gen; 
    reset <= not(resetn);

------- enable handling  ----------------------------

    ena_proc: process (aclk)
    begin       
       if rising_edge(aclk) then
        if (reset = '1') then
            ena         <= '0';
            ena_dly_cnt <= X"00";
            ena_out     <= '0';
        else
            ena         <= ena_in;
            
            if (ena_dly_cnt = 0) then
                if (ena = '1') then
                    ena_dly_cnt <= ena_dly_cnt + '1';
                else
                    ena_dly_cnt <= ena_dly_cnt;
                end if;
                ena_out     <= '0';
            elsif (ena_dly_cnt = (ena_dly - 2)) then
                ena_dly_cnt <= X"00";
                ena_out     <= '1';
            else
                ena_dly_cnt <= ena_dly_cnt + '1';
                ena_out     <= '0';
            end if;
          end if;                                                                           
       end if;
    end process ena_proc; 
    
    
    pwm_proc: process (aclk)
    begin       
      if rising_edge(aclk) then
        if (reset = '1') then
            vld         <= '0';
            
            pwm_int     <= B"00_0000_0000";            
            pwm_maxcnt  <= B"00_0000_0000";
            
            pwm_cnt     <= B"00_0000_0000";             
            
        else
            vld         <= vld_out;  -- resampling for timing purpose
            
            if (vld = '1') then      -- store only when valid
                pwm_int <= pwm_val;
            else
                null;    
            end if; 
            
            if (ena = '1') then      -- synchronize to counter and exclude wrong counting
                if (pwm_int > B"11_1110_1000") then -- > 1000
                     pwm_maxcnt <= B"11_1110_1000";    -- > 999                                   
                else
                     pwm_maxcnt <= pwm_int;
                end if;
             else
                null;    
            end if;  
            
            if (pwm_cnt = 0) then
               if (ena = '1') then
                   pwm_cnt <= pwm_cnt + '1';
               else
                   pwm_cnt <= pwm_cnt;
               end if;
               if (pwm_int = B"00_0000_0000") then                                        
                   port_pwm_out <='0';                -- keep down if pwm_val is 0
               else
                   port_pwm_out <='1';                -- else pull up
               end if;
            elsif (pwm_cnt = pwm_maxcnt) and (pwm_cnt /= (PWM_cycle_clks - 1)) then
               pwm_cnt <= pwm_cnt + '1';
               port_pwm_out <='0';                      -- pull down
            elsif (pwm_cnt = (PWM_cycle_clks - 1)) then                           
               pwm_cnt <= B"00_0000_0000";
               if (pwm_maxcnt = B"11_1110_1000") then
                 port_pwm_out <='1';                  -- keep high if pwm_val is 1000
               else
                 port_pwm_out <='0';                  -- else pull down 
               end if;                 
            else
               pwm_cnt <= pwm_cnt + '1';                          
            end if;
                                                                                                 
        end if;
      end if;
    end process pwm_proc;
    
    phs_proc: process (aclk)
    begin       
      if rising_edge(aclk) then
        if (reset = '1') then
            status          <= '0';
            status_i        <= '0';
            status_i_d      <= '0';
                       
            vld_in          <= '0';
            vld_in_i        <= '0'; 
            vld_in_i_d      <= '0'; 
            
            irq0_L2S_i      <= '0'; 
            irq1_S2L_i      <= '0';       
                        
            port_phs        <= '0'; 
            port_phs_meta   <= '0'; 
            deb_cnt         <= X"00";
            
            irq0_clr_i      <= '0'; 
            irq1_clr_i      <= '0'; 
                                
        else
            
            port_phs         <= port_phs_in;    -- put FF in IOB. Sample first, elaborate later.
            port_phs_meta    <= port_phs;       -- to remove metastability          
            
            if (deb_cnt < 128) then      -- debounce. Integrates 0s and 1s to accelerate noise cleaning. High when >= 128
                if (port_phs_meta = '1') then            --1
                    if (deb_cnt = 128) then
                        deb_cnt     <= X"80";
                    else    
                        deb_cnt <= deb_cnt + '1';
                    end if;
                else                                --0
                    if (deb_cnt = 0) then
                        deb_cnt     <= X"00";
                    else                        
                        deb_cnt <= deb_cnt - '1';
                    end if;
                end if;
            elsif (deb_cnt > 128) then          
                if (port_phs_meta = '0') then            --0   
                    if (deb_cnt = 255) then
                        deb_cnt     <= X"00";
                    else    
                        deb_cnt <= deb_cnt + '1';
                    end if;
                else                                --1 
                    if (deb_cnt = 128) then
                        deb_cnt     <= X"80";
                    else
                        deb_cnt <= deb_cnt - '1';                    
                    end if;
                end if;
            else
                if (port_phs_meta = '0') then            --0   
                    deb_cnt <= deb_cnt + '1';
                else                                --1 
                    deb_cnt     <= X"80";
                end if;
            end if; 
            
            status_i <=  deb_cnt(7); 
            
            -- resampling from register block for timing purpose
            irq0_clr_i      <= irq0_clr; 
            irq1_clr_i      <= irq1_clr; 
            
            if (status_i /= deb_cnt(7)) then
                vld_in_i <= '1';
            else
                vld_in_i <= '0';
            end if;                                  
            
            if ((deb_cnt(7)='1') and (status_i = '0')) then
                irq1_S2L_i <= '1';
            elsif (irq1_clr_i='0') then
                irq1_S2L_i <= '0';
            else
                null;
            end if;
            
            if ((deb_cnt(7)='0') and (status_i = '1')) then
                irq0_L2S_i <= '1';
            elsif (irq0_clr_i='0') then
                irq0_L2S_i <= '0'; 
            else
                null;  
            end if;            
            
            -- resampling to register block for timing purpose
            vld_in      <= vld_in_i;
            irq1_S2L    <= irq1_S2L_i;          
            irq0_L2S    <= irq0_L2S_i;
            status      <= status_i;
            
        end if;
      end if;
    end process phs_proc;
        
end rtl;
