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

entity SM_ctrl is
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
        smc_ack     : in     STD_LOGIC;
		-- Debug Stepper motor controller chip interface
		dbg_ref	: out	std_logic;
		dbg_clk : out	std_logic;
		dbg_ena	: out	std_logic;
		dbg_dir	: out	std_logic;
		dbg_m2P	: out	std_logic;
		dbg_m1P	: out	std_logic         	      				   
    );
    
attribute IOB : string;
attribute IOB of port_ref : signal is "TRUE";   
attribute IOB of port_clk : signal is "TRUE"; 
attribute IOB of port_ena : signal is "TRUE"; 
attribute IOB of port_dir : signal is "TRUE"; 
attribute IOB of port_m2P : signal is "TRUE"; 
attribute IOB of port_m1P : signal is "TRUE";     
    
end SM_ctrl;

architecture rtl of SM_ctrl is

-- Test comment 2

component SM_ctrl_real is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
        rst_200_out : out   std_logic;
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
end component SM_ctrl_real;

component SM_ctrl_fake is
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
end component SM_ctrl_fake;

signal	rst_200_loc :	std_logic;

signal	port_ref_loc :	std_logic;
signal	port_clk_loc :  std_logic;
signal	port_ena_loc :	std_logic;
signal	port_dir_loc :	std_logic;
signal	port_m2P_loc :	std_logic;
signal	port_m1P_loc :	std_logic;


begin

R:	if (PRESENT = 1) generate
      begin
		SM_ctrl : SM_ctrl_real
		  Port map( 
				aclk        =>	aclk    ,     
				aresetn     =>	aresetn , 
				rst_200_out =>  rst_200_loc,   
				--    
				clk200      =>	clk200  ,     
                --   
				tgt_ACC		=>	tgt_ACC	,	 
				tgt_EC		=>	tgt_EC	,	 
				dir			=>	dir		,	 
				ena_load    =>	ena_load,	 
				res			=>	res		,	 
				init_EC 	=>	init_EC ,	 
				cnt_o		=>	cnt_o	,	 
				cnt_i		=>	cnt_i	,
				--	 
				ramp_up		=>	ramp_up	,	 
				ramp_dwn	=>	ramp_dwn,	 
				spd_chg		=>	spd_chg	,
				--	 
				slw_stps	=>	slw_stps,
				--	 
				fst_stps	=>	fst_stps,
				--	 
				running		=>	running	,
				--	 
				irq_mask	=>	irq_mask,	 
				irq_in		=>	irq_in	,	 
				irq_clr		=>	irq_clr	,	 
				vld_in		=>	vld_in	,	 
				vld_out		=>	vld_out	,	 
				-- 	 
				port_ref	=>	port_ref_loc,	 
				port_clk    =>	port_clk_loc,    
				port_ena	=>	port_ena_loc,	 
				port_dir	=>	port_dir_loc,	 
				port_m2P	=>	port_m2P_loc,	 
				port_m1P	=>	port_m1P_loc,
		        -- Stepper Motor server interface:
                smc_ACC     => smc_ACC,     
                -- Status in       
                smc_EC      => smc_EC,
                smc_RM      => smc_RM,   
                smc_req     => smc_req,
                -- Status out
                smc_Next_EC => smc_Next_EC,
                smc_Next_RM => smc_Next_RM,
                smc_ack     => smc_ack	   
			);
   end generate;
   
F:	if (PRESENT = 0) generate
      begin
		SM_ctrl : SM_ctrl_fake
		  Port map( 
				aclk        =>	aclk    ,     
				aresetn     =>	aresetn ,     
				--    
				clk200      =>	clk200  ,     
                --     
				tgt_ACC		=>	tgt_ACC	,	 
				tgt_EC		=>	tgt_EC	,	 
				dir			=>	dir		,	 
				ena_load    =>	ena_load,	 
				res			=>	res		,	 
				init_EC 	=>	init_EC ,	 
				cnt_o		=>	cnt_o	,	 
				cnt_i		=>	cnt_i	,
				--	 
				ramp_up		=>	ramp_up	,	 
				ramp_dwn	=>	ramp_dwn,	 
				spd_chg		=>	spd_chg	,
				--	 
				slw_stps	=>	slw_stps,
				--	 
				fst_stps	=>	fst_stps,
				--	 
				running		=>	running	,
				--	 
				irq_mask	=>	irq_mask,	 
				irq_in		=>	irq_in	,	 
				irq_clr		=>	irq_clr	,	 
				vld_in		=>	vld_in	,	 
				vld_out		=>	vld_out	,	 
				--   
				port_ref	=>	port_ref_loc,	 
				port_clk    =>	port_clk_loc,    
				port_ena	=>	port_ena_loc,	 
				port_dir	=>	port_dir_loc,	 
				port_m2P	=>	port_m2P_loc,	 
				port_m1P	=>	port_m1P_loc,
		        -- Stepper Motor server interface:
                smc_ACC     => smc_ACC,     
                -- Status in       
                smc_EC      => smc_EC,
                smc_RM      => smc_RM,   
                smc_req     => smc_req,
                -- Status out
                smc_Next_EC => smc_Next_EC,
                smc_Next_RM => smc_Next_RM,
                smc_ack     => smc_ack	   	   
			);
   end generate;
   
    Out_registers: process (clk200)    
    begin       
       if rising_edge(clk200) then
         if (rst_200_loc = '1') then
				port_ref	<=	'0';	 
				port_clk    <=	'0';    
				port_ena	<=	'0';	 
				port_dir	<=	'0';	 
				port_m2P	<=	'0';	 
				port_m1P	<=	'0';
				--
				dbg_ref	    <=	'0';	 
		        dbg_clk	    <=	'0';	 
		        dbg_ena	    <=	'0';	 
		        dbg_dir	    <=	'0';	 
		        dbg_m2P	    <=	'0';	 
		        dbg_m1P	    <=	'0';	 
         else
				port_ref	<=	port_ref_loc;	 
				port_clk    <=	port_clk_loc;    
				port_ena	<=	port_ena_loc;	 
				port_dir	<=	port_dir_loc;	 
				port_m2P	<=	port_m2P_loc;	 
				port_m1P	<=	port_m1P_loc;
				--
				dbg_ref	<=	port_ref_loc;	 
				dbg_clk <=	port_clk_loc;    
				dbg_ena	<=	port_ena_loc;	 
				dbg_dir	<=	port_dir_loc;	 
				dbg_m2P	<=	port_m2P_loc;	 
				dbg_m1P	<=	port_m1P_loc;				
         end if;                                                                
       end if;
    end process Out_registers; 


end rtl;
