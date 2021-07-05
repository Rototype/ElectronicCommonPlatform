library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SM_regs_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 11
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		SM0_tgt_ACC		: out	std_logic_vector(23 downto 0);
		SM0_tgt_EC		: out	std_logic_vector(21 downto 0);
		SM0_dir			: out	std_logic;
		SM0_load		: out	std_logic_vector(1 downto 0);
		SM0_res			: out	std_logic_vector(1 downto 0);
		SM0_init_EC	    : out	std_logic_vector(21 downto 0);
		SM0_cnt_o		: out	std_logic_vector(31 downto 0);
		SM0_cnt_i		: in	std_logic_vector(31 downto 0);
		SM0_ramp_up		: out	std_logic;
		SM0_ramp_dwn	: out	std_logic;
		SM0_spd_chg		: out	std_logic;
		SM0_slw_stps	: out	std_logic;
		SM0_fst_stps	: out	std_logic;
		SM0_running		: in	std_logic_vector(1 downto 0);
		SM0_irq_mask	: out	std_logic;
		SM0_irq_in		: in	std_logic;
		SM0_irq_clr		: out	std_logic;
		SM0_vld_in		: in	std_logic;
		SM0_vld_out		: out	std_logic;
		
		SM1_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM1_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM1_dir			: out	std_logic;		
		SM1_load		: out	std_logic_vector(1 downto 0);		
		SM1_res			: out	std_logic_vector(1 downto 0);		
		SM1_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM1_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM1_cnt_i		: in	std_logic_vector(31 downto 0);
		SM1_ramp_up		: out	std_logic;		
		SM1_ramp_dwn	: out	std_logic;		
		SM1_spd_chg		: out	std_logic;		
		SM1_slw_stps	: out	std_logic;		
		SM1_fst_stps	: out	std_logic;		
		SM1_running		: in	std_logic_vector(1 downto 0);	
		SM1_irq_mask	: out	std_logic;		
		SM1_irq_in		: in	std_logic;		
		SM1_irq_clr		: out	std_logic;		
		SM1_vld_in		: in	std_logic;
		SM1_vld_out		: out	std_logic;
		
		SM2_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM2_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM2_dir			: out	std_logic;		
		SM2_load		: out	std_logic_vector(1 downto 0);		
		SM2_res			: out	std_logic_vector(1 downto 0);		
		SM2_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM2_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM2_cnt_i		: in	std_logic_vector(31 downto 0);
		SM2_ramp_up		: out	std_logic;		
		SM2_ramp_dwn	: out	std_logic;		
		SM2_spd_chg		: out	std_logic;		
		SM2_slw_stps	: out	std_logic;		
		SM2_fst_stps	: out	std_logic;		
		SM2_running		: in	std_logic_vector(1 downto 0);		
		SM2_irq_mask	: out	std_logic;		
		SM2_irq_in		: in	std_logic;		
		SM2_irq_clr		: out	std_logic;		
		SM2_vld_in		: in	std_logic;
		SM2_vld_out		: out	std_logic;
		
		SM3_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM3_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM3_dir			: out	std_logic;		
		SM3_load		: out	std_logic_vector(1 downto 0);		
		SM3_res			: out	std_logic_vector(1 downto 0);		
		SM3_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM3_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM3_cnt_i		: in	std_logic_vector(31 downto 0);
		SM3_ramp_up		: out	std_logic;		
		SM3_ramp_dwn	: out	std_logic;		
		SM3_spd_chg		: out	std_logic;		
		SM3_slw_stps	: out	std_logic;		
		SM3_fst_stps	: out	std_logic;		
		SM3_running		: in	std_logic_vector(1 downto 0);		
		SM3_irq_mask	: out	std_logic;		
		SM3_irq_in		: in	std_logic;		
		SM3_irq_clr		: out	std_logic;		
		SM3_vld_in		: in	std_logic;
		SM3_vld_out		: out	std_logic;

		SM4_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM4_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM4_dir			: out	std_logic;		
		SM4_load		: out	std_logic_vector(1 downto 0);		
		SM4_res			: out	std_logic_vector(1 downto 0);		
		SM4_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM4_cnt_o		: out	std_logic_vector(31 downto 0);	
		SM4_cnt_i		: in	std_logic_vector(31 downto 0);		
		SM4_ramp_up		: out	std_logic;		
		SM4_ramp_dwn	: out	std_logic;		
		SM4_spd_chg		: out	std_logic;		
		SM4_slw_stps	: out	std_logic;		
		SM4_fst_stps	: out	std_logic;		
		SM4_running		: in	std_logic_vector(1 downto 0);	
		SM4_irq_mask	: out	std_logic;		
		SM4_irq_in		: in	std_logic;		
		SM4_irq_clr		: out	std_logic;		
		SM4_vld_in		: in	std_logic;
		SM4_vld_out		: out	std_logic;
		
		SM5_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM5_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM5_dir			: out	std_logic;		
		SM5_load		: out	std_logic_vector(1 downto 0);		
		SM5_res			: out	std_logic_vector(1 downto 0);		
		SM5_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM5_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM5_cnt_i		: in	std_logic_vector(31 downto 0);
		SM5_ramp_up		: out	std_logic;		
		SM5_ramp_dwn	: out	std_logic;		
		SM5_spd_chg		: out	std_logic;		
		SM5_slw_stps	: out	std_logic;		
		SM5_fst_stps	: out	std_logic;		
		SM5_running		: in	std_logic_vector(1 downto 0);		
		SM5_irq_mask	: out	std_logic;		
		SM5_irq_in		: in	std_logic;		
		SM5_irq_clr		: out	std_logic;		
		SM5_vld_in		: in	std_logic;
		SM5_vld_out		: out	std_logic;
		
		SM6_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM6_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM6_dir			: out	std_logic;		
		SM6_load		: out	std_logic_vector(1 downto 0);		
		SM6_res			: out	std_logic_vector(1 downto 0);		
		SM6_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM6_cnt_o		: out	std_logic_vector(31 downto 0);
		SM6_cnt_i		: in	std_logic_vector(31 downto 0);		
		SM6_ramp_up		: out	std_logic;		
		SM6_ramp_dwn	: out	std_logic;		
		SM6_spd_chg		: out	std_logic;		
		SM6_slw_stps	: out	std_logic;		
		SM6_fst_stps	: out	std_logic;		
		SM6_running		: in	std_logic_vector(1 downto 0);	
		SM6_irq_mask	: out	std_logic;		
		SM6_irq_in		: in	std_logic;		
		SM6_irq_clr		: out	std_logic;		
		SM6_vld_in		: in	std_logic;
		SM6_vld_out		: out	std_logic;
		
		SM7_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM7_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM7_dir			: out	std_logic;		
		SM7_load		: out	std_logic_vector(1 downto 0);		
		SM7_res			: out	std_logic_vector(1 downto 0);		
		SM7_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM7_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM7_cnt_i		: in	std_logic_vector(31 downto 0);
		SM7_ramp_up		: out	std_logic;		
		SM7_ramp_dwn	: out	std_logic;		
		SM7_spd_chg		: out	std_logic;		
		SM7_slw_stps	: out	std_logic;		
		SM7_fst_stps	: out	std_logic;		
		SM7_running		: in	std_logic_vector(1 downto 0);	
		SM7_irq_mask	: out	std_logic;		
		SM7_irq_in		: in	std_logic;		
		SM7_irq_clr		: out	std_logic;		
		SM7_vld_in		: in	std_logic;
		SM7_vld_out		: out	std_logic;
		
		SM8_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM8_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM8_dir			: out	std_logic;		
		SM8_load		: out	std_logic_vector(1 downto 0);		
		SM8_res			: out	std_logic_vector(1 downto 0);		
		SM8_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM8_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM8_cnt_i		: in	std_logic_vector(31 downto 0);
		SM8_ramp_up		: out	std_logic;		
		SM8_ramp_dwn	: out	std_logic;		
		SM8_spd_chg		: out	std_logic;		
		SM8_slw_stps	: out	std_logic;		
		SM8_fst_stps	: out	std_logic;		
		SM8_running		: in	std_logic_vector(1 downto 0);
		SM8_irq_mask	: out	std_logic;		
		SM8_irq_in		: in	std_logic;		
		SM8_irq_clr		: out	std_logic;		
		SM8_vld_in		: in	std_logic;
		SM8_vld_out		: out	std_logic;
		
		SM9_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM9_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM9_dir			: out	std_logic;		
		SM9_load		: out	std_logic_vector(1 downto 0);		
		SM9_res			: out	std_logic_vector(1 downto 0);		
		SM9_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM9_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM9_cnt_i		: in	std_logic_vector(31 downto 0);
		SM9_ramp_up		: out	std_logic;		
		SM9_ramp_dwn	: out	std_logic;		
		SM9_spd_chg		: out	std_logic;		
		SM9_slw_stps	: out	std_logic;		
		SM9_fst_stps	: out	std_logic;		
		SM9_running		: in	std_logic_vector(1 downto 0);
		SM9_irq_mask	: out	std_logic;		
		SM9_irq_in		: in	std_logic;		
		SM9_irq_clr		: out	std_logic;		
		SM9_vld_in		: in	std_logic;
		SM9_vld_out		: out	std_logic;
		
		SM10_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM10_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM10_dir		: out	std_logic;		
		SM10_load		: out	std_logic_vector(1 downto 0);		
		SM10_res		: out	std_logic_vector(1 downto 0);		
		SM10_init_EC	: out	std_logic_vector(21 downto 0);		
		SM10_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM10_cnt_i		: in	std_logic_vector(31 downto 0);
		SM10_ramp_up	: out	std_logic;		
		SM10_ramp_dwn	: out	std_logic;		
		SM10_spd_chg	: out	std_logic;		
		SM10_slw_stps	: out	std_logic;		
		SM10_fst_stps	: out	std_logic;		
		SM10_running	: in	std_logic_vector(1 downto 0);
		SM10_irq_mask	: out	std_logic;		
		SM10_irq_in		: in	std_logic;		
		SM10_irq_clr	: out	std_logic;		
		SM10_vld_in		: in	std_logic;
		SM10_vld_out	: out	std_logic;
		
		SM11_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM11_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM11_dir		: out	std_logic;		
		SM11_load		: out	std_logic_vector(1 downto 0);		
		SM11_res		: out	std_logic_vector(1 downto 0);		
		SM11_init_EC	: out	std_logic_vector(21 downto 0);		
		SM11_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM11_cnt_i		: in	std_logic_vector(31 downto 0);
		SM11_ramp_up	: out	std_logic;		
		SM11_ramp_dwn	: out	std_logic;		
		SM11_spd_chg	: out	std_logic;		
		SM11_slw_stps	: out	std_logic;		
		SM11_fst_stps	: out	std_logic;		
		SM11_running	: in	std_logic_vector(1 downto 0);
		SM11_irq_mask	: out	std_logic;		
		SM11_irq_in		: in	std_logic;		
		SM11_irq_clr	: out	std_logic;		
		SM11_vld_in		: in	std_logic;
		SM11_vld_out	: out	std_logic;
		
		SM12_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM12_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM12_dir		: out	std_logic;		
		SM12_load		: out	std_logic_vector(1 downto 0);		
		SM12_res		: out	std_logic_vector(1 downto 0);		
		SM12_init_EC	: out	std_logic_vector(21 downto 0);		
		SM12_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM12_cnt_i		: in	std_logic_vector(31 downto 0);
		SM12_ramp_up	: out	std_logic;		
		SM12_ramp_dwn	: out	std_logic;		
		SM12_spd_chg	: out	std_logic;		
		SM12_slw_stps	: out	std_logic;		
		SM12_fst_stps	: out	std_logic;		
		SM12_running	: in	std_logic_vector(1 downto 0);
		SM12_irq_mask	: out	std_logic;		
		SM12_irq_in		: in	std_logic;		
		SM12_irq_clr	: out	std_logic;		
		SM12_vld_in		: in	std_logic;
		SM12_vld_out	: out	std_logic;
		
		SM13_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM13_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM13_dir		: out	std_logic;		
		SM13_load		: out	std_logic_vector(1 downto 0);		
		SM13_res		: out	std_logic_vector(1 downto 0);		
		SM13_init_EC	: out	std_logic_vector(21 downto 0);		
		SM13_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM13_cnt_i		: in	std_logic_vector(31 downto 0);
		SM13_ramp_up	: out	std_logic;		
		SM13_ramp_dwn	: out	std_logic;		
		SM13_spd_chg	: out	std_logic;		
		SM13_slw_stps	: out	std_logic;		
		SM13_fst_stps	: out	std_logic;		
		SM13_running	: in	std_logic_vector(1 downto 0);
		SM13_irq_mask	: out	std_logic;		
		SM13_irq_in		: in	std_logic;		
		SM13_irq_clr	: out	std_logic;		
		SM13_vld_in		: in	std_logic;
		SM13_vld_out	: out	std_logic;
		
		SM14_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM14_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM14_dir		: out	std_logic;		
		SM14_load		: out	std_logic_vector(1 downto 0);		
		SM14_res		: out	std_logic_vector(1 downto 0);		
		SM14_init_EC	: out	std_logic_vector(21 downto 0);		
		SM14_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM14_cnt_i		: in	std_logic_vector(31 downto 0);
		SM14_ramp_up	: out	std_logic;		
		SM14_ramp_dwn	: out	std_logic;		
		SM14_spd_chg	: out	std_logic;		
		SM14_slw_stps	: out	std_logic;		
		SM14_fst_stps	: out	std_logic;		
		SM14_running	: in	std_logic_vector(1 downto 0);
		SM14_irq_mask	: out	std_logic;		
		SM14_irq_in		: in	std_logic;		
		SM14_irq_clr	: out	std_logic;		
		SM14_vld_in		: in	std_logic;
		SM14_vld_out	: out	std_logic;
		
		SM15_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM15_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM15_dir		: out	std_logic;		
		SM15_load		: out	std_logic_vector(1 downto 0);		
		SM15_res		: out	std_logic_vector(1 downto 0);		
		SM15_init_EC	: out	std_logic_vector(21 downto 0);		
		SM15_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM15_cnt_i		: in	std_logic_vector(31 downto 0);
		SM15_ramp_up	: out	std_logic;		
		SM15_ramp_dwn	: out	std_logic;		
		SM15_spd_chg	: out	std_logic;		
		SM15_slw_stps	: out	std_logic;		
		SM15_fst_stps	: out	std_logic;		
		SM15_running	: in	std_logic_vector(1 downto 0);
		SM15_irq_mask	: out	std_logic;		
		SM15_irq_in		: in	std_logic;		
		SM15_irq_clr	: out	std_logic;		
		SM15_vld_in		: in	std_logic;
		SM15_vld_out	: out	std_logic;
		
		SM16_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM16_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM16_dir		: out	std_logic;		
		SM16_load		: out	std_logic_vector(1 downto 0);		
		SM16_res		: out	std_logic_vector(1 downto 0);		
		SM16_init_EC	: out	std_logic_vector(21 downto 0);		
		SM16_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM16_cnt_i		: in	std_logic_vector(31 downto 0);
		SM16_ramp_up	: out	std_logic;		
		SM16_ramp_dwn	: out	std_logic;		
		SM16_spd_chg	: out	std_logic;		
		SM16_slw_stps	: out	std_logic;		
		SM16_fst_stps	: out	std_logic;		
		SM16_running	: in	std_logic_vector(1 downto 0);
		SM16_irq_mask	: out	std_logic;		
		SM16_irq_in		: in	std_logic;		
		SM16_irq_clr	: out	std_logic;		
		SM16_vld_in		: in	std_logic;
		SM16_vld_out	: out	std_logic;
		
		SM17_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM17_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM17_dir		: out	std_logic;		
		SM17_load		: out	std_logic_vector(1 downto 0);		
		SM17_res		: out	std_logic_vector(1 downto 0);		
		SM17_init_EC	: out	std_logic_vector(21 downto 0);		
		SM17_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM17_cnt_i		: in	std_logic_vector(31 downto 0);
		SM17_ramp_up	: out	std_logic;		
		SM17_ramp_dwn	: out	std_logic;		
		SM17_spd_chg	: out	std_logic;		
		SM17_slw_stps	: out	std_logic;		
		SM17_fst_stps	: out	std_logic;		
		SM17_running	: in	std_logic_vector(1 downto 0);
		SM17_irq_mask	: out	std_logic;		
		SM17_irq_in		: in	std_logic;		
		SM17_irq_clr	: out	std_logic;		
		SM17_vld_in		: in	std_logic;
		SM17_vld_out	: out	std_logic;
		
		SM18_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM18_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM18_dir		: out	std_logic;		
		SM18_load		: out	std_logic_vector(1 downto 0);		
		SM18_res		: out	std_logic_vector(1 downto 0);		
		SM18_init_EC	: out	std_logic_vector(21 downto 0);		
		SM18_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM18_cnt_i		: in	std_logic_vector(31 downto 0);
		SM18_ramp_up	: out	std_logic;		
		SM18_ramp_dwn	: out	std_logic;		
		SM18_spd_chg	: out	std_logic;		
		SM18_slw_stps	: out	std_logic;		
		SM18_fst_stps	: out	std_logic;		
		SM18_running	: in	std_logic_vector(1 downto 0);
		SM18_irq_mask	: out	std_logic;		
		SM18_irq_in		: in	std_logic;		
		SM18_irq_clr	: out	std_logic;		
		SM18_vld_in		: in	std_logic;
		SM18_vld_out	: out	std_logic;
		
		SM19_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM19_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM19_dir		: out	std_logic;		
		SM19_load		: out	std_logic_vector(1 downto 0);		
		SM19_res		: out	std_logic_vector(1 downto 0);		
		SM19_init_EC	: out	std_logic_vector(21 downto 0);		
		SM19_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM19_cnt_i		: in	std_logic_vector(31 downto 0);
		SM19_ramp_up	: out	std_logic;		
		SM19_ramp_dwn	: out	std_logic;		
		SM19_spd_chg	: out	std_logic;		
		SM19_slw_stps	: out	std_logic;		
		SM19_fst_stps	: out	std_logic;		
		SM19_running	: in	std_logic_vector(1 downto 0);	
		SM19_irq_mask	: out	std_logic;		
		SM19_irq_in		: in	std_logic;		
		SM19_irq_clr	: out	std_logic;		
		SM19_vld_in		: in	std_logic;
		SM19_vld_out	: out	std_logic;
		
		SM_irqs			:  out	std_logic_vector(19 downto 0); 
		SM_irq			:  out	std_logic;        

		-- SMS_irq_mask	: internal only;
		-- SMS_irq_reg	: internal only; 

		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end SM_regs_v1_0;

