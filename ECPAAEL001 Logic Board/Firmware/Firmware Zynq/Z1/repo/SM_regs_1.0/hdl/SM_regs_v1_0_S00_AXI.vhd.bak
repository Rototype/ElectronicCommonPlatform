library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SM_regs_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 11
	);
	port (
		-- Users to add ports here
		SM0_tgt_ACC		: out	std_logic_vector(23 downto 0);
		SM0_tgt_EC 		: out	std_logic_vector(21 downto 0);
		SM0_dir			: out	std_logic;
		SM0_load		: out	std_logic_vector(1 downto 0);
		SM0_res			: out	std_logic_vector(1 downto 0);
		SM0_init_EC 	: out	std_logic_vector(21 downto 0);
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
		SM1_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM1_dir			: out	std_logic;		
		SM1_load		: out	std_logic_vector(1 downto 0);		
		SM1_res			: out	std_logic_vector(1 downto 0);		
		SM1_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM2_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM2_dir			: out	std_logic;		
		SM2_load		: out	std_logic_vector(1 downto 0);		
		SM2_res			: out	std_logic_vector(1 downto 0);		
		SM2_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM3_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM3_dir			: out	std_logic;		
		SM3_load		: out	std_logic_vector(1 downto 0);		
		SM3_res			: out	std_logic_vector(1 downto 0);		
		SM3_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM4_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM4_dir			: out	std_logic;		
		SM4_load		: out	std_logic_vector(1 downto 0);		
		SM4_res			: out	std_logic_vector(1 downto 0);		
		SM4_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM5_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM5_dir			: out	std_logic;		
		SM5_load		: out	std_logic_vector(1 downto 0);		
		SM5_res			: out	std_logic_vector(1 downto 0);		
		SM5_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM6_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM6_dir			: out	std_logic;		
		SM6_load		: out	std_logic_vector(1 downto 0);		
		SM6_res			: out	std_logic_vector(1 downto 0);		
		SM6_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM7_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM7_dir			: out	std_logic;		
		SM7_load		: out	std_logic_vector(1 downto 0);		
		SM7_res			: out	std_logic_vector(1 downto 0);		
		SM7_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM8_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM8_dir			: out	std_logic;		
		SM8_load		: out	std_logic_vector(1 downto 0);		
		SM8_res			: out	std_logic_vector(1 downto 0);		
		SM8_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM9_tgt_EC 		: out	std_logic_vector(21 downto 0);		
		SM9_dir			: out	std_logic;		
		SM9_load		: out	std_logic_vector(1 downto 0);		
		SM9_res			: out	std_logic_vector(1 downto 0);		
		SM9_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM10_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM10_dir		: out	std_logic;		
		SM10_load		: out	std_logic_vector(1 downto 0);		
		SM10_res		: out	std_logic_vector(1 downto 0);		
		SM10_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM11_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM11_dir		: out	std_logic;		
		SM11_load		: out	std_logic_vector(1 downto 0);		
		SM11_res		: out	std_logic_vector(1 downto 0);		
		SM11_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM12_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM12_dir		: out	std_logic;		
		SM12_load		: out	std_logic_vector(1 downto 0);		
		SM12_res		: out	std_logic_vector(1 downto 0);		
		SM12_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM13_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM13_dir		: out	std_logic;		
		SM13_load		: out	std_logic_vector(1 downto 0);		
		SM13_res		: out	std_logic_vector(1 downto 0);		
		SM13_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM14_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM14_dir		: out	std_logic;		
		SM14_load		: out	std_logic_vector(1 downto 0);		
		SM14_res		: out	std_logic_vector(1 downto 0);		
		SM14_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM15_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM15_dir		: out	std_logic;		
		SM15_load		: out	std_logic_vector(1 downto 0);		
		SM15_res		: out	std_logic_vector(1 downto 0);		
		SM15_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM16_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM16_dir		: out	std_logic;		
		SM16_load		: out	std_logic_vector(1 downto 0);		
		SM16_res		: out	std_logic_vector(1 downto 0);		
		SM16_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM17_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM17_dir		: out	std_logic;		
		SM17_load		: out	std_logic_vector(1 downto 0);		
		SM17_res		: out	std_logic_vector(1 downto 0);		
		SM17_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM18_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM18_dir		: out	std_logic;		
		SM18_load		: out	std_logic_vector(1 downto 0);		
		SM18_res		: out	std_logic_vector(1 downto 0);		
		SM18_init_EC 	: out	std_logic_vector(21 downto 0);		
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
		SM19_tgt_EC 	: out	std_logic_vector(21 downto 0);		
		SM19_dir		: out	std_logic;		
		SM19_load		: out	std_logic_vector(1 downto 0);		
		SM19_res		: out	std_logic_vector(1 downto 0);		
		SM19_init_EC 	: out	std_logic_vector(21 downto 0);		
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


		-- User ports ends
		
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end SM_regs_v1_0_S00_AXI;

architecture arch_imp of SM_regs_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 8;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 322
	signal slv_reg0    : std_logic_vector(23 downto 0);          -- cfg SM0_tgt_ACC
	signal slv_reg1    : std_logic_vector(21 downto 0);          -- cfg SM0_tgt_EC
	signal slv_reg2    : std_logic_vector(0 downto 0);           -- cfg SM0_dir
	signal slv_reg3    : std_logic_vector(1 downto 0);           -- cfg SM0_load
	signal slv_reg4    : std_logic_vector(1 downto 0);           -- cfg SM0_res
	signal slv_reg5    : std_logic_vector(21 downto 0);          -- cfg SM0_init_EC
	signal slv_reg6    : std_logic_vector(31 downto 0);          -- cfg SM0_cnt_o
	signal slv_reg7    : std_logic_vector(0 downto 0);           -- cfg SM0_ramp_up
	signal slv_reg8    : std_logic_vector(0 downto 0);           -- cfg SM0_ramp_dwn
	signal slv_reg9    : std_logic_vector(0 downto 0);           -- cfg SM0_spd_chg
	signal slv_reg10   : std_logic_vector(0 downto 0);           -- cfg SM0_slw_stps
	signal slv_reg11   : std_logic_vector(0 downto 0);           -- cfg SM0_fst_stps
	signal slv_reg12   : std_logic_vector(31 downto 0);          -- cfg SM0_cnt_i	
	signal slv_reg13   : std_logic_vector(1 downto 0);           -- cfg SM0_running
	signal slv_reg14   : std_logic_vector(0 downto 0);           -- cfg SM0_irq_mask
	signal slv_reg15   : std_logic_vector(0 downto 0);           -- cfg SM0_irq

	signal slv_reg16   : std_logic_vector(23 downto 0);          -- cfg SM1_tgt_ACC
	signal slv_reg17   : std_logic_vector(21 downto 0);          -- cfg SM1_tgt_EC
	signal slv_reg18   : std_logic_vector(0 downto 0);           -- cfg SM1_dir
	signal slv_reg19   : std_logic_vector(1 downto 0);           -- cfg SM1_load
	signal slv_reg20   : std_logic_vector(1 downto 0);           -- cfg SM1_res
	signal slv_reg21   : std_logic_vector(21 downto 0);          -- cfg SM1_init_EC
	signal slv_reg22   : std_logic_vector(31 downto 0);          -- cfg SM1_cnt_o
	signal slv_reg23   : std_logic_vector(0 downto 0);           -- cfg SM1_ramp_up
	signal slv_reg24   : std_logic_vector(0 downto 0);           -- cfg SM1_ramp_dwn
	signal slv_reg25   : std_logic_vector(0 downto 0);           -- cfg SM1_spd_chg
	signal slv_reg26   : std_logic_vector(0 downto 0);           -- cfg SM1_slw_stps
	signal slv_reg27   : std_logic_vector(0 downto 0);           -- cfg SM1_fst_stps
	signal slv_reg28   : std_logic_vector(31 downto 0);          -- cfg SM1_cnt_i	
	signal slv_reg29   : std_logic_vector(1 downto 0);           -- cfg SM1_running
	signal slv_reg30   : std_logic_vector(0 downto 0);           -- cfg SM1_irq_mask
	signal slv_reg31   : std_logic_vector(0 downto 0);           -- cfg SM1_irq

	signal slv_reg32   : std_logic_vector(23 downto 0);          -- cfg SM2_tgt_ACC
	signal slv_reg33   : std_logic_vector(21 downto 0);          -- cfg SM2_tgt_EC
	signal slv_reg34   : std_logic_vector(0 downto 0);           -- cfg SM2_dir
	signal slv_reg35   : std_logic_vector(1 downto 0);           -- cfg SM2_load
	signal slv_reg36   : std_logic_vector(1 downto 0);           -- cfg SM2_res
	signal slv_reg37   : std_logic_vector(21 downto 0);          -- cfg SM2_init_EC
	signal slv_reg38   : std_logic_vector(31 downto 0);          -- cfg SM2_cnt_o
	signal slv_reg39   : std_logic_vector(0 downto 0);           -- cfg SM2_ramp_up
	signal slv_reg40   : std_logic_vector(0 downto 0);           -- cfg SM2_ramp_dwn
	signal slv_reg41   : std_logic_vector(0 downto 0);           -- cfg SM2_spd_chg
	signal slv_reg42   : std_logic_vector(0 downto 0);           -- cfg SM2_slw_stps
	signal slv_reg43   : std_logic_vector(0 downto 0);           -- cfg SM2_fst_stps
	signal slv_reg44   : std_logic_vector(31 downto 0);          -- cfg SM2_cnt_i	
	signal slv_reg45   : std_logic_vector(1 downto 0);           -- cfg SM2_running
	signal slv_reg46   : std_logic_vector(0 downto 0);           -- cfg SM2_irq_mask
	signal slv_reg47   : std_logic_vector(0 downto 0);           -- cfg SM2_irq

	signal slv_reg48   : std_logic_vector(23 downto 0);          -- cfg SM3_tgt_ACC
	signal slv_reg49   : std_logic_vector(21 downto 0);          -- cfg SM3_tgt_EC
	signal slv_reg50   : std_logic_vector(0 downto 0);           -- cfg SM3_dir
	signal slv_reg51   : std_logic_vector(1 downto 0);           -- cfg SM3_load
	signal slv_reg52   : std_logic_vector(1 downto 0);           -- cfg SM3_res
	signal slv_reg53   : std_logic_vector(21 downto 0);          -- cfg SM3_init_EC
	signal slv_reg54   : std_logic_vector(31 downto 0);          -- cfg SM3_cnt_o
	signal slv_reg55   : std_logic_vector(0 downto 0);           -- cfg SM3_ramp_up
	signal slv_reg56   : std_logic_vector(0 downto 0);           -- cfg SM3_ramp_dwn
	signal slv_reg57   : std_logic_vector(0 downto 0);           -- cfg SM3_spd_chg
	signal slv_reg58   : std_logic_vector(0 downto 0);           -- cfg SM3_slw_stps
	signal slv_reg59   : std_logic_vector(0 downto 0);           -- cfg SM3_fst_stps
	signal slv_reg60   : std_logic_vector(31 downto 0);          -- cfg SM3_cnt_i	
	signal slv_reg61   : std_logic_vector(1 downto 0);           -- cfg SM3_running
	signal slv_reg62   : std_logic_vector(0 downto 0);           -- cfg SM3_irq_mask
	signal slv_reg63   : std_logic_vector(0 downto 0);           -- cfg SM3_irq

	signal slv_reg64   : std_logic_vector(23 downto 0);          -- cfg SM4_tgt_ACC
	signal slv_reg65   : std_logic_vector(21 downto 0);          -- cfg SM4_tgt_EC
	signal slv_reg66   : std_logic_vector(0 downto 0);           -- cfg SM4_dir
	signal slv_reg67   : std_logic_vector(1 downto 0);           -- cfg SM4_load
	signal slv_reg68   : std_logic_vector(1 downto 0);           -- cfg SM4_res
	signal slv_reg69   : std_logic_vector(21 downto 0);          -- cfg SM4_init_EC
	signal slv_reg70   : std_logic_vector(31 downto 0);          -- cfg SM4_cnt_o
	signal slv_reg71   : std_logic_vector(0 downto 0);           -- cfg SM4_ramp_up
	signal slv_reg72   : std_logic_vector(0 downto 0);           -- cfg SM4_ramp_dwn
	signal slv_reg73   : std_logic_vector(0 downto 0);           -- cfg SM4_spd_chg
	signal slv_reg74   : std_logic_vector(0 downto 0);           -- cfg SM4_slw_stps
	signal slv_reg75   : std_logic_vector(0 downto 0);           -- cfg SM4_fst_stps
	signal slv_reg76   : std_logic_vector(31 downto 0);          -- cfg SM4_cnt_i	
	signal slv_reg77   : std_logic_vector(1 downto 0);           -- cfg SM4_running
	signal slv_reg78   : std_logic_vector(0 downto 0);           -- cfg SM4_irq_mask
	signal slv_reg79   : std_logic_vector(0 downto 0);           -- cfg SM4_irq

	signal slv_reg80   : std_logic_vector(23 downto 0);          -- cfg SM5_tgt_ACC
	signal slv_reg81   : std_logic_vector(21 downto 0);          -- cfg SM5_tgt_EC
	signal slv_reg82   : std_logic_vector(0 downto 0);           -- cfg SM5_dir
	signal slv_reg83   : std_logic_vector(1 downto 0);           -- cfg SM5_load
	signal slv_reg84   : std_logic_vector(1 downto 0);           -- cfg SM5_res
	signal slv_reg85   : std_logic_vector(21 downto 0);          -- cfg SM5_init_EC
	signal slv_reg86   : std_logic_vector(31 downto 0);          -- cfg SM5_cnt_o
	signal slv_reg87   : std_logic_vector(0 downto 0);           -- cfg SM5_ramp_up
	signal slv_reg88   : std_logic_vector(0 downto 0);           -- cfg SM5_ramp_dwn
	signal slv_reg89   : std_logic_vector(0 downto 0);           -- cfg SM5_spd_chg
	signal slv_reg90   : std_logic_vector(0 downto 0);           -- cfg SM5_slw_stps
	signal slv_reg91   : std_logic_vector(0 downto 0);           -- cfg SM5_fst_stps
	signal slv_reg92   : std_logic_vector(31 downto 0);          -- cfg SM5_cnt_i	
	signal slv_reg93   : std_logic_vector(1 downto 0);           -- cfg SM5_running
	signal slv_reg94   : std_logic_vector(0 downto 0);           -- cfg SM5_irq_mask
	signal slv_reg95   : std_logic_vector(0 downto 0);           -- cfg SM5_irq

	signal slv_reg96   : std_logic_vector(23 downto 0);          -- cfg SM6_tgt_ACC
	signal slv_reg97   : std_logic_vector(21 downto 0);          -- cfg SM6_tgt_EC
	signal slv_reg98   : std_logic_vector(0 downto 0);           -- cfg SM6_dir
	signal slv_reg99   : std_logic_vector(1 downto 0);           -- cfg SM6_load
	signal slv_reg100   : std_logic_vector(1 downto 0);          -- cfg SM6_res
	signal slv_reg101   : std_logic_vector(21 downto 0);         -- cfg SM6_init_EC
	signal slv_reg102   : std_logic_vector(31 downto 0);         -- cfg SM6_cnt_o
	signal slv_reg103   : std_logic_vector(0 downto 0);          -- cfg SM6_ramp_up
	signal slv_reg104   : std_logic_vector(0 downto 0);          -- cfg SM6_ramp_dwn
	signal slv_reg105   : std_logic_vector(0 downto 0);          -- cfg SM6_spd_chg
	signal slv_reg106   : std_logic_vector(0 downto 0);          -- cfg SM6_slw_stps
	signal slv_reg107   : std_logic_vector(0 downto 0);          -- cfg SM6_fst_stps
	signal slv_reg108   : std_logic_vector(31 downto 0);         -- cfg SM6_cnt_i	
	signal slv_reg109   : std_logic_vector(1 downto 0);          -- cfg SM6_running
	signal slv_reg110   : std_logic_vector(0 downto 0);          -- cfg SM6_irq_mask
	signal slv_reg111   : std_logic_vector(0 downto 0);          -- cfg SM6_irq

	signal slv_reg112   : std_logic_vector(23 downto 0);         -- cfg SM7_tgt_ACC
	signal slv_reg113   : std_logic_vector(21 downto 0);         -- cfg SM7_tgt_EC
	signal slv_reg114   : std_logic_vector(0 downto 0);          -- cfg SM7_dir
	signal slv_reg115   : std_logic_vector(1 downto 0);          -- cfg SM7_load
	signal slv_reg116   : std_logic_vector(1 downto 0);          -- cfg SM7_res
	signal slv_reg117   : std_logic_vector(21 downto 0);         -- cfg SM7_init_EC
	signal slv_reg118   : std_logic_vector(31 downto 0);         -- cfg SM7_cnt_o
	signal slv_reg119   : std_logic_vector(0 downto 0);          -- cfg SM7_ramp_up
	signal slv_reg120   : std_logic_vector(0 downto 0);          -- cfg SM7_ramp_dwn
	signal slv_reg121   : std_logic_vector(0 downto 0);          -- cfg SM7_spd_chg
	signal slv_reg122   : std_logic_vector(0 downto 0);          -- cfg SM7_slw_stps
	signal slv_reg123   : std_logic_vector(0 downto 0);          -- cfg SM7_fst_stps
	signal slv_reg124   : std_logic_vector(31 downto 0);         -- cfg SM7_cnt_i	
	signal slv_reg125   : std_logic_vector(1 downto 0);          -- cfg SM7_running
	signal slv_reg126   : std_logic_vector(0 downto 0);          -- cfg SM7_irq_mask
	signal slv_reg127   : std_logic_vector(0 downto 0);          -- cfg SM7_irq

	signal slv_reg128   : std_logic_vector(23 downto 0);         -- cfg SM8_tgt_ACC
	signal slv_reg129   : std_logic_vector(21 downto 0);         -- cfg SM8_tgt_EC
	signal slv_reg130   : std_logic_vector(0 downto 0);          -- cfg SM8_dir
	signal slv_reg131   : std_logic_vector(1 downto 0);          -- cfg SM8_load
	signal slv_reg132   : std_logic_vector(1 downto 0);          -- cfg SM8_res
	signal slv_reg133   : std_logic_vector(21 downto 0);         -- cfg SM8_init_EC
	signal slv_reg134   : std_logic_vector(31 downto 0);         -- cfg SM8_cnt_o
	signal slv_reg135   : std_logic_vector(0 downto 0);          -- cfg SM8_ramp_up
	signal slv_reg136   : std_logic_vector(0 downto 0);          -- cfg SM8_ramp_dwn
	signal slv_reg137   : std_logic_vector(0 downto 0);          -- cfg SM8_spd_chg
	signal slv_reg138   : std_logic_vector(0 downto 0);          -- cfg SM8_slw_stps
	signal slv_reg139   : std_logic_vector(0 downto 0);          -- cfg SM8_fst_stps
	signal slv_reg140   : std_logic_vector(31 downto 0);         -- cfg SM8_cnt_i	
	signal slv_reg141   : std_logic_vector(1 downto 0);          -- cfg SM8_running
	signal slv_reg142   : std_logic_vector(0 downto 0);          -- cfg SM8_irq_mask
	signal slv_reg143   : std_logic_vector(0 downto 0);          -- cfg SM8_irq

	signal slv_reg144   : std_logic_vector(23 downto 0);         -- cfg SM9_tgt_ACC
	signal slv_reg145   : std_logic_vector(21 downto 0);         -- cfg SM9_tgt_EC
	signal slv_reg146   : std_logic_vector(0 downto 0);          -- cfg SM9_dir
	signal slv_reg147   : std_logic_vector(1 downto 0);          -- cfg SM9_load
	signal slv_reg148   : std_logic_vector(1 downto 0);          -- cfg SM9_res
	signal slv_reg149   : std_logic_vector(21 downto 0);         -- cfg SM9_init_EC
	signal slv_reg150   : std_logic_vector(31 downto 0);         -- cfg SM9_cnt_o
	signal slv_reg151   : std_logic_vector(0 downto 0);          -- cfg SM9_ramp_up
	signal slv_reg152   : std_logic_vector(0 downto 0);          -- cfg SM9_ramp_dwn
	signal slv_reg153   : std_logic_vector(0 downto 0);          -- cfg SM9_spd_chg
	signal slv_reg154   : std_logic_vector(0 downto 0);          -- cfg SM9_slw_stps
	signal slv_reg155   : std_logic_vector(0 downto 0);          -- cfg SM9_fst_stps
	signal slv_reg156   : std_logic_vector(31 downto 0);         -- cfg SM9_cnt_i	
	signal slv_reg157   : std_logic_vector(1 downto 0);          -- cfg SM9_running
	signal slv_reg158   : std_logic_vector(0 downto 0);          -- cfg SM9_irq_mask
	signal slv_reg159   : std_logic_vector(0 downto 0);          -- cfg SM9_irq

	signal slv_reg160   : std_logic_vector(23 downto 0);         -- cfg SM10_tgt_ACC
	signal slv_reg161   : std_logic_vector(21 downto 0);         -- cfg SM10_tgt_EC
	signal slv_reg162   : std_logic_vector(0 downto 0);          -- cfg SM10_dir
	signal slv_reg163   : std_logic_vector(1 downto 0);          -- cfg SM10_load
	signal slv_reg164   : std_logic_vector(1 downto 0);          -- cfg SM10_res
	signal slv_reg165   : std_logic_vector(21 downto 0);         -- cfg SM10_init_EC
	signal slv_reg166   : std_logic_vector(31 downto 0);         -- cfg SM10_cnt_o
	signal slv_reg167   : std_logic_vector(0 downto 0);          -- cfg SM10_ramp_up
	signal slv_reg168   : std_logic_vector(0 downto 0);          -- cfg SM10_ramp_dwn
	signal slv_reg169   : std_logic_vector(0 downto 0);          -- cfg SM10_spd_chg
	signal slv_reg170   : std_logic_vector(0 downto 0);          -- cfg SM10_slw_stps
	signal slv_reg171   : std_logic_vector(0 downto 0);          -- cfg SM10_fst_stps
	signal slv_reg172   : std_logic_vector(31 downto 0);         -- cfg SM10_cnt_i	
	signal slv_reg173   : std_logic_vector(1 downto 0);          -- cfg SM10_running
	signal slv_reg174   : std_logic_vector(0 downto 0);          -- cfg SM10_irq_mask
	signal slv_reg175   : std_logic_vector(0 downto 0);          -- cfg SM10_irq

	signal slv_reg176   : std_logic_vector(23 downto 0);         -- cfg SM11_tgt_ACC
	signal slv_reg177   : std_logic_vector(21 downto 0);         -- cfg SM11_tgt_EC
	signal slv_reg178   : std_logic_vector(0 downto 0);          -- cfg SM11_dir
	signal slv_reg179   : std_logic_vector(1 downto 0);          -- cfg SM11_load
	signal slv_reg180   : std_logic_vector(1 downto 0);          -- cfg SM11_res
	signal slv_reg181   : std_logic_vector(21 downto 0);         -- cfg SM11_init_EC
	signal slv_reg182   : std_logic_vector(31 downto 0);         -- cfg SM11_cnt_o
	signal slv_reg183   : std_logic_vector(0 downto 0);          -- cfg SM11_ramp_up
	signal slv_reg184   : std_logic_vector(0 downto 0);          -- cfg SM11_ramp_dwn
	signal slv_reg185   : std_logic_vector(0 downto 0);          -- cfg SM11_spd_chg
	signal slv_reg186   : std_logic_vector(0 downto 0);          -- cfg SM11_slw_stps
	signal slv_reg187   : std_logic_vector(0 downto 0);          -- cfg SM11_fst_stps
	signal slv_reg188   : std_logic_vector(31 downto 0);         -- cfg SM11_cnt_i	
	signal slv_reg189   : std_logic_vector(1 downto 0);          -- cfg SM11_running
	signal slv_reg190   : std_logic_vector(0 downto 0);          -- cfg SM11_irq_mask
	signal slv_reg191   : std_logic_vector(0 downto 0);          -- cfg SM11_irq

	signal slv_reg192   : std_logic_vector(23 downto 0);         -- cfg SM12_tgt_ACC
	signal slv_reg193   : std_logic_vector(21 downto 0);         -- cfg SM12_tgt_EC
	signal slv_reg194   : std_logic_vector(0 downto 0);          -- cfg SM12_dir
	signal slv_reg195   : std_logic_vector(1 downto 0);          -- cfg SM12_load
	signal slv_reg196   : std_logic_vector(1 downto 0);          -- cfg SM12_res
	signal slv_reg197   : std_logic_vector(21 downto 0);         -- cfg SM12_init_EC
	signal slv_reg198   : std_logic_vector(31 downto 0);         -- cfg SM12_cnt_o
	signal slv_reg199   : std_logic_vector(0 downto 0);          -- cfg SM12_ramp_up
	signal slv_reg200   : std_logic_vector(0 downto 0);          -- cfg SM12_ramp_dwn
	signal slv_reg201   : std_logic_vector(0 downto 0);          -- cfg SM12_spd_chg
	signal slv_reg202   : std_logic_vector(0 downto 0);          -- cfg SM12_slw_stps
	signal slv_reg203   : std_logic_vector(0 downto 0);          -- cfg SM12_fst_stps
	signal slv_reg204   : std_logic_vector(31 downto 0);         -- cfg SM12_cnt_i	
	signal slv_reg205   : std_logic_vector(1 downto 0);          -- cfg SM12_running
	signal slv_reg206   : std_logic_vector(0 downto 0);          -- cfg SM12_irq_mask
	signal slv_reg207   : std_logic_vector(0 downto 0);          -- cfg SM12_irq

	signal slv_reg208   : std_logic_vector(23 downto 0);         -- cfg SM13_tgt_ACC
	signal slv_reg209   : std_logic_vector(21 downto 0);         -- cfg SM13_tgt_EC
	signal slv_reg210   : std_logic_vector(0 downto 0);          -- cfg SM13_dir
	signal slv_reg211   : std_logic_vector(1 downto 0);          -- cfg SM13_load
	signal slv_reg212   : std_logic_vector(1 downto 0);          -- cfg SM13_res
	signal slv_reg213   : std_logic_vector(21 downto 0);         -- cfg SM13_init_EC
	signal slv_reg214   : std_logic_vector(31 downto 0);         -- cfg SM13_cnt_o
	signal slv_reg215   : std_logic_vector(0 downto 0);          -- cfg SM13_ramp_up
	signal slv_reg216   : std_logic_vector(0 downto 0);          -- cfg SM13_ramp_dwn
	signal slv_reg217   : std_logic_vector(0 downto 0);          -- cfg SM13_spd_chg
	signal slv_reg218   : std_logic_vector(0 downto 0);          -- cfg SM13_slw_stps
	signal slv_reg219   : std_logic_vector(0 downto 0);          -- cfg SM13_fst_stps
	signal slv_reg220   : std_logic_vector(31 downto 0);         -- cfg SM13_cnt_i	
	signal slv_reg221   : std_logic_vector(1 downto 0);          -- cfg SM13_running
	signal slv_reg222   : std_logic_vector(0 downto 0);          -- cfg SM13_irq_mask
	signal slv_reg223   : std_logic_vector(0 downto 0);          -- cfg SM13_irq

	signal slv_reg224   : std_logic_vector(23 downto 0);         -- cfg SM14_tgt_ACC
	signal slv_reg225   : std_logic_vector(21 downto 0);         -- cfg SM14_tgt_EC
	signal slv_reg226   : std_logic_vector(0 downto 0);          -- cfg SM14_dir
	signal slv_reg227   : std_logic_vector(1 downto 0);          -- cfg SM14_load
	signal slv_reg228   : std_logic_vector(1 downto 0);          -- cfg SM14_res
	signal slv_reg229   : std_logic_vector(21 downto 0);         -- cfg SM14_init_EC
	signal slv_reg230   : std_logic_vector(31 downto 0);         -- cfg SM14_cnt_o
	signal slv_reg231   : std_logic_vector(0 downto 0);          -- cfg SM14_ramp_up
	signal slv_reg232   : std_logic_vector(0 downto 0);          -- cfg SM14_ramp_dwn
	signal slv_reg233   : std_logic_vector(0 downto 0);          -- cfg SM14_spd_chg
	signal slv_reg234   : std_logic_vector(0 downto 0);          -- cfg SM14_slw_stps
	signal slv_reg235   : std_logic_vector(0 downto 0);          -- cfg SM14_fst_stps
	signal slv_reg236   : std_logic_vector(31 downto 0);         -- cfg SM14_cnt_i	
	signal slv_reg237   : std_logic_vector(1 downto 0);          -- cfg SM14_running
	signal slv_reg238   : std_logic_vector(0 downto 0);          -- cfg SM14_irq_mask
	signal slv_reg239   : std_logic_vector(0 downto 0);          -- cfg SM14_irq

	signal slv_reg240   : std_logic_vector(23 downto 0);         -- cfg SM15_tgt_ACC
	signal slv_reg241   : std_logic_vector(21 downto 0);         -- cfg SM15_tgt_EC
	signal slv_reg242   : std_logic_vector(0 downto 0);          -- cfg SM15_dir
	signal slv_reg243   : std_logic_vector(1 downto 0);          -- cfg SM15_load
	signal slv_reg244   : std_logic_vector(1 downto 0);          -- cfg SM15_res
	signal slv_reg245   : std_logic_vector(21 downto 0);         -- cfg SM15_init_EC
	signal slv_reg246   : std_logic_vector(31 downto 0);         -- cfg SM15_cnt_o
	signal slv_reg247   : std_logic_vector(0 downto 0);          -- cfg SM15_ramp_up
	signal slv_reg248   : std_logic_vector(0 downto 0);          -- cfg SM15_ramp_dwn
	signal slv_reg249   : std_logic_vector(0 downto 0);          -- cfg SM15_spd_chg
	signal slv_reg250   : std_logic_vector(0 downto 0);          -- cfg SM15_slw_stps
	signal slv_reg251   : std_logic_vector(0 downto 0);          -- cfg SM15_fst_stps
	signal slv_reg252   : std_logic_vector(31 downto 0);         -- cfg SM15_cnt_i	
	signal slv_reg253   : std_logic_vector(1 downto 0);          -- cfg SM15_running
	signal slv_reg254   : std_logic_vector(0 downto 0);          -- cfg SM15_irq_mask
	signal slv_reg255   : std_logic_vector(0 downto 0);          -- cfg SM15_irq

	signal slv_reg256   : std_logic_vector(23 downto 0);         -- cfg SM16_tgt_ACC
	signal slv_reg257   : std_logic_vector(21 downto 0);         -- cfg SM16_tgt_EC
	signal slv_reg258   : std_logic_vector(0 downto 0);          -- cfg SM16_dir
	signal slv_reg259   : std_logic_vector(1 downto 0);          -- cfg SM16_load
	signal slv_reg260   : std_logic_vector(1 downto 0);          -- cfg SM16_res
	signal slv_reg261   : std_logic_vector(21 downto 0);         -- cfg SM16_init_EC
	signal slv_reg262   : std_logic_vector(31 downto 0);         -- cfg SM16_cnt_o
	signal slv_reg263   : std_logic_vector(0 downto 0);          -- cfg SM16_ramp_up
	signal slv_reg264   : std_logic_vector(0 downto 0);          -- cfg SM16_ramp_dwn
	signal slv_reg265   : std_logic_vector(0 downto 0);          -- cfg SM16_spd_chg
	signal slv_reg266   : std_logic_vector(0 downto 0);          -- cfg SM16_slw_stps
	signal slv_reg267   : std_logic_vector(0 downto 0);          -- cfg SM16_fst_stps
	signal slv_reg268   : std_logic_vector(31 downto 0);         -- cfg SM16_cnt_i	
	signal slv_reg269   : std_logic_vector(1 downto 0);          -- cfg SM16_running
	signal slv_reg270   : std_logic_vector(0 downto 0);          -- cfg SM16_irq_mask
	signal slv_reg271   : std_logic_vector(0 downto 0);          -- cfg SM16_irq

	signal slv_reg272   : std_logic_vector(23 downto 0);         -- cfg SM17_tgt_ACC
	signal slv_reg273   : std_logic_vector(21 downto 0);         -- cfg SM17_tgt_EC
	signal slv_reg274   : std_logic_vector(0 downto 0);          -- cfg SM17_dir
	signal slv_reg275   : std_logic_vector(1 downto 0);          -- cfg SM17_load
	signal slv_reg276   : std_logic_vector(1 downto 0);          -- cfg SM17_res
	signal slv_reg277   : std_logic_vector(21 downto 0);         -- cfg SM17_init_EC
	signal slv_reg278   : std_logic_vector(31 downto 0);         -- cfg SM17_cnt_o
	signal slv_reg279   : std_logic_vector(0 downto 0);          -- cfg SM17_ramp_up
	signal slv_reg280   : std_logic_vector(0 downto 0);          -- cfg SM17_ramp_dwn
	signal slv_reg281   : std_logic_vector(0 downto 0);          -- cfg SM17_spd_chg
	signal slv_reg282   : std_logic_vector(0 downto 0);          -- cfg SM17_slw_stps
	signal slv_reg283   : std_logic_vector(0 downto 0);          -- cfg SM17_fst_stps
	signal slv_reg284   : std_logic_vector(31 downto 0);         -- cfg SM17_cnt_i	
	signal slv_reg285   : std_logic_vector(1 downto 0);          -- cfg SM17_running
	signal slv_reg286   : std_logic_vector(0 downto 0);          -- cfg SM17_irq_mask
	signal slv_reg287   : std_logic_vector(0 downto 0);          -- cfg SM17_irq

	signal slv_reg288   : std_logic_vector(23 downto 0);         -- cfg SM18_tgt_ACC
	signal slv_reg289   : std_logic_vector(21 downto 0);         -- cfg SM18_tgt_EC
	signal slv_reg290   : std_logic_vector(0 downto 0);          -- cfg SM18_dir
	signal slv_reg291   : std_logic_vector(1 downto 0);          -- cfg SM18_load
	signal slv_reg292   : std_logic_vector(1 downto 0);          -- cfg SM18_res
	signal slv_reg293   : std_logic_vector(21 downto 0);         -- cfg SM18_init_EC
	signal slv_reg294   : std_logic_vector(31 downto 0);         -- cfg SM18_cnt_o
	signal slv_reg295   : std_logic_vector(0 downto 0);          -- cfg SM18_ramp_up
	signal slv_reg296   : std_logic_vector(0 downto 0);          -- cfg SM18_ramp_dwn
	signal slv_reg297   : std_logic_vector(0 downto 0);          -- cfg SM18_spd_chg
	signal slv_reg298   : std_logic_vector(0 downto 0);          -- cfg SM18_slw_stps
	signal slv_reg299   : std_logic_vector(0 downto 0);          -- cfg SM18_fst_stps
	signal slv_reg300   : std_logic_vector(31 downto 0);         -- cfg SM18_cnt_i	
	signal slv_reg301   : std_logic_vector(1 downto 0);          -- cfg SM18_running
	signal slv_reg302   : std_logic_vector(0 downto 0);          -- cfg SM18_irq_mask
	signal slv_reg303   : std_logic_vector(0 downto 0);          -- cfg SM18_irq

	signal slv_reg304   : std_logic_vector(23 downto 0);         -- cfg SM19_tgt_ACC
	signal slv_reg305   : std_logic_vector(21 downto 0);         -- cfg SM19_tgt_EC
	signal slv_reg306   : std_logic_vector(0 downto 0);          -- cfg SM19_dir
	signal slv_reg307   : std_logic_vector(1 downto 0);          -- cfg SM19_load
	signal slv_reg308   : std_logic_vector(1 downto 0);          -- cfg SM19_res
	signal slv_reg309   : std_logic_vector(21 downto 0);         -- cfg SM19_init_EC
	signal slv_reg310   : std_logic_vector(31 downto 0);         -- cfg SM19_cnt_o
	signal slv_reg311   : std_logic_vector(0 downto 0);          -- cfg SM19_ramp_up
	signal slv_reg312   : std_logic_vector(0 downto 0);          -- cfg SM19_ramp_dwn
	signal slv_reg313   : std_logic_vector(0 downto 0);          -- cfg SM19_spd_chg
	signal slv_reg314   : std_logic_vector(0 downto 0);          -- cfg SM19_slw_stps
	signal slv_reg315   : std_logic_vector(0 downto 0);          -- cfg SM19_fst_stps
	signal slv_reg316   : std_logic_vector(31 downto 0);         -- cfg SM19_cnt_i	
	signal slv_reg317   : std_logic_vector(1 downto 0);          -- cfg SM19_running
	signal slv_reg318   : std_logic_vector(0 downto 0);          -- cfg SM19_irq_mask
	signal slv_reg319   : std_logic_vector(0 downto 0);          -- cfg SM19_irq


	signal slv_reg320	: std_logic_vector(19 downto 0);	     -- SMs_irq_mask
	signal slv_reg321	: std_logic_vector(19 downto 0);	     -- SMs_irq_reg
	
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	    : std_logic;
	
	CONSTANT MAX_EC_INIT     : std_logic_vector(21 downto 0) := std_logic_vector(to_unsigned(2_500_000, 22));  -- Max Endcount, Min speed
	CONSTANT STEP_CNT_INIT   : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(200, 32));

	signal SM0_vld_in_loc : std_logic  := '0';
	signal SM1_vld_in_loc : std_logic  := '0';
	signal SM2_vld_in_loc : std_logic  := '0';
	signal SM3_vld_in_loc : std_logic  := '0';
	signal SM4_vld_in_loc : std_logic  := '0';
	signal SM5_vld_in_loc : std_logic  := '0';
	signal SM6_vld_in_loc : std_logic  := '0';
	signal SM7_vld_in_loc : std_logic  := '0';
	signal SM8_vld_in_loc : std_logic  := '0';
	signal SM9_vld_in_loc : std_logic  := '0';
	signal SM10_vld_in_loc : std_logic  := '0';
	signal SM11_vld_in_loc : std_logic  := '0';
	signal SM12_vld_in_loc : std_logic  := '0';
	signal SM13_vld_in_loc : std_logic  := '0';
	signal SM14_vld_in_loc : std_logic  := '0';
	signal SM15_vld_in_loc : std_logic  := '0';
	signal SM16_vld_in_loc : std_logic  := '0';
	signal SM17_vld_in_loc : std_logic  := '0';
	signal SM18_vld_in_loc : std_logic  := '0';
	signal SM19_vld_in_loc : std_logic  := '0';
	
	signal SMs_Irq_Mask    : std_logic_vector(19 downto 0);
    signal SMs_irq_reg_int : std_logic_vector(19 downto 0) := (others => '0');

begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP		<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA		<= axi_rdata;
	S_AXI_RRESP		<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	           axi_awready <= '1';
	           aw_en <= '0';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	           aw_en <= '1';
	           axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= MAX_EC_INIT;
	      slv_reg2 <= (others => '0');
	      slv_reg3 <= (others => '0');
	      slv_reg4 <= (others => '0');
	      slv_reg5 <= MAX_EC_INIT;
	      slv_reg6 <= STEP_CNT_INIT;
	      slv_reg7 <= (others => '0');
	      slv_reg8 <= (others => '0');
	      slv_reg9 <= (others => '0');
	      slv_reg10 <= (others => '0');
	      slv_reg11 <= (others => '0');
	      slv_reg12 <= (others => '0');
	      slv_reg13 <= (others => '0');
	      slv_reg14 <= (others => '0');
	      slv_reg15 <= (others => '0');
		  
	      slv_reg16 <= (others => '0');
	      slv_reg17 <= MAX_EC_INIT;
	      slv_reg18 <= (others => '0');
	      slv_reg19 <= (others => '0');
	      slv_reg20 <= (others => '0');
	      slv_reg21 <= MAX_EC_INIT;
	      slv_reg22 <= STEP_CNT_INIT;
	      slv_reg23 <= (others => '0');
	      slv_reg24 <= (others => '0');
	      slv_reg25 <= (others => '0');
	      slv_reg26 <= (others => '0');
	      slv_reg27 <= (others => '0');
	      slv_reg28 <= (others => '0');
	      slv_reg29 <= (others => '0');
	      slv_reg30 <= (others => '0');
	      slv_reg31 <= (others => '0');
		  
	      slv_reg32 <= (others => '0');
	      slv_reg33 <= MAX_EC_INIT;
	      slv_reg34 <= (others => '0');
	      slv_reg35 <= (others => '0');
	      slv_reg36 <= (others => '0');
	      slv_reg37 <= MAX_EC_INIT;
	      slv_reg38 <= STEP_CNT_INIT;
	      slv_reg39 <= (others => '0');
	      slv_reg40 <= (others => '0');
	      slv_reg41 <= (others => '0');
	      slv_reg42 <= (others => '0');
	      slv_reg43 <= (others => '0');
	      slv_reg44 <= (others => '0');
	      slv_reg45 <= (others => '0');
	      slv_reg46 <= (others => '0');
	      slv_reg47 <= (others => '0');
		  
	      slv_reg48 <= (others => '0');
	      slv_reg49 <= MAX_EC_INIT;
	      slv_reg50 <= (others => '0');
	      slv_reg51 <= (others => '0');
	      slv_reg52 <= (others => '0');
	      slv_reg53 <= MAX_EC_INIT;
	      slv_reg54 <= STEP_CNT_INIT;
	      slv_reg55 <= (others => '0');
	      slv_reg56 <= (others => '0');
	      slv_reg57 <= (others => '0');
	      slv_reg58 <= (others => '0');
	      slv_reg59 <= (others => '0');
	      slv_reg60 <= (others => '0');
	      slv_reg61 <= (others => '0');
	      slv_reg62 <= (others => '0');
	      slv_reg63 <= (others => '0');
		  
	      slv_reg64 <= (others => '0');
	      slv_reg65 <= MAX_EC_INIT;
	      slv_reg66 <= (others => '0');
	      slv_reg67 <= (others => '0');
	      slv_reg68 <= (others => '0');
	      slv_reg69 <= MAX_EC_INIT;
	      slv_reg70 <= STEP_CNT_INIT;
	      slv_reg71 <= (others => '0');
	      slv_reg72 <= (others => '0');
	      slv_reg73 <= (others => '0');
	      slv_reg74 <= (others => '0');
	      slv_reg75 <= (others => '0');
	      slv_reg76 <= (others => '0');
	      slv_reg77 <= (others => '0');
	      slv_reg78 <= (others => '0');
	      slv_reg79 <= (others => '0');
	      
	      slv_reg80 <= (others => '0');
	      slv_reg81 <= MAX_EC_INIT;
	      slv_reg82 <= (others => '0');
	      slv_reg83 <= (others => '0');
	      slv_reg84 <= (others => '0');
	      slv_reg85 <= MAX_EC_INIT;
	      slv_reg86 <= STEP_CNT_INIT;
	      slv_reg87 <= (others => '0');
	      slv_reg88 <= (others => '0');
	      slv_reg89 <= (others => '0');
	      slv_reg90 <= (others => '0');
	      slv_reg91 <= (others => '0');
	      slv_reg92 <= (others => '0');
	      slv_reg93 <= (others => '0');
	      slv_reg94 <= (others => '0');
	      slv_reg95 <= (others => '0');
		  
	      slv_reg96 <= (others => '0');
	      slv_reg97 <= MAX_EC_INIT;
	      slv_reg98 <= (others => '0');
	      slv_reg99 <= (others => '0');
	      slv_reg100 <= (others => '0');
	      slv_reg101 <= MAX_EC_INIT;
	      slv_reg102 <= STEP_CNT_INIT;
	      slv_reg103 <= (others => '0');
	      slv_reg104 <= (others => '0');
	      slv_reg105 <= (others => '0');
	      slv_reg106 <= (others => '0');
	      slv_reg107 <= (others => '0');
	      slv_reg108 <= (others => '0');
	      slv_reg109 <= (others => '0');
	      slv_reg110 <= (others => '0');
	      slv_reg111 <= (others => '0');
		  
	      slv_reg112 <= (others => '0');
	      slv_reg113 <= MAX_EC_INIT;
	      slv_reg114 <= (others => '0');
	      slv_reg115 <= (others => '0');
	      slv_reg116 <= (others => '0');
	      slv_reg117 <= MAX_EC_INIT;
	      slv_reg118 <= STEP_CNT_INIT;
	      slv_reg119 <= (others => '0');
	      slv_reg120 <= (others => '0');
	      slv_reg121 <= (others => '0');
	      slv_reg122 <= (others => '0');
	      slv_reg123 <= (others => '0');
	      slv_reg124 <= (others => '0');
	      slv_reg125 <= (others => '0');
	      slv_reg126 <= (others => '0');
	      slv_reg127 <= (others => '0');
		  
	      slv_reg128 <= (others => '0');
	      slv_reg129 <= MAX_EC_INIT;
	      slv_reg130 <= (others => '0');
	      slv_reg131 <= (others => '0');
	      slv_reg132 <= (others => '0');
	      slv_reg133 <= MAX_EC_INIT;
	      slv_reg134 <= STEP_CNT_INIT;
	      slv_reg135 <= (others => '0');
	      slv_reg136 <= (others => '0');
	      slv_reg137 <= (others => '0');
	      slv_reg138 <= (others => '0');
	      slv_reg139 <= (others => '0');
	      slv_reg140 <= (others => '0');
	      slv_reg141 <= (others => '0');
	      slv_reg142 <= (others => '0');
	      slv_reg143 <= (others => '0');
		  
	      slv_reg144 <= (others => '0');
	      slv_reg145 <= MAX_EC_INIT;
	      slv_reg146 <= (others => '0');
	      slv_reg147 <= (others => '0');
	      slv_reg148 <= (others => '0');
	      slv_reg149 <= MAX_EC_INIT;
	      slv_reg150 <= STEP_CNT_INIT;
	      slv_reg151 <= (others => '0');
	      slv_reg152 <= (others => '0');
	      slv_reg153 <= (others => '0');
	      slv_reg154 <= (others => '0');
	      slv_reg155 <= (others => '0');
	      slv_reg156 <= (others => '0');
	      slv_reg157 <= (others => '0');
	      slv_reg158 <= (others => '0');
	      slv_reg159 <= (others => '0');
	      
	      slv_reg160 <= (others => '0');		  
	      slv_reg161 <= MAX_EC_INIT;
	      slv_reg162 <= (others => '0');	
	      slv_reg163 <= (others => '0');
	      slv_reg164 <= (others => '0');
	      slv_reg165 <= MAX_EC_INIT;
	      slv_reg166 <= STEP_CNT_INIT;	
	      slv_reg167 <= (others => '0');
	      slv_reg168 <= (others => '0');
	      slv_reg169 <= (others => '0');
	      slv_reg170 <= (others => '0');
	      slv_reg171 <= (others => '0');
	      slv_reg172 <= (others => '0');
	      slv_reg173 <= (others => '0');
	      slv_reg174 <= (others => '0');
	      slv_reg175 <= (others => '0');
		  
	      slv_reg176 <= (others => '0');
	      slv_reg177 <= MAX_EC_INIT;
	      slv_reg178 <= (others => '0');
	      slv_reg179 <= (others => '0');
	      slv_reg180 <= (others => '0');
	      slv_reg181 <= MAX_EC_INIT;
	      slv_reg182 <= STEP_CNT_INIT;
	      slv_reg183 <= (others => '0');
	      slv_reg184 <= (others => '0');
	      slv_reg185 <= (others => '0');
	      slv_reg186 <= (others => '0');
	      slv_reg187 <= (others => '0');
	      slv_reg188 <= (others => '0');
	      slv_reg189 <= (others => '0');
	      slv_reg190 <= (others => '0');
	      slv_reg191 <= (others => '0');
		  
	      slv_reg192 <= (others => '0');
	      slv_reg193 <= MAX_EC_INIT;
	      slv_reg194 <= (others => '0');
	      slv_reg195 <= (others => '0');
	      slv_reg196 <= (others => '0');
	      slv_reg197 <= MAX_EC_INIT;
	      slv_reg198 <= STEP_CNT_INIT;
	      slv_reg199 <= (others => '0');
	      slv_reg200 <= (others => '0');
	      slv_reg201 <= (others => '0');
	      slv_reg202 <= (others => '0');
	      slv_reg203 <= (others => '0');
	      slv_reg204 <= (others => '0');
	      slv_reg205 <= (others => '0');
	      slv_reg206 <= (others => '0');
	      slv_reg207 <= (others => '0');
		  
	      slv_reg208 <= (others => '0');
	      slv_reg209 <= MAX_EC_INIT;
	      slv_reg210 <= (others => '0');
	      slv_reg211 <= (others => '0');
	      slv_reg212 <= (others => '0');
	      slv_reg213 <= MAX_EC_INIT;
	      slv_reg214 <= STEP_CNT_INIT;
	      slv_reg215 <= (others => '0');
	      slv_reg216 <= (others => '0');
	      slv_reg217 <= (others => '0');
	      slv_reg218 <= (others => '0');
	      slv_reg219 <= (others => '0');
	      slv_reg220 <= (others => '0');
	      slv_reg221 <= (others => '0');
	      slv_reg222 <= (others => '0');
	      slv_reg223 <= (others => '0');
		  
	      slv_reg224 <= (others => '0');
	      slv_reg225 <= MAX_EC_INIT;
	      slv_reg226 <= (others => '0');
	      slv_reg227 <= (others => '0');
	      slv_reg228 <= (others => '0');
	      slv_reg229 <= MAX_EC_INIT;
	      slv_reg230 <= STEP_CNT_INIT;
	      slv_reg231 <= (others => '0');
	      slv_reg232 <= (others => '0');
	      slv_reg233 <= (others => '0');
	      slv_reg234 <= (others => '0');
	      slv_reg235 <= (others => '0');
	      slv_reg236 <= (others => '0');
	      slv_reg237 <= (others => '0');
	      slv_reg238 <= (others => '0');
	      slv_reg239 <= (others => '0');
		  
	      slv_reg240 <= (others => '0');
	      slv_reg241 <= MAX_EC_INIT;
	      slv_reg242 <= (others => '0');
	      slv_reg243 <= (others => '0');
	      slv_reg244 <= (others => '0');
	      slv_reg245 <= MAX_EC_INIT;
	      slv_reg246 <= STEP_CNT_INIT;
	      slv_reg247 <= (others => '0');
	      slv_reg248 <= (others => '0');
	      slv_reg249 <= (others => '0');
	      slv_reg250 <= (others => '0');
	      slv_reg251 <= (others => '0');
	      slv_reg252 <= (others => '0');
	      slv_reg253 <= (others => '0');
	      slv_reg254 <= (others => '0');
	      slv_reg255 <= (others => '0');
		  
	      slv_reg256 <= (others => '0');
	      slv_reg257 <= MAX_EC_INIT;
	      slv_reg258 <= (others => '0');
	      slv_reg259 <= (others => '0');
	      slv_reg260 <= (others => '0');
	      slv_reg261 <= MAX_EC_INIT;
	      slv_reg262 <= STEP_CNT_INIT;
	      slv_reg263 <= (others => '0');
	      slv_reg264 <= (others => '0');
	      slv_reg265 <= (others => '0');
	      slv_reg266 <= (others => '0');
	      slv_reg267 <= (others => '0');
	      slv_reg268 <= (others => '0');
	      slv_reg269 <= (others => '0');
	      slv_reg270 <= (others => '0');
	      slv_reg271 <= (others => '0');
		  
	      slv_reg272 <= (others => '0');
	      slv_reg273 <= MAX_EC_INIT;
	      slv_reg274 <= (others => '0');
	      slv_reg275 <= (others => '0');
	      slv_reg276 <= (others => '0');
	      slv_reg277 <= MAX_EC_INIT;
	      slv_reg278 <= STEP_CNT_INIT;
	      slv_reg279 <= (others => '0');
	      slv_reg280 <= (others => '0');
	      slv_reg281 <= (others => '0');
	      slv_reg282 <= (others => '0');
	      slv_reg283 <= (others => '0');
	      slv_reg284 <= (others => '0');
	      slv_reg285 <= (others => '0');
	      slv_reg286 <= (others => '0');
	      slv_reg287 <= (others => '0');
		  
	      slv_reg288 <= (others => '0');
	      slv_reg289 <= MAX_EC_INIT;
	      slv_reg290 <= (others => '0');
	      slv_reg291 <= (others => '0');
	      slv_reg292 <= (others => '0');
	      slv_reg293 <= MAX_EC_INIT;
	      slv_reg294 <= STEP_CNT_INIT;
	      slv_reg295 <= (others => '0');
	      slv_reg296 <= (others => '0');
	      slv_reg297 <= (others => '0');
	      slv_reg298 <= (others => '0');
	      slv_reg299 <= (others => '0');
	      slv_reg300 <= (others => '0');
	      slv_reg301 <= (others => '0');
	      slv_reg302 <= (others => '0');
	      slv_reg303 <= (others => '0');
		  
	      slv_reg304 <= (others => '0');
	      slv_reg305 <= MAX_EC_INIT;
	      slv_reg306 <= (others => '0');
	      slv_reg307 <= (others => '0');
	      slv_reg308 <= (others => '0');
	      slv_reg309 <= MAX_EC_INIT;
	      slv_reg310 <= STEP_CNT_INIT;
	      slv_reg311 <= (others => '0');
	      slv_reg312 <= (others => '0');
	      slv_reg313 <= (others => '0');
	      slv_reg314 <= (others => '0');
	      slv_reg315 <= (others => '0');
	      slv_reg316 <= (others => '0');
	      slv_reg317 <= (others => '0');
	      slv_reg318 <= (others => '0');
	      slv_reg319 <= (others => '0');
		  
	      slv_reg320 <= (others => '0');
	      slv_reg321 <= (others => '0');
	      
	      SM0_vld_in_loc <= '0';
	      SM1_vld_in_loc <= '0';
	      SM2_vld_in_loc <= '0';
	      SM3_vld_in_loc <= '0';
	      SM4_vld_in_loc <= '0';
	      SM5_vld_in_loc <= '0';
	      SM6_vld_in_loc <= '0';
	      SM7_vld_in_loc <= '0';
	      SM8_vld_in_loc <= '0';
	      SM9_vld_in_loc <= '0';
	      SM10_vld_in_loc <= '0';
	      SM11_vld_in_loc <= '0';
	      SM12_vld_in_loc <= '0';
	      SM13_vld_in_loc <= '0';
	      SM14_vld_in_loc <= '0';
	      SM15_vld_in_loc <= '0';
	      SM16_vld_in_loc <= '0';
	      SM17_vld_in_loc <= '0';
	      SM18_vld_in_loc <= '0';
	      SM19_vld_in_loc <= '0';	      
	      	      	      	      
	    else

            -- READ ONLY ---------------
            SM0_vld_in_loc  <= SM0_vld_in;
            SM1_vld_in_loc  <= SM1_vld_in;
            SM2_vld_in_loc  <= SM2_vld_in;
            SM3_vld_in_loc  <= SM3_vld_in;
            SM4_vld_in_loc  <= SM4_vld_in;
            SM5_vld_in_loc  <= SM5_vld_in;
            SM6_vld_in_loc  <= SM6_vld_in;
            SM7_vld_in_loc  <= SM7_vld_in;
            SM8_vld_in_loc  <= SM8_vld_in;
            SM9_vld_in_loc  <= SM9_vld_in;
            SM10_vld_in_loc <= SM10_vld_in;
            SM11_vld_in_loc <= SM11_vld_in;
            SM12_vld_in_loc <= SM12_vld_in;
            SM13_vld_in_loc <= SM13_vld_in;
            SM14_vld_in_loc <= SM14_vld_in;
            SM15_vld_in_loc <= SM15_vld_in;
            SM16_vld_in_loc <= SM16_vld_in;
            SM17_vld_in_loc <= SM17_vld_in;
            SM18_vld_in_loc <= SM18_vld_in;
            SM19_vld_in_loc <= SM19_vld_in;			  

            if (SM0_vld_in_loc = '1') then  slv_reg12(31 downto 0)  <= SM0_cnt_i; else  slv_reg12  <= slv_reg12;  end if;
            if (SM0_vld_in_loc = '1') then  slv_reg13(1 downto 0) <= SM0_running; else  slv_reg13  <= slv_reg13;  end if;
            if (SM0_vld_in_loc = '1') then  slv_reg15(0)  <= SM0_irq_in; else  slv_reg15  <= slv_reg15;  end if;

            if (SM1_vld_in_loc = '1') then  slv_reg28(31 downto 0)  <= SM1_cnt_i; else  slv_reg28  <= slv_reg28;  end if;
            if (SM1_vld_in_loc = '1') then  slv_reg29(1 downto 0)  <= SM1_running; else  slv_reg29  <= slv_reg29;  end if;
            if (SM1_vld_in_loc = '1') then  slv_reg31(0)  <= SM1_irq_in; else  slv_reg31  <= slv_reg31;  end if;

            if (SM2_vld_in_loc = '1') then  slv_reg44(31 downto 0)  <= SM2_cnt_i; else  slv_reg44  <= slv_reg44;  end if;
            if (SM2_vld_in_loc = '1') then  slv_reg45(1 downto 0)  <= SM2_running; else  slv_reg45  <= slv_reg45;  end if;
            if (SM2_vld_in_loc = '1') then  slv_reg47(0)  <= SM2_irq_in; else  slv_reg47  <= slv_reg47;  end if;

            if (SM3_vld_in_loc = '1') then  slv_reg60(31 downto 0)  <= SM3_cnt_i; else  slv_reg60  <= slv_reg60;  end if;
            if (SM3_vld_in_loc = '1') then  slv_reg61(1 downto 0)  <= SM3_running; else  slv_reg61  <= slv_reg61;  end if;
            if (SM3_vld_in_loc = '1') then  slv_reg63(0)  <= SM3_irq_in; else  slv_reg63  <= slv_reg63;  end if;

            if (SM4_vld_in_loc = '1') then  slv_reg76(31 downto 0)  <= SM4_cnt_i; else  slv_reg76  <= slv_reg76;  end if;
            if (SM4_vld_in_loc = '1') then  slv_reg77(1 downto 0)  <= SM4_running; else  slv_reg77  <= slv_reg77;  end if;
            if (SM4_vld_in_loc = '1') then  slv_reg79(0)  <= SM4_irq_in; else  slv_reg79  <= slv_reg79;  end if;

            if (SM5_vld_in_loc = '1') then  slv_reg92(31 downto 0)  <= SM5_cnt_i; else  slv_reg92  <= slv_reg92;  end if;
            if (SM5_vld_in_loc = '1') then  slv_reg93(1 downto 0)  <= SM5_running; else  slv_reg93  <= slv_reg93;  end if;
            if (SM5_vld_in_loc = '1') then  slv_reg95(0)  <= SM5_irq_in; else  slv_reg95  <= slv_reg95;  end if;

            if (SM6_vld_in_loc = '1') then  slv_reg108(31 downto 0)  <= SM6_cnt_i; else  slv_reg108  <= slv_reg108;  end if;
            if (SM6_vld_in_loc = '1') then  slv_reg109(1 downto 0)  <= SM6_running; else  slv_reg109  <= slv_reg109;  end if;
            if (SM6_vld_in_loc = '1') then  slv_reg111(0)  <= SM6_irq_in; else  slv_reg111  <= slv_reg111;  end if;

            if (SM7_vld_in_loc = '1') then  slv_reg124(31 downto 0)  <= SM7_cnt_i; else  slv_reg124  <= slv_reg124;  end if;
            if (SM7_vld_in_loc = '1') then  slv_reg125(1 downto 0)  <= SM7_running; else  slv_reg125  <= slv_reg125;  end if;
            if (SM7_vld_in_loc = '1') then  slv_reg127(0)  <= SM7_irq_in; else  slv_reg127  <= slv_reg127;  end if;

            if (SM8_vld_in_loc = '1') then  slv_reg140(31 downto 0)  <= SM8_cnt_i; else  slv_reg140  <= slv_reg140;  end if;
            if (SM8_vld_in_loc = '1') then  slv_reg141(1 downto 0)  <= SM8_running; else  slv_reg141  <= slv_reg141;  end if;
            if (SM8_vld_in_loc = '1') then  slv_reg143(0)  <= SM8_irq_in; else  slv_reg143  <= slv_reg143;  end if;

            if (SM9_vld_in_loc = '1') then  slv_reg156(31 downto 0)  <= SM9_cnt_i; else  slv_reg156  <= slv_reg156;  end if;
            if (SM9_vld_in_loc = '1') then  slv_reg157(1 downto 0)  <= SM9_running; else  slv_reg157  <= slv_reg157;  end if;
            if (SM9_vld_in_loc = '1') then  slv_reg159(0)  <= SM9_irq_in; else  slv_reg159  <= slv_reg159;  end if;

            if (SM10_vld_in_loc = '1') then slv_reg172(31 downto 0)  <= SM10_cnt_i; else  slv_reg172  <= slv_reg172;  end if;
            if (SM10_vld_in_loc = '1') then slv_reg173(1 downto 0)  <= SM10_running; else  slv_reg173  <= slv_reg173;  end if;
            if (SM10_vld_in_loc = '1') then slv_reg175(0)  <= SM10_irq_in; else  slv_reg175  <= slv_reg175;  end if;

            if (SM11_vld_in_loc = '1') then slv_reg188(31 downto 0)  <= SM11_cnt_i; else  slv_reg188  <= slv_reg188;  end if;
            if (SM11_vld_in_loc = '1') then slv_reg189(1 downto 0)  <= SM11_running; else  slv_reg189  <= slv_reg189;  end if;
            if (SM11_vld_in_loc = '1') then slv_reg191(0)  <= SM11_irq_in; else  slv_reg191  <= slv_reg191;  end if;

            if (SM12_vld_in_loc = '1') then slv_reg204(31 downto 0)  <= SM12_cnt_i; else  slv_reg204  <= slv_reg204;  end if;
            if (SM12_vld_in_loc = '1') then slv_reg205(1 downto 0)  <= SM12_running; else  slv_reg205  <= slv_reg205;  end if;
            if (SM12_vld_in_loc = '1') then slv_reg207(0)  <= SM12_irq_in; else  slv_reg207  <= slv_reg207;  end if;

            if (SM13_vld_in_loc = '1') then slv_reg220(31 downto 0)  <= SM13_cnt_i; else  slv_reg220  <= slv_reg220;  end if;
            if (SM13_vld_in_loc = '1') then slv_reg221(1 downto 0)  <= SM13_running; else  slv_reg221  <= slv_reg221;  end if;
            if (SM13_vld_in_loc = '1') then slv_reg223(0)  <= SM13_irq_in; else  slv_reg223  <= slv_reg223;  end if;

            if (SM14_vld_in_loc = '1') then slv_reg236(31 downto 0)  <= SM14_cnt_i; else  slv_reg236  <= slv_reg236;  end if;
            if (SM14_vld_in_loc = '1') then slv_reg237(1 downto 0)  <= SM14_running; else  slv_reg237  <= slv_reg237;  end if;
            if (SM14_vld_in_loc = '1') then slv_reg239(0)  <= SM14_irq_in; else  slv_reg239  <= slv_reg239;  end if;

            if (SM15_vld_in_loc = '1') then slv_reg252(31 downto 0)  <= SM15_cnt_i; else  slv_reg252  <= slv_reg252;  end if;
            if (SM15_vld_in_loc = '1') then slv_reg253(1 downto 0)  <= SM15_running; else  slv_reg253  <= slv_reg253;  end if;
            if (SM15_vld_in_loc = '1') then slv_reg255(0)  <= SM15_irq_in; else  slv_reg255  <= slv_reg255;  end if;

            if (SM16_vld_in_loc = '1') then slv_reg268(31 downto 0)  <= SM16_cnt_i; else  slv_reg268  <= slv_reg268;  end if;
            if (SM16_vld_in_loc = '1') then slv_reg269(1 downto 0)  <= SM16_running; else  slv_reg269  <= slv_reg269;  end if;
            if (SM16_vld_in_loc = '1') then slv_reg271(0)  <= SM16_irq_in; else  slv_reg271  <= slv_reg271;  end if;

            if (SM17_vld_in_loc = '1') then slv_reg284(31 downto 0)  <= SM17_cnt_i; else  slv_reg284  <= slv_reg284;  end if;
            if (SM17_vld_in_loc = '1') then slv_reg285(1 downto 0)  <= SM17_running; else  slv_reg285  <= slv_reg285;  end if;
            if (SM17_vld_in_loc = '1') then slv_reg287(0)  <= SM17_irq_in; else  slv_reg287  <= slv_reg287;  end if;

            if (SM18_vld_in_loc = '1') then slv_reg300(31 downto 0)  <= SM18_cnt_i; else  slv_reg300  <= slv_reg300;  end if;
            if (SM18_vld_in_loc = '1') then slv_reg301(1 downto 0)  <= SM18_running; else  slv_reg301  <= slv_reg301;  end if;
            if (SM18_vld_in_loc = '1') then slv_reg303(0)  <= SM18_irq_in; else  slv_reg303  <= slv_reg303;  end if;

            if (SM19_vld_in_loc = '1') then slv_reg316(31 downto 0)  <= SM19_cnt_i; else  slv_reg316  <= slv_reg316;  end if;
            if (SM19_vld_in_loc = '1') then slv_reg317(1 downto 0)  <= SM19_running; else  slv_reg317  <= slv_reg317;  end if;
            if (SM19_vld_in_loc = '1') then  slv_reg319(0)  <= SM19_irq_in; else  slv_reg319  <= slv_reg319;  end if;
		
			slv_reg321 	<= SMs_irq_reg_int(19 downto 0);
			
		  -- WRITE ---------------
			loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
			case loc_addr is
				when b"000000000" => if (slv_reg_wren = '1') then slv_reg0 <= S_AXI_WDATA(23 downto 0);  end if;
				when b"000000001" => if (slv_reg_wren = '1') then slv_reg1 <= S_AXI_WDATA(21 downto 0);  end if;
				when b"000000010" => if (slv_reg_wren = '1') then slv_reg2 <= S_AXI_WDATA(0 downto 0);   end if;
				when b"000000011" => if (slv_reg_wren = '1') then slv_reg3 <= S_AXI_WDATA(1 downto 0);   end if;
				when b"000000100" => if (slv_reg_wren = '1') then slv_reg4 <= S_AXI_WDATA(1 downto 0);   end if;
				when b"000000101" => if (slv_reg_wren = '1') then slv_reg5 <= S_AXI_WDATA(21 downto 0);  end if;
				when b"000000110" => if (slv_reg_wren = '1') then slv_reg6 <= S_AXI_WDATA(31 downto 0);  end if;
				when b"000000111" => if (slv_reg_wren = '1') then slv_reg7 <= S_AXI_WDATA(0 downto 0);   end if;
				when b"000001000" => if (slv_reg_wren = '1') then slv_reg8 <= S_AXI_WDATA(0 downto 0);   end if;
				when b"000001001" => if (slv_reg_wren = '1') then slv_reg9 <= S_AXI_WDATA(0 downto 0);   end if;
				when b"000001010" => if (slv_reg_wren = '1') then slv_reg10<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000001011" => if (slv_reg_wren = '1') then slv_reg11<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000001110" => if (slv_reg_wren = '1') then slv_reg14<= S_AXI_WDATA(0 downto 0);   end if;

				when b"000010000" => if (slv_reg_wren = '1') then slv_reg16<= S_AXI_WDATA(23 downto 0);  end if;  
				when b"000010001" => if (slv_reg_wren = '1') then slv_reg17<= S_AXI_WDATA(21 downto 0);  end if;
				when b"000010010" => if (slv_reg_wren = '1') then slv_reg18<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000010011" => if (slv_reg_wren = '1') then slv_reg19<= S_AXI_WDATA(1 downto 0);   end if;
				when b"000010100" => if (slv_reg_wren = '1') then slv_reg20<= S_AXI_WDATA(1 downto 0);   end if;
				when b"000010101" => if (slv_reg_wren = '1') then slv_reg21<= S_AXI_WDATA(21 downto 0);  end if;
				when b"000010110" => if (slv_reg_wren = '1') then slv_reg22<= S_AXI_WDATA(31 downto 0);  end if;
				when b"000010111" => if (slv_reg_wren = '1') then slv_reg23<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000011000" => if (slv_reg_wren = '1') then slv_reg24<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000011001" => if (slv_reg_wren = '1') then slv_reg25<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000011010" => if (slv_reg_wren = '1') then slv_reg26<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000011011" => if (slv_reg_wren = '1') then slv_reg27<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000011110" => if (slv_reg_wren = '1') then slv_reg30<= S_AXI_WDATA(0 downto 0);   end if;

				when b"000100000" => if (slv_reg_wren = '1') then slv_reg32<= S_AXI_WDATA(23 downto 0);  end if;
				when b"000100001" => if (slv_reg_wren = '1') then slv_reg33<= S_AXI_WDATA(21 downto 0);  end if;
				when b"000100010" => if (slv_reg_wren = '1') then slv_reg34<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000100011" => if (slv_reg_wren = '1') then slv_reg35<= S_AXI_WDATA(1 downto 0);   end if;
				when b"000100100" => if (slv_reg_wren = '1') then slv_reg36<= S_AXI_WDATA(1 downto 0);   end if;
				when b"000100101" => if (slv_reg_wren = '1') then slv_reg37<= S_AXI_WDATA(21 downto 0);  end if;
				when b"000100110" => if (slv_reg_wren = '1') then slv_reg38<= S_AXI_WDATA(31 downto 0);  end if;
				when b"000100111" => if (slv_reg_wren = '1') then slv_reg39<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000101000" => if (slv_reg_wren = '1') then slv_reg40<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000101001" => if (slv_reg_wren = '1') then slv_reg41<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000101010" => if (slv_reg_wren = '1') then slv_reg42<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000101011" => if (slv_reg_wren = '1') then slv_reg43<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000101110" => if (slv_reg_wren = '1') then slv_reg46<= S_AXI_WDATA(0 downto 0);   end if;

				when b"000110000" => if (slv_reg_wren = '1') then slv_reg48<= S_AXI_WDATA(23 downto 0);  end if;
				when b"000110001" => if (slv_reg_wren = '1') then slv_reg49<= S_AXI_WDATA(21 downto 0);  end if;
				when b"000110010" => if (slv_reg_wren = '1') then slv_reg50<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000110011" => if (slv_reg_wren = '1') then slv_reg51<= S_AXI_WDATA(1 downto 0);   end if;
				when b"000110100" => if (slv_reg_wren = '1') then slv_reg52<= S_AXI_WDATA(1 downto 0);   end if;
				when b"000110101" => if (slv_reg_wren = '1') then slv_reg53<= S_AXI_WDATA(21 downto 0);  end if;
				when b"000110110" => if (slv_reg_wren = '1') then slv_reg54<= S_AXI_WDATA(31 downto 0);  end if;
				when b"000110111" => if (slv_reg_wren = '1') then slv_reg55<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000111000" => if (slv_reg_wren = '1') then slv_reg56<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000111001" => if (slv_reg_wren = '1') then slv_reg57<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000111010" => if (slv_reg_wren = '1') then slv_reg58<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000111011" => if (slv_reg_wren = '1') then slv_reg59<= S_AXI_WDATA(0 downto 0);   end if;
				when b"000111110" => if (slv_reg_wren = '1') then slv_reg62<= S_AXI_WDATA(0 downto 0);   end if;

				when b"001000000" => if (slv_reg_wren = '1') then slv_reg64<= S_AXI_WDATA(23 downto 0);  end if;
				when b"001000001" => if (slv_reg_wren = '1') then slv_reg65<= S_AXI_WDATA(21 downto 0);  end if;
				when b"001000010" => if (slv_reg_wren = '1') then slv_reg66<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001000011" => if (slv_reg_wren = '1') then slv_reg67<= S_AXI_WDATA(1 downto 0);   end if;
				when b"001000100" => if (slv_reg_wren = '1') then slv_reg68<= S_AXI_WDATA(1 downto 0);   end if;
				when b"001000101" => if (slv_reg_wren = '1') then slv_reg69<= S_AXI_WDATA(21 downto 0);  end if;
				when b"001000110" => if (slv_reg_wren = '1') then slv_reg70<= S_AXI_WDATA(31 downto 0);  end if;
				when b"001000111" => if (slv_reg_wren = '1') then slv_reg71<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001001000" => if (slv_reg_wren = '1') then slv_reg72<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001001001" => if (slv_reg_wren = '1') then slv_reg73<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001001010" => if (slv_reg_wren = '1') then slv_reg74<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001001011" => if (slv_reg_wren = '1') then slv_reg75<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001001110" => if (slv_reg_wren = '1') then slv_reg78<= S_AXI_WDATA(0 downto 0);   end if;

				when b"001010000" => if (slv_reg_wren = '1') then slv_reg80<= S_AXI_WDATA(23 downto 0);  end if;
				when b"001010001" => if (slv_reg_wren = '1') then slv_reg81<= S_AXI_WDATA(21 downto 0);  end if;
				when b"001010010" => if (slv_reg_wren = '1') then slv_reg82<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001010011" => if (slv_reg_wren = '1') then slv_reg83<= S_AXI_WDATA(1 downto 0);   end if;
				when b"001010100" => if (slv_reg_wren = '1') then slv_reg84<= S_AXI_WDATA(1 downto 0);   end if;
				when b"001010101" => if (slv_reg_wren = '1') then slv_reg85<= S_AXI_WDATA(21 downto 0);  end if;
				when b"001010110" => if (slv_reg_wren = '1') then slv_reg86<= S_AXI_WDATA(31 downto 0);  end if;
				when b"001010111" => if (slv_reg_wren = '1') then slv_reg87<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001011000" => if (slv_reg_wren = '1') then slv_reg88<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001011001" => if (slv_reg_wren = '1') then slv_reg89<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001011010" => if (slv_reg_wren = '1') then slv_reg90<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001011011" => if (slv_reg_wren = '1') then slv_reg91<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001011110" => if (slv_reg_wren = '1') then slv_reg94<= S_AXI_WDATA(0 downto 0);   end if;

				when b"001100000" => if (slv_reg_wren = '1') then slv_reg96<= S_AXI_WDATA(23 downto 0);  end if;
				when b"001100001" => if (slv_reg_wren = '1') then slv_reg97<= S_AXI_WDATA(21 downto 0);  end if;
				when b"001100010" => if (slv_reg_wren = '1') then slv_reg98<= S_AXI_WDATA(0 downto 0);   end if;
				when b"001100011" => if (slv_reg_wren = '1') then slv_reg99<= S_AXI_WDATA(1 downto 0);   end if;
				when b"001100100" => if (slv_reg_wren = '1') then slv_reg100<= S_AXI_WDATA(1 downto 0);  end if;
				when b"001100101" => if (slv_reg_wren = '1') then slv_reg101<= S_AXI_WDATA(21 downto 0); end if;
				when b"001100110" => if (slv_reg_wren = '1') then slv_reg102<= S_AXI_WDATA(31 downto 0); end if;
				when b"001100111" => if (slv_reg_wren = '1') then slv_reg103<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001101000" => if (slv_reg_wren = '1') then slv_reg104<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001101001" => if (slv_reg_wren = '1') then slv_reg105<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001101010" => if (slv_reg_wren = '1') then slv_reg106<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001101011" => if (slv_reg_wren = '1') then slv_reg107<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001101110" => if (slv_reg_wren = '1') then slv_reg110<= S_AXI_WDATA(0 downto 0);  end if;

				when b"001110000" => if (slv_reg_wren = '1') then slv_reg112<= S_AXI_WDATA(23 downto 0); end if;
				when b"001110001" => if (slv_reg_wren = '1') then slv_reg113<= S_AXI_WDATA(21 downto 0); end if;
				when b"001110010" => if (slv_reg_wren = '1') then slv_reg114<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001110011" => if (slv_reg_wren = '1') then slv_reg115<= S_AXI_WDATA(1 downto 0);  end if;
				when b"001110100" => if (slv_reg_wren = '1') then slv_reg116<= S_AXI_WDATA(1 downto 0);  end if;
				when b"001110101" => if (slv_reg_wren = '1') then slv_reg117<= S_AXI_WDATA(21 downto 0); end if;
				when b"001110110" => if (slv_reg_wren = '1') then slv_reg118<= S_AXI_WDATA(31 downto 0); end if;
				when b"001110111" => if (slv_reg_wren = '1') then slv_reg119<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001111000" => if (slv_reg_wren = '1') then slv_reg120<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001111001" => if (slv_reg_wren = '1') then slv_reg121<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001111010" => if (slv_reg_wren = '1') then slv_reg122<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001111011" => if (slv_reg_wren = '1') then slv_reg123<= S_AXI_WDATA(0 downto 0);  end if;
				when b"001111110" => if (slv_reg_wren = '1') then slv_reg126<= S_AXI_WDATA(0 downto 0);  end if;

				when b"010000000" => if (slv_reg_wren = '1') then slv_reg128<= S_AXI_WDATA(23 downto 0); end if;
				when b"010000001" => if (slv_reg_wren = '1') then slv_reg129<= S_AXI_WDATA(21 downto 0); end if;
				when b"010000010" => if (slv_reg_wren = '1') then slv_reg130<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010000011" => if (slv_reg_wren = '1') then slv_reg131<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010000100" => if (slv_reg_wren = '1') then slv_reg132<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010000101" => if (slv_reg_wren = '1') then slv_reg133<= S_AXI_WDATA(21 downto 0); end if;
				when b"010000110" => if (slv_reg_wren = '1') then slv_reg134<= S_AXI_WDATA(31 downto 0); end if;
				when b"010000111" => if (slv_reg_wren = '1') then slv_reg135<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010001000" => if (slv_reg_wren = '1') then slv_reg136<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010001001" => if (slv_reg_wren = '1') then slv_reg137<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010001010" => if (slv_reg_wren = '1') then slv_reg138<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010001011" => if (slv_reg_wren = '1') then slv_reg139<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010001110" => if (slv_reg_wren = '1') then slv_reg142<= S_AXI_WDATA(0 downto 0);  end if;

				when b"010010000" => if (slv_reg_wren = '1') then slv_reg144<= S_AXI_WDATA(23 downto 0); end if;
				when b"010010001" => if (slv_reg_wren = '1') then slv_reg145<= S_AXI_WDATA(21 downto 0); end if;
				when b"010010010" => if (slv_reg_wren = '1') then slv_reg146<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010010011" => if (slv_reg_wren = '1') then slv_reg147<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010010100" => if (slv_reg_wren = '1') then slv_reg148<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010010101" => if (slv_reg_wren = '1') then slv_reg149<= S_AXI_WDATA(21 downto 0); end if;
				when b"010010110" => if (slv_reg_wren = '1') then slv_reg150<= S_AXI_WDATA(31 downto 0); end if;
				when b"010010111" => if (slv_reg_wren = '1') then slv_reg151<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010011000" => if (slv_reg_wren = '1') then slv_reg152<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010011001" => if (slv_reg_wren = '1') then slv_reg153<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010011010" => if (slv_reg_wren = '1') then slv_reg154<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010011011" => if (slv_reg_wren = '1') then slv_reg155<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010011110" => if (slv_reg_wren = '1') then slv_reg158<= S_AXI_WDATA(0 downto 0);  end if;

				when b"010100000" => if (slv_reg_wren = '1') then slv_reg160<= S_AXI_WDATA(23 downto 0); end if;
				when b"010100001" => if (slv_reg_wren = '1') then slv_reg161<= S_AXI_WDATA(21 downto 0); end if;
				when b"010100010" => if (slv_reg_wren = '1') then slv_reg162<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010100011" => if (slv_reg_wren = '1') then slv_reg163<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010100100" => if (slv_reg_wren = '1') then slv_reg164<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010100101" => if (slv_reg_wren = '1') then slv_reg165<= S_AXI_WDATA(21 downto 0); end if;
				when b"010100110" => if (slv_reg_wren = '1') then slv_reg166<= S_AXI_WDATA(31 downto 0); end if;
				when b"010100111" => if (slv_reg_wren = '1') then slv_reg167<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010101000" => if (slv_reg_wren = '1') then slv_reg168<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010101001" => if (slv_reg_wren = '1') then slv_reg169<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010101010" => if (slv_reg_wren = '1') then slv_reg170<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010101011" => if (slv_reg_wren = '1') then slv_reg171<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010101110" => if (slv_reg_wren = '1') then slv_reg174<= S_AXI_WDATA(0 downto 0);  end if;

				when b"010110000" => if (slv_reg_wren = '1') then slv_reg176<= S_AXI_WDATA(23 downto 0); end if;
				when b"010110001" => if (slv_reg_wren = '1') then slv_reg177<= S_AXI_WDATA(21 downto 0); end if;
				when b"010110010" => if (slv_reg_wren = '1') then slv_reg178<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010110011" => if (slv_reg_wren = '1') then slv_reg179<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010110100" => if (slv_reg_wren = '1') then slv_reg180<= S_AXI_WDATA(1 downto 0);  end if;
				when b"010110101" => if (slv_reg_wren = '1') then slv_reg181<= S_AXI_WDATA(21 downto 0); end if;
				when b"010110110" => if (slv_reg_wren = '1') then slv_reg182<= S_AXI_WDATA(31 downto 0); end if;
				when b"010110111" => if (slv_reg_wren = '1') then slv_reg183<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010111000" => if (slv_reg_wren = '1') then slv_reg184<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010111001" => if (slv_reg_wren = '1') then slv_reg185<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010111010" => if (slv_reg_wren = '1') then slv_reg186<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010111011" => if (slv_reg_wren = '1') then slv_reg187<= S_AXI_WDATA(0 downto 0);  end if;
				when b"010111110" => if (slv_reg_wren = '1') then slv_reg190<= S_AXI_WDATA(0 downto 0);  end if;

				when b"011000000" => if (slv_reg_wren = '1') then slv_reg192<= S_AXI_WDATA(23 downto 0); end if;
				when b"011000001" => if (slv_reg_wren = '1') then slv_reg193<= S_AXI_WDATA(21 downto 0); end if;
				when b"011000010" => if (slv_reg_wren = '1') then slv_reg194<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011000011" => if (slv_reg_wren = '1') then slv_reg195<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011000100" => if (slv_reg_wren = '1') then slv_reg196<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011000101" => if (slv_reg_wren = '1') then slv_reg197<= S_AXI_WDATA(21 downto 0); end if;
				when b"011000110" => if (slv_reg_wren = '1') then slv_reg198<= S_AXI_WDATA(31 downto 0); end if;
				when b"011000111" => if (slv_reg_wren = '1') then slv_reg199<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011001000" => if (slv_reg_wren = '1') then slv_reg200<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011001001" => if (slv_reg_wren = '1') then slv_reg201<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011001010" => if (slv_reg_wren = '1') then slv_reg202<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011001011" => if (slv_reg_wren = '1') then slv_reg203<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011001110" => if (slv_reg_wren = '1') then slv_reg206<= S_AXI_WDATA(0 downto 0);  end if;

				when b"011010000" => if (slv_reg_wren = '1') then slv_reg208<= S_AXI_WDATA(23 downto 0); end if;
				when b"011010001" => if (slv_reg_wren = '1') then slv_reg209<= S_AXI_WDATA(21 downto 0); end if;
				when b"011010010" => if (slv_reg_wren = '1') then slv_reg210<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011010011" => if (slv_reg_wren = '1') then slv_reg211<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011010100" => if (slv_reg_wren = '1') then slv_reg212<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011010101" => if (slv_reg_wren = '1') then slv_reg213<= S_AXI_WDATA(21 downto 0); end if;
				when b"011010110" => if (slv_reg_wren = '1') then slv_reg214<= S_AXI_WDATA(31 downto 0); end if;
				when b"011010111" => if (slv_reg_wren = '1') then slv_reg215<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011011000" => if (slv_reg_wren = '1') then slv_reg216<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011011001" => if (slv_reg_wren = '1') then slv_reg217<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011011010" => if (slv_reg_wren = '1') then slv_reg218<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011011011" => if (slv_reg_wren = '1') then slv_reg219<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011011110" => if (slv_reg_wren = '1') then slv_reg222<= S_AXI_WDATA(0 downto 0);  end if;

				when b"011100000" => if (slv_reg_wren = '1') then slv_reg224<= S_AXI_WDATA(23 downto 0); end if;
				when b"011100001" => if (slv_reg_wren = '1') then slv_reg225<= S_AXI_WDATA(21 downto 0); end if;
				when b"011100010" => if (slv_reg_wren = '1') then slv_reg226<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011100011" => if (slv_reg_wren = '1') then slv_reg227<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011100100" => if (slv_reg_wren = '1') then slv_reg228<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011100101" => if (slv_reg_wren = '1') then slv_reg229<= S_AXI_WDATA(21 downto 0); end if;
				when b"011100110" => if (slv_reg_wren = '1') then slv_reg230<= S_AXI_WDATA(31 downto 0); end if;
				when b"011100111" => if (slv_reg_wren = '1') then slv_reg231<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011101000" => if (slv_reg_wren = '1') then slv_reg232<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011101001" => if (slv_reg_wren = '1') then slv_reg233<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011101010" => if (slv_reg_wren = '1') then slv_reg234<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011101011" => if (slv_reg_wren = '1') then slv_reg235<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011101110" => if (slv_reg_wren = '1') then slv_reg238<= S_AXI_WDATA(0 downto 0);  end if;

				when b"011110000" => if (slv_reg_wren = '1') then slv_reg240<= S_AXI_WDATA(23 downto 0); end if;
				when b"011110001" => if (slv_reg_wren = '1') then slv_reg241<= S_AXI_WDATA(21 downto 0); end if;
				when b"011110010" => if (slv_reg_wren = '1') then slv_reg242<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011110011" => if (slv_reg_wren = '1') then slv_reg243<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011110100" => if (slv_reg_wren = '1') then slv_reg244<= S_AXI_WDATA(1 downto 0);  end if;
				when b"011110101" => if (slv_reg_wren = '1') then slv_reg245<= S_AXI_WDATA(21 downto 0); end if;
				when b"011110110" => if (slv_reg_wren = '1') then slv_reg246<= S_AXI_WDATA(31 downto 0); end if;
				when b"011110111" => if (slv_reg_wren = '1') then slv_reg247<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011111000" => if (slv_reg_wren = '1') then slv_reg248<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011111001" => if (slv_reg_wren = '1') then slv_reg249<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011111010" => if (slv_reg_wren = '1') then slv_reg250<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011111011" => if (slv_reg_wren = '1') then slv_reg251<= S_AXI_WDATA(0 downto 0);  end if;
				when b"011111110" => if (slv_reg_wren = '1') then slv_reg254<= S_AXI_WDATA(0 downto 0);  end if;

				when b"100000000" => if (slv_reg_wren = '1') then slv_reg256<= S_AXI_WDATA(23 downto 0); end if;
				when b"100000001" => if (slv_reg_wren = '1') then slv_reg257<= S_AXI_WDATA(21 downto 0); end if;
				when b"100000010" => if (slv_reg_wren = '1') then slv_reg258<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100000011" => if (slv_reg_wren = '1') then slv_reg259<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100000100" => if (slv_reg_wren = '1') then slv_reg260<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100000101" => if (slv_reg_wren = '1') then slv_reg261<= S_AXI_WDATA(21 downto 0); end if;
				when b"100000110" => if (slv_reg_wren = '1') then slv_reg262<= S_AXI_WDATA(31 downto 0); end if;
				when b"100000111" => if (slv_reg_wren = '1') then slv_reg263<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100001000" => if (slv_reg_wren = '1') then slv_reg264<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100001001" => if (slv_reg_wren = '1') then slv_reg265<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100001010" => if (slv_reg_wren = '1') then slv_reg266<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100001011" => if (slv_reg_wren = '1') then slv_reg267<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100001110" => if (slv_reg_wren = '1') then slv_reg270<= S_AXI_WDATA(0 downto 0);  end if;

				when b"100010000" => if (slv_reg_wren = '1') then slv_reg272<= S_AXI_WDATA(23 downto 0); end if;
				when b"100010001" => if (slv_reg_wren = '1') then slv_reg273<= S_AXI_WDATA(21 downto 0); end if;
				when b"100010010" => if (slv_reg_wren = '1') then slv_reg274<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100010011" => if (slv_reg_wren = '1') then slv_reg275<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100010100" => if (slv_reg_wren = '1') then slv_reg276<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100010101" => if (slv_reg_wren = '1') then slv_reg277<= S_AXI_WDATA(21 downto 0); end if;
				when b"100010110" => if (slv_reg_wren = '1') then slv_reg278<= S_AXI_WDATA(31 downto 0); end if;
				when b"100010111" => if (slv_reg_wren = '1') then slv_reg279<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100011000" => if (slv_reg_wren = '1') then slv_reg280<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100011001" => if (slv_reg_wren = '1') then slv_reg281<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100011010" => if (slv_reg_wren = '1') then slv_reg282<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100011011" => if (slv_reg_wren = '1') then slv_reg283<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100011110" => if (slv_reg_wren = '1') then slv_reg286<= S_AXI_WDATA(0 downto 0);  end if;

				when b"100100000" => if (slv_reg_wren = '1') then slv_reg288<= S_AXI_WDATA(23 downto 0); end if;
				when b"100100001" => if (slv_reg_wren = '1') then slv_reg289<= S_AXI_WDATA(21 downto 0); end if;
				when b"100100010" => if (slv_reg_wren = '1') then slv_reg290<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100100011" => if (slv_reg_wren = '1') then slv_reg291<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100100100" => if (slv_reg_wren = '1') then slv_reg292<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100100101" => if (slv_reg_wren = '1') then slv_reg293<= S_AXI_WDATA(21 downto 0); end if;
				when b"100100110" => if (slv_reg_wren = '1') then slv_reg294<= S_AXI_WDATA(31 downto 0); end if;
				when b"100100111" => if (slv_reg_wren = '1') then slv_reg295<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100101000" => if (slv_reg_wren = '1') then slv_reg296<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100101001" => if (slv_reg_wren = '1') then slv_reg297<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100101010" => if (slv_reg_wren = '1') then slv_reg298<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100101011" => if (slv_reg_wren = '1') then slv_reg299<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100101110" => if (slv_reg_wren = '1') then slv_reg302<= S_AXI_WDATA(0 downto 0);  end if;

				when b"100110000" => if (slv_reg_wren = '1') then slv_reg304<= S_AXI_WDATA(23 downto 0); end if;
				when b"100110001" => if (slv_reg_wren = '1') then slv_reg305<= S_AXI_WDATA(21 downto 0); end if;
				when b"100110010" => if (slv_reg_wren = '1') then slv_reg306<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100110011" => if (slv_reg_wren = '1') then slv_reg307<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100110100" => if (slv_reg_wren = '1') then slv_reg308<= S_AXI_WDATA(1 downto 0);  end if;
				when b"100110101" => if (slv_reg_wren = '1') then slv_reg309<= S_AXI_WDATA(21 downto 0); end if;
				when b"100110110" => if (slv_reg_wren = '1') then slv_reg310<= S_AXI_WDATA(31 downto 0); end if;
				when b"100110111" => if (slv_reg_wren = '1') then slv_reg311<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100111000" => if (slv_reg_wren = '1') then slv_reg312<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100111001" => if (slv_reg_wren = '1') then slv_reg313<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100111010" => if (slv_reg_wren = '1') then slv_reg314<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100111011" => if (slv_reg_wren = '1') then slv_reg315<= S_AXI_WDATA(0 downto 0);  end if;
				when b"100111110" => if (slv_reg_wren = '1') then slv_reg318<= S_AXI_WDATA(0 downto 0);  end if;
				
				when b"101000000" => if (slv_reg_wren = '1') then slv_reg320<= S_AXI_WDATA(19 downto 0);  end if;
			
				when others => null;

			end case;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, slv_reg30, slv_reg31, slv_reg32, slv_reg33, slv_reg34, slv_reg35, slv_reg36, slv_reg37, slv_reg38, slv_reg39, slv_reg40, slv_reg41, slv_reg42, slv_reg43, slv_reg44, slv_reg45, slv_reg46, slv_reg47, slv_reg48, slv_reg49, slv_reg50, slv_reg51, slv_reg52, slv_reg53, slv_reg54, slv_reg55, slv_reg56, slv_reg57, slv_reg58, slv_reg59, slv_reg60, slv_reg61, slv_reg62, slv_reg63, slv_reg64, slv_reg65, slv_reg66, slv_reg67, slv_reg68, slv_reg69, slv_reg70, slv_reg71, slv_reg72, slv_reg73, slv_reg74, slv_reg75, slv_reg76, slv_reg77, slv_reg78, slv_reg79, slv_reg80, slv_reg81, slv_reg82, slv_reg83, slv_reg84, slv_reg85, slv_reg86, slv_reg87, slv_reg88, slv_reg89, slv_reg90, slv_reg91, slv_reg92, slv_reg93, slv_reg94, slv_reg95, slv_reg96, slv_reg97, slv_reg98, slv_reg99, slv_reg100, slv_reg101, slv_reg102, slv_reg103, slv_reg104, slv_reg105, slv_reg106, slv_reg107, slv_reg108, slv_reg109, slv_reg110, slv_reg111, slv_reg112, slv_reg113, slv_reg114, slv_reg115, slv_reg116, slv_reg117, slv_reg118, slv_reg119, slv_reg120, slv_reg121, slv_reg122, slv_reg123, slv_reg124, slv_reg125, slv_reg126, slv_reg127, slv_reg128, slv_reg129, slv_reg130, slv_reg131, slv_reg132, slv_reg133, slv_reg134, slv_reg135, slv_reg136, slv_reg137, slv_reg138, slv_reg139, slv_reg140, slv_reg141, slv_reg142, slv_reg143, slv_reg144, slv_reg145, slv_reg146, slv_reg147, slv_reg148, slv_reg149, slv_reg150, slv_reg151, slv_reg152, slv_reg153, slv_reg154, slv_reg155, slv_reg156, slv_reg157, slv_reg158, slv_reg159, slv_reg160, slv_reg161, slv_reg162, slv_reg163, slv_reg164, slv_reg165, slv_reg166, slv_reg167, slv_reg168, slv_reg169, slv_reg170, slv_reg171, slv_reg172, slv_reg173, slv_reg174, slv_reg175, slv_reg176, slv_reg177, slv_reg178, slv_reg179, slv_reg180, slv_reg181, slv_reg182, slv_reg183, slv_reg184, slv_reg185, slv_reg186, slv_reg187, slv_reg188, slv_reg189, slv_reg190, slv_reg191, slv_reg192, slv_reg193, slv_reg194, slv_reg195, slv_reg196, slv_reg197, slv_reg198, slv_reg199, slv_reg200, slv_reg201, slv_reg202, slv_reg203, slv_reg204, slv_reg205, slv_reg206, slv_reg207, slv_reg208, slv_reg209, slv_reg210, slv_reg211, slv_reg212, slv_reg213, slv_reg214, slv_reg215, slv_reg216, slv_reg217, slv_reg218, slv_reg219, slv_reg220, slv_reg221, slv_reg222, slv_reg223, slv_reg224, slv_reg225, slv_reg226, slv_reg227, slv_reg228, slv_reg229, slv_reg230, slv_reg231, slv_reg232, slv_reg233, slv_reg234, slv_reg235, slv_reg236, slv_reg237, slv_reg238, slv_reg239, slv_reg240, slv_reg241, slv_reg242, slv_reg243, slv_reg244, slv_reg245, slv_reg246, slv_reg247, slv_reg248, slv_reg249, slv_reg250, slv_reg251, slv_reg252, slv_reg253, slv_reg254, slv_reg255, slv_reg256, slv_reg257, slv_reg258, slv_reg259, slv_reg260, slv_reg261, slv_reg262, slv_reg263, slv_reg264, slv_reg265, slv_reg266, slv_reg267, slv_reg268, slv_reg269, slv_reg270, slv_reg271, slv_reg272, slv_reg273, slv_reg274, slv_reg275, slv_reg276, slv_reg277, slv_reg278, slv_reg279, slv_reg280, slv_reg281, slv_reg282, slv_reg283, slv_reg284, slv_reg285, slv_reg286, slv_reg287, slv_reg288, slv_reg289, slv_reg290, slv_reg291, slv_reg292, slv_reg293, slv_reg294, slv_reg295, slv_reg296, slv_reg297, slv_reg298, slv_reg299, slv_reg300, slv_reg301, slv_reg302, slv_reg303, slv_reg304, slv_reg305, slv_reg306, slv_reg307, slv_reg308, slv_reg309, slv_reg310, slv_reg311, slv_reg312, slv_reg313, slv_reg314, slv_reg315, slv_reg316, slv_reg317, slv_reg318, slv_reg319, slv_reg320, slv_reg321, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
		
	    reg_data_out <= (others => '0');
		
	    case loc_addr is
          when b"000000000" => reg_data_out(23 downto 0) <= slv_reg0;	
          when b"000000001" => reg_data_out(21 downto 0) <= slv_reg1;	
          when b"000000010" => reg_data_out(0 downto 0)  <= slv_reg2;	
          when b"000000011" => reg_data_out(1 downto 0)  <= slv_reg3;	
          when b"000000100" => reg_data_out(1 downto 0)  <= slv_reg4;	
          when b"000000101" => reg_data_out(21 downto 0) <= slv_reg5;	
          when b"000000110" => reg_data_out(31 downto 0) <= slv_reg6;	
          when b"000000111" => reg_data_out(0 downto 0)  <= slv_reg7;	
          when b"000001000" => reg_data_out(0 downto 0)  <= slv_reg8;	
          when b"000001001" => reg_data_out(0 downto 0)  <= slv_reg9;	
          when b"000001010" => reg_data_out(0 downto 0)  <= slv_reg10;	
          when b"000001011" => reg_data_out(0 downto 0)  <= slv_reg11;
          when b"000001100" => reg_data_out(31 downto 0) <= slv_reg12;			  
          when b"000001101" => reg_data_out(1 downto 0)  <= slv_reg13;	
          when b"000001110" => reg_data_out(0 downto 0)  <= slv_reg14;	
          when b"000001111" => reg_data_out(0 downto 0)  <= slv_reg15;
	
          when b"000010000" => reg_data_out(23 downto 0) <= slv_reg16;	
          when b"000010001" => reg_data_out(21 downto 0) <= slv_reg17;	
          when b"000010010" => reg_data_out(0 downto 0)  <= slv_reg18;	
          when b"000010011" => reg_data_out(1 downto 0)  <= slv_reg19;	
          when b"000010100" => reg_data_out(1 downto 0)  <= slv_reg20;	
          when b"000010101" => reg_data_out(21 downto 0) <= slv_reg21;	
          when b"000010110" => reg_data_out(31 downto 0) <= slv_reg22;	
          when b"000010111" => reg_data_out(0 downto 0)  <= slv_reg23;	
          when b"000011000" => reg_data_out(0 downto 0)  <= slv_reg24;	
          when b"000011001" => reg_data_out(0 downto 0)  <= slv_reg25;	
          when b"000011010" => reg_data_out(0 downto 0)  <= slv_reg26;	
          when b"000011011" => reg_data_out(0 downto 0)  <= slv_reg27;	
          when b"000011100" => reg_data_out(31 downto 0) <= slv_reg28;			  
          when b"000011101" => reg_data_out(1 downto 0)  <= slv_reg29;	
          when b"000011110" => reg_data_out(0 downto 0)  <= slv_reg30;	
          when b"000011111" => reg_data_out(0 downto 0)  <= slv_reg31;	
	
          when b"000100000" => reg_data_out(23 downto 0) <= slv_reg32;	
          when b"000100001" => reg_data_out(21 downto 0) <= slv_reg33;	
          when b"000100010" => reg_data_out(0 downto 0)  <= slv_reg34;	
          when b"000100011" => reg_data_out(1 downto 0)  <= slv_reg35;	
          when b"000100100" => reg_data_out(1 downto 0)  <= slv_reg36;	
          when b"000100101" => reg_data_out(21 downto 0) <= slv_reg37;	
          when b"000100110" => reg_data_out(31 downto 0) <= slv_reg38;	
          when b"000100111" => reg_data_out(0 downto 0)  <= slv_reg39;	
          when b"000101000" => reg_data_out(0 downto 0)  <= slv_reg40;	
          when b"000101001" => reg_data_out(0 downto 0)  <= slv_reg41;	
          when b"000101010" => reg_data_out(0 downto 0)  <= slv_reg42;	
          when b"000101011" => reg_data_out(0 downto 0)  <= slv_reg43;	
          when b"000101100" => reg_data_out(31 downto 0) <= slv_reg44;			  
          when b"000101101" => reg_data_out(1 downto 0)  <= slv_reg45;	
          when b"000101110" => reg_data_out(0 downto 0)  <= slv_reg46;	
          when b"000101111" => reg_data_out(0 downto 0)  <= slv_reg47;	
	
          when b"000110000" => reg_data_out(23 downto 0) <= slv_reg48;	
          when b"000110001" => reg_data_out(21 downto 0) <= slv_reg49;	
          when b"000110010" => reg_data_out(0 downto 0)  <= slv_reg50;	
          when b"000110011" => reg_data_out(1 downto 0)  <= slv_reg51;	
          when b"000110100" => reg_data_out(1 downto 0)  <= slv_reg52;	
          when b"000110101" => reg_data_out(21 downto 0) <= slv_reg53;	
          when b"000110110" => reg_data_out(31 downto 0) <= slv_reg54;	
          when b"000110111" => reg_data_out(0 downto 0)  <= slv_reg55;	
          when b"000111000" => reg_data_out(0 downto 0)  <= slv_reg56;	
          when b"000111001" => reg_data_out(0 downto 0)  <= slv_reg57;	
          when b"000111010" => reg_data_out(0 downto 0)  <= slv_reg58;	
          when b"000111011" => reg_data_out(0 downto 0)  <= slv_reg59;	
          when b"000111100" => reg_data_out(31 downto 0) <= slv_reg60;			  
          when b"000111101" => reg_data_out(1 downto 0)  <= slv_reg61;	
          when b"000111110" => reg_data_out(0 downto 0)  <= slv_reg62;	
          when b"000111111" => reg_data_out(0 downto 0)  <= slv_reg63;	
	
          when b"001000000" => reg_data_out(23 downto 0) <= slv_reg64;	
          when b"001000001" => reg_data_out(21 downto 0) <= slv_reg65;	
          when b"001000010" => reg_data_out(0 downto 0)  <= slv_reg66;	
          when b"001000011" => reg_data_out(1 downto 0)  <= slv_reg67;	
          when b"001000100" => reg_data_out(1 downto 0)  <= slv_reg68;	
          when b"001000101" => reg_data_out(21 downto 0) <= slv_reg69;	
          when b"001000110" => reg_data_out(31 downto 0) <= slv_reg70;	
          when b"001000111" => reg_data_out(0 downto 0)  <= slv_reg71;	
          when b"001001000" => reg_data_out(0 downto 0)  <= slv_reg72;	
          when b"001001001" => reg_data_out(0 downto 0)  <= slv_reg73;	
          when b"001001010" => reg_data_out(0 downto 0)  <= slv_reg74;	
          when b"001001011" => reg_data_out(0 downto 0)  <= slv_reg75;	
          when b"001001100" => reg_data_out(31 downto 0) <= slv_reg76;			  
          when b"001001101" => reg_data_out(1 downto 0)  <= slv_reg77;	
          when b"001001110" => reg_data_out(0 downto 0)  <= slv_reg78;	
          when b"001001111" => reg_data_out(0 downto 0)  <= slv_reg79;	
	
          when b"001010000" => reg_data_out(23 downto 0) <= slv_reg80;	
          when b"001010001" => reg_data_out(21 downto 0) <= slv_reg81;	
          when b"001010010" => reg_data_out(0 downto 0)  <= slv_reg82;	
          when b"001010011" => reg_data_out(1 downto 0)  <= slv_reg83;	
          when b"001010100" => reg_data_out(1 downto 0)  <= slv_reg84;	
          when b"001010101" => reg_data_out(21 downto 0) <= slv_reg85;	
          when b"001010110" => reg_data_out(31 downto 0) <= slv_reg86;	
          when b"001010111" => reg_data_out(0 downto 0)  <= slv_reg87;	
          when b"001011000" => reg_data_out(0 downto 0)  <= slv_reg88;	
          when b"001011001" => reg_data_out(0 downto 0)  <= slv_reg89;	
          when b"001011010" => reg_data_out(0 downto 0)  <= slv_reg90;	
          when b"001011011" => reg_data_out(0 downto 0)  <= slv_reg91;	
          when b"001011100" => reg_data_out(31 downto 0) <= slv_reg92;			  
          when b"001011101" => reg_data_out(1 downto 0)  <= slv_reg93;	
          when b"001011110" => reg_data_out(0 downto 0)  <= slv_reg94;	
          when b"001011111" => reg_data_out(0 downto 0)  <= slv_reg95;	
	
          when b"001100000" => reg_data_out(23 downto 0) <= slv_reg96;	
          when b"001100001" => reg_data_out(21 downto 0) <= slv_reg97;	
          when b"001100010" => reg_data_out(0 downto 0)  <= slv_reg98;	
          when b"001100011" => reg_data_out(1 downto 0)  <= slv_reg99;	
          when b"001100100" => reg_data_out(1 downto 0)  <= slv_reg100;	
          when b"001100101" => reg_data_out(21 downto 0) <= slv_reg101;	
          when b"001100110" => reg_data_out(31 downto 0) <= slv_reg102;	
          when b"001100111" => reg_data_out(0 downto 0)  <= slv_reg103;	
          when b"001101000" => reg_data_out(0 downto 0)  <= slv_reg104;	
          when b"001101001" => reg_data_out(0 downto 0)  <= slv_reg105;	
          when b"001101010" => reg_data_out(0 downto 0)  <= slv_reg106;	
          when b"001101011" => reg_data_out(0 downto 0)  <= slv_reg107;		
          when b"001101100" => reg_data_out(31 downto 0) <= slv_reg108;		  
          when b"001101101" => reg_data_out(1 downto 0)  <= slv_reg109;	
          when b"001101110" => reg_data_out(0 downto 0)  <= slv_reg110;	
          when b"001101111" => reg_data_out(0 downto 0)  <= slv_reg111;	
	
          when b"001110000" => reg_data_out(23 downto 0) <= slv_reg112;	
          when b"001110001" => reg_data_out(21 downto 0) <= slv_reg113;	
          when b"001110010" => reg_data_out(0 downto 0)  <= slv_reg114;	
          when b"001110011" => reg_data_out(1 downto 0)  <= slv_reg115;	
          when b"001110100" => reg_data_out(1 downto 0)  <= slv_reg116;	
          when b"001110101" => reg_data_out(21 downto 0) <= slv_reg117;	
          when b"001110110" => reg_data_out(31 downto 0) <= slv_reg118;	
          when b"001110111" => reg_data_out(0 downto 0)  <= slv_reg119;	
          when b"001111000" => reg_data_out(0 downto 0)  <= slv_reg120;	
          when b"001111001" => reg_data_out(0 downto 0)  <= slv_reg121;	
          when b"001111010" => reg_data_out(0 downto 0)  <= slv_reg122;	
          when b"001111011" => reg_data_out(0 downto 0)  <= slv_reg123;	
          when b"001111100" => reg_data_out(31 downto 0) <= slv_reg124;		  
          when b"001111101" => reg_data_out(1 downto 0)  <= slv_reg125;	
          when b"001111110" => reg_data_out(0 downto 0)  <= slv_reg126;	
          when b"001111111" => reg_data_out(0 downto 0)  <= slv_reg127;	
	
          when b"010000000" => reg_data_out(23 downto 0) <= slv_reg128;	
          when b"010000001" => reg_data_out(21 downto 0) <= slv_reg129;	
          when b"010000010" => reg_data_out(0 downto 0)  <= slv_reg130;	
          when b"010000011" => reg_data_out(1 downto 0)  <= slv_reg131;	
          when b"010000100" => reg_data_out(1 downto 0)  <= slv_reg132;	
          when b"010000101" => reg_data_out(21 downto 0) <= slv_reg133;	
          when b"010000110" => reg_data_out(31 downto 0) <= slv_reg134;	
          when b"010000111" => reg_data_out(0 downto 0)  <= slv_reg135;	
          when b"010001000" => reg_data_out(0 downto 0)  <= slv_reg136;	
          when b"010001001" => reg_data_out(0 downto 0)  <= slv_reg137;	
          when b"010001010" => reg_data_out(0 downto 0)  <= slv_reg138;	
          when b"010001011" => reg_data_out(0 downto 0)  <= slv_reg139;	
          when b"010001100" => reg_data_out(31 downto 0) <= slv_reg140;		  
          when b"010001101" => reg_data_out(1 downto 0)  <= slv_reg141;	
          when b"010001110" => reg_data_out(0 downto 0)  <= slv_reg142;	
          when b"010001111" => reg_data_out(0 downto 0)  <= slv_reg143;	
	
          when b"010010000" => reg_data_out(23 downto 0) <= slv_reg144;	
          when b"010010001" => reg_data_out(21 downto 0) <= slv_reg145;	
          when b"010010010" => reg_data_out(0 downto 0)  <= slv_reg146;	
          when b"010010011" => reg_data_out(1 downto 0)  <= slv_reg147;	
          when b"010010100" => reg_data_out(1 downto 0)  <= slv_reg148;	
          when b"010010101" => reg_data_out(21 downto 0) <= slv_reg149;	
          when b"010010110" => reg_data_out(31 downto 0) <= slv_reg150;	
          when b"010010111" => reg_data_out(0 downto 0)  <= slv_reg151;	
          when b"010011000" => reg_data_out(0 downto 0)  <= slv_reg152;	
          when b"010011001" => reg_data_out(0 downto 0)  <= slv_reg153;	
          when b"010011010" => reg_data_out(0 downto 0)  <= slv_reg154;	
          when b"010011011" => reg_data_out(0 downto 0)  <= slv_reg155;		
          when b"010011100" => reg_data_out(31 downto 0) <= slv_reg156;		  
          when b"010011101" => reg_data_out(1 downto 0)  <= slv_reg157;	
          when b"010011110" => reg_data_out(0 downto 0)  <= slv_reg158;	
          when b"010011111" => reg_data_out(0 downto 0)  <= slv_reg159;	
	
          when b"010100000" => reg_data_out(23 downto 0) <= slv_reg160;	
          when b"010100001" => reg_data_out(21 downto 0) <= slv_reg161;	
          when b"010100010" => reg_data_out(0 downto 0)  <= slv_reg162;	
          when b"010100011" => reg_data_out(1 downto 0)  <= slv_reg163;	
          when b"010100100" => reg_data_out(1 downto 0)  <= slv_reg164;	
          when b"010100101" => reg_data_out(21 downto 0) <= slv_reg165;	
          when b"010100110" => reg_data_out(31 downto 0) <= slv_reg166;	
          when b"010100111" => reg_data_out(0 downto 0)  <= slv_reg167;	
          when b"010101000" => reg_data_out(0 downto 0)  <= slv_reg168;	
          when b"010101001" => reg_data_out(0 downto 0)  <= slv_reg169;	
          when b"010101010" => reg_data_out(0 downto 0)  <= slv_reg170;	
          when b"010101011" => reg_data_out(0 downto 0)  <= slv_reg171;		
          when b"010101100" => reg_data_out(31 downto 0) <= slv_reg172;		  
          when b"010101101" => reg_data_out(1 downto 0)  <= slv_reg173;	
          when b"010101110" => reg_data_out(0 downto 0)  <= slv_reg174;	
          when b"010101111" => reg_data_out(0 downto 0)  <= slv_reg175;	
	
          when b"010110000" => reg_data_out(23 downto 0) <= slv_reg176;	
          when b"010110001" => reg_data_out(21 downto 0) <= slv_reg177;	
          when b"010110010" => reg_data_out(0 downto 0)  <= slv_reg178;	
          when b"010110011" => reg_data_out(1 downto 0)  <= slv_reg179;	
          when b"010110100" => reg_data_out(1 downto 0)  <= slv_reg180;	
          when b"010110101" => reg_data_out(21 downto 0) <= slv_reg181;	
          when b"010110110" => reg_data_out(31 downto 0) <= slv_reg182;	
          when b"010110111" => reg_data_out(0 downto 0)  <= slv_reg183;	
          when b"010111000" => reg_data_out(0 downto 0)  <= slv_reg184;	
          when b"010111001" => reg_data_out(0 downto 0)  <= slv_reg185;	
          when b"010111010" => reg_data_out(0 downto 0)  <= slv_reg186;	
          when b"010111011" => reg_data_out(0 downto 0)  <= slv_reg187;	
          when b"010111100" => reg_data_out(31 downto 0) <= slv_reg188;		  
          when b"010111101" => reg_data_out(1 downto 0)  <= slv_reg189;	
          when b"010111110" => reg_data_out(0 downto 0)  <= slv_reg190;	
          when b"010111111" => reg_data_out(0 downto 0)  <= slv_reg191;	
	
          when b"011000000" => reg_data_out(23 downto 0) <= slv_reg192;	
          when b"011000001" => reg_data_out(21 downto 0) <= slv_reg193;	
          when b"011000010" => reg_data_out(0 downto 0)  <= slv_reg194;	
          when b"011000011" => reg_data_out(1 downto 0)  <= slv_reg195;	
          when b"011000100" => reg_data_out(1 downto 0)  <= slv_reg196;	
          when b"011000101" => reg_data_out(21 downto 0) <= slv_reg197;	
          when b"011000110" => reg_data_out(31 downto 0) <= slv_reg198;	
          when b"011000111" => reg_data_out(0 downto 0)  <= slv_reg199;	
          when b"011001000" => reg_data_out(0 downto 0)  <= slv_reg200;	
          when b"011001001" => reg_data_out(0 downto 0)  <= slv_reg201;	
          when b"011001010" => reg_data_out(0 downto 0)  <= slv_reg202;	
          when b"011001011" => reg_data_out(0 downto 0)  <= slv_reg203;		
          when b"011001100" => reg_data_out(31 downto 0) <= slv_reg204;		  
          when b"011001101" => reg_data_out(1 downto 0)  <= slv_reg205;	
          when b"011001110" => reg_data_out(0 downto 0)  <= slv_reg206;	
          when b"011001111" => reg_data_out(0 downto 0)  <= slv_reg207;	
	
          when b"011010000" => reg_data_out(23 downto 0) <= slv_reg208;	
          when b"011010001" => reg_data_out(21 downto 0) <= slv_reg209;	
          when b"011010010" => reg_data_out(0 downto 0)  <= slv_reg210;	
          when b"011010011" => reg_data_out(1 downto 0)  <= slv_reg211;	
          when b"011010100" => reg_data_out(1 downto 0)  <= slv_reg212;	
          when b"011010101" => reg_data_out(21 downto 0) <= slv_reg213;	
          when b"011010110" => reg_data_out(31 downto 0) <= slv_reg214;	
          when b"011010111" => reg_data_out(0 downto 0)  <= slv_reg215;	
          when b"011011000" => reg_data_out(0 downto 0)  <= slv_reg216;	
          when b"011011001" => reg_data_out(0 downto 0)  <= slv_reg217;	
          when b"011011010" => reg_data_out(0 downto 0)  <= slv_reg218;	
          when b"011011011" => reg_data_out(0 downto 0)  <= slv_reg219;	
          when b"011011100" => reg_data_out(31 downto 0) <= slv_reg220;		  
          when b"011011101" => reg_data_out(1 downto 0)  <= slv_reg221;	
          when b"011011110" => reg_data_out(0 downto 0)  <= slv_reg222;	
          when b"011011111" => reg_data_out(0 downto 0)  <= slv_reg223;	
	
          when b"011100000" => reg_data_out(23 downto 0) <= slv_reg224;	
          when b"011100001" => reg_data_out(21 downto 0) <= slv_reg225;	
          when b"011100010" => reg_data_out(0 downto 0)  <= slv_reg226;	
          when b"011100011" => reg_data_out(1 downto 0)  <= slv_reg227;	
          when b"011100100" => reg_data_out(1 downto 0)  <= slv_reg228;	
          when b"011100101" => reg_data_out(21 downto 0) <= slv_reg229;	
          when b"011100110" => reg_data_out(31 downto 0) <= slv_reg230;	
          when b"011100111" => reg_data_out(0 downto 0)  <= slv_reg231;	
          when b"011101000" => reg_data_out(0 downto 0)  <= slv_reg232;	
          when b"011101001" => reg_data_out(0 downto 0)  <= slv_reg233;	
          when b"011101010" => reg_data_out(0 downto 0)  <= slv_reg234;	
          when b"011101011" => reg_data_out(0 downto 0)  <= slv_reg235;	
          when b"011101100" => reg_data_out(31 downto 0) <= slv_reg236;		  
          when b"011101101" => reg_data_out(1 downto 0)  <= slv_reg237;	
          when b"011101110" => reg_data_out(0 downto 0)  <= slv_reg238;	
          when b"011101111" => reg_data_out(0 downto 0)  <= slv_reg239;	
	
          when b"011110000" => reg_data_out(23 downto 0) <= slv_reg240;	
          when b"011110001" => reg_data_out(21 downto 0) <= slv_reg241;	
          when b"011110010" => reg_data_out(0 downto 0)  <= slv_reg242;	
          when b"011110011" => reg_data_out(1 downto 0)  <= slv_reg243;	
          when b"011110100" => reg_data_out(1 downto 0)  <= slv_reg244;	
          when b"011110101" => reg_data_out(21 downto 0) <= slv_reg245;	
          when b"011110110" => reg_data_out(31 downto 0) <= slv_reg246;	
          when b"011110111" => reg_data_out(0 downto 0)  <= slv_reg247;	
          when b"011111000" => reg_data_out(0 downto 0)  <= slv_reg248;	
          when b"011111001" => reg_data_out(0 downto 0)  <= slv_reg249;	
          when b"011111010" => reg_data_out(0 downto 0)  <= slv_reg250;	
          when b"011111011" => reg_data_out(0 downto 0)  <= slv_reg251;	
          when b"011111100" => reg_data_out(31 downto 0) <= slv_reg252;		  
          when b"011111101" => reg_data_out(1 downto 0)  <= slv_reg253;	
          when b"011111110" => reg_data_out(0 downto 0)  <= slv_reg254;	
          when b"011111111" => reg_data_out(0 downto 0)  <= slv_reg255;	
	
          when b"100000000" => reg_data_out(23 downto 0) <= slv_reg256;	
          when b"100000001" => reg_data_out(21 downto 0) <= slv_reg257;	
          when b"100000010" => reg_data_out(0 downto 0)  <= slv_reg258;	
          when b"100000011" => reg_data_out(1 downto 0)  <= slv_reg259;	
          when b"100000100" => reg_data_out(1 downto 0)  <= slv_reg260;	
          when b"100000101" => reg_data_out(21 downto 0) <= slv_reg261;	
          when b"100000110" => reg_data_out(31 downto 0) <= slv_reg262;	
          when b"100000111" => reg_data_out(0 downto 0)  <= slv_reg263;	
          when b"100001000" => reg_data_out(0 downto 0)  <= slv_reg264;	
          when b"100001001" => reg_data_out(0 downto 0)  <= slv_reg265;	
          when b"100001010" => reg_data_out(0 downto 0)  <= slv_reg266;	
          when b"100001011" => reg_data_out(0 downto 0)  <= slv_reg267;	
          when b"100001100" => reg_data_out(31 downto 0) <= slv_reg268;		  
          when b"100001101" => reg_data_out(1 downto 0)  <= slv_reg269;	
          when b"100001110" => reg_data_out(0 downto 0)  <= slv_reg270;	
          when b"100001111" => reg_data_out(0 downto 0)  <= slv_reg271;	
	
          when b"100010000" => reg_data_out(23 downto 0) <= slv_reg272;	
          when b"100010001" => reg_data_out(21 downto 0) <= slv_reg273;	
          when b"100010010" => reg_data_out(0 downto 0)  <= slv_reg274;	
          when b"100010011" => reg_data_out(1 downto 0)  <= slv_reg275;	
          when b"100010100" => reg_data_out(1 downto 0)  <= slv_reg276;	
          when b"100010101" => reg_data_out(21 downto 0) <= slv_reg277;	
          when b"100010110" => reg_data_out(31 downto 0) <= slv_reg278;	
          when b"100010111" => reg_data_out(0 downto 0)  <= slv_reg279;	
          when b"100011000" => reg_data_out(0 downto 0)  <= slv_reg280;	
          when b"100011001" => reg_data_out(0 downto 0)  <= slv_reg281;	
          when b"100011010" => reg_data_out(0 downto 0)  <= slv_reg282;	
          when b"100011011" => reg_data_out(0 downto 0)  <= slv_reg283;	
          when b"100011100" => reg_data_out(31 downto 0) <= slv_reg284;		  
          when b"100011101" => reg_data_out(1 downto 0)  <= slv_reg285;	
          when b"100011110" => reg_data_out(0 downto 0)  <= slv_reg286;	
          when b"100011111" => reg_data_out(0 downto 0)  <= slv_reg287;	
	
          when b"100100000" => reg_data_out(23 downto 0) <= slv_reg288;	
          when b"100100001" => reg_data_out(21 downto 0) <= slv_reg289;	
          when b"100100010" => reg_data_out(0 downto 0)  <= slv_reg290;	
          when b"100100011" => reg_data_out(1 downto 0)  <= slv_reg291;	
          when b"100100100" => reg_data_out(1 downto 0)  <= slv_reg292;	
          when b"100100101" => reg_data_out(21 downto 0) <= slv_reg293;	
          when b"100100110" => reg_data_out(31 downto 0) <= slv_reg294;	
          when b"100100111" => reg_data_out(0 downto 0)  <= slv_reg295;	
          when b"100101000" => reg_data_out(0 downto 0)  <= slv_reg296;	
          when b"100101001" => reg_data_out(0 downto 0)  <= slv_reg297;	
          when b"100101010" => reg_data_out(0 downto 0)  <= slv_reg298;	
          when b"100101011" => reg_data_out(0 downto 0)  <= slv_reg299;	
          when b"100101100" => reg_data_out(31 downto 0) <= slv_reg300;		  
          when b"100101101" => reg_data_out(1 downto 0)  <= slv_reg301;	
          when b"100101110" => reg_data_out(0 downto 0)  <= slv_reg302;	
          when b"100101111" => reg_data_out(0 downto 0)  <= slv_reg303;	
	
          when b"100110000" => reg_data_out(23 downto 0) <= slv_reg304;	
          when b"100110001" => reg_data_out(21 downto 0) <= slv_reg305;	
          when b"100110010" => reg_data_out(0 downto 0)  <= slv_reg306;	
          when b"100110011" => reg_data_out(1 downto 0)  <= slv_reg307;	
          when b"100110100" => reg_data_out(1 downto 0)  <= slv_reg308;	
          when b"100110101" => reg_data_out(21 downto 0) <= slv_reg309;	
          when b"100110110" => reg_data_out(31 downto 0) <= slv_reg310;	
          when b"100110111" => reg_data_out(0 downto 0)  <= slv_reg311;	
          when b"100111000" => reg_data_out(0 downto 0)  <= slv_reg312;	
          when b"100111001" => reg_data_out(0 downto 0)  <= slv_reg313;	
          when b"100111010" => reg_data_out(0 downto 0)  <= slv_reg314;	
          when b"100111011" => reg_data_out(0 downto 0)  <= slv_reg315;		
          when b"100111100" => reg_data_out(31 downto 0) <= slv_reg316;		  
          when b"100111101" => reg_data_out(1 downto 0)  <= slv_reg317;	
          when b"100111110" => reg_data_out(0 downto 0)  <= slv_reg318;	
          when b"100111111" => reg_data_out(0 downto 0)  <= slv_reg319;	
		  
		  
		  -- SMs_Irq_Mask
	      when b"101000000" => reg_data_out(19 downto 0) <= slv_reg320;
	      
          -- SMs_irq_reg_int 	      
	      when b"101000001" => reg_data_out(19 downto 0) <= slv_reg321;
	      
	      when others       => reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;


	-- Add user logic here

	-- Output register or memory read data
	
	      SM0_tgt_ACC  <= slv_reg0(23 downto 0);
          SM0_tgt_EC   <= slv_reg1(21 downto 0);
          SM0_dir      <= slv_reg2(0);
          SM0_load     <= slv_reg3(1 downto 0);
          SM0_res      <= slv_reg4(1 downto 0);
          SM0_init_EC  <= slv_reg5(21 downto 0);
          SM0_cnt_o    <= slv_reg6(31 downto 0);
          SM0_ramp_up  <= slv_reg7(0);
          SM0_ramp_dwn <= slv_reg8(0);
          SM0_spd_chg  <= slv_reg9(0);
          SM0_slw_stps <= slv_reg10(0);
          SM0_fst_stps <= slv_reg11(0);
          SM0_irq_mask <= slv_reg14(0);

          SM1_tgt_ACC  <= slv_reg16(23 downto 0);
          SM1_tgt_EC   <= slv_reg17(21 downto 0);
          SM1_dir      <= slv_reg18(0);
          SM1_load     <= slv_reg19(1 downto 0);
          SM1_res      <= slv_reg20(1 downto 0);
          SM1_init_EC  <= slv_reg21(21 downto 0);
          SM1_cnt_o    <= slv_reg22(31 downto 0);
          SM1_ramp_up  <= slv_reg23(0);
          SM1_ramp_dwn <= slv_reg24(0);
          SM1_spd_chg  <= slv_reg25(0);
          SM1_slw_stps <= slv_reg26(0);
          SM1_fst_stps <= slv_reg27(0);
          SM1_irq_mask <= slv_reg30(0);

          SM2_tgt_ACC  <= slv_reg32(23 downto 0);
          SM2_tgt_EC   <= slv_reg33(21 downto 0);
          SM2_dir      <= slv_reg34(0);
          SM2_load     <= slv_reg35(1 downto 0);
          SM2_res      <= slv_reg36(1 downto 0);
          SM2_init_EC  <= slv_reg37(21 downto 0);
          SM2_cnt_o    <= slv_reg38(31 downto 0);
          SM2_ramp_up  <= slv_reg39(0);
          SM2_ramp_dwn <= slv_reg40(0);
          SM2_spd_chg  <= slv_reg41(0);
          SM2_slw_stps <= slv_reg42(0);
          SM2_fst_stps <= slv_reg43(0);
          SM2_irq_mask <= slv_reg46(0);

          SM3_tgt_ACC  <= slv_reg48(23 downto 0);
          SM3_tgt_EC   <= slv_reg49(21 downto 0);
          SM3_dir      <= slv_reg50(0);
          SM3_load     <= slv_reg51(1 downto 0);
          SM3_res      <= slv_reg52(1 downto 0);
          SM3_init_EC  <= slv_reg53(21 downto 0);
          SM3_cnt_o    <= slv_reg54(31 downto 0);
          SM3_ramp_up  <= slv_reg55(0);
          SM3_ramp_dwn <= slv_reg56(0);
          SM3_spd_chg  <= slv_reg57(0);
          SM3_slw_stps <= slv_reg58(0);
          SM3_fst_stps <= slv_reg59(0);
          SM3_irq_mask <= slv_reg62(0);

          SM4_tgt_ACC  <= slv_reg64(23 downto 0);
          SM4_tgt_EC   <= slv_reg65(21 downto 0);
          SM4_dir      <= slv_reg66(0);
          SM4_load     <= slv_reg67(1 downto 0);
          SM4_res      <= slv_reg68(1 downto 0);
          SM4_init_EC  <= slv_reg69(21 downto 0);
          SM4_cnt_o    <= slv_reg70(31 downto 0);
          SM4_ramp_up  <= slv_reg71(0);
          SM4_ramp_dwn <= slv_reg72(0);
          SM4_spd_chg  <= slv_reg73(0);
          SM4_slw_stps <= slv_reg74(0);
          SM4_fst_stps <= slv_reg75(0);
          SM4_irq_mask <= slv_reg78(0);

          SM5_tgt_ACC  <= slv_reg80(23 downto 0);
          SM5_tgt_EC   <= slv_reg81(21 downto 0);
          SM5_dir      <= slv_reg82(0);
          SM5_load     <= slv_reg83(1 downto 0);
          SM5_res      <= slv_reg84(1 downto 0);
          SM5_init_EC  <= slv_reg85(21 downto 0);
          SM5_cnt_o    <= slv_reg86(31 downto 0);
          SM5_ramp_up  <= slv_reg87(0);
          SM5_ramp_dwn <= slv_reg88(0);
          SM5_spd_chg  <= slv_reg89(0);
          SM5_slw_stps <= slv_reg90(0);
          SM5_fst_stps <= slv_reg91(0);
          SM5_irq_mask <= slv_reg94(0);

          SM6_tgt_ACC  <= slv_reg96(23 downto 0);
          SM6_tgt_EC   <= slv_reg97(21 downto 0);
          SM6_dir      <= slv_reg98(0);
          SM6_load     <= slv_reg99(1 downto 0);
          SM6_res      <= slv_reg100(1 downto 0);
          SM6_init_EC  <= slv_reg101(21 downto 0);
          SM6_cnt_o    <= slv_reg102(31 downto 0);
          SM6_ramp_up  <= slv_reg103(0);
          SM6_ramp_dwn <= slv_reg104(0);
          SM6_spd_chg  <= slv_reg105(0);
          SM6_slw_stps <= slv_reg106(0);
          SM6_fst_stps <= slv_reg107(0);
          SM6_irq_mask <= slv_reg110(0);

          SM7_tgt_ACC  <= slv_reg112(23 downto 0);
          SM7_tgt_EC   <= slv_reg113(21 downto 0);
          SM7_dir      <= slv_reg114(0);
          SM7_load     <= slv_reg115(1 downto 0);
          SM7_res      <= slv_reg116(1 downto 0);
          SM7_init_EC  <= slv_reg117(21 downto 0);
          SM7_cnt_o    <= slv_reg118(31 downto 0);
          SM7_ramp_up  <= slv_reg119(0);
          SM7_ramp_dwn <= slv_reg120(0);
          SM7_spd_chg  <= slv_reg121(0);
          SM7_slw_stps <= slv_reg122(0);
          SM7_fst_stps <= slv_reg123(0);
          SM7_irq_mask <= slv_reg126(0);

          SM8_tgt_ACC  <= slv_reg128(23 downto 0);
          SM8_tgt_EC   <= slv_reg129(21 downto 0);
          SM8_dir      <= slv_reg130(0);
          SM8_load     <= slv_reg131(1 downto 0);
          SM8_res      <= slv_reg132(1 downto 0);
          SM8_init_EC  <= slv_reg133(21 downto 0);
          SM8_cnt_o    <= slv_reg134(31 downto 0);
          SM8_ramp_up  <= slv_reg135(0);
          SM8_ramp_dwn <= slv_reg136(0);
          SM8_spd_chg  <= slv_reg137(0);
          SM8_slw_stps <= slv_reg138(0);
          SM8_fst_stps <= slv_reg139(0);
          SM8_irq_mask <= slv_reg142(0);

          SM9_tgt_ACC  <= slv_reg144(23 downto 0);
          SM9_tgt_EC   <= slv_reg145(21 downto 0);
          SM9_dir      <= slv_reg146(0);
          SM9_load     <= slv_reg147(1 downto 0);
          SM9_res      <= slv_reg148(1 downto 0);
          SM9_init_EC  <= slv_reg149(21 downto 0);
          SM9_cnt_o    <= slv_reg150(31 downto 0);
          SM9_ramp_up  <= slv_reg151(0);
          SM9_ramp_dwn <= slv_reg152(0);
          SM9_spd_chg  <= slv_reg153(0);
          SM9_slw_stps <= slv_reg154(0);
          SM9_fst_stps <= slv_reg155(0);
          SM9_irq_mask <= slv_reg158(0);

          SM10_tgt_ACC <= slv_reg160(23 downto 0);
          SM10_tgt_EC  <= slv_reg161(21 downto 0);
          SM10_dir     <= slv_reg162(0);
          SM10_load    <= slv_reg163(1 downto 0);
          SM10_res     <= slv_reg164(1 downto 0);
          SM10_init_EC <= slv_reg165(21 downto 0);
          SM10_cnt_o   <= slv_reg166(31 downto 0);
          SM10_ramp_up <= slv_reg167(0);
          SM10_ramp_dwn<= slv_reg168(0);
          SM10_spd_chg <= slv_reg169(0);
          SM10_slw_stps<= slv_reg170(0);
          SM10_fst_stps<= slv_reg171(0);
          SM10_irq_mask<= slv_reg174(0);

          SM11_tgt_ACC <= slv_reg176(23 downto 0);
          SM11_tgt_EC  <= slv_reg177(21 downto 0);
          SM11_dir     <= slv_reg178(0);
          SM11_load    <= slv_reg179(1 downto 0);
          SM11_res     <= slv_reg180(1 downto 0);
          SM11_init_EC <= slv_reg181(21 downto 0);
          SM11_cnt_o   <= slv_reg182(31 downto 0);
          SM11_ramp_up <= slv_reg183(0);
          SM11_ramp_dwn<= slv_reg184(0);
          SM11_spd_chg <= slv_reg185(0);
          SM11_slw_stps<= slv_reg186(0);
          SM11_fst_stps<= slv_reg187(0);
          SM11_irq_mask<= slv_reg190(0);

          SM12_tgt_ACC <= slv_reg192(23 downto 0);
          SM12_tgt_EC  <= slv_reg193(21 downto 0);
          SM12_dir     <= slv_reg194(0);
          SM12_load    <= slv_reg195(1 downto 0);
          SM12_res     <= slv_reg196(1 downto 0);
          SM12_init_EC <= slv_reg197(21 downto 0);
          SM12_cnt_o   <= slv_reg198(31 downto 0);
          SM12_ramp_up <= slv_reg199(0);
          SM12_ramp_dwn<= slv_reg200(0);
          SM12_spd_chg <= slv_reg201(0);
          SM12_slw_stps<= slv_reg202(0);
          SM12_fst_stps<= slv_reg203(0);
          SM12_irq_mask<= slv_reg206(0);

          SM13_tgt_ACC <= slv_reg208(23 downto 0);
          SM13_tgt_EC  <= slv_reg209(21 downto 0);
          SM13_dir     <= slv_reg210(0);
          SM13_load    <= slv_reg211(1 downto 0);
          SM13_res     <= slv_reg212(1 downto 0);
          SM13_init_EC <= slv_reg213(21 downto 0);
          SM13_cnt_o   <= slv_reg214(31 downto 0);
          SM13_ramp_up <= slv_reg215(0);
          SM13_ramp_dwn<= slv_reg216(0);
          SM13_spd_chg <= slv_reg217(0);
          SM13_slw_stps<= slv_reg218(0);
          SM13_fst_stps<= slv_reg219(0);
          SM13_irq_mask<= slv_reg222(0);

          SM14_tgt_ACC <= slv_reg224(23 downto 0);
          SM14_tgt_EC  <= slv_reg225(21 downto 0);
          SM14_dir     <= slv_reg226(0);
          SM14_load    <= slv_reg227(1 downto 0);
          SM14_res     <= slv_reg228(1 downto 0);
          SM14_init_EC <= slv_reg229(21 downto 0);
          SM14_cnt_o   <= slv_reg230(31 downto 0);
          SM14_ramp_up <= slv_reg231(0);
          SM14_ramp_dwn<= slv_reg232(0);
          SM14_spd_chg <= slv_reg233(0);
          SM14_slw_stps<= slv_reg234(0);
          SM14_fst_stps<= slv_reg235(0);
          SM14_irq_mask<= slv_reg238(0);

          SM15_tgt_ACC <= slv_reg240(23 downto 0);
          SM15_tgt_EC  <= slv_reg241(21 downto 0);
          SM15_dir     <= slv_reg242(0);
          SM15_load    <= slv_reg243(1 downto 0);
          SM15_res     <= slv_reg244(1 downto 0);
          SM15_init_EC <= slv_reg245(21 downto 0);
          SM15_cnt_o   <= slv_reg246(31 downto 0);
          SM15_ramp_up <= slv_reg247(0);
          SM15_ramp_dwn<= slv_reg248(0);
          SM15_spd_chg <= slv_reg249(0);
          SM15_slw_stps<= slv_reg250(0);
          SM15_fst_stps<= slv_reg251(0);
          SM15_irq_mask<= slv_reg254(0);

          SM16_tgt_ACC <= slv_reg256(23 downto 0);
          SM16_tgt_EC  <= slv_reg257(21 downto 0);
          SM16_dir     <= slv_reg258(0);
          SM16_load    <= slv_reg259(1 downto 0);
          SM16_res     <= slv_reg260(1 downto 0);
          SM16_init_EC <= slv_reg261(21 downto 0);
          SM16_cnt_o   <= slv_reg262(31 downto 0);
          SM16_ramp_up <= slv_reg263(0);
          SM16_ramp_dwn<= slv_reg264(0);
          SM16_spd_chg <= slv_reg265(0);
          SM16_slw_stps<= slv_reg266(0);
          SM16_fst_stps<= slv_reg267(0);
          SM16_irq_mask<= slv_reg270(0);

          SM17_tgt_ACC <= slv_reg272(23 downto 0);
          SM17_tgt_EC  <= slv_reg273(21 downto 0);
          SM17_dir     <= slv_reg274(0);
          SM17_load    <= slv_reg275(1 downto 0);
          SM17_res     <= slv_reg276(1 downto 0);
          SM17_init_EC <= slv_reg277(21 downto 0);
          SM17_cnt_o   <= slv_reg278(31 downto 0);
          SM17_ramp_up <= slv_reg279(0);
          SM17_ramp_dwn<= slv_reg280(0);
          SM17_spd_chg <= slv_reg281(0);
          SM17_slw_stps<= slv_reg282(0);
          SM17_fst_stps<= slv_reg283(0);
          SM17_irq_mask<= slv_reg286(0);

          SM18_tgt_ACC <= slv_reg288(23 downto 0);
          SM18_tgt_EC  <= slv_reg289(21 downto 0);
          SM18_dir     <= slv_reg290(0);
          SM18_load    <= slv_reg291(1 downto 0);
          SM18_res     <= slv_reg292(1 downto 0);
          SM18_init_EC <= slv_reg293(21 downto 0);
          SM18_cnt_o   <= slv_reg294(31 downto 0);
          SM18_ramp_up <= slv_reg295(0);
          SM18_ramp_dwn<= slv_reg296(0);
          SM18_spd_chg <= slv_reg297(0);
          SM18_slw_stps<= slv_reg298(0);
          SM18_fst_stps<= slv_reg299(0);
          SM18_irq_mask<= slv_reg302(0);

          SM19_tgt_ACC <= slv_reg304(23 downto 0);
          SM19_tgt_EC  <= slv_reg305(21 downto 0);
          SM19_dir     <= slv_reg306(0);
          SM19_load    <= slv_reg307(1 downto 0);
          SM19_res     <= slv_reg308(1 downto 0);
          SM19_init_EC <= slv_reg309(21 downto 0);
          SM19_cnt_o   <= slv_reg310(31 downto 0);
          SM19_ramp_up <= slv_reg311(0);
          SM19_ramp_dwn<= slv_reg312(0);
          SM19_spd_chg <= slv_reg313(0);
          SM19_slw_stps<= slv_reg314(0);
          SM19_fst_stps<= slv_reg315(0);
          SM19_irq_mask<= slv_reg318(0);
		  
		  SM0_irq_clr  <= slv_reg15(0);	
		  SM1_irq_clr  <= slv_reg31(0);
		  SM2_irq_clr  <= slv_reg47(0);
		  SM3_irq_clr  <= slv_reg63(0);
		  SM4_irq_clr  <= slv_reg79(0);
		  SM5_irq_clr  <= slv_reg95(0);
		  SM6_irq_clr  <= slv_reg111(0);
		  SM7_irq_clr  <= slv_reg127(0);
		  SM8_irq_clr  <= slv_reg143(0);
		  SM9_irq_clr  <= slv_reg159(0);
		  SM10_irq_clr <= slv_reg175(0);	
		  SM11_irq_clr <= slv_reg191(0);
		  SM12_irq_clr <= slv_reg207(0);
		  SM13_irq_clr <= slv_reg223(0);
		  SM14_irq_clr <= slv_reg239(0);
		  SM15_irq_clr <= slv_reg255(0);
		  SM16_irq_clr <= slv_reg271(0);
		  SM17_irq_clr <= slv_reg287(0);
		  SM18_irq_clr <= slv_reg303(0);
		  SM19_irq_clr <= slv_reg319(0);

	      SMs_Irq_Mask <= slv_reg320(19 downto 0);


	gen_vld_out: process( S_AXI_ACLK ) is
    variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin	
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
			SM0_vld_out 	<= '0';	
			SM1_vld_out 	<= '0';	
			SM2_vld_out 	<= '0';	
			SM3_vld_out 	<= '0';	
			SM4_vld_out 	<= '0';	
			SM5_vld_out 	<= '0';	
			SM6_vld_out 	<= '0';	
			SM7_vld_out 	<= '0';	
			SM8_vld_out 	<= '0';	
			SM9_vld_out 	<= '0';	
			SM10_vld_out	<= '0';	
			SM11_vld_out	<= '0';	
			SM12_vld_out	<= '0';	
			SM13_vld_out	<= '0';	
			SM14_vld_out	<= '0';	
			SM15_vld_out	<= '0';	
			SM16_vld_out	<= '0';	
			SM17_vld_out	<= '0';	
			SM18_vld_out	<= '0';	
			SM19_vld_out	<= '0';	

	    else
	        -- Address decoding for writing registers
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);	    
	    
			if slv_reg_wren = '1' then
                SM0_vld_out 	<= '0';
                SM1_vld_out 	<= '0';
                SM2_vld_out 	<= '0';
                SM3_vld_out 	<= '0';
                SM4_vld_out 	<= '0';
                SM5_vld_out 	<= '0';
                SM6_vld_out 	<= '0';
                SM7_vld_out 	<= '0';
                SM8_vld_out 	<= '0';
                SM9_vld_out 	<= '0';
                SM10_vld_out	<= '0';
                SM11_vld_out	<= '0';
                SM12_vld_out	<= '0';
                SM13_vld_out	<= '0';
                SM14_vld_out	<= '0';
                SM15_vld_out	<= '0';
                SM16_vld_out	<= '0';
                SM17_vld_out	<= '0';
                SM18_vld_out	<= '0';
			    SM19_vld_out	<= '0';
				case loc_addr is
					when b"000000000" =>  SM0_vld_out <= '1';
					when b"000000001" =>  SM0_vld_out <= '1';
					when b"000000010" =>  SM0_vld_out <= '1';
					when b"000000011" =>  SM0_vld_out <= '1';
					when b"000000100" =>  SM0_vld_out <= '1';
					when b"000000101" =>  SM0_vld_out <= '1';
					when b"000000110" =>  SM0_vld_out <= '1';
					when b"000000111" =>  SM0_vld_out <= '1';
					when b"000001000" =>  SM0_vld_out <= '1';
					when b"000001001" =>  SM0_vld_out <= '1';
					when b"000001010" =>  SM0_vld_out <= '1';
					when b"000001011" =>  SM0_vld_out <= '1';
					when b"000001110" =>  SM0_vld_out <= '1';
					when others       =>  SM0_vld_out <= '0';
				end case;					
				case loc_addr is
					when b"000010000" =>  SM1_vld_out <= '1';
					when b"000010001" =>  SM1_vld_out <= '1';
					when b"000010010" =>  SM1_vld_out <= '1';
					when b"000010011" =>  SM1_vld_out <= '1';
					when b"000010100" =>  SM1_vld_out <= '1';
					when b"000010101" =>  SM1_vld_out <= '1';
					when b"000010110" =>  SM1_vld_out <= '1';
					when b"000010111" =>  SM1_vld_out <= '1';
					when b"000011000" =>  SM1_vld_out <= '1';
					when b"000011001" =>  SM1_vld_out <= '1';
					when b"000011010" =>  SM1_vld_out <= '1';
					when b"000011011" =>  SM1_vld_out <= '1';
					when b"000011110" =>  SM1_vld_out <= '1';
					when others       =>  SM1_vld_out <= '0';
				end case;
				case loc_addr is
					when b"000100000" =>  SM2_vld_out <= '1';
					when b"000100001" =>  SM2_vld_out <= '1';
					when b"000100010" =>  SM2_vld_out <= '1';
					when b"000100011" =>  SM2_vld_out <= '1';
					when b"000100100" =>  SM2_vld_out <= '1';
					when b"000100101" =>  SM2_vld_out <= '1';
					when b"000100110" =>  SM2_vld_out <= '1';
					when b"000100111" =>  SM2_vld_out <= '1';
					when b"000101000" =>  SM2_vld_out <= '1';
					when b"000101001" =>  SM2_vld_out <= '1';
					when b"000101010" =>  SM2_vld_out <= '1';
					when b"000101011" =>  SM2_vld_out <= '1';
					when b"000101110" =>  SM2_vld_out <= '1';
					when others       =>  SM2_vld_out <= '0';
				end case;
				case loc_addr is
					when b"000110000" =>  SM3_vld_out <= '1';
					when b"000110001" =>  SM3_vld_out <= '1';
					when b"000110010" =>  SM3_vld_out <= '1';
					when b"000110011" =>  SM3_vld_out <= '1';
					when b"000110100" =>  SM3_vld_out <= '1';
					when b"000110101" =>  SM3_vld_out <= '1';
					when b"000110110" =>  SM3_vld_out <= '1';
					when b"000110111" =>  SM3_vld_out <= '1';
					when b"000111000" =>  SM3_vld_out <= '1';
					when b"000111001" =>  SM3_vld_out <= '1';
					when b"000111010" =>  SM3_vld_out <= '1';
					when b"000111011" =>  SM3_vld_out <= '1';
					when b"000111110" =>  SM3_vld_out <= '1';
					when others       =>  SM3_vld_out <= '0';
				end case;
				case loc_addr is
					when b"001000000" =>  SM4_vld_out <= '1';
					when b"001000001" =>  SM4_vld_out <= '1';
					when b"001000010" =>  SM4_vld_out <= '1';
					when b"001000011" =>  SM4_vld_out <= '1';
					when b"001000100" =>  SM4_vld_out <= '1';
					when b"001000101" =>  SM4_vld_out <= '1';
					when b"001000110" =>  SM4_vld_out <= '1';
					when b"001000111" =>  SM4_vld_out <= '1';
					when b"001001000" =>  SM4_vld_out <= '1';
					when b"001001001" =>  SM4_vld_out <= '1';
					when b"001001010" =>  SM4_vld_out <= '1';
					when b"001001011" =>  SM4_vld_out <= '1';
					when b"001001110" =>  SM4_vld_out <= '1';
					when others       =>  SM4_vld_out <= '0';
				end case;
				case loc_addr is
					when b"001010000" =>  SM5_vld_out <= '1';
					when b"001010001" =>  SM5_vld_out <= '1';
					when b"001010010" =>  SM5_vld_out <= '1';
					when b"001010011" =>  SM5_vld_out <= '1';
					when b"001010100" =>  SM5_vld_out <= '1';
					when b"001010101" =>  SM5_vld_out <= '1';
					when b"001010110" =>  SM5_vld_out <= '1';
					when b"001010111" =>  SM5_vld_out <= '1';
					when b"001011000" =>  SM5_vld_out <= '1';
					when b"001011001" =>  SM5_vld_out <= '1';
					when b"001011010" =>  SM5_vld_out <= '1';
					when b"001011011" =>  SM5_vld_out <= '1';
					when b"001011110" =>  SM5_vld_out <= '1';
					when others       =>  SM5_vld_out <= '0';
				end case;
				case loc_addr is
					when b"001100000" =>  SM6_vld_out <= '1';
					when b"001100001" =>  SM6_vld_out <= '1';
					when b"001100010" =>  SM6_vld_out <= '1';
					when b"001100011" =>  SM6_vld_out <= '1';
					when b"001100100" =>  SM6_vld_out <= '1';
					when b"001100101" =>  SM6_vld_out <= '1';
					when b"001100110" =>  SM6_vld_out <= '1';
					when b"001100111" =>  SM6_vld_out <= '1';
					when b"001101000" =>  SM6_vld_out <= '1';
					when b"001101001" =>  SM6_vld_out <= '1';
					when b"001101010" =>  SM6_vld_out <= '1';
					when b"001101011" =>  SM6_vld_out <= '1';
					when b"001101110" =>  SM6_vld_out <= '1';
					when others       =>  SM6_vld_out <= '0';
				end case;
				case loc_addr is
					when b"001110000" =>  SM7_vld_out <= '1';
					when b"001110001" =>  SM7_vld_out <= '1';
					when b"001110010" =>  SM7_vld_out <= '1';
					when b"001110011" =>  SM7_vld_out <= '1';
					when b"001110100" =>  SM7_vld_out <= '1';
					when b"001110101" =>  SM7_vld_out <= '1';
					when b"001110110" =>  SM7_vld_out <= '1';
					when b"001110111" =>  SM7_vld_out <= '1';
					when b"001111000" =>  SM7_vld_out <= '1';
					when b"001111001" =>  SM7_vld_out <= '1';
					when b"001111010" =>  SM7_vld_out <= '1';
					when b"001111011" =>  SM7_vld_out <= '1';
					when b"001111110" =>  SM7_vld_out <= '1';
					when others       =>  SM7_vld_out <= '0';
				end case;
				case loc_addr is
					when b"010000000" =>  SM8_vld_out <= '1';
					when b"010000001" =>  SM8_vld_out <= '1';
					when b"010000010" =>  SM8_vld_out <= '1';
					when b"010000011" =>  SM8_vld_out <= '1';
					when b"010000100" =>  SM8_vld_out <= '1';
					when b"010000101" =>  SM8_vld_out <= '1';
					when b"010000110" =>  SM8_vld_out <= '1';
					when b"010000111" =>  SM8_vld_out <= '1';
					when b"010001000" =>  SM8_vld_out <= '1';
					when b"010001001" =>  SM8_vld_out <= '1';
					when b"010001010" =>  SM8_vld_out <= '1';
					when b"010001011" =>  SM8_vld_out <= '1';
					when b"010001110" =>  SM8_vld_out <= '1';
					when others       =>  SM8_vld_out <= '0';
				end case;
				case loc_addr is
					when b"010010000" =>  SM9_vld_out <= '1';
					when b"010010001" =>  SM9_vld_out <= '1';
					when b"010010010" =>  SM9_vld_out <= '1';
					when b"010010011" =>  SM9_vld_out <= '1';
					when b"010010100" =>  SM9_vld_out <= '1';
					when b"010010101" =>  SM9_vld_out <= '1';
					when b"010010110" =>  SM9_vld_out <= '1';
					when b"010010111" =>  SM9_vld_out <= '1';
					when b"010011000" =>  SM9_vld_out <= '1';
					when b"010011001" =>  SM9_vld_out <= '1';
					when b"010011010" =>  SM9_vld_out <= '1';
					when b"010011011" =>  SM9_vld_out <= '1';
					when b"010011110" =>  SM9_vld_out <= '1';
					when others       =>  SM9_vld_out <= '0';
				end case;
				case loc_addr is
					when b"010100000" =>  SM10_vld_out <= '1';
					when b"010100001" =>  SM10_vld_out <= '1';
					when b"010100010" =>  SM10_vld_out <= '1';
					when b"010100011" =>  SM10_vld_out <= '1';
					when b"010100100" =>  SM10_vld_out <= '1';
					when b"010100101" =>  SM10_vld_out <= '1';
					when b"010100110" =>  SM10_vld_out <= '1';
					when b"010100111" =>  SM10_vld_out <= '1';
					when b"010101000" =>  SM10_vld_out <= '1';
					when b"010101001" =>  SM10_vld_out <= '1';
					when b"010101010" =>  SM10_vld_out <= '1';
					when b"010101011" =>  SM10_vld_out <= '1';
					when b"010101110" =>  SM10_vld_out <= '1';
					when others       =>  SM10_vld_out <= '0';
				end case;
				case loc_addr is
					when b"010110000" =>  SM11_vld_out <= '1';
					when b"010110001" =>  SM11_vld_out <= '1';
					when b"010110010" =>  SM11_vld_out <= '1';
					when b"010110011" =>  SM11_vld_out <= '1';
					when b"010110100" =>  SM11_vld_out <= '1';
					when b"010110101" =>  SM11_vld_out <= '1';
					when b"010110110" =>  SM11_vld_out <= '1';
					when b"010110111" =>  SM11_vld_out <= '1';
					when b"010111000" =>  SM11_vld_out <= '1';
					when b"010111001" =>  SM11_vld_out <= '1';
					when b"010111010" =>  SM11_vld_out <= '1';
					when b"010111011" =>  SM11_vld_out <= '1';
					when b"010111110" =>  SM11_vld_out <= '1';
					when others       =>  SM11_vld_out <= '0';
				end case;
				case loc_addr is
					when b"011000000" =>  SM12_vld_out <= '1';
					when b"011000001" =>  SM12_vld_out <= '1';
					when b"011000010" =>  SM12_vld_out <= '1';
					when b"011000011" =>  SM12_vld_out <= '1';
					when b"011000100" =>  SM12_vld_out <= '1';
					when b"011000101" =>  SM12_vld_out <= '1';
					when b"011000110" =>  SM12_vld_out <= '1';
					when b"011000111" =>  SM12_vld_out <= '1';
					when b"011001000" =>  SM12_vld_out <= '1';
					when b"011001001" =>  SM12_vld_out <= '1';
					when b"011001010" =>  SM12_vld_out <= '1';
					when b"011001011" =>  SM12_vld_out <= '1';
					when b"011001110" =>  SM12_vld_out <= '1';
					when others       =>  SM12_vld_out <= '0';
				end case;
				case loc_addr is
					when b"011010000" =>  SM13_vld_out <= '1';
					when b"011010001" =>  SM13_vld_out <= '1';
					when b"011010010" =>  SM13_vld_out <= '1';
					when b"011010011" =>  SM13_vld_out <= '1';
					when b"011010100" =>  SM13_vld_out <= '1';
					when b"011010101" =>  SM13_vld_out <= '1';
					when b"011010110" =>  SM13_vld_out <= '1';
					when b"011010111" =>  SM13_vld_out <= '1';
					when b"011011000" =>  SM13_vld_out <= '1';
					when b"011011001" =>  SM13_vld_out <= '1';
					when b"011011010" =>  SM13_vld_out <= '1';
					when b"011011011" =>  SM13_vld_out <= '1';
					when b"011011110" =>  SM13_vld_out <= '1';
					when others       =>  SM13_vld_out <= '0';
				end case;
				case loc_addr is
					when b"011100000" =>  SM14_vld_out <= '1';
					when b"011100001" =>  SM14_vld_out <= '1';
					when b"011100010" =>  SM14_vld_out <= '1';
					when b"011100011" =>  SM14_vld_out <= '1';
					when b"011100100" =>  SM14_vld_out <= '1';
					when b"011100101" =>  SM14_vld_out <= '1';
					when b"011100110" =>  SM14_vld_out <= '1';
					when b"011100111" =>  SM14_vld_out <= '1';
					when b"011101000" =>  SM14_vld_out <= '1';
					when b"011101001" =>  SM14_vld_out <= '1';
					when b"011101010" =>  SM14_vld_out <= '1';
					when b"011101011" =>  SM14_vld_out <= '1';
					when b"011101110" =>  SM14_vld_out <= '1';
					when others       =>  SM14_vld_out <= '0';
				end case;
				case loc_addr is
					when b"011110000" =>  SM15_vld_out <= '1';
					when b"011110001" =>  SM15_vld_out <= '1';
					when b"011110010" =>  SM15_vld_out <= '1';
					when b"011110011" =>  SM15_vld_out <= '1';
					when b"011110100" =>  SM15_vld_out <= '1';
					when b"011110101" =>  SM15_vld_out <= '1';
					when b"011110110" =>  SM15_vld_out <= '1';
					when b"011110111" =>  SM15_vld_out <= '1';
					when b"011111000" =>  SM15_vld_out <= '1';
					when b"011111001" =>  SM15_vld_out <= '1';
					when b"011111010" =>  SM15_vld_out <= '1';
					when b"011111011" =>  SM15_vld_out <= '1';
					when b"011111110" =>  SM15_vld_out <= '1';
					when others       =>  SM15_vld_out <= '0';
				end case;
				case loc_addr is
					when b"100000000" =>  SM16_vld_out <= '1';
					when b"100000001" =>  SM16_vld_out <= '1';
					when b"100000010" =>  SM16_vld_out <= '1';
					when b"100000011" =>  SM16_vld_out <= '1';
					when b"100000100" =>  SM16_vld_out <= '1';
					when b"100000101" =>  SM16_vld_out <= '1';
					when b"100000110" =>  SM16_vld_out <= '1';
					when b"100000111" =>  SM16_vld_out <= '1';
					when b"100001000" =>  SM16_vld_out <= '1';
					when b"100001001" =>  SM16_vld_out <= '1';
					when b"100001010" =>  SM16_vld_out <= '1';
					when b"100001011" =>  SM16_vld_out <= '1';
					when b"100001110" =>  SM16_vld_out <= '1';
					when others       =>  SM16_vld_out <= '0';
				end case;
				case loc_addr is
					when b"100010000" =>  SM17_vld_out <= '1';
					when b"100010001" =>  SM17_vld_out <= '1';
					when b"100010010" =>  SM17_vld_out <= '1';
					when b"100010011" =>  SM17_vld_out <= '1';
					when b"100010100" =>  SM17_vld_out <= '1';
					when b"100010101" =>  SM17_vld_out <= '1';
					when b"100010110" =>  SM17_vld_out <= '1';
					when b"100010111" =>  SM17_vld_out <= '1';
					when b"100011000" =>  SM17_vld_out <= '1';
					when b"100011001" =>  SM17_vld_out <= '1';
					when b"100011010" =>  SM17_vld_out <= '1';
					when b"100011011" =>  SM17_vld_out <= '1';
					when b"100011110" =>  SM17_vld_out <= '1';
					when others       =>  SM17_vld_out <= '0';
				end case;
				case loc_addr is
					when b"100100000" =>  SM18_vld_out <= '1';
					when b"100100001" =>  SM18_vld_out <= '1';
					when b"100100010" =>  SM18_vld_out <= '1';
					when b"100100011" =>  SM18_vld_out <= '1';
					when b"100100100" =>  SM18_vld_out <= '1';
					when b"100100101" =>  SM18_vld_out <= '1';
					when b"100100110" =>  SM18_vld_out <= '1';
					when b"100100111" =>  SM18_vld_out <= '1';
					when b"100101000" =>  SM18_vld_out <= '1';
					when b"100101001" =>  SM18_vld_out <= '1';
					when b"100101010" =>  SM18_vld_out <= '1';
					when b"100101011" =>  SM18_vld_out <= '1';
					when b"100101110" =>  SM18_vld_out <= '1';
					when others       =>  SM18_vld_out <= '0';
				end case;
				case loc_addr is
					when b"100110000" =>  SM19_vld_out <= '1';
					when b"100110001" =>  SM19_vld_out <= '1';
					when b"100110010" =>  SM19_vld_out <= '1';
					when b"100110011" =>  SM19_vld_out <= '1';
					when b"100110100" =>  SM19_vld_out <= '1';
					when b"100110101" =>  SM19_vld_out <= '1';
					when b"100110110" =>  SM19_vld_out <= '1';
					when b"100110111" =>  SM19_vld_out <= '1';
					when b"100111000" =>  SM19_vld_out <= '1';
					when b"100111001" =>  SM19_vld_out <= '1';
					when b"100111010" =>  SM19_vld_out <= '1';
					when b"100111011" =>  SM19_vld_out <= '1';
					when b"100111110" =>  SM19_vld_out <= '1';
					when others       =>  SM19_vld_out <= '0';
				end case;
			else
				SM0_vld_out		<= '0';			
				SM1_vld_out		<= '0';			
				SM2_vld_out		<= '0';			
				SM3_vld_out		<= '0';			
				SM4_vld_out		<= '0';			
				SM5_vld_out		<= '0';			
				SM6_vld_out		<= '0';			
				SM7_vld_out		<= '0';			
				SM8_vld_out		<= '0';			
				SM9_vld_out		<= '0';			
				SM10_vld_out	<= '0';			
				SM11_vld_out	<= '0';			
				SM12_vld_out	<= '0';			
				SM13_vld_out	<= '0';			
				SM14_vld_out	<= '0';			
				SM15_vld_out	<= '0';			
				SM16_vld_out	<= '0';			
				SM17_vld_out	<= '0';			
				SM18_vld_out	<= '0';			
				SM19_vld_out	<= '0';						
			end if;
	    end if;
	  end if;
	end process gen_vld_out;
	
	SMs_irq_reg_int( 0)    <=  SM0_irq_in or SMs_Irq_Mask( 0);
	SMs_irq_reg_int( 1)    <=  SM1_irq_in or SMs_Irq_Mask( 1);
	SMs_irq_reg_int( 2)    <=  SM2_irq_in or SMs_Irq_Mask( 2);
	SMs_irq_reg_int( 3)    <=  SM3_irq_in or SMs_Irq_Mask( 3);
	SMs_irq_reg_int( 4)    <=  SM4_irq_in or SMs_Irq_Mask( 4);
	SMs_irq_reg_int( 5)    <=  SM5_irq_in or SMs_Irq_Mask( 5);
	SMs_irq_reg_int( 6)    <=  SM6_irq_in or SMs_Irq_Mask( 6);
	SMs_irq_reg_int( 7)    <=  SM7_irq_in or SMs_Irq_Mask( 7);
	SMs_irq_reg_int( 8)    <=  SM8_irq_in or SMs_Irq_Mask( 8);
	SMs_irq_reg_int( 9)    <=  SM9_irq_in or SMs_Irq_Mask( 9);
	SMs_irq_reg_int(10)    <= SM10_irq_in or SMs_Irq_Mask(10);
	SMs_irq_reg_int(11)    <= SM11_irq_in or SMs_Irq_Mask(11);
	SMs_irq_reg_int(12)    <= SM12_irq_in or SMs_Irq_Mask(12);
	SMs_irq_reg_int(13)    <= SM13_irq_in or SMs_Irq_Mask(13);
	SMs_irq_reg_int(14)    <= SM14_irq_in or SMs_Irq_Mask(14);
	SMs_irq_reg_int(15)    <= SM15_irq_in or SMs_Irq_Mask(15);
	SMs_irq_reg_int(16)    <= SM16_irq_in or SMs_Irq_Mask(16);
	SMs_irq_reg_int(17)    <= SM17_irq_in or SMs_Irq_Mask(17);
	SMs_irq_reg_int(18)    <= SM18_irq_in or SMs_Irq_Mask(18);
	SMs_irq_reg_int(19)    <= SM19_irq_in or SMs_Irq_Mask(19);


	sample_irq: process( S_AXI_ACLK ) is
	begin	
		if (rising_edge (S_AXI_ACLK)) then
	       if ( S_AXI_ARESETN = '0' ) then
	           SM_irqs <= (others => '0');
	           SM_irq  <= '0';
	       else	           	                        
                SM_irqs        <= SMs_irq_reg_int;
                SM_irq		   <= SMs_irq_reg_int( 0) or
                                  SMs_irq_reg_int( 1) or   
                                  SMs_irq_reg_int( 2) or   
                                  SMs_irq_reg_int( 3) or   
                                  SMs_irq_reg_int( 4) or   
                                  SMs_irq_reg_int( 5) or   
                                  SMs_irq_reg_int( 6) or   
                                  SMs_irq_reg_int( 7) or   
                                  SMs_irq_reg_int( 8) or   
                                  SMs_irq_reg_int( 9) or   
                                  SMs_irq_reg_int(10) or   
                                  SMs_irq_reg_int(11) or   
                                  SMs_irq_reg_int(12) or   
                                  SMs_irq_reg_int(13) or   
                                  SMs_irq_reg_int(14) or   
                                  SMs_irq_reg_int(15) or   
                                  SMs_irq_reg_int(16) or   
                                  SMs_irq_reg_int(17) or   
                                  SMs_irq_reg_int(18) or   
                                  SMs_irq_reg_int(19);

	    end if;
	  end if;
	end process sample_irq;

end arch_imp;
