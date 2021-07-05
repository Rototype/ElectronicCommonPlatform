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

entity SM_ctrl_TESTER is
Port ( 
       aclk                       :   OUT std_logic; 
       aresetn                    :   OUT std_logic := '1';
       --
       clk200                     :   out std_logic;  -- synchronous respect to aclk
       --
	   tgt_acc		              :   out std_logic_vector(23 downto 0);
	   tgt_EC		              :   out std_logic_vector(21 downto 0);
	   dir			              :   out std_logic;
	   ena_load		              :   out std_logic_vector(1 downto 0);
	   res			              :   out std_logic_vector(1 downto 0);
	   init_EC	                  :   out std_logic_vector(21 downto 0);
	   cnt_o		              :   out std_logic_vector(31 downto 0);
	   cnt_i		              :   in  std_logic_vector(31 downto 0);
	   --
	   ramp_up		              :   out std_logic;
	   ramp_dwn	                  :   out std_logic;
	   spd_chg		              :   out std_logic;
	   --
	   slw_stps	                  :   out std_logic;
	   fst_stps	                  :   out std_logic;
	   --
	   running		              :   in  std_logic_vector(1 downto 0);
	   irq_mask	                  :   out std_logic;
	   irq_in		              :   in  std_logic;
	   irq_clr		              :   out std_logic;
	   vld_in		              :   in  std_logic;
	   vld_out		              :   out std_logic      
);
end SM_ctrl_TESTER;

architecture Bhe of SM_ctrl_TESTER is

constant clk200_frq_MHz				: real := 200.0;

constant clk200_frequency		    : real := clk200_frq_MHz * 1000000.0 ;		-- [Hz] 
constant clk200_period				: time := (1.0 / clk200_frequency) * (1 Sec); -- [S]

signal clk200_int                   : STD_LOGIC := '0';
signal aclk_int					    : STD_LOGIC := '0';
signal aresetn_int                  : STD_LOGIC := '0';

signal tgt_acc_loc		            : std_logic_vector(23 downto 0);
signal cnt_o_loc		            : std_logic_vector(31 downto 0);
signal tgt_EC_loc		            : std_logic_vector(21 downto 0);
signal init_EC_loc	                : std_logic_vector(21 downto 0);
signal fst_stps_loc	                : std_logic;
signal slw_stps_loc	                : std_logic;
signal ramp_up_loc		            : std_logic;
signal ramp_dwn_loc	                : std_logic;
signal spd_chg_loc		            : std_logic;
signal vld_out_loc		            : std_logic;

signal irq_mask_loc	                : std_logic := '0';
signal irq_clr_loc		            : std_logic := '0';

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

    sm_data_gen: process
    begin
        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED(      0, 24));    
        cnt_o_loc           <= std_logic_vector(TO_UNSIGNED(      0, 32)); 
        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(      0, 22)); 
        init_EC_loc         <= std_logic_vector(TO_UNSIGNED(      0, 22));
        fst_stps_loc        <= '0';
        slw_stps_loc        <= '0';
        vld_out_loc         <= '0';
        --
        ramp_up_loc		    <= '0';
        ramp_dwn_loc	    <= '0';
        spd_chg_loc		    <= '0';       
    wait until (aresetn_int = '1');
    wait for 15 uS;    
    --