architecture arch_imp of SM_regs_v1_0 is

	-- component declaration
	component SM_regs_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 11
		);
		port (
		
		SM0_tgt_ACC		: out	std_logic_vector(23 downto 0);
		SM0_tgt_EC		: out	std_logic_vector(21 downto 0);
		SM0_dir			: out	std_logic;
		SM0_load		: out	std_logic_vector(1 downto 0);
		SM0_res			: out	std_logic_vector(1 downto 0);
		SM0_init_EC	    : out	std_logic_vector(21 downto 0);
		SM0_cnt_o		: out	std_logic_vector(31 downto 0);
		SM0_cnt_i		: in	std_logic_vector(31 downto 0);
		SM0_ramp_up		: out	std_logic;
		SM0_ramp_dwn	: out	std_logic;
		SM0_spd_chg		: out	std_logic;
		SM0_slw_stps	: out	std_logic;
		SM0_fst_stps	: out	std_logic;
		SM0_running		: in    std_logic_vector(1 downto 0);
		SM0_irq_mask	: out	std_logic;
		SM0_irq_in		: in	std_logic;
		SM0_irq_clr		: out	std_logic;
		SM0_vld_in		: in	std_logic;
		SM0_vld_out		: out	std_logic;
		
		SM1_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM1_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM1_dir			: out	std_logic;		
		SM1_load		: out	std_logic_vector(1 downto 0);		
		SM1_res			: out	std_logic_vector(1 downto 0);		
		SM1_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM1_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM1_cnt_i		: in	std_logic_vector(31 downto 0);
		SM1_ramp_up		: out	std_logic;		
		SM1_ramp_dwn	: out	std_logic;		
		SM1_spd_chg		: out	std_logic;		
		SM1_slw_stps	: out	std_logic;		
		SM1_fst_stps	: out	std_logic;		
		SM1_running		: in    std_logic_vector(1 downto 0);
		SM1_irq_mask	: out	std_logic;		
		SM1_irq_in		: in	std_logic;		
		SM1_irq_clr		: out	std_logic;		
		SM1_vld_in		: in	std_logic;
		SM1_vld_out		: out	std_logic;
		
		SM2_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM2_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM2_dir			: out	std_logic;		
		SM2_load		: out	std_logic_vector(1 downto 0);		
		SM2_res			: out	std_logic_vector(1 downto 0);		
		SM2_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM2_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM2_cnt_i		: in	std_logic_vector(31 downto 0);
		SM2_ramp_up		: out	std_logic;		
		SM2_ramp_dwn	: out	std_logic;		
		SM2_spd_chg		: out	std_logic;		
		SM2_slw_stps	: out	std_logic;		
		SM2_fst_stps	: out	std_logic;		
		SM2_running		: in    std_logic_vector(1 downto 0);
		SM2_irq_mask	: out	std_logic;		
		SM2_irq_in		: in	std_logic;		
		SM2_irq_clr		: out	std_logic;		
		SM2_vld_in		: in	std_logic;
		SM2_vld_out		: out	std_logic;
		
		SM3_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM3_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM3_dir			: out	std_logic;		
		SM3_load		: out	std_logic_vector(1 downto 0);		
		SM3_res			: out	std_logic_vector(1 downto 0);		
		SM3_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM3_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM3_cnt_i		: in	std_logic_vector(31 downto 0);
		SM3_ramp_up		: out	std_logic;		
		SM3_ramp_dwn	: out	std_logic;		
		SM3_spd_chg		: out	std_logic;		
		SM3_slw_stps	: out	std_logic;		
		SM3_fst_stps	: out	std_logic;		
		SM3_running		: in    std_logic_vector(1 downto 0);
		SM3_irq_mask	: out	std_logic;		
		SM3_irq_in		: in	std_logic;		
		SM3_irq_clr		: out	std_logic;		
		SM3_vld_in		: in	std_logic;
		SM3_vld_out		: out	std_logic;

		SM4_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM4_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM4_dir			: out	std_logic;		
		SM4_load		: out	std_logic_vector(1 downto 0);		
		SM4_res			: out	std_logic_vector(1 downto 0);		
		SM4_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM4_cnt_o		: out	std_logic_vector(31 downto 0);	
		SM4_cnt_i		: in	std_logic_vector(31 downto 0);		
		SM4_ramp_up		: out	std_logic;		
		SM4_ramp_dwn	: out	std_logic;		
		SM4_spd_chg		: out	std_logic;		
		SM4_slw_stps	: out	std_logic;		
		SM4_fst_stps	: out	std_logic;		
		SM4_running		: in    std_logic_vector(1 downto 0);
		SM4_irq_mask	: out	std_logic;		
		SM4_irq_in		: in	std_logic;		
		SM4_irq_clr		: out	std_logic;		
		SM4_vld_in		: in	std_logic;
		SM4_vld_out		: out	std_logic;
		
		SM5_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM5_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM5_dir			: out	std_logic;		
		SM5_load		: out	std_logic_vector(1 downto 0);		
		SM5_res			: out	std_logic_vector(1 downto 0);		
		SM5_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM5_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM5_cnt_i		: in	std_logic_vector(31 downto 0);
		SM5_ramp_up		: out	std_logic;		
		SM5_ramp_dwn	: out	std_logic;		
		SM5_spd_chg		: out	std_logic;		
		SM5_slw_stps	: out	std_logic;		
		SM5_fst_stps	: out	std_logic;		
		SM5_running		: in    std_logic_vector(1 downto 0);
		SM5_irq_mask	: out	std_logic;		
		SM5_irq_in		: in	std_logic;		
		SM5_irq_clr		: out	std_logic;		
		SM5_vld_in		: in	std_logic;
		SM5_vld_out		: out	std_logic;
		
		SM6_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM6_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM6_dir			: out	std_logic;		
		SM6_load		: out	std_logic_vector(1 downto 0);		
		SM6_res			: out	std_logic_vector(1 downto 0);		
		SM6_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM6_cnt_o		: out	std_logic_vector(31 downto 0);
		SM6_cnt_i		: in	std_logic_vector(31 downto 0);		
		SM6_ramp_up		: out	std_logic;		
		SM6_ramp_dwn	: out	std_logic;		
		SM6_spd_chg		: out	std_logic;		
		SM6_slw_stps	: out	std_logic;		
		SM6_fst_stps	: out	std_logic;		
		SM6_running		: in    std_logic_vector(1 downto 0);
		SM6_irq_mask	: out	std_logic;		
		SM6_irq_in		: in	std_logic;		
		SM6_irq_clr		: out	std_logic;		
		SM6_vld_in		: in	std_logic;
		SM6_vld_out		: out	std_logic;
		
		SM7_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM7_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM7_dir			: out	std_logic;		
		SM7_load		: out	std_logic_vector(1 downto 0);		
		SM7_res			: out	std_logic_vector(1 downto 0);		
		SM7_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM7_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM7_cnt_i		: in	std_logic_vector(31 downto 0);
		SM7_ramp_up		: out	std_logic;		
		SM7_ramp_dwn	: out	std_logic;		
		SM7_spd_chg		: out	std_logic;		
		SM7_slw_stps	: out	std_logic;		
		SM7_fst_stps	: out	std_logic;		
		SM7_running		: in    std_logic_vector(1 downto 0);
		SM7_irq_mask	: out	std_logic;		
		SM7_irq_in		: in	std_logic;		
		SM7_irq_clr		: out	std_logic;		
		SM7_vld_in		: in	std_logic;
		SM7_vld_out		: out	std_logic;
		
		SM8_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM8_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM8_dir			: out	std_logic;		
		SM8_load		: out	std_logic_vector(1 downto 0);		
		SM8_res			: out	std_logic_vector(1 downto 0);		
		SM8_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM8_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM8_cnt_i		: in	std_logic_vector(31 downto 0);
		SM8_ramp_up		: out	std_logic;		
		SM8_ramp_dwn	: out	std_logic;		
		SM8_spd_chg		: out	std_logic;		
		SM8_slw_stps	: out	std_logic;		
		SM8_fst_stps	: out	std_logic;		
		SM8_running		: in    std_logic_vector(1 downto 0);
		SM8_irq_mask	: out	std_logic;		
		SM8_irq_in		: in	std_logic;		
		SM8_irq_clr		: out	std_logic;		
		SM8_vld_in		: in	std_logic;
		SM8_vld_out		: out	std_logic;
		
		SM9_tgt_ACC		: out	std_logic_vector(23 downto 0);		
		SM9_tgt_EC		: out	std_logic_vector(21 downto 0);		
		SM9_dir			: out	std_logic;		
		SM9_load		: out	std_logic_vector(1 downto 0);		
		SM9_res			: out	std_logic_vector(1 downto 0);		
		SM9_init_EC	    : out	std_logic_vector(21 downto 0);		
		SM9_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM9_cnt_i		: in	std_logic_vector(31 downto 0);
		SM9_ramp_up		: out	std_logic;		
		SM9_ramp_dwn	: out	std_logic;		
		SM9_spd_chg		: out	std_logic;		
		SM9_slw_stps	: out	std_logic;		
		SM9_fst_stps	: out	std_logic;		
		SM9_running		: in    std_logic_vector(1 downto 0);
		SM9_irq_mask	: out	std_logic;		
		SM9_irq_in		: in	std_logic;		
		SM9_irq_clr		: out	std_logic;		
		SM9_vld_in		: in	std_logic;
		SM9_vld_out		: out	std_logic;
		
		SM10_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM10_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM10_dir		: out	std_logic;		
		SM10_load		: out	std_logic_vector(1 downto 0);		
		SM10_res		: out	std_logic_vector(1 downto 0);		
		SM10_init_EC	: out	std_logic_vector(21 downto 0);		
		SM10_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM10_cnt_i		: in	std_logic_vector(31 downto 0);
		SM10_ramp_up	: out	std_logic;		
		SM10_ramp_dwn	: out	std_logic;		
		SM10_spd_chg	: out	std_logic;		
		SM10_slw_stps	: out	std_logic;		
		SM10_fst_stps	: out	std_logic;		
		SM10_running	: in    std_logic_vector(1 downto 0);
		SM10_irq_mask	: out	std_logic;		
		SM10_irq_in		: in	std_logic;		
		SM10_irq_clr	: out	std_logic;		
		SM10_vld_in		: in	std_logic;
		SM10_vld_out	: out	std_logic;
		
		SM11_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM11_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM11_dir		: out	std_logic;		
		SM11_load		: out	std_logic_vector(1 downto 0);		
		SM11_res		: out	std_logic_vector(1 downto 0);		
		SM11_init_EC	: out	std_logic_vector(21 downto 0);		
		SM11_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM11_cnt_i		: in	std_logic_vector(31 downto 0);
		SM11_ramp_up	: out	std_logic;		
		SM11_ramp_dwn	: out	std_logic;		
		SM11_spd_chg	: out	std_logic;		
		SM11_slw_stps	: out	std_logic;		
		SM11_fst_stps	: out	std_logic;		
		SM11_running	: in    std_logic_vector(1 downto 0);
		SM11_irq_mask	: out	std_logic;		
		SM11_irq_in		: in	std_logic;		
		SM11_irq_clr	: out	std_logic;		
		SM11_vld_in		: in	std_logic;
		SM11_vld_out	: out	std_logic;
		
		SM12_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM12_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM12_dir		: out	std_logic;		
		SM12_load		: out	std_logic_vector(1 downto 0);		
		SM12_res		: out	std_logic_vector(1 downto 0);		
		SM12_init_EC	: out	std_logic_vector(21 downto 0);		
		SM12_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM12_cnt_i		: in	std_logic_vector(31 downto 0);
		SM12_ramp_up	: out	std_logic;		
		SM12_ramp_dwn	: out	std_logic;		
		SM12_spd_chg	: out	std_logic;		
		SM12_slw_stps	: out	std_logic;		
		SM12_fst_stps	: out	std_logic;		
		SM12_running	: in    std_logic_vector(1 downto 0);
		SM12_irq_mask	: out	std_logic;		
		SM12_irq_in		: in	std_logic;		
		SM12_irq_clr	: out	std_logic;		
		SM12_vld_in		: in	std_logic;
		SM12_vld_out	: out	std_logic;
		
		SM13_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM13_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM13_dir		: out	std_logic;		
		SM13_load		: out	std_logic_vector(1 downto 0);		
		SM13_res		: out	std_logic_vector(1 downto 0);		
		SM13_init_EC	: out	std_logic_vector(21 downto 0);		
		SM13_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM13_cnt_i		: in	std_logic_vector(31 downto 0);
		SM13_ramp_up	: out	std_logic;		
		SM13_ramp_dwn	: out	std_logic;		
		SM13_spd_chg	: out	std_logic;		
		SM13_slw_stps	: out	std_logic;		
		SM13_fst_stps	: out	std_logic;		
		SM13_running	: in    std_logic_vector(1 downto 0);
		SM13_irq_mask	: out	std_logic;		
		SM13_irq_in		: in	std_logic;		
		SM13_irq_clr	: out	std_logic;		
		SM13_vld_in		: in	std_logic;
		SM13_vld_out	: out	std_logic;
		
		SM14_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM14_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM14_dir		: out	std_logic;		
		SM14_load		: out	std_logic_vector(1 downto 0);		
		SM14_res		: out	std_logic_vector(1 downto 0);		
		SM14_init_EC	: out	std_logic_vector(21 downto 0);		
		SM14_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM14_cnt_i		: in	std_logic_vector(31 downto 0);
		SM14_ramp_up	: out	std_logic;		
		SM14_ramp_dwn	: out	std_logic;		
		SM14_spd_chg	: out	std_logic;		
		SM14_slw_stps	: out	std_logic;		
		SM14_fst_stps	: out	std_logic;		
		SM14_running	: in    std_logic_vector(1 downto 0);
		SM14_irq_mask	: out	std_logic;		
		SM14_irq_in		: in	std_logic;		
		SM14_irq_clr	: out	std_logic;		
		SM14_vld_in		: in	std_logic;
		SM14_vld_out	: out	std_logic;
		
		SM15_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM15_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM15_dir		: out	std_logic;		
		SM15_load		: out	std_logic_vector(1 downto 0);		
		SM15_res		: out	std_logic_vector(1 downto 0);		
		SM15_init_EC	: out	std_logic_vector(21 downto 0);		
		SM15_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM15_cnt_i		: in	std_logic_vector(31 downto 0);
		SM15_ramp_up	: out	std_logic;		
		SM15_ramp_dwn	: out	std_logic;		
		SM15_spd_chg	: out	std_logic;		
		SM15_slw_stps	: out	std_logic;		
		SM15_fst_stps	: out	std_logic;		
		SM15_running	: in    std_logic_vector(1 downto 0);
		SM15_irq_mask	: out	std_logic;		
		SM15_irq_in		: in	std_logic;		
		SM15_irq_clr	: out	std_logic;		
		SM15_vld_in		: in	std_logic;
		SM15_vld_out	: out	std_logic;
		
		SM16_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM16_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM16_dir		: out	std_logic;		
		SM16_load		: out	std_logic_vector(1 downto 0);		
		SM16_res		: out	std_logic_vector(1 downto 0);		
		SM16_init_EC	: out	std_logic_vector(21 downto 0);		
		SM16_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM16_cnt_i		: in	std_logic_vector(31 downto 0);
		SM16_ramp_up	: out	std_logic;		
		SM16_ramp_dwn	: out	std_logic;		
		SM16_spd_chg	: out	std_logic;		
		SM16_slw_stps	: out	std_logic;		
		SM16_fst_stps	: out	std_logic;		
		SM16_running	: in	std_logic_vector(1 downto 0);
		SM16_irq_mask	: out	std_logic;		
		SM16_irq_in		: in	std_logic;		
		SM16_irq_clr	: out	std_logic;		
		SM16_vld_in		: in	std_logic;
		SM16_vld_out	: out	std_logic;
		
		SM17_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM17_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM17_dir		: out	std_logic;		
		SM17_load		: out	std_logic_vector(1 downto 0);		
		SM17_res		: out	std_logic_vector(1 downto 0);		
		SM17_init_EC	: out	std_logic_vector(21 downto 0);		
		SM17_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM17_cnt_i		: in	std_logic_vector(31 downto 0);
		SM17_ramp_up	: out	std_logic;		
		SM17_ramp_dwn	: out	std_logic;		
		SM17_spd_chg	: out	std_logic;		
		SM17_slw_stps	: out	std_logic;		
		SM17_fst_stps	: out	std_logic;		
		SM17_running	: in    std_logic_vector(1 downto 0);
		SM17_irq_mask	: out	std_logic;		
		SM17_irq_in		: in	std_logic;		
		SM17_irq_clr	: out	std_logic;		
		SM17_vld_in		: in	std_logic;
		SM17_vld_out	: out	std_logic;
		
		SM18_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM18_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM18_dir		: out	std_logic;		
		SM18_load		: out	std_logic_vector(1 downto 0);		
		SM18_res		: out	std_logic_vector(1 downto 0);		
		SM18_init_EC	: out	std_logic_vector(21 downto 0);		
		SM18_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM18_cnt_i		: in	std_logic_vector(31 downto 0);
		SM18_ramp_up	: out	std_logic;		
		SM18_ramp_dwn	: out	std_logic;		
		SM18_spd_chg	: out	std_logic;		
		SM18_slw_stps	: out	std_logic;		
		SM18_fst_stps	: out	std_logic;		
		SM18_running	: in    std_logic_vector(1 downto 0);	
		SM18_irq_mask	: out	std_logic;		
		SM18_irq_in		: in	std_logic;		
		SM18_irq_clr	: out	std_logic;		
		SM18_vld_in		: in	std_logic;
		SM18_vld_out	: out	std_logic;
		
		SM19_tgt_ACC	: out	std_logic_vector(23 downto 0);		
		SM19_tgt_EC	    : out	std_logic_vector(21 downto 0);	
		SM19_dir		: out	std_logic;		
		SM19_load		: out	std_logic_vector(1 downto 0);		
		SM19_res		: out	std_logic_vector(1 downto 0);		
		SM19_init_EC	: out	std_logic_vector(21 downto 0);		
		SM19_cnt_o		: out	std_logic_vector(31 downto 0);		
		SM19_cnt_i		: in	std_logic_vector(31 downto 0);
		SM19_ramp_up	: out	std_logic;		
		SM19_ramp_dwn	: out	std_logic;		
		SM19_spd_chg	: out	std_logic;		
		SM19_slw_stps	: out	std_logic;		
		SM19_fst_stps	: out	std_logic;		
		SM19_running	: in    std_logic_vector(1 downto 0);
		SM19_irq_mask	: out	std_logic;		
		SM19_irq_in		: in	std_logic;		
		SM19_irq_clr	: out	std_logic;		
		SM19_vld_in		: in	std_logic;
		SM19_vld_out	: out	std_logic;

		SM_irqs			: out	std_logic_vector(19 downto 0); 
		SM_irq			: out	std_logic; 
				
		---
		S_AXI_ACLK	    : in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	    : out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	    : out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component SM_regs_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
SM_regs_v1_0_S00_AXI_inst : SM_regs_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	
		SM0_tgt_ACC		=>	SM0_tgt_ACC		,
		SM0_tgt_EC		=>	SM0_tgt_EC		,
		SM0_dir			=>	SM0_dir			,
		SM0_load		=>	SM0_load		,
		SM0_res			=>	SM0_res			,
		SM0_init_EC	    =>	SM0_init_EC	    ,
		SM0_cnt_o		=>	SM0_cnt_o		,
		SM0_cnt_i		=>	SM0_cnt_i		,
		SM0_ramp_up		=>	SM0_ramp_up		,
		SM0_ramp_dwn	=>	SM0_ramp_dwn	,
		SM0_spd_chg		=>	SM0_spd_chg		,
		SM0_slw_stps	=>	SM0_slw_stps	,
		SM0_fst_stps	=>	SM0_fst_stps	,
		SM0_running		=>	SM0_running		,
		SM0_irq_mask	=>	SM0_irq_mask	,
		SM0_irq_in		=>	SM0_irq_in		,
		SM0_irq_clr		=>	SM0_irq_clr		,
		SM0_vld_in		=>	SM0_vld_in		,
		SM0_vld_out		=>	SM0_vld_out		,

		SM1_tgt_ACC		=>	SM1_tgt_ACC		,
		SM1_tgt_EC		=>	SM1_tgt_EC		,
		SM1_dir			=>	SM1_dir			,
		SM1_load		=>	SM1_load		,
		SM1_res			=>	SM1_res			,
		SM1_init_EC	    =>	SM1_init_EC	    ,
		SM1_cnt_o		=>	SM1_cnt_o		,
		SM1_cnt_i		=>	SM1_cnt_i		,
		SM1_ramp_up		=>	SM1_ramp_up		,
		SM1_ramp_dwn	=>	SM1_ramp_dwn	,
		SM1_spd_chg		=>	SM1_spd_chg		,
		SM1_slw_stps	=>	SM1_slw_stps	,
		SM1_fst_stps	=>	SM1_fst_stps	,
		SM1_running		=>	SM1_running		,
		SM1_irq_mask	=>	SM1_irq_mask	,
		SM1_irq_in		=>	SM1_irq_in		,
		SM1_irq_clr		=>	SM1_irq_clr		,
		SM1_vld_in		=>	SM1_vld_in		,
		SM1_vld_out		=>	SM1_vld_out		,

		SM2_tgt_ACC		=>	SM2_tgt_ACC		,
		SM2_tgt_EC		=>	SM2_tgt_EC		,
		SM2_dir			=>	SM2_dir			,
		SM2_load		=>	SM2_load		,
		SM2_res			=>	SM2_res			,
		SM2_init_EC	    =>	SM2_init_EC	    ,
		SM2_cnt_o		=>	SM2_cnt_o		,
		SM2_cnt_i		=>	SM2_cnt_i		,
		SM2_ramp_up		=>	SM2_ramp_up		,
		SM2_ramp_dwn	=>	SM2_ramp_dwn	,
		SM2_spd_chg		=>	SM2_spd_chg		,
		SM2_slw_stps	=>	SM2_slw_stps	,
		SM2_fst_stps	=>	SM2_fst_stps	,
		SM2_running		=>	SM2_running		,
		SM2_irq_mask	=>	SM2_irq_mask	,
		SM2_irq_in		=>	SM2_irq_in		,
		SM2_irq_clr		=>	SM2_irq_clr		,
		SM2_vld_in		=>	SM2_vld_in		,
		SM2_vld_out		=>	SM2_vld_out		,

		SM3_tgt_ACC		=>	SM3_tgt_ACC		,
		SM3_tgt_EC		=>	SM3_tgt_EC		,
		SM3_dir			=>	SM3_dir			,
		SM3_load		=>	SM3_load		,
		SM3_res			=>	SM3_res			,
		SM3_init_EC	    =>	SM3_init_EC	    ,
		SM3_cnt_o		=>	SM3_cnt_o		,
		SM3_cnt_i		=>	SM3_cnt_i		,
		SM3_ramp_up		=>	SM3_ramp_up		,
		SM3_ramp_dwn	=>	SM3_ramp_dwn	,
		SM3_spd_chg		=>	SM3_spd_chg		,
		SM3_slw_stps	=>	SM3_slw_stps	,
		SM3_fst_stps	=>	SM3_fst_stps	,
		SM3_running		=>	SM3_running		,
		SM3_irq_mask	=>	SM3_irq_mask	,
		SM3_irq_in		=>	SM3_irq_in		,
		SM3_irq_clr		=>	SM3_irq_clr		,
		SM3_vld_in		=>	SM3_vld_in		,
		SM3_vld_out		=>	SM3_vld_out		,

		SM4_tgt_ACC		=>	SM4_tgt_ACC		,
		SM4_tgt_EC		=>	SM4_tgt_EC		,
		SM4_dir			=>	SM4_dir			,
		SM4_load		=>	SM4_load		,
		SM4_res			=>	SM4_res			,
		SM4_init_EC	    =>	SM4_init_EC	    ,
		SM4_cnt_o		=>	SM4_cnt_o		,
		SM4_cnt_i		=>	SM4_cnt_i		,
		SM4_ramp_up		=>	SM4_ramp_up		,
		SM4_ramp_dwn	=>	SM4_ramp_dwn	,
		SM4_spd_chg		=>	SM4_spd_chg		,
		SM4_slw_stps	=>	SM4_slw_stps	,
		SM4_fst_stps	=>	SM4_fst_stps	,
		SM4_running		=>	SM4_running		,
		SM4_irq_mask	=>	SM4_irq_mask	,
		SM4_irq_in		=>	SM4_irq_in		,
		SM4_irq_clr		=>	SM4_irq_clr		,
		SM4_vld_in		=>	SM4_vld_in		,
		SM4_vld_out		=>	SM4_vld_out		,

		SM5_tgt_ACC		=>	SM5_tgt_ACC		,
		SM5_tgt_EC		=>	SM5_tgt_EC		,
		SM5_dir			=>	SM5_dir			,
		SM5_load		=>	SM5_load		,
		SM5_res			=>	SM5_res			,
		SM5_init_EC	    =>	SM5_init_EC	    ,
		SM5_cnt_o		=>	SM5_cnt_o		,
		SM5_cnt_i		=>	SM5_cnt_i		,
		SM5_ramp_up		=>	SM5_ramp_up		,
		SM5_ramp_dwn	=>	SM5_ramp_dwn	,
		SM5_spd_chg		=>	SM5_spd_chg		,
		SM5_slw_stps	=>	SM5_slw_stps	,
		SM5_fst_stps	=>	SM5_fst_stps	,
		SM5_running		=>	SM5_running		,
		SM5_irq_mask	=>	SM5_irq_mask	,
		SM5_irq_in		=>	SM5_irq_in		,
		SM5_irq_clr		=>	SM5_irq_clr		,
		SM5_vld_in		=>	SM5_vld_in		,
		SM5_vld_out		=>	SM5_vld_out		,

		SM6_tgt_ACC		=>	SM6_tgt_ACC		,
		SM6_tgt_EC		=>	SM6_tgt_EC		,
		SM6_dir			=>	SM6_dir			,
		SM6_load		=>	SM6_load		,
		SM6_res			=>	SM6_res			,
		SM6_init_EC	    =>	SM6_init_EC	    ,
		SM6_cnt_o		=>	SM6_cnt_o		,
		SM6_cnt_i		=>	SM6_cnt_i		,
		SM6_ramp_up		=>	SM6_ramp_up		,
		SM6_ramp_dwn	=>	SM6_ramp_dwn	,
		SM6_spd_chg		=>	SM6_spd_chg		,
		SM6_slw_stps	=>	SM6_slw_stps	,
		SM6_fst_stps	=>	SM6_fst_stps	,
		SM6_running		=>	SM6_running		,
		SM6_irq_mask	=>	SM6_irq_mask	,
		SM6_irq_in		=>	SM6_irq_in		,
		SM6_irq_clr		=>	SM6_irq_clr		,
		SM6_vld_in		=>	SM6_vld_in		,
		SM6_vld_out		=>	SM6_vld_out		,

		SM7_tgt_ACC		=>	SM7_tgt_ACC		,
		SM7_tgt_EC		=>	SM7_tgt_EC		,
		SM7_dir			=>	SM7_dir			,
		SM7_load		=>	SM7_load		,
		SM7_res			=>	SM7_res			,
		SM7_init_EC	    =>	SM7_init_EC	    ,
		SM7_cnt_o		=>	SM7_cnt_o		,
		SM7_cnt_i		=>	SM7_cnt_i		,
		SM7_ramp_up		=>	SM7_ramp_up		,
		SM7_ramp_dwn	=>	SM7_ramp_dwn	,
		SM7_spd_chg		=>	SM7_spd_chg		,
		SM7_slw_stps	=>	SM7_slw_stps	,
		SM7_fst_stps	=>	SM7_fst_stps	,
		SM7_running		=>	SM7_running		,
		SM7_irq_mask	=>	SM7_irq_mask	,
		SM7_irq_in		=>	SM7_irq_in		,
		SM7_irq_clr		=>	SM7_irq_clr		,
		SM7_vld_in		=>	SM7_vld_in		,
		SM7_vld_out		=>	SM7_vld_out		,

		SM8_tgt_ACC		=>	SM8_tgt_ACC		,
		SM8_tgt_EC		=>	SM8_tgt_EC		,
		SM8_dir			=>	SM8_dir			,
		SM8_load		=>	SM8_load		,
		SM8_res			=>	SM8_res			,
		SM8_init_EC	    =>	SM8_init_EC	    ,
		SM8_cnt_o		=>	SM8_cnt_o		,
		SM8_cnt_i		=>	SM8_cnt_i		,
		SM8_ramp_up		=>	SM8_ramp_up		,
		SM8_ramp_dwn	=>	SM8_ramp_dwn	,
		SM8_spd_chg		=>	SM8_spd_chg		,
		SM8_slw_stps	=>	SM8_slw_stps	,
		SM8_fst_stps	=>	SM8_fst_stps	,
		SM8_running		=>	SM8_running		,
		SM8_irq_mask	=>	SM8_irq_mask	,
		SM8_irq_in		=>	SM8_irq_in		,
		SM8_irq_clr		=>	SM8_irq_clr		,
		SM8_vld_in		=>	SM8_vld_in		,
		SM8_vld_out		=>	SM8_vld_out		,

		SM9_tgt_ACC		=>	SM9_tgt_ACC		,
		SM9_tgt_EC		=>	SM9_tgt_EC		,
		SM9_dir			=>	SM9_dir			,
		SM9_load		=>	SM9_load		,
		SM9_res			=>	SM9_res			,
		SM9_init_EC	    =>	SM9_init_EC	    ,
		SM9_cnt_o		=>	SM9_cnt_o		,
		SM9_cnt_i		=>	SM9_cnt_i		,
		SM9_ramp_up		=>	SM9_ramp_up		,
		SM9_ramp_dwn	=>	SM9_ramp_dwn	,
		SM9_spd_chg		=>	SM9_spd_chg		,
		SM9_slw_stps	=>	SM9_slw_stps	,
		SM9_fst_stps	=>	SM9_fst_stps	,
		SM9_running		=>	SM9_running		,
		SM9_irq_mask	=>	SM9_irq_mask	,
		SM9_irq_in		=>	SM9_irq_in		,
		SM9_irq_clr		=>	SM9_irq_clr		,
		SM9_vld_in		=>	SM9_vld_in		,
		SM9_vld_out		=>	SM9_vld_out		,

		SM10_tgt_ACC	=>	SM10_tgt_ACC	,
		SM10_tgt_EC	    =>	SM10_tgt_EC	    ,
		SM10_dir		=>	SM10_dir		,
		SM10_load		=>	SM10_load		,
		SM10_res		=>	SM10_res		,
		SM10_init_EC	=>	SM10_init_EC	,
		SM10_cnt_o		=>	SM10_cnt_o		,
		SM10_cnt_i		=>	SM10_cnt_i		,
		SM10_ramp_up	=>	SM10_ramp_up	,
		SM10_ramp_dwn	=>	SM10_ramp_dwn	,
		SM10_spd_chg	=>	SM10_spd_chg	,
		SM10_slw_stps	=>	SM10_slw_stps	,
		SM10_fst_stps	=>	SM10_fst_stps	,
		SM10_running	=>	SM10_running	,
		SM10_irq_mask	=>	SM10_irq_mask	,
		SM10_irq_in		=>	SM10_irq_in		,
		SM10_irq_clr	=>	SM10_irq_clr	,
		SM10_vld_in		=>	SM10_vld_in		,
		SM10_vld_out	=>	SM10_vld_out	,

		SM11_tgt_ACC	=>	SM11_tgt_ACC	,
		SM11_tgt_EC     =>	SM11_tgt_EC	    ,
		SM11_dir		=>	SM11_dir		,
		SM11_load		=>	SM11_load		,
		SM11_res		=>	SM11_res		,
		SM11_init_EC	=>	SM11_init_EC	,
		SM11_cnt_o		=>	SM11_cnt_o		,
		SM11_cnt_i		=>	SM11_cnt_i		,
		SM11_ramp_up	=>	SM11_ramp_up	,
		SM11_ramp_dwn	=>	SM11_ramp_dwn	,
		SM11_spd_chg	=>	SM11_spd_chg	,
		SM11_slw_stps	=>	SM11_slw_stps	,
		SM11_fst_stps	=>	SM11_fst_stps	,
		SM11_running	=>	SM11_running	,
		SM11_irq_mask	=>	SM11_irq_mask	,
		SM11_irq_in		=>	SM11_irq_in		,
		SM11_irq_clr	=>	SM11_irq_clr	,
		SM11_vld_in		=>	SM11_vld_in		,
		SM11_vld_out	=>	SM11_vld_out	,

		SM12_tgt_ACC	=>	SM12_tgt_ACC	,
		SM12_tgt_EC	    =>	SM12_tgt_EC	    ,
		SM12_dir		=>	SM12_dir		,
		SM12_load		=>	SM12_load		,
		SM12_res		=>	SM12_res		,
		SM12_init_EC	=>	SM12_init_EC	,
		SM12_cnt_o		=>	SM12_cnt_o		,
		SM12_cnt_i		=>	SM12_cnt_i		,
		SM12_ramp_up	=>	SM12_ramp_up	,
		SM12_ramp_dwn	=>	SM12_ramp_dwn	,
		SM12_spd_chg	=>	SM12_spd_chg	,
		SM12_slw_stps	=>	SM12_slw_stps	,
		SM12_fst_stps	=>	SM12_fst_stps	,
		SM12_running	=>	SM12_running	,
		SM12_irq_mask	=>	SM12_irq_mask	,
		SM12_irq_in		=>	SM12_irq_in		,
		SM12_irq_clr	=>	SM12_irq_clr	,
		SM12_vld_in		=>	SM12_vld_in		,
		SM12_vld_out	=>	SM12_vld_out	,

		SM13_tgt_ACC	=>	SM13_tgt_ACC	,
		SM13_tgt_EC	    =>	SM13_tgt_EC	    ,
		SM13_dir		=>	SM13_dir		,
		SM13_load		=>	SM13_load		,
		SM13_res		=>	SM13_res		,
		SM13_init_EC	=>	SM13_init_EC	,
		SM13_cnt_o		=>	SM13_cnt_o		,
		SM13_cnt_i		=>	SM13_cnt_i		,
		SM13_ramp_up	=>	SM13_ramp_up	,
		SM13_ramp_dwn	=>	SM13_ramp_dwn	,
		SM13_spd_chg	=>	SM13_spd_chg	,
		SM13_slw_stps	=>	SM13_slw_stps	,
		SM13_fst_stps	=>	SM13_fst_stps	,
		SM13_running	=>	SM13_running	,
		SM13_irq_mask	=>	SM13_irq_mask	,
		SM13_irq_in		=>	SM13_irq_in		,
		SM13_irq_clr	=>	SM13_irq_clr	,
		SM13_vld_in		=>	SM13_vld_in		,
		SM13_vld_out	=>	SM13_vld_out	,

		SM14_tgt_ACC	=>	SM14_tgt_ACC	,
		SM14_tgt_EC	    =>	SM14_tgt_EC	    ,
		SM14_dir		=>	SM14_dir		,
		SM14_load		=>	SM14_load		,
		SM14_res		=>	SM14_res		,
		SM14_init_EC	=>	SM14_init_EC	,
		SM14_cnt_o		=>	SM14_cnt_o		,
		SM14_cnt_i		=>	SM14_cnt_i		,
		SM14_ramp_up	=>	SM14_ramp_up	,
		SM14_ramp_dwn	=>	SM14_ramp_dwn	,
		SM14_spd_chg	=>	SM14_spd_chg	,
		SM14_slw_stps	=>	SM14_slw_stps	,
		SM14_fst_stps	=>	SM14_fst_stps	,
		SM14_running	=>	SM14_running	,
		SM14_irq_mask	=>	SM14_irq_mask	,
		SM14_irq_in		=>	SM14_irq_in		,
		SM14_irq_clr	=>	SM14_irq_clr	,
		SM14_vld_in		=>	SM14_vld_in		,
		SM14_vld_out	=>	SM14_vld_out	,

		SM15_tgt_ACC	=>	SM15_tgt_ACC	,
		SM15_tgt_EC	    =>	SM15_tgt_EC	    ,
		SM15_dir		=>	SM15_dir		,
		SM15_load		=>	SM15_load		,
		SM15_res		=>	SM15_res		,
		SM15_init_EC	=>	SM15_init_EC	,
		SM15_cnt_o		=>	SM15_cnt_o		,
		SM15_cnt_i		=>	SM15_cnt_i		,
		SM15_ramp_up	=>	SM15_ramp_up	,
		SM15_ramp_dwn	=>	SM15_ramp_dwn	,
		SM15_spd_chg	=>	SM15_spd_chg	,
		SM15_slw_stps	=>	SM15_slw_stps	,
		SM15_fst_stps	=>	SM15_fst_stps	,
		SM15_running	=>	SM15_running	,
		SM15_irq_mask	=>	SM15_irq_mask	,
		SM15_irq_in		=>	SM15_irq_in		,
		SM15_irq_clr	=>	SM15_irq_clr	,
		SM15_vld_in		=>	SM15_vld_in		,
		SM15_vld_out	=>	SM15_vld_out	,

		SM16_tgt_ACC	=>	SM16_tgt_ACC	,
		SM16_tgt_EC	    =>	SM16_tgt_EC	    ,
		SM16_dir		=>	SM16_dir		,
		SM16_load		=>	SM16_load		,
		SM16_res		=>	SM16_res		,
		SM16_init_EC	=>	SM16_init_EC	,
		SM16_cnt_o		=>	SM16_cnt_o		,
		SM16_cnt_i		=>	SM16_cnt_i		,
		SM16_ramp_up	=>	SM16_ramp_up	,
		SM16_ramp_dwn	=>	SM16_ramp_dwn	,
		SM16_spd_chg	=>	SM16_spd_chg	,
		SM16_slw_stps	=>	SM16_slw_stps	,
		SM16_fst_stps	=>	SM16_fst_stps	,
		SM16_running	=>	SM16_running	,
		SM16_irq_mask	=>	SM16_irq_mask	,
		SM16_irq_in		=>	SM16_irq_in		,
		SM16_irq_clr	=>	SM16_irq_clr	,
		SM16_vld_in		=>	SM16_vld_in		,
		SM16_vld_out	=>	SM16_vld_out	,

		SM17_tgt_ACC	=>	SM17_tgt_ACC	,
		SM17_tgt_EC	    =>	SM17_tgt_EC	    ,
		SM17_dir		=>	SM17_dir		,
		SM17_load		=>	SM17_load		,
		SM17_res		=>	SM17_res		,
		SM17_init_EC	=>	SM17_init_EC	,
		SM17_cnt_o		=>	SM17_cnt_o		,
		SM17_cnt_i		=>	SM17_cnt_i		,
		SM17_ramp_up	=>	SM17_ramp_up	,
		SM17_ramp_dwn	=>	SM17_ramp_dwn	,
		SM17_spd_chg	=>	SM17_spd_chg	,
		SM17_slw_stps	=>	SM17_slw_stps	,
		SM17_fst_stps	=>	SM17_fst_stps	,
		SM17_running	=>	SM17_running	,
		SM17_irq_mask	=>	SM17_irq_mask	,
		SM17_irq_in		=>	SM17_irq_in		,
		SM17_irq_clr	=>	SM17_irq_clr	,
		SM17_vld_in		=>	SM17_vld_in		,
		SM17_vld_out	=>	SM17_vld_out	,

		SM18_tgt_ACC	=>	SM18_tgt_ACC	,
		SM18_tgt_EC	     =>	SM18_tgt_EC	    ,
		SM18_dir		=>	SM18_dir		,
		SM18_load		=>	SM18_load		,
		SM18_res		=>	SM18_res		,
		SM18_init_EC	=>	SM18_init_EC	,
		SM18_cnt_o		=>	SM18_cnt_o		,
		SM18_cnt_i		=>	SM18_cnt_i		,
		SM18_ramp_up	=>	SM18_ramp_up	,
		SM18_ramp_dwn	=>	SM18_ramp_dwn	,
		SM18_spd_chg	=>	SM18_spd_chg	,
		SM18_slw_stps	=>	SM18_slw_stps	,
		SM18_fst_stps	=>	SM18_fst_stps	,
		SM18_running	=>	SM18_running	,
		SM18_irq_mask	=>	SM18_irq_mask	,
		SM18_irq_in		=>	SM18_irq_in		,
		SM18_irq_clr	=>	SM18_irq_clr	,
		SM18_vld_in		=>	SM18_vld_in		,
		SM18_vld_out	=>	SM18_vld_out	,

		SM19_tgt_ACC	=>	SM19_tgt_ACC	,
		SM19_tgt_EC	    =>	SM19_tgt_EC	    ,
		SM19_dir		=>	SM19_dir		,
		SM19_load		=>	SM19_load		,
		SM19_res		=>	SM19_res		,
		SM19_init_EC	=>	SM19_init_EC	,
		SM19_cnt_o		=>	SM19_cnt_o		,
		SM19_cnt_i		=>	SM19_cnt_i		,
		SM19_ramp_up	=>	SM19_ramp_up	,
		SM19_ramp_dwn	=>	SM19_ramp_dwn	,
		SM19_spd_chg	=>	SM19_spd_chg	,
		SM19_slw_stps	=>	SM19_slw_stps	,
		SM19_fst_stps	=>	SM19_fst_stps	,
		SM19_running	=>	SM19_running	,
		SM19_irq_mask	=>	SM19_irq_mask	,
		SM19_irq_in		=>	SM19_irq_in		,
		SM19_irq_clr	=>	SM19_irq_clr	,
		SM19_vld_in		=>	SM19_vld_in		,
		SM19_vld_out	=>	SM19_vld_out	,

		SM_irqs			=>	SM_irqs	,
		SM_irq			=>	SM_irq	,
	
		--
	
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
