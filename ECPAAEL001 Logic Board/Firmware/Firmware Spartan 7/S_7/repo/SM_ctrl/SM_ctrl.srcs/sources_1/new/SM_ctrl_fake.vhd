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

entity SM_ctrl_fake is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
		--
        clk200      : in    std_logic;                      -- synchronous respect to aclk
        -- microprocessor interface     		
		tgt_ACC		: in	std_logic_vector(23 downto 0);  -- unsigned
		tgt_EC		: in	std_logic_vector(21 downto 0);  -- unsigned  
		dir			: in	std_logic;                      -- 0 = clockwise, 1 = counterclockwise; 
		ena_load    : in	std_logic_vector(1 downto 0);   -- "0x" = free; "10" = 100%, "11" = 50%  down to engine control (port_ena, port_load)
		res			: in	std_logic_vector(1 downto 0);   -- port M2p M1p  
		init_EC	    : in	std_logic_vector(21 downto 0);  -- (step-in speed) unsigned
		cnt_o		: in	std_logic_vector(31 downto 0);  -- tgt_cnt
		cnt_i		: out	std_logic_vector(31 downto 0);  -- curr_cnt
		--
		ramp_up		: in	std_logic;                      -- from still to tgt_EC with tgt_ACC; (test if curr_EC < tgt_EC)
		ramp_dwn	: in	std_logic;                      -- from curr_EC to still with tgt_ACC (test if curr_EC > init_EC) 
		spd_chg		: in	std_logic;                      -- from curr_EC to tgt_EC with tgt_ACC (verify if ACCelerate or f_decel)
		--
		slw_stps	: in	std_logic;                      -- execution of tgt_cnt steps at init_EC
		--
		fst_stps	: in	std_logic;            
		running		: out	std_logic_vector(1 downto 0);
		--
		irq_mask	: in	std_logic;
		irq_in		: out	std_logic;
		irq_clr		: in	std_logic;
		vld_in		: out	std_logic;
		vld_out		: in	std_logic;
		-- Stepper motor controller chip interface
		port_ref	: out	std_logic;
		port_clk    : out	std_logic;
		port_ena	: out	std_logic;
		port_dir	: out	std_logic;
		port_m2P	: out	std_logic;
		port_m1P	: out	std_logic;
		-- Stepper Motor server interface:
        smc_ACC    : out    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_EC      : out    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_RM      : out    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_req     : out	 std_logic;
        -- Status out
        smc_Next_EC : in     STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_Next_RM : in     STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_ack     : in     STD_LOGIC       				   
    );
end SM_ctrl_fake;

architecture rtl of SM_ctrl_fake is

begin
        smc_req     <= '0';
        vld_in      <= '0';

		cnt_i		<= (others => '0');
		running		<= "00";

		irq_in		<= '0';
		
		smc_ACC     <= (others => '0');  
        -- Status in       
        smc_EC      <= (others => '1');
        smc_RM      <= (others => '0'); 
        smc_req     <= '0';
        
		port_ref	<= '0';
		port_clk	<= '0';
		port_ena	<= '0';
		port_dir	<= '0';
		port_m2P	<= '0';
		port_m1P	<= '0';

end rtl;
