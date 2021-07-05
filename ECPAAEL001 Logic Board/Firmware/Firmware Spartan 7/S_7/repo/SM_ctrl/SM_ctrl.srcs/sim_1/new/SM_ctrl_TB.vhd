----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2019 12:23:10
-- Design Name: 
-- Module Name: PHS_ctrl_TB - Behavioral
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

-- To accelarate simulation drop this command to TCL console before to launch
-- "set_property unifast true [current_fileset simset]"
-- this turn on unifast library for entire project. pls read UG900 for more details.

entity SM_ctrl_TB is
--  Port ( );
end SM_ctrl_TB;

architecture Bhe of SM_ctrl_TB is

component SM_ctrl_TESTER is
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
	   ramp_up		              :   out std_logic;
	   ramp_dwn	                  :   out std_logic;
	   spd_chg		              :   out std_logic;
	   slw_stps	                  :   out std_logic;
	   fst_stps	                  :   out std_logic;
	   running		              :   in  std_logic_vector(1 downto 0);
	   irq_mask	                  :   out std_logic;
	   irq_in		              :   in  std_logic;
	   irq_clr		              :   out std_logic;
	   vld_in		              :   in  std_logic;
	   vld_out		              :   out std_logic      
 );
end component SM_ctrl_TESTER;

component SM_ctrl is
  Generic (
 		PRESENT		:   integer range 0 to 1 := 1		         -- 1 = the controller is present; 0 = the controllere isafake
    );
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
        smc_req     : out	   std_logic;
        -- Status out
        smc_Next_EC : in     STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_Next_RM : in     STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_ack     : in     STD_LOGIC       				   
    );
end component;

component SM_alg_server_loc is
  Port ( 
        -- clk & reset
        aresetn           : in    std_logic;
        aclk              : in    std_logic;
        clk200            : in    std_logic;  -- synchronous respect to aclk
        -- Stepper Moior controller 0 interface:
        smc_0_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_0_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_0_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_0_req         : in	  std_logic;
        -- Status out
        smc_0_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_0_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_0_ack         : out   STD_LOGIC      				   
    );
end component;

signal aclk                       :   std_logic := '0';    
signal aresetn                    :   std_logic := '1';
--
signal clk200                     :   std_logic := '0';  -- synchronous respect to aclk
--
signal ena_in                     :   std_logic;
signal ena_out                    :   std_logic;
-- 	
signal tgt_acc		              :   std_logic_vector(23 downto 0);
signal tgt_EC		              :   std_logic_vector(21 downto 0);
signal dir			              :   std_logic;
signal ena_load		              :   std_logic_vector(1 downto 0);
signal res			              :   std_logic_vector(1 downto 0);
signal init_EC	                  :   std_logic_vector(21 downto 0);
signal cnt_o		              :   std_logic_vector(31 downto 0);
signal cnt_i		              :   std_logic_vector(31 downto 0);
signal ramp_up		              :   std_logic;
signal ramp_dwn	                  :   std_logic;
signal spd_chg		              :   std_logic;
signal slw_stps	                  :   std_logic;
signal fst_stps	                  :   std_logic;
signal running		              :   std_logic_vector(1 downto 0);
signal irq_mask	                  :   std_logic;
signal irq_in		              :   std_logic;
signal irq_clr		              :   std_logic;
signal vld_in		              :   std_logic;
signal vld_out		              :   std_logic;

signal port_ref		              :   std_logic;
signal port_clk 	              :   std_logic;
signal port_ena		              :   std_logic;
signal port_dir		              :   std_logic;
signal port_m2P		              :   std_logic;
signal port_m1P		              :   std_logic;
---
signal smc_0_ACC                  :   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
signal smc_0_EC                   :   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_0_RM                   :   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned  
signal smc_0_req                  :   std_logic;
        -- Status out
signal smc_0_Next_EC              :   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal smc_0_Next_RM              :   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_0_ack                  :   STD_LOGIC; 
   
begin

tester : SM_ctrl_TESTER 
 Port Map( 
       aclk                       => aclk,
       aresetn                    => aresetn,
       --
       clk200                     => clk200,
       --	
	   tgt_acc		              => tgt_acc,
	   tgt_EC		              => tgt_EC,
	   dir			              => dir,
	   ena_load		              => ena_load,
	   res			              => res,
	   init_EC	                  => init_EC,
	   cnt_o		              => cnt_o,
	   cnt_i		              => cnt_i,
	   ramp_up		              => ramp_up,
	   ramp_dwn	                  => ramp_dwn,
	   spd_chg		              => spd_chg,
	   slw_stps	                  => slw_stps,
	   fst_stps	                  => fst_stps,
	   running		              => running,
	   irq_mask	                  => irq_mask,
	   irq_in		              => irq_in,
	   irq_clr		              => irq_clr,
	   vld_in		              => vld_in,
	   vld_out		              => vld_out
 );

dut : SM_ctrl
  Generic map(
 		PRESENT	=> 1		         -- 1 = the controller is present; 0 = the controllere isafake
    )
  Port map( 
        aclk        => aclk,
        aresetn     => aresetn,
		--
        clk200      => clk200,  
        --		
		tgt_acc		=> tgt_acc,
		tgt_EC		=> tgt_EC,
		dir			=> dir,
		ena_load    => ena_load,
		res			=> res,
		init_EC	    => init_EC,
		cnt_o		=> cnt_o,
		cnt_i		=> cnt_i,
		--
		ramp_up		=> ramp_up,
		ramp_dwn	=> ramp_dwn,
		spd_chg		=> spd_chg,
		--
		slw_stps	=> slw_stps,
		--
		fst_stps	=> fst_stps,
		--
		running		=> running,
		--
		irq_mask	=> irq_mask,
		irq_in		=> irq_in,
		irq_clr		=> irq_clr,
		vld_in		=> vld_in,
		vld_out		=> vld_out,
		--
		port_ref	=> port_ref,
		port_clk    => port_clk,
		port_ena	=> port_ena,
		port_dir	=> port_dir,
		port_m2P	=> port_m2P,
		port_m1P	=> port_m1P,
		
		-- Stepper Motor server interface:
        smc_ACC     => smc_0_ACC,     
        -- Status in       
        smc_EC      => smc_0_EC,
        smc_RM      => smc_0_RM,   
        smc_req     => smc_0_req,
        -- Status out
        smc_Next_EC => smc_0_Next_EC,
        smc_Next_RM => smc_0_Next_RM,
        smc_ack     => smc_0_ack			      				   
    );

server : SM_alg_server_loc
  Port map( 
        aclk        => aclk,
        aresetn     => aresetn,
		--
        clk200      => clk200,  
		-- Stepper Motor controller 0 interface:
        smc_0_ACC     => smc_0_ACC,     
        -- Status in       
        smc_0_EC      => smc_0_EC,
        smc_0_RM      => smc_0_RM,   
        smc_0_req     => smc_0_req,
        -- Status out
        smc_0_Next_EC => smc_0_Next_EC,
        smc_0_Next_RM => smc_0_Next_RM,
        smc_0_ack     => smc_0_ack			      				   
    );
            
end Bhe;