--    -- fast steps, 10 steps @ init_EC (3000)
--    wait until rising_edge(aclk_int);
--        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED( 2_000_000, 24));    
--        cnt_o_loc           <= std_logic_vector(TO_UNSIGNED(       181, 32)); -- 180,181 trapezoid; 100,101 triangle
--        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(     2_900, 22)); 
--        init_EC_loc         <= std_logic_vector(TO_UNSIGNED(     3_000, 22));     
--    wait until rising_edge(aclk_int);
--        fst_stps_loc        <= '1';
--    wait until rising_edge(aclk_int);
--    wait until rising_edge(aclk_int);
--    wait until rising_edge(aclk_int);
--        fst_stps_loc        <= '0';
--    wait for 110 uS;
    ----------
    -- slow steps, 10 steps @ init_EC (3000)        
    wait until rising_edge(aclk_int);
        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED( 2_000_000, 24));    
        cnt_o_loc           <= std_logic_vector(TO_UNSIGNED(        10, 32));
        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(     2_900, 22)); 
        init_EC_loc         <= std_logic_vector(TO_UNSIGNED( 2_000_000, 22));
        irq_mask_loc	    <= '1';
        irq_clr_loc		    <= '0';
        vld_out_loc         <= '1';
    wait until rising_edge(aclk_int);
        vld_out_loc         <= '0';   
    wait until rising_edge(aclk_int);
        slw_stps_loc        <= '1';
        vld_out_loc         <= '1';
    wait until rising_edge(aclk_int);
        vld_out_loc         <= '0';    
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
        slw_stps_loc        <= '0';
        vld_out_loc         <= '1';
    wait until rising_edge(aclk_int);
        vld_out_loc         <= '0';    
    wait until rising_edge(aclk_int);         
    ----------
    -- ramp_up       0 to 2950
    -- accelerate 2950 to 2800
    -- decelerate 2800 to 2900
    -- ramp down  2900 to    0
     
    -- ramp_up  
    wait for 100 mS;        
    wait until rising_edge(aclk_int);
        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED( 2_000_000, 24));
        cnt_o_loc           <= std_logic_vector(TO_UNSIGNED(        10, 32));  -- DO NOT CARE     
        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(     2_950, 22)); 
        init_EC_loc         <= std_logic_vector(TO_UNSIGNED(     3_000, 22));
    wait until rising_edge(aclk_int);        
        ramp_up_loc		    <= '1';
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
        ramp_up_loc         <= '0';
    wait for 40 uS;        
    --  spd_chg, accelarate                                
    wait until rising_edge(aclk_int);
        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED( 1_500_000, 24));   
        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(     2_800, 22)); 
        init_EC_loc         <= std_logic_vector(TO_UNSIGNED(     3_000, 22));
    wait until rising_edge(aclk_int);        
        spd_chg_loc		    <= '1';
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
        spd_chg_loc        <= '0';
    wait for 90 uS;        
    --  spd_chg, decelerate                                
    wait until rising_edge(aclk_int);
        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED( 1_500_000, 24));   
        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(     2_900, 22)); 
        init_EC_loc         <= std_logic_vector(TO_UNSIGNED(     3_000, 22));
    wait until rising_edge(aclk_int);        
        spd_chg_loc		    <= '1';
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
        spd_chg_loc        <= '0'; 
    wait for 70 uS;        
    --  ramp_dwn                                
    wait until rising_edge(aclk_int);
        tgt_acc_loc         <= std_logic_vector(TO_UNSIGNED( 2_000_000, 24));   
        tgt_EC_loc          <= std_logic_vector(TO_UNSIGNED(     2_900, 22)); -- do not care
        init_EC_loc         <= std_logic_vector(TO_UNSIGNED(     3_000, 22));
    wait until rising_edge(aclk_int);        
        ramp_dwn_loc		    <= '1';
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
    wait until rising_edge(aclk_int);
        ramp_dwn_loc        <= '0';         
    ----------    
    wait;  -- forever       
   end process sm_data_gen;

--------------------------------------------------------
    vld_out             <= transport vld_out_loc after 100 ps;

    tgt_acc             <= transport tgt_acc_loc after 100 ps;
    cnt_o               <= transport cnt_o_loc after 100 ps;
    tgt_EC              <= transport tgt_EC_loc after 100 ps;
    init_EC             <= transport init_EC_loc after 100 ps;
    fst_stps            <= transport fst_stps_loc after 100 ps;
    slw_stps            <= transport slw_stps_loc after 100 ps;
    --
    ramp_up             <= transport ramp_up_loc after 100 ps;
    ramp_dwn            <= transport ramp_dwn_loc after 100 ps;
    spd_chg             <= transport spd_chg_loc after 100 ps;        
    --
    irq_mask	        <= transport irq_mask_loc after 100 ps; 
    irq_clr		        <= transport irq_clr_loc after 100 ps;
end Bhe;
