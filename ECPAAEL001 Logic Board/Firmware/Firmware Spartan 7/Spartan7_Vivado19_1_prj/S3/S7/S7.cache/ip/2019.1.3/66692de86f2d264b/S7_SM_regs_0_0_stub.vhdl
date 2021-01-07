-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu May  7 08:38:57 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SM_regs_0_0_stub.vhdl
-- Design      : S7_SM_regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    SM0_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM0_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM0_dir : out STD_LOGIC;
    SM0_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM0_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM0_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM0_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM0_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM0_ramp_up : out STD_LOGIC;
    SM0_ramp_dwn : out STD_LOGIC;
    SM0_spd_chg : out STD_LOGIC;
    SM0_slw_stps : out STD_LOGIC;
    SM0_fst_stps : out STD_LOGIC;
    SM0_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM0_irq_mask : out STD_LOGIC;
    SM0_irq_in : in STD_LOGIC;
    SM0_irq_clr : out STD_LOGIC;
    SM0_vld_in : in STD_LOGIC;
    SM0_vld_out : out STD_LOGIC;
    SM1_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM1_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM1_dir : out STD_LOGIC;
    SM1_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM1_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM1_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM1_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM1_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM1_ramp_up : out STD_LOGIC;
    SM1_ramp_dwn : out STD_LOGIC;
    SM1_spd_chg : out STD_LOGIC;
    SM1_slw_stps : out STD_LOGIC;
    SM1_fst_stps : out STD_LOGIC;
    SM1_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM1_irq_mask : out STD_LOGIC;
    SM1_irq_in : in STD_LOGIC;
    SM1_irq_clr : out STD_LOGIC;
    SM1_vld_in : in STD_LOGIC;
    SM1_vld_out : out STD_LOGIC;
    SM2_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM2_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM2_dir : out STD_LOGIC;
    SM2_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM2_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM2_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM2_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM2_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM2_ramp_up : out STD_LOGIC;
    SM2_ramp_dwn : out STD_LOGIC;
    SM2_spd_chg : out STD_LOGIC;
    SM2_slw_stps : out STD_LOGIC;
    SM2_fst_stps : out STD_LOGIC;
    SM2_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM2_irq_mask : out STD_LOGIC;
    SM2_irq_in : in STD_LOGIC;
    SM2_irq_clr : out STD_LOGIC;
    SM2_vld_in : in STD_LOGIC;
    SM2_vld_out : out STD_LOGIC;
    SM3_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM3_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM3_dir : out STD_LOGIC;
    SM3_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM3_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM3_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM3_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM3_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM3_ramp_up : out STD_LOGIC;
    SM3_ramp_dwn : out STD_LOGIC;
    SM3_spd_chg : out STD_LOGIC;
    SM3_slw_stps : out STD_LOGIC;
    SM3_fst_stps : out STD_LOGIC;
    SM3_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM3_irq_mask : out STD_LOGIC;
    SM3_irq_in : in STD_LOGIC;
    SM3_irq_clr : out STD_LOGIC;
    SM3_vld_in : in STD_LOGIC;
    SM3_vld_out : out STD_LOGIC;
    SM4_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM4_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM4_dir : out STD_LOGIC;
    SM4_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM4_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM4_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM4_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM4_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM4_ramp_up : out STD_LOGIC;
    SM4_ramp_dwn : out STD_LOGIC;
    SM4_spd_chg : out STD_LOGIC;
    SM4_slw_stps : out STD_LOGIC;
    SM4_fst_stps : out STD_LOGIC;
    SM4_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM4_irq_mask : out STD_LOGIC;
    SM4_irq_in : in STD_LOGIC;
    SM4_irq_clr : out STD_LOGIC;
    SM4_vld_in : in STD_LOGIC;
    SM4_vld_out : out STD_LOGIC;
    SM5_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM5_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM5_dir : out STD_LOGIC;
    SM5_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM5_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM5_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM5_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM5_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM5_ramp_up : out STD_LOGIC;
    SM5_ramp_dwn : out STD_LOGIC;
    SM5_spd_chg : out STD_LOGIC;
    SM5_slw_stps : out STD_LOGIC;
    SM5_fst_stps : out STD_LOGIC;
    SM5_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM5_irq_mask : out STD_LOGIC;
    SM5_irq_in : in STD_LOGIC;
    SM5_irq_clr : out STD_LOGIC;
    SM5_vld_in : in STD_LOGIC;
    SM5_vld_out : out STD_LOGIC;
    SM6_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM6_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM6_dir : out STD_LOGIC;
    SM6_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM6_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM6_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM6_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM6_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM6_ramp_up : out STD_LOGIC;
    SM6_ramp_dwn : out STD_LOGIC;
    SM6_spd_chg : out STD_LOGIC;
    SM6_slw_stps : out STD_LOGIC;
    SM6_fst_stps : out STD_LOGIC;
    SM6_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM6_irq_mask : out STD_LOGIC;
    SM6_irq_in : in STD_LOGIC;
    SM6_irq_clr : out STD_LOGIC;
    SM6_vld_in : in STD_LOGIC;
    SM6_vld_out : out STD_LOGIC;
    SM7_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM7_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM7_dir : out STD_LOGIC;
    SM7_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM7_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM7_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM7_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM7_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM7_ramp_up : out STD_LOGIC;
    SM7_ramp_dwn : out STD_LOGIC;
    SM7_spd_chg : out STD_LOGIC;
    SM7_slw_stps : out STD_LOGIC;
    SM7_fst_stps : out STD_LOGIC;
    SM7_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM7_irq_mask : out STD_LOGIC;
    SM7_irq_in : in STD_LOGIC;
    SM7_irq_clr : out STD_LOGIC;
    SM7_vld_in : in STD_LOGIC;
    SM7_vld_out : out STD_LOGIC;
    SM8_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM8_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM8_dir : out STD_LOGIC;
    SM8_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM8_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM8_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM8_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM8_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM8_ramp_up : out STD_LOGIC;
    SM8_ramp_dwn : out STD_LOGIC;
    SM8_spd_chg : out STD_LOGIC;
    SM8_slw_stps : out STD_LOGIC;
    SM8_fst_stps : out STD_LOGIC;
    SM8_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM8_irq_mask : out STD_LOGIC;
    SM8_irq_in : in STD_LOGIC;
    SM8_irq_clr : out STD_LOGIC;
    SM8_vld_in : in STD_LOGIC;
    SM8_vld_out : out STD_LOGIC;
    SM9_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM9_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM9_dir : out STD_LOGIC;
    SM9_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM9_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM9_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM9_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM9_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM9_ramp_up : out STD_LOGIC;
    SM9_ramp_dwn : out STD_LOGIC;
    SM9_spd_chg : out STD_LOGIC;
    SM9_slw_stps : out STD_LOGIC;
    SM9_fst_stps : out STD_LOGIC;
    SM9_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM9_irq_mask : out STD_LOGIC;
    SM9_irq_in : in STD_LOGIC;
    SM9_irq_clr : out STD_LOGIC;
    SM9_vld_in : in STD_LOGIC;
    SM9_vld_out : out STD_LOGIC;
    SM10_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM10_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM10_dir : out STD_LOGIC;
    SM10_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM10_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM10_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM10_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM10_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM10_ramp_up : out STD_LOGIC;
    SM10_ramp_dwn : out STD_LOGIC;
    SM10_spd_chg : out STD_LOGIC;
    SM10_slw_stps : out STD_LOGIC;
    SM10_fst_stps : out STD_LOGIC;
    SM10_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM10_irq_mask : out STD_LOGIC;
    SM10_irq_in : in STD_LOGIC;
    SM10_irq_clr : out STD_LOGIC;
    SM10_vld_in : in STD_LOGIC;
    SM10_vld_out : out STD_LOGIC;
    SM11_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM11_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM11_dir : out STD_LOGIC;
    SM11_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM11_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM11_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM11_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM11_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM11_ramp_up : out STD_LOGIC;
    SM11_ramp_dwn : out STD_LOGIC;
    SM11_spd_chg : out STD_LOGIC;
    SM11_slw_stps : out STD_LOGIC;
    SM11_fst_stps : out STD_LOGIC;
    SM11_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM11_irq_mask : out STD_LOGIC;
    SM11_irq_in : in STD_LOGIC;
    SM11_irq_clr : out STD_LOGIC;
    SM11_vld_in : in STD_LOGIC;
    SM11_vld_out : out STD_LOGIC;
    SM12_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM12_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM12_dir : out STD_LOGIC;
    SM12_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM12_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM12_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM12_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM12_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM12_ramp_up : out STD_LOGIC;
    SM12_ramp_dwn : out STD_LOGIC;
    SM12_spd_chg : out STD_LOGIC;
    SM12_slw_stps : out STD_LOGIC;
    SM12_fst_stps : out STD_LOGIC;
    SM12_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM12_irq_mask : out STD_LOGIC;
    SM12_irq_in : in STD_LOGIC;
    SM12_irq_clr : out STD_LOGIC;
    SM12_vld_in : in STD_LOGIC;
    SM12_vld_out : out STD_LOGIC;
    SM13_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM13_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM13_dir : out STD_LOGIC;
    SM13_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM13_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM13_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM13_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM13_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM13_ramp_up : out STD_LOGIC;
    SM13_ramp_dwn : out STD_LOGIC;
    SM13_spd_chg : out STD_LOGIC;
    SM13_slw_stps : out STD_LOGIC;
    SM13_fst_stps : out STD_LOGIC;
    SM13_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM13_irq_mask : out STD_LOGIC;
    SM13_irq_in : in STD_LOGIC;
    SM13_irq_clr : out STD_LOGIC;
    SM13_vld_in : in STD_LOGIC;
    SM13_vld_out : out STD_LOGIC;
    SM14_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM14_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM14_dir : out STD_LOGIC;
    SM14_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM14_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM14_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM14_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM14_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM14_ramp_up : out STD_LOGIC;
    SM14_ramp_dwn : out STD_LOGIC;
    SM14_spd_chg : out STD_LOGIC;
    SM14_slw_stps : out STD_LOGIC;
    SM14_fst_stps : out STD_LOGIC;
    SM14_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM14_irq_mask : out STD_LOGIC;
    SM14_irq_in : in STD_LOGIC;
    SM14_irq_clr : out STD_LOGIC;
    SM14_vld_in : in STD_LOGIC;
    SM14_vld_out : out STD_LOGIC;
    SM15_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM15_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM15_dir : out STD_LOGIC;
    SM15_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM15_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM15_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM15_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM15_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM15_ramp_up : out STD_LOGIC;
    SM15_ramp_dwn : out STD_LOGIC;
    SM15_spd_chg : out STD_LOGIC;
    SM15_slw_stps : out STD_LOGIC;
    SM15_fst_stps : out STD_LOGIC;
    SM15_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM15_irq_mask : out STD_LOGIC;
    SM15_irq_in : in STD_LOGIC;
    SM15_irq_clr : out STD_LOGIC;
    SM15_vld_in : in STD_LOGIC;
    SM15_vld_out : out STD_LOGIC;
    SM16_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM16_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM16_dir : out STD_LOGIC;
    SM16_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM16_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM16_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM16_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM16_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM16_ramp_up : out STD_LOGIC;
    SM16_ramp_dwn : out STD_LOGIC;
    SM16_spd_chg : out STD_LOGIC;
    SM16_slw_stps : out STD_LOGIC;
    SM16_fst_stps : out STD_LOGIC;
    SM16_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM16_irq_mask : out STD_LOGIC;
    SM16_irq_in : in STD_LOGIC;
    SM16_irq_clr : out STD_LOGIC;
    SM16_vld_in : in STD_LOGIC;
    SM16_vld_out : out STD_LOGIC;
    SM17_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM17_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM17_dir : out STD_LOGIC;
    SM17_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM17_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM17_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM17_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM17_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM17_ramp_up : out STD_LOGIC;
    SM17_ramp_dwn : out STD_LOGIC;
    SM17_spd_chg : out STD_LOGIC;
    SM17_slw_stps : out STD_LOGIC;
    SM17_fst_stps : out STD_LOGIC;
    SM17_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM17_irq_mask : out STD_LOGIC;
    SM17_irq_in : in STD_LOGIC;
    SM17_irq_clr : out STD_LOGIC;
    SM17_vld_in : in STD_LOGIC;
    SM17_vld_out : out STD_LOGIC;
    SM18_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM18_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM18_dir : out STD_LOGIC;
    SM18_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM18_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM18_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM18_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM18_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM18_ramp_up : out STD_LOGIC;
    SM18_ramp_dwn : out STD_LOGIC;
    SM18_spd_chg : out STD_LOGIC;
    SM18_slw_stps : out STD_LOGIC;
    SM18_fst_stps : out STD_LOGIC;
    SM18_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM18_irq_mask : out STD_LOGIC;
    SM18_irq_in : in STD_LOGIC;
    SM18_irq_clr : out STD_LOGIC;
    SM18_vld_in : in STD_LOGIC;
    SM18_vld_out : out STD_LOGIC;
    SM19_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM19_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM19_dir : out STD_LOGIC;
    SM19_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM19_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM19_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM19_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM19_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM19_ramp_up : out STD_LOGIC;
    SM19_ramp_dwn : out STD_LOGIC;
    SM19_spd_chg : out STD_LOGIC;
    SM19_slw_stps : out STD_LOGIC;
    SM19_fst_stps : out STD_LOGIC;
    SM19_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM19_irq_mask : out STD_LOGIC;
    SM19_irq_in : in STD_LOGIC;
    SM19_irq_clr : out STD_LOGIC;
    SM19_vld_in : in STD_LOGIC;
    SM19_vld_out : out STD_LOGIC;
    SM_irqs : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SM_irq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SM0_tgt_ACC[23:0],SM0_tgt_EC[21:0],SM0_dir,SM0_load[1:0],SM0_res[1:0],SM0_init_EC[21:0],SM0_cnt_o[31:0],SM0_cnt_i[31:0],SM0_ramp_up,SM0_ramp_dwn,SM0_spd_chg,SM0_slw_stps,SM0_fst_stps,SM0_running[1:0],SM0_irq_mask,SM0_irq_in,SM0_irq_clr,SM0_vld_in,SM0_vld_out,SM1_tgt_ACC[23:0],SM1_tgt_EC[21:0],SM1_dir,SM1_load[1:0],SM1_res[1:0],SM1_init_EC[21:0],SM1_cnt_o[31:0],SM1_cnt_i[31:0],SM1_ramp_up,SM1_ramp_dwn,SM1_spd_chg,SM1_slw_stps,SM1_fst_stps,SM1_running[1:0],SM1_irq_mask,SM1_irq_in,SM1_irq_clr,SM1_vld_in,SM1_vld_out,SM2_tgt_ACC[23:0],SM2_tgt_EC[21:0],SM2_dir,SM2_load[1:0],SM2_res[1:0],SM2_init_EC[21:0],SM2_cnt_o[31:0],SM2_cnt_i[31:0],SM2_ramp_up,SM2_ramp_dwn,SM2_spd_chg,SM2_slw_stps,SM2_fst_stps,SM2_running[1:0],SM2_irq_mask,SM2_irq_in,SM2_irq_clr,SM2_vld_in,SM2_vld_out,SM3_tgt_ACC[23:0],SM3_tgt_EC[21:0],SM3_dir,SM3_load[1:0],SM3_res[1:0],SM3_init_EC[21:0],SM3_cnt_o[31:0],SM3_cnt_i[31:0],SM3_ramp_up,SM3_ramp_dwn,SM3_spd_chg,SM3_slw_stps,SM3_fst_stps,SM3_running[1:0],SM3_irq_mask,SM3_irq_in,SM3_irq_clr,SM3_vld_in,SM3_vld_out,SM4_tgt_ACC[23:0],SM4_tgt_EC[21:0],SM4_dir,SM4_load[1:0],SM4_res[1:0],SM4_init_EC[21:0],SM4_cnt_o[31:0],SM4_cnt_i[31:0],SM4_ramp_up,SM4_ramp_dwn,SM4_spd_chg,SM4_slw_stps,SM4_fst_stps,SM4_running[1:0],SM4_irq_mask,SM4_irq_in,SM4_irq_clr,SM4_vld_in,SM4_vld_out,SM5_tgt_ACC[23:0],SM5_tgt_EC[21:0],SM5_dir,SM5_load[1:0],SM5_res[1:0],SM5_init_EC[21:0],SM5_cnt_o[31:0],SM5_cnt_i[31:0],SM5_ramp_up,SM5_ramp_dwn,SM5_spd_chg,SM5_slw_stps,SM5_fst_stps,SM5_running[1:0],SM5_irq_mask,SM5_irq_in,SM5_irq_clr,SM5_vld_in,SM5_vld_out,SM6_tgt_ACC[23:0],SM6_tgt_EC[21:0],SM6_dir,SM6_load[1:0],SM6_res[1:0],SM6_init_EC[21:0],SM6_cnt_o[31:0],SM6_cnt_i[31:0],SM6_ramp_up,SM6_ramp_dwn,SM6_spd_chg,SM6_slw_stps,SM6_fst_stps,SM6_running[1:0],SM6_irq_mask,SM6_irq_in,SM6_irq_clr,SM6_vld_in,SM6_vld_out,SM7_tgt_ACC[23:0],SM7_tgt_EC[21:0],SM7_dir,SM7_load[1:0],SM7_res[1:0],SM7_init_EC[21:0],SM7_cnt_o[31:0],SM7_cnt_i[31:0],SM7_ramp_up,SM7_ramp_dwn,SM7_spd_chg,SM7_slw_stps,SM7_fst_stps,SM7_running[1:0],SM7_irq_mask,SM7_irq_in,SM7_irq_clr,SM7_vld_in,SM7_vld_out,SM8_tgt_ACC[23:0],SM8_tgt_EC[21:0],SM8_dir,SM8_load[1:0],SM8_res[1:0],SM8_init_EC[21:0],SM8_cnt_o[31:0],SM8_cnt_i[31:0],SM8_ramp_up,SM8_ramp_dwn,SM8_spd_chg,SM8_slw_stps,SM8_fst_stps,SM8_running[1:0],SM8_irq_mask,SM8_irq_in,SM8_irq_clr,SM8_vld_in,SM8_vld_out,SM9_tgt_ACC[23:0],SM9_tgt_EC[21:0],SM9_dir,SM9_load[1:0],SM9_res[1:0],SM9_init_EC[21:0],SM9_cnt_o[31:0],SM9_cnt_i[31:0],SM9_ramp_up,SM9_ramp_dwn,SM9_spd_chg,SM9_slw_stps,SM9_fst_stps,SM9_running[1:0],SM9_irq_mask,SM9_irq_in,SM9_irq_clr,SM9_vld_in,SM9_vld_out,SM10_tgt_ACC[23:0],SM10_tgt_EC[21:0],SM10_dir,SM10_load[1:0],SM10_res[1:0],SM10_init_EC[21:0],SM10_cnt_o[31:0],SM10_cnt_i[31:0],SM10_ramp_up,SM10_ramp_dwn,SM10_spd_chg,SM10_slw_stps,SM10_fst_stps,SM10_running[1:0],SM10_irq_mask,SM10_irq_in,SM10_irq_clr,SM10_vld_in,SM10_vld_out,SM11_tgt_ACC[23:0],SM11_tgt_EC[21:0],SM11_dir,SM11_load[1:0],SM11_res[1:0],SM11_init_EC[21:0],SM11_cnt_o[31:0],SM11_cnt_i[31:0],SM11_ramp_up,SM11_ramp_dwn,SM11_spd_chg,SM11_slw_stps,SM11_fst_stps,SM11_running[1:0],SM11_irq_mask,SM11_irq_in,SM11_irq_clr,SM11_vld_in,SM11_vld_out,SM12_tgt_ACC[23:0],SM12_tgt_EC[21:0],SM12_dir,SM12_load[1:0],SM12_res[1:0],SM12_init_EC[21:0],SM12_cnt_o[31:0],SM12_cnt_i[31:0],SM12_ramp_up,SM12_ramp_dwn,SM12_spd_chg,SM12_slw_stps,SM12_fst_stps,SM12_running[1:0],SM12_irq_mask,SM12_irq_in,SM12_irq_clr,SM12_vld_in,SM12_vld_out,SM13_tgt_ACC[23:0],SM13_tgt_EC[21:0],SM13_dir,SM13_load[1:0],SM13_res[1:0],SM13_init_EC[21:0],SM13_cnt_o[31:0],SM13_cnt_i[31:0],SM13_ramp_up,SM13_ramp_dwn,SM13_spd_chg,SM13_slw_stps,SM13_fst_stps,SM13_running[1:0],SM13_irq_mask,SM13_irq_in,SM13_irq_clr,SM13_vld_in,SM13_vld_out,SM14_tgt_ACC[23:0],SM14_tgt_EC[21:0],SM14_dir,SM14_load[1:0],SM14_res[1:0],SM14_init_EC[21:0],SM14_cnt_o[31:0],SM14_cnt_i[31:0],SM14_ramp_up,SM14_ramp_dwn,SM14_spd_chg,SM14_slw_stps,SM14_fst_stps,SM14_running[1:0],SM14_irq_mask,SM14_irq_in,SM14_irq_clr,SM14_vld_in,SM14_vld_out,SM15_tgt_ACC[23:0],SM15_tgt_EC[21:0],SM15_dir,SM15_load[1:0],SM15_res[1:0],SM15_init_EC[21:0],SM15_cnt_o[31:0],SM15_cnt_i[31:0],SM15_ramp_up,SM15_ramp_dwn,SM15_spd_chg,SM15_slw_stps,SM15_fst_stps,SM15_running[1:0],SM15_irq_mask,SM15_irq_in,SM15_irq_clr,SM15_vld_in,SM15_vld_out,SM16_tgt_ACC[23:0],SM16_tgt_EC[21:0],SM16_dir,SM16_load[1:0],SM16_res[1:0],SM16_init_EC[21:0],SM16_cnt_o[31:0],SM16_cnt_i[31:0],SM16_ramp_up,SM16_ramp_dwn,SM16_spd_chg,SM16_slw_stps,SM16_fst_stps,SM16_running[1:0],SM16_irq_mask,SM16_irq_in,SM16_irq_clr,SM16_vld_in,SM16_vld_out,SM17_tgt_ACC[23:0],SM17_tgt_EC[21:0],SM17_dir,SM17_load[1:0],SM17_res[1:0],SM17_init_EC[21:0],SM17_cnt_o[31:0],SM17_cnt_i[31:0],SM17_ramp_up,SM17_ramp_dwn,SM17_spd_chg,SM17_slw_stps,SM17_fst_stps,SM17_running[1:0],SM17_irq_mask,SM17_irq_in,SM17_irq_clr,SM17_vld_in,SM17_vld_out,SM18_tgt_ACC[23:0],SM18_tgt_EC[21:0],SM18_dir,SM18_load[1:0],SM18_res[1:0],SM18_init_EC[21:0],SM18_cnt_o[31:0],SM18_cnt_i[31:0],SM18_ramp_up,SM18_ramp_dwn,SM18_spd_chg,SM18_slw_stps,SM18_fst_stps,SM18_running[1:0],SM18_irq_mask,SM18_irq_in,SM18_irq_clr,SM18_vld_in,SM18_vld_out,SM19_tgt_ACC[23:0],SM19_tgt_EC[21:0],SM19_dir,SM19_load[1:0],SM19_res[1:0],SM19_init_EC[21:0],SM19_cnt_o[31:0],SM19_cnt_i[31:0],SM19_ramp_up,SM19_ramp_dwn,SM19_spd_chg,SM19_slw_stps,SM19_fst_stps,SM19_running[1:0],SM19_irq_mask,SM19_irq_in,SM19_irq_clr,SM19_vld_in,SM19_vld_out,SM_irqs[19:0],SM_irq,s00_axi_awaddr[10:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[10:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SM_regs_v1_0,Vivado 2019.1.3";
begin
end;
