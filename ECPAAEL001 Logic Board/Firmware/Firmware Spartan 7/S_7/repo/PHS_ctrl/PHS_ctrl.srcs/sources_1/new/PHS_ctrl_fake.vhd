library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity PHS_ctrl_fake is
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
end PHS_ctrl_fake;

architecture rtl of PHS_ctrl_fake is
begin
    port_pwm_out <= '0';
    --
    status       <= '0';
    irq0_L2S     <= '0';
	irq1_S2L     <= '0';
	vld_in		 <= '0';
	
end rtl;
