library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity RT_timebase is
  Port ( 
        aclk          : in    std_logic;
        aresetn       : in    std_logic;
		--
        ena_PHS       : out   std_logic
        );
end RT_timebase;

architecture rtl of RT_timebase is
------- reset tree resampling  -------------------------------------------------------
signal resetn                         :   std_logic := '0';    
signal reset                          :   std_logic := '1'; 

signal phs_cnt                        :   std_logic_vector(9 downto 0) := B"11_1110_0111";

begin
------- reset trees resampling  ----------------------------

    rst_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         resetn      <= aresetn;      
       end if;
    end process rst_gen; 
    reset <= not(resetn);

------- PHS enable generator  ----------------------------

    ena_PHS_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
            if (reset = '1') then
                ena_PHS     <= '0';
                phs_cnt     <= B"11_1110_0111";
            else
                if (phs_cnt = B"11_1110_0111") then
                    ena_PHS     <= '1';
                    phs_cnt     <= B"00_0000_0000";
                else
                    ena_PHS     <= '0';
                    phs_cnt     <= phs_cnt + '1';
                end if;                            
            end if;                                                                        
       end if;
    end process ena_PHS_gen; 
    
end rtl;
