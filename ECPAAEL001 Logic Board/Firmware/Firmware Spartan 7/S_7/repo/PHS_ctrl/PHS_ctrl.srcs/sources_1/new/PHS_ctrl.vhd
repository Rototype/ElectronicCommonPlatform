library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity PHS_ctrl is
  Generic (
 		PRESENT		:   integer range 0 to 1 := 1		         -- 1 = the controller is present; 0 = the controllere isafake
    );
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
attribute IOB of port_pwm_out : signal is "TRUE";   
attribute IOB of port_phs_in : signal is "TRUE";     

end PHS_ctrl;

architecture rtl of PHS_ctrl is

component PHS_ctrl_real
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
end component PHS_ctrl_real;

component PHS_ctrl_fake
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
end component PHS_ctrl_fake;

begin

R:	if (PRESENT = 1) generate
      begin
		PHS_ctrl : PHS_ctrl_real
		  Port map( 
            aclk          =>    aclk,
            aresetn       =>    aresetn,
    		--
            ena_in        =>    ena_in,
            ena_out       =>    ena_out,
            --
		    pwm_val       =>    pwm_val, 
		    status        =>    status,
            irq_mask      =>    irq_mask, 
    		irq0_L2S      =>    irq0_L2S,
    		irq1_S2L      =>    irq1_S2L,
    		irq0_clr	  =>    irq0_clr,
    		irq1_clr	  =>    irq1_clr,
    		vld_out       =>    vld_out,
    		vld_in		  =>    vld_in,
    		--	
    		port_pwm_out  =>    port_pwm_out,
    		port_phs_in   =>    port_phs_in
			);
   end generate;
   
F:	if (PRESENT = 0) generate
      begin
		PHS_ctrl : PHS_ctrl_fake
		  Port map( 
            aclk          =>    aclk,
            aresetn       =>    aresetn,
    		--
            ena_in        =>    ena_in,
            ena_out       =>    ena_out,
            --
		    pwm_val       =>    pwm_val, 
		    status        =>    status,
            irq_mask      =>    irq_mask, 
    		irq0_L2S      =>    irq0_L2S,
    		irq1_S2L      =>    irq1_S2L,
    		irq0_clr	  =>    irq0_clr,
    		irq1_clr	  =>    irq1_clr,
    		vld_out       =>    vld_out,
    		vld_in		  =>    vld_in,
    		--	
    		port_pwm_out  =>    port_pwm_out,
    		port_phs_in   =>    port_phs_in
			);
   end generate;
   
end rtl;
