-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:SM_regs:1.0
-- IP Revision: 33

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_SM_regs_0_0 IS
  PORT (
    SM0_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM0_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM0_dir : OUT STD_LOGIC;
    SM0_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM0_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM0_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM0_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM0_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM0_ramp_up : OUT STD_LOGIC;
    SM0_ramp_dwn : OUT STD_LOGIC;
    SM0_spd_chg : OUT STD_LOGIC;
    SM0_slw_stps : OUT STD_LOGIC;
    SM0_fst_stps : OUT STD_LOGIC;
    SM0_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM0_irq_mask : OUT STD_LOGIC;
    SM0_irq_in : IN STD_LOGIC;
    SM0_irq_clr : OUT STD_LOGIC;
    SM0_vld_in : IN STD_LOGIC;
    SM0_vld_out : OUT STD_LOGIC;
    SM1_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM1_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM1_dir : OUT STD_LOGIC;
    SM1_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM1_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM1_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM1_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM1_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM1_ramp_up : OUT STD_LOGIC;
    SM1_ramp_dwn : OUT STD_LOGIC;
    SM1_spd_chg : OUT STD_LOGIC;
    SM1_slw_stps : OUT STD_LOGIC;
    SM1_fst_stps : OUT STD_LOGIC;
    SM1_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM1_irq_mask : OUT STD_LOGIC;
    SM1_irq_in : IN STD_LOGIC;
    SM1_irq_clr : OUT STD_LOGIC;
    SM1_vld_in : IN STD_LOGIC;
    SM1_vld_out : OUT STD_LOGIC;
    SM2_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM2_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM2_dir : OUT STD_LOGIC;
    SM2_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM2_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM2_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM2_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM2_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM2_ramp_up : OUT STD_LOGIC;
    SM2_ramp_dwn : OUT STD_LOGIC;
    SM2_spd_chg : OUT STD_LOGIC;
    SM2_slw_stps : OUT STD_LOGIC;
    SM2_fst_stps : OUT STD_LOGIC;
    SM2_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM2_irq_mask : OUT STD_LOGIC;
    SM2_irq_in : IN STD_LOGIC;
    SM2_irq_clr : OUT STD_LOGIC;
    SM2_vld_in : IN STD_LOGIC;
    SM2_vld_out : OUT STD_LOGIC;
    SM3_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM3_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM3_dir : OUT STD_LOGIC;
    SM3_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM3_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM3_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM3_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM3_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM3_ramp_up : OUT STD_LOGIC;
    SM3_ramp_dwn : OUT STD_LOGIC;
    SM3_spd_chg : OUT STD_LOGIC;
    SM3_slw_stps : OUT STD_LOGIC;
    SM3_fst_stps : OUT STD_LOGIC;
    SM3_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM3_irq_mask : OUT STD_LOGIC;
    SM3_irq_in : IN STD_LOGIC;
    SM3_irq_clr : OUT STD_LOGIC;
    SM3_vld_in : IN STD_LOGIC;
    SM3_vld_out : OUT STD_LOGIC;
    SM4_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM4_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM4_dir : OUT STD_LOGIC;
    SM4_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM4_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM4_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM4_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM4_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM4_ramp_up : OUT STD_LOGIC;
    SM4_ramp_dwn : OUT STD_LOGIC;
    SM4_spd_chg : OUT STD_LOGIC;
    SM4_slw_stps : OUT STD_LOGIC;
    SM4_fst_stps : OUT STD_LOGIC;
    SM4_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM4_irq_mask : OUT STD_LOGIC;
    SM4_irq_in : IN STD_LOGIC;
    SM4_irq_clr : OUT STD_LOGIC;
    SM4_vld_in : IN STD_LOGIC;
    SM4_vld_out : OUT STD_LOGIC;
    SM5_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM5_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM5_dir : OUT STD_LOGIC;
    SM5_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM5_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM5_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM5_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM5_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM5_ramp_up : OUT STD_LOGIC;
    SM5_ramp_dwn : OUT STD_LOGIC;
    SM5_spd_chg : OUT STD_LOGIC;
    SM5_slw_stps : OUT STD_LOGIC;
    SM5_fst_stps : OUT STD_LOGIC;
    SM5_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM5_irq_mask : OUT STD_LOGIC;
    SM5_irq_in : IN STD_LOGIC;
    SM5_irq_clr : OUT STD_LOGIC;
    SM5_vld_in : IN STD_LOGIC;
    SM5_vld_out : OUT STD_LOGIC;
    SM6_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM6_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM6_dir : OUT STD_LOGIC;
    SM6_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM6_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM6_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM6_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM6_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM6_ramp_up : OUT STD_LOGIC;
    SM6_ramp_dwn : OUT STD_LOGIC;
    SM6_spd_chg : OUT STD_LOGIC;
    SM6_slw_stps : OUT STD_LOGIC;
    SM6_fst_stps : OUT STD_LOGIC;
    SM6_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM6_irq_mask : OUT STD_LOGIC;
    SM6_irq_in : IN STD_LOGIC;
    SM6_irq_clr : OUT STD_LOGIC;
    SM6_vld_in : IN STD_LOGIC;
    SM6_vld_out : OUT STD_LOGIC;
    SM7_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM7_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM7_dir : OUT STD_LOGIC;
    SM7_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM7_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM7_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM7_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM7_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM7_ramp_up : OUT STD_LOGIC;
    SM7_ramp_dwn : OUT STD_LOGIC;
    SM7_spd_chg : OUT STD_LOGIC;
    SM7_slw_stps : OUT STD_LOGIC;
    SM7_fst_stps : OUT STD_LOGIC;
    SM7_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM7_irq_mask : OUT STD_LOGIC;
    SM7_irq_in : IN STD_LOGIC;
    SM7_irq_clr : OUT STD_LOGIC;
    SM7_vld_in : IN STD_LOGIC;
    SM7_vld_out : OUT STD_LOGIC;
    SM8_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM8_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM8_dir : OUT STD_LOGIC;
    SM8_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM8_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM8_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM8_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM8_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM8_ramp_up : OUT STD_LOGIC;
    SM8_ramp_dwn : OUT STD_LOGIC;
    SM8_spd_chg : OUT STD_LOGIC;
    SM8_slw_stps : OUT STD_LOGIC;
    SM8_fst_stps : OUT STD_LOGIC;
    SM8_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM8_irq_mask : OUT STD_LOGIC;
    SM8_irq_in : IN STD_LOGIC;
    SM8_irq_clr : OUT STD_LOGIC;
    SM8_vld_in : IN STD_LOGIC;
    SM8_vld_out : OUT STD_LOGIC;
    SM9_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM9_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM9_dir : OUT STD_LOGIC;
    SM9_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM9_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM9_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM9_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM9_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM9_ramp_up : OUT STD_LOGIC;
    SM9_ramp_dwn : OUT STD_LOGIC;
    SM9_spd_chg : OUT STD_LOGIC;
    SM9_slw_stps : OUT STD_LOGIC;
    SM9_fst_stps : OUT STD_LOGIC;
    SM9_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM9_irq_mask : OUT STD_LOGIC;
    SM9_irq_in : IN STD_LOGIC;
    SM9_irq_clr : OUT STD_LOGIC;
    SM9_vld_in : IN STD_LOGIC;
    SM9_vld_out : OUT STD_LOGIC;
    SM10_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM10_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM10_dir : OUT STD_LOGIC;
    SM10_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM10_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM10_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM10_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM10_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM10_ramp_up : OUT STD_LOGIC;
    SM10_ramp_dwn : OUT STD_LOGIC;
    SM10_spd_chg : OUT STD_LOGIC;
    SM10_slw_stps : OUT STD_LOGIC;
    SM10_fst_stps : OUT STD_LOGIC;
    SM10_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM10_irq_mask : OUT STD_LOGIC;
    SM10_irq_in : IN STD_LOGIC;
    SM10_irq_clr : OUT STD_LOGIC;
    SM10_vld_in : IN STD_LOGIC;
    SM10_vld_out : OUT STD_LOGIC;
    SM11_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM11_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM11_dir : OUT STD_LOGIC;
    SM11_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM11_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM11_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM11_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM11_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM11_ramp_up : OUT STD_LOGIC;
    SM11_ramp_dwn : OUT STD_LOGIC;
    SM11_spd_chg : OUT STD_LOGIC;
    SM11_slw_stps : OUT STD_LOGIC;
    SM11_fst_stps : OUT STD_LOGIC;
    SM11_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM11_irq_mask : OUT STD_LOGIC;
    SM11_irq_in : IN STD_LOGIC;
    SM11_irq_clr : OUT STD_LOGIC;
    SM11_vld_in : IN STD_LOGIC;
    SM11_vld_out : OUT STD_LOGIC;
    SM12_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM12_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM12_dir : OUT STD_LOGIC;
    SM12_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM12_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM12_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM12_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM12_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM12_ramp_up : OUT STD_LOGIC;
    SM12_ramp_dwn : OUT STD_LOGIC;
    SM12_spd_chg : OUT STD_LOGIC;
    SM12_slw_stps : OUT STD_LOGIC;
    SM12_fst_stps : OUT STD_LOGIC;
    SM12_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM12_irq_mask : OUT STD_LOGIC;
    SM12_irq_in : IN STD_LOGIC;
    SM12_irq_clr : OUT STD_LOGIC;
    SM12_vld_in : IN STD_LOGIC;
    SM12_vld_out : OUT STD_LOGIC;
    SM13_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM13_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM13_dir : OUT STD_LOGIC;
    SM13_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM13_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM13_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM13_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM13_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM13_ramp_up : OUT STD_LOGIC;
    SM13_ramp_dwn : OUT STD_LOGIC;
    SM13_spd_chg : OUT STD_LOGIC;
    SM13_slw_stps : OUT STD_LOGIC;
    SM13_fst_stps : OUT STD_LOGIC;
    SM13_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM13_irq_mask : OUT STD_LOGIC;
    SM13_irq_in : IN STD_LOGIC;
    SM13_irq_clr : OUT STD_LOGIC;
    SM13_vld_in : IN STD_LOGIC;
    SM13_vld_out : OUT STD_LOGIC;
    SM14_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM14_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM14_dir : OUT STD_LOGIC;
    SM14_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM14_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM14_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM14_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM14_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM14_ramp_up : OUT STD_LOGIC;
    SM14_ramp_dwn : OUT STD_LOGIC;
    SM14_spd_chg : OUT STD_LOGIC;
    SM14_slw_stps : OUT STD_LOGIC;
    SM14_fst_stps : OUT STD_LOGIC;
    SM14_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM14_irq_mask : OUT STD_LOGIC;
    SM14_irq_in : IN STD_LOGIC;
    SM14_irq_clr : OUT STD_LOGIC;
    SM14_vld_in : IN STD_LOGIC;
    SM14_vld_out : OUT STD_LOGIC;
    SM15_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM15_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM15_dir : OUT STD_LOGIC;
    SM15_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM15_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM15_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM15_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM15_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM15_ramp_up : OUT STD_LOGIC;
    SM15_ramp_dwn : OUT STD_LOGIC;
    SM15_spd_chg : OUT STD_LOGIC;
    SM15_slw_stps : OUT STD_LOGIC;
    SM15_fst_stps : OUT STD_LOGIC;
    SM15_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM15_irq_mask : OUT STD_LOGIC;
    SM15_irq_in : IN STD_LOGIC;
    SM15_irq_clr : OUT STD_LOGIC;
    SM15_vld_in : IN STD_LOGIC;
    SM15_vld_out : OUT STD_LOGIC;
    SM16_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM16_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM16_dir : OUT STD_LOGIC;
    SM16_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM16_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM16_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM16_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM16_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM16_ramp_up : OUT STD_LOGIC;
    SM16_ramp_dwn : OUT STD_LOGIC;
    SM16_spd_chg : OUT STD_LOGIC;
    SM16_slw_stps : OUT STD_LOGIC;
    SM16_fst_stps : OUT STD_LOGIC;
    SM16_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM16_irq_mask : OUT STD_LOGIC;
    SM16_irq_in : IN STD_LOGIC;
    SM16_irq_clr : OUT STD_LOGIC;
    SM16_vld_in : IN STD_LOGIC;
    SM16_vld_out : OUT STD_LOGIC;
    SM17_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM17_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM17_dir : OUT STD_LOGIC;
    SM17_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM17_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM17_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM17_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM17_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM17_ramp_up : OUT STD_LOGIC;
    SM17_ramp_dwn : OUT STD_LOGIC;
    SM17_spd_chg : OUT STD_LOGIC;
    SM17_slw_stps : OUT STD_LOGIC;
    SM17_fst_stps : OUT STD_LOGIC;
    SM17_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM17_irq_mask : OUT STD_LOGIC;
    SM17_irq_in : IN STD_LOGIC;
    SM17_irq_clr : OUT STD_LOGIC;
    SM17_vld_in : IN STD_LOGIC;
    SM17_vld_out : OUT STD_LOGIC;
    SM18_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM18_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM18_dir : OUT STD_LOGIC;
    SM18_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM18_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM18_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM18_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM18_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM18_ramp_up : OUT STD_LOGIC;
    SM18_ramp_dwn : OUT STD_LOGIC;
    SM18_spd_chg : OUT STD_LOGIC;
    SM18_slw_stps : OUT STD_LOGIC;
    SM18_fst_stps : OUT STD_LOGIC;
    SM18_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM18_irq_mask : OUT STD_LOGIC;
    SM18_irq_in : IN STD_LOGIC;
    SM18_irq_clr : OUT STD_LOGIC;
    SM18_vld_in : IN STD_LOGIC;
    SM18_vld_out : OUT STD_LOGIC;
    SM19_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    SM19_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM19_dir : OUT STD_LOGIC;
    SM19_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM19_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM19_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    SM19_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM19_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SM19_ramp_up : OUT STD_LOGIC;
    SM19_ramp_dwn : OUT STD_LOGIC;
    SM19_spd_chg : OUT STD_LOGIC;
    SM19_slw_stps : OUT STD_LOGIC;
    SM19_fst_stps : OUT STD_LOGIC;
    SM19_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SM19_irq_mask : OUT STD_LOGIC;
    SM19_irq_in : IN STD_LOGIC;
    SM19_irq_clr : OUT STD_LOGIC;
    SM19_vld_in : IN STD_LOGIC;
    SM19_vld_out : OUT STD_LOGIC;
    SM_irqs : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    SM_irq : OUT STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC
  );
END S7_SM_regs_0_0;

ARCHITECTURE S7_SM_regs_0_0_arch OF S7_SM_regs_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_SM_regs_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SM_regs_v1_0 IS
    GENERIC (
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      SM0_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM0_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM0_dir : OUT STD_LOGIC;
      SM0_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM0_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM0_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM0_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM0_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM0_ramp_up : OUT STD_LOGIC;
      SM0_ramp_dwn : OUT STD_LOGIC;
      SM0_spd_chg : OUT STD_LOGIC;
      SM0_slw_stps : OUT STD_LOGIC;
      SM0_fst_stps : OUT STD_LOGIC;
      SM0_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM0_irq_mask : OUT STD_LOGIC;
      SM0_irq_in : IN STD_LOGIC;
      SM0_irq_clr : OUT STD_LOGIC;
      SM0_vld_in : IN STD_LOGIC;
      SM0_vld_out : OUT STD_LOGIC;
      SM1_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM1_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM1_dir : OUT STD_LOGIC;
      SM1_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM1_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM1_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM1_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM1_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM1_ramp_up : OUT STD_LOGIC;
      SM1_ramp_dwn : OUT STD_LOGIC;
      SM1_spd_chg : OUT STD_LOGIC;
      SM1_slw_stps : OUT STD_LOGIC;
      SM1_fst_stps : OUT STD_LOGIC;
      SM1_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM1_irq_mask : OUT STD_LOGIC;
      SM1_irq_in : IN STD_LOGIC;
      SM1_irq_clr : OUT STD_LOGIC;
      SM1_vld_in : IN STD_LOGIC;
      SM1_vld_out : OUT STD_LOGIC;
      SM2_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM2_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM2_dir : OUT STD_LOGIC;
      SM2_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM2_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM2_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM2_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM2_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM2_ramp_up : OUT STD_LOGIC;
      SM2_ramp_dwn : OUT STD_LOGIC;
      SM2_spd_chg : OUT STD_LOGIC;
      SM2_slw_stps : OUT STD_LOGIC;
      SM2_fst_stps : OUT STD_LOGIC;
      SM2_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM2_irq_mask : OUT STD_LOGIC;
      SM2_irq_in : IN STD_LOGIC;
      SM2_irq_clr : OUT STD_LOGIC;
      SM2_vld_in : IN STD_LOGIC;
      SM2_vld_out : OUT STD_LOGIC;
      SM3_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM3_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM3_dir : OUT STD_LOGIC;
      SM3_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM3_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM3_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM3_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM3_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM3_ramp_up : OUT STD_LOGIC;
      SM3_ramp_dwn : OUT STD_LOGIC;
      SM3_spd_chg : OUT STD_LOGIC;
      SM3_slw_stps : OUT STD_LOGIC;
      SM3_fst_stps : OUT STD_LOGIC;
      SM3_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM3_irq_mask : OUT STD_LOGIC;
      SM3_irq_in : IN STD_LOGIC;
      SM3_irq_clr : OUT STD_LOGIC;
      SM3_vld_in : IN STD_LOGIC;
      SM3_vld_out : OUT STD_LOGIC;
      SM4_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM4_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM4_dir : OUT STD_LOGIC;
      SM4_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM4_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM4_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM4_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM4_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM4_ramp_up : OUT STD_LOGIC;
      SM4_ramp_dwn : OUT STD_LOGIC;
      SM4_spd_chg : OUT STD_LOGIC;
      SM4_slw_stps : OUT STD_LOGIC;
      SM4_fst_stps : OUT STD_LOGIC;
      SM4_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM4_irq_mask : OUT STD_LOGIC;
      SM4_irq_in : IN STD_LOGIC;
      SM4_irq_clr : OUT STD_LOGIC;
      SM4_vld_in : IN STD_LOGIC;
      SM4_vld_out : OUT STD_LOGIC;
      SM5_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM5_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM5_dir : OUT STD_LOGIC;
      SM5_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM5_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM5_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM5_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM5_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM5_ramp_up : OUT STD_LOGIC;
      SM5_ramp_dwn : OUT STD_LOGIC;
      SM5_spd_chg : OUT STD_LOGIC;
      SM5_slw_stps : OUT STD_LOGIC;
      SM5_fst_stps : OUT STD_LOGIC;
      SM5_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM5_irq_mask : OUT STD_LOGIC;
      SM5_irq_in : IN STD_LOGIC;
      SM5_irq_clr : OUT STD_LOGIC;
      SM5_vld_in : IN STD_LOGIC;
      SM5_vld_out : OUT STD_LOGIC;
      SM6_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM6_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM6_dir : OUT STD_LOGIC;
      SM6_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM6_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM6_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM6_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM6_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM6_ramp_up : OUT STD_LOGIC;
      SM6_ramp_dwn : OUT STD_LOGIC;
      SM6_spd_chg : OUT STD_LOGIC;
      SM6_slw_stps : OUT STD_LOGIC;
      SM6_fst_stps : OUT STD_LOGIC;
      SM6_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM6_irq_mask : OUT STD_LOGIC;
      SM6_irq_in : IN STD_LOGIC;
      SM6_irq_clr : OUT STD_LOGIC;
      SM6_vld_in : IN STD_LOGIC;
      SM6_vld_out : OUT STD_LOGIC;
      SM7_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM7_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM7_dir : OUT STD_LOGIC;
      SM7_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM7_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM7_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM7_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM7_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM7_ramp_up : OUT STD_LOGIC;
      SM7_ramp_dwn : OUT STD_LOGIC;
      SM7_spd_chg : OUT STD_LOGIC;
      SM7_slw_stps : OUT STD_LOGIC;
      SM7_fst_stps : OUT STD_LOGIC;
      SM7_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM7_irq_mask : OUT STD_LOGIC;
      SM7_irq_in : IN STD_LOGIC;
      SM7_irq_clr : OUT STD_LOGIC;
      SM7_vld_in : IN STD_LOGIC;
      SM7_vld_out : OUT STD_LOGIC;
      SM8_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM8_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM8_dir : OUT STD_LOGIC;
      SM8_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM8_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM8_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM8_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM8_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM8_ramp_up : OUT STD_LOGIC;
      SM8_ramp_dwn : OUT STD_LOGIC;
      SM8_spd_chg : OUT STD_LOGIC;
      SM8_slw_stps : OUT STD_LOGIC;
      SM8_fst_stps : OUT STD_LOGIC;
      SM8_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM8_irq_mask : OUT STD_LOGIC;
      SM8_irq_in : IN STD_LOGIC;
      SM8_irq_clr : OUT STD_LOGIC;
      SM8_vld_in : IN STD_LOGIC;
      SM8_vld_out : OUT STD_LOGIC;
      SM9_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM9_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM9_dir : OUT STD_LOGIC;
      SM9_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM9_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM9_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM9_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM9_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM9_ramp_up : OUT STD_LOGIC;
      SM9_ramp_dwn : OUT STD_LOGIC;
      SM9_spd_chg : OUT STD_LOGIC;
      SM9_slw_stps : OUT STD_LOGIC;
      SM9_fst_stps : OUT STD_LOGIC;
      SM9_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM9_irq_mask : OUT STD_LOGIC;
      SM9_irq_in : IN STD_LOGIC;
      SM9_irq_clr : OUT STD_LOGIC;
      SM9_vld_in : IN STD_LOGIC;
      SM9_vld_out : OUT STD_LOGIC;
      SM10_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM10_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM10_dir : OUT STD_LOGIC;
      SM10_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM10_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM10_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM10_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM10_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM10_ramp_up : OUT STD_LOGIC;
      SM10_ramp_dwn : OUT STD_LOGIC;
      SM10_spd_chg : OUT STD_LOGIC;
      SM10_slw_stps : OUT STD_LOGIC;
      SM10_fst_stps : OUT STD_LOGIC;
      SM10_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM10_irq_mask : OUT STD_LOGIC;
      SM10_irq_in : IN STD_LOGIC;
      SM10_irq_clr : OUT STD_LOGIC;
      SM10_vld_in : IN STD_LOGIC;
      SM10_vld_out : OUT STD_LOGIC;
      SM11_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM11_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM11_dir : OUT STD_LOGIC;
      SM11_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM11_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM11_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM11_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM11_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM11_ramp_up : OUT STD_LOGIC;
      SM11_ramp_dwn : OUT STD_LOGIC;
      SM11_spd_chg : OUT STD_LOGIC;
      SM11_slw_stps : OUT STD_LOGIC;
      SM11_fst_stps : OUT STD_LOGIC;
      SM11_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM11_irq_mask : OUT STD_LOGIC;
      SM11_irq_in : IN STD_LOGIC;
      SM11_irq_clr : OUT STD_LOGIC;
      SM11_vld_in : IN STD_LOGIC;
      SM11_vld_out : OUT STD_LOGIC;
      SM12_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM12_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM12_dir : OUT STD_LOGIC;
      SM12_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM12_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM12_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM12_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM12_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM12_ramp_up : OUT STD_LOGIC;
      SM12_ramp_dwn : OUT STD_LOGIC;
      SM12_spd_chg : OUT STD_LOGIC;
      SM12_slw_stps : OUT STD_LOGIC;
      SM12_fst_stps : OUT STD_LOGIC;
      SM12_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM12_irq_mask : OUT STD_LOGIC;
      SM12_irq_in : IN STD_LOGIC;
      SM12_irq_clr : OUT STD_LOGIC;
      SM12_vld_in : IN STD_LOGIC;
      SM12_vld_out : OUT STD_LOGIC;
      SM13_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM13_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM13_dir : OUT STD_LOGIC;
      SM13_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM13_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM13_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM13_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM13_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM13_ramp_up : OUT STD_LOGIC;
      SM13_ramp_dwn : OUT STD_LOGIC;
      SM13_spd_chg : OUT STD_LOGIC;
      SM13_slw_stps : OUT STD_LOGIC;
      SM13_fst_stps : OUT STD_LOGIC;
      SM13_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM13_irq_mask : OUT STD_LOGIC;
      SM13_irq_in : IN STD_LOGIC;
      SM13_irq_clr : OUT STD_LOGIC;
      SM13_vld_in : IN STD_LOGIC;
      SM13_vld_out : OUT STD_LOGIC;
      SM14_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM14_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM14_dir : OUT STD_LOGIC;
      SM14_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM14_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM14_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM14_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM14_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM14_ramp_up : OUT STD_LOGIC;
      SM14_ramp_dwn : OUT STD_LOGIC;
      SM14_spd_chg : OUT STD_LOGIC;
      SM14_slw_stps : OUT STD_LOGIC;
      SM14_fst_stps : OUT STD_LOGIC;
      SM14_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM14_irq_mask : OUT STD_LOGIC;
      SM14_irq_in : IN STD_LOGIC;
      SM14_irq_clr : OUT STD_LOGIC;
      SM14_vld_in : IN STD_LOGIC;
      SM14_vld_out : OUT STD_LOGIC;
      SM15_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM15_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM15_dir : OUT STD_LOGIC;
      SM15_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM15_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM15_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM15_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM15_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM15_ramp_up : OUT STD_LOGIC;
      SM15_ramp_dwn : OUT STD_LOGIC;
      SM15_spd_chg : OUT STD_LOGIC;
      SM15_slw_stps : OUT STD_LOGIC;
      SM15_fst_stps : OUT STD_LOGIC;
      SM15_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM15_irq_mask : OUT STD_LOGIC;
      SM15_irq_in : IN STD_LOGIC;
      SM15_irq_clr : OUT STD_LOGIC;
      SM15_vld_in : IN STD_LOGIC;
      SM15_vld_out : OUT STD_LOGIC;
      SM16_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM16_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM16_dir : OUT STD_LOGIC;
      SM16_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM16_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM16_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM16_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM16_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM16_ramp_up : OUT STD_LOGIC;
      SM16_ramp_dwn : OUT STD_LOGIC;
      SM16_spd_chg : OUT STD_LOGIC;
      SM16_slw_stps : OUT STD_LOGIC;
      SM16_fst_stps : OUT STD_LOGIC;
      SM16_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM16_irq_mask : OUT STD_LOGIC;
      SM16_irq_in : IN STD_LOGIC;
      SM16_irq_clr : OUT STD_LOGIC;
      SM16_vld_in : IN STD_LOGIC;
      SM16_vld_out : OUT STD_LOGIC;
      SM17_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM17_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM17_dir : OUT STD_LOGIC;
      SM17_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM17_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM17_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM17_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM17_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM17_ramp_up : OUT STD_LOGIC;
      SM17_ramp_dwn : OUT STD_LOGIC;
      SM17_spd_chg : OUT STD_LOGIC;
      SM17_slw_stps : OUT STD_LOGIC;
      SM17_fst_stps : OUT STD_LOGIC;
      SM17_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM17_irq_mask : OUT STD_LOGIC;
      SM17_irq_in : IN STD_LOGIC;
      SM17_irq_clr : OUT STD_LOGIC;
      SM17_vld_in : IN STD_LOGIC;
      SM17_vld_out : OUT STD_LOGIC;
      SM18_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM18_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM18_dir : OUT STD_LOGIC;
      SM18_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM18_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM18_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM18_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM18_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM18_ramp_up : OUT STD_LOGIC;
      SM18_ramp_dwn : OUT STD_LOGIC;
      SM18_spd_chg : OUT STD_LOGIC;
      SM18_slw_stps : OUT STD_LOGIC;
      SM18_fst_stps : OUT STD_LOGIC;
      SM18_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM18_irq_mask : OUT STD_LOGIC;
      SM18_irq_in : IN STD_LOGIC;
      SM18_irq_clr : OUT STD_LOGIC;
      SM18_vld_in : IN STD_LOGIC;
      SM18_vld_out : OUT STD_LOGIC;
      SM19_tgt_ACC : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      SM19_tgt_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM19_dir : OUT STD_LOGIC;
      SM19_load : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM19_res : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM19_init_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      SM19_cnt_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM19_cnt_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SM19_ramp_up : OUT STD_LOGIC;
      SM19_ramp_dwn : OUT STD_LOGIC;
      SM19_spd_chg : OUT STD_LOGIC;
      SM19_slw_stps : OUT STD_LOGIC;
      SM19_fst_stps : OUT STD_LOGIC;
      SM19_running : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SM19_irq_mask : OUT STD_LOGIC;
      SM19_irq_in : IN STD_LOGIC;
      SM19_irq_clr : OUT STD_LOGIC;
      SM19_vld_in : IN STD_LOGIC;
      SM19_vld_out : OUT STD_LOGIC;
      SM_irqs : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      SM_irq : OUT STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT SM_regs_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI:SM0:SM1:SM2:SM3:SM4:SM5:SM6:SM7:SM8:SM9:SM10:SM11:SM12:SM13:SM14:SM15:SM16:SM17:SM18:SM19, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 322, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBU" & 
"F_OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SM_irq: SIGNAL IS "XIL_INTERFACENAME SM_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF SM_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 SM_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM19_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM19 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM18_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM18 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM17_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM17 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM16_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM16 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM15_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM15 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM14_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM14 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM13_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM13 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM12_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM12 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM11_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM11 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM10_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM10 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM9_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM9 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM8_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM8 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM7_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM7 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM6_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM6 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM5_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM5 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM4_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM4 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM3_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM3 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM2_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM2 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM1_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM1 tgt_ACC";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 running";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 res";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 load";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 dir";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF SM0_tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM0 tgt_ACC";
BEGIN
  U0 : SM_regs_v1_0
    GENERIC MAP (
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 11
    )
    PORT MAP (
      SM0_tgt_ACC => SM0_tgt_ACC,
      SM0_tgt_EC => SM0_tgt_EC,
      SM0_dir => SM0_dir,
      SM0_load => SM0_load,
      SM0_res => SM0_res,
      SM0_init_EC => SM0_init_EC,
      SM0_cnt_o => SM0_cnt_o,
      SM0_cnt_i => SM0_cnt_i,
      SM0_ramp_up => SM0_ramp_up,
      SM0_ramp_dwn => SM0_ramp_dwn,
      SM0_spd_chg => SM0_spd_chg,
      SM0_slw_stps => SM0_slw_stps,
      SM0_fst_stps => SM0_fst_stps,
      SM0_running => SM0_running,
      SM0_irq_mask => SM0_irq_mask,
      SM0_irq_in => SM0_irq_in,
      SM0_irq_clr => SM0_irq_clr,
      SM0_vld_in => SM0_vld_in,
      SM0_vld_out => SM0_vld_out,
      SM1_tgt_ACC => SM1_tgt_ACC,
      SM1_tgt_EC => SM1_tgt_EC,
      SM1_dir => SM1_dir,
      SM1_load => SM1_load,
      SM1_res => SM1_res,
      SM1_init_EC => SM1_init_EC,
      SM1_cnt_o => SM1_cnt_o,
      SM1_cnt_i => SM1_cnt_i,
      SM1_ramp_up => SM1_ramp_up,
      SM1_ramp_dwn => SM1_ramp_dwn,
      SM1_spd_chg => SM1_spd_chg,
      SM1_slw_stps => SM1_slw_stps,
      SM1_fst_stps => SM1_fst_stps,
      SM1_running => SM1_running,
      SM1_irq_mask => SM1_irq_mask,
      SM1_irq_in => SM1_irq_in,
      SM1_irq_clr => SM1_irq_clr,
      SM1_vld_in => SM1_vld_in,
      SM1_vld_out => SM1_vld_out,
      SM2_tgt_ACC => SM2_tgt_ACC,
      SM2_tgt_EC => SM2_tgt_EC,
      SM2_dir => SM2_dir,
      SM2_load => SM2_load,
      SM2_res => SM2_res,
      SM2_init_EC => SM2_init_EC,
      SM2_cnt_o => SM2_cnt_o,
      SM2_cnt_i => SM2_cnt_i,
      SM2_ramp_up => SM2_ramp_up,
      SM2_ramp_dwn => SM2_ramp_dwn,
      SM2_spd_chg => SM2_spd_chg,
      SM2_slw_stps => SM2_slw_stps,
      SM2_fst_stps => SM2_fst_stps,
      SM2_running => SM2_running,
      SM2_irq_mask => SM2_irq_mask,
      SM2_irq_in => SM2_irq_in,
      SM2_irq_clr => SM2_irq_clr,
      SM2_vld_in => SM2_vld_in,
      SM2_vld_out => SM2_vld_out,
      SM3_tgt_ACC => SM3_tgt_ACC,
      SM3_tgt_EC => SM3_tgt_EC,
      SM3_dir => SM3_dir,
      SM3_load => SM3_load,
      SM3_res => SM3_res,
      SM3_init_EC => SM3_init_EC,
      SM3_cnt_o => SM3_cnt_o,
      SM3_cnt_i => SM3_cnt_i,
      SM3_ramp_up => SM3_ramp_up,
      SM3_ramp_dwn => SM3_ramp_dwn,
      SM3_spd_chg => SM3_spd_chg,
      SM3_slw_stps => SM3_slw_stps,
      SM3_fst_stps => SM3_fst_stps,
      SM3_running => SM3_running,
      SM3_irq_mask => SM3_irq_mask,
      SM3_irq_in => SM3_irq_in,
      SM3_irq_clr => SM3_irq_clr,
      SM3_vld_in => SM3_vld_in,
      SM3_vld_out => SM3_vld_out,
      SM4_tgt_ACC => SM4_tgt_ACC,
      SM4_tgt_EC => SM4_tgt_EC,
      SM4_dir => SM4_dir,
      SM4_load => SM4_load,
      SM4_res => SM4_res,
      SM4_init_EC => SM4_init_EC,
      SM4_cnt_o => SM4_cnt_o,
      SM4_cnt_i => SM4_cnt_i,
      SM4_ramp_up => SM4_ramp_up,
      SM4_ramp_dwn => SM4_ramp_dwn,
      SM4_spd_chg => SM4_spd_chg,
      SM4_slw_stps => SM4_slw_stps,
      SM4_fst_stps => SM4_fst_stps,
      SM4_running => SM4_running,
      SM4_irq_mask => SM4_irq_mask,
      SM4_irq_in => SM4_irq_in,
      SM4_irq_clr => SM4_irq_clr,
      SM4_vld_in => SM4_vld_in,
      SM4_vld_out => SM4_vld_out,
      SM5_tgt_ACC => SM5_tgt_ACC,
      SM5_tgt_EC => SM5_tgt_EC,
      SM5_dir => SM5_dir,
      SM5_load => SM5_load,
      SM5_res => SM5_res,
      SM5_init_EC => SM5_init_EC,
      SM5_cnt_o => SM5_cnt_o,
      SM5_cnt_i => SM5_cnt_i,
      SM5_ramp_up => SM5_ramp_up,
      SM5_ramp_dwn => SM5_ramp_dwn,
      SM5_spd_chg => SM5_spd_chg,
      SM5_slw_stps => SM5_slw_stps,
      SM5_fst_stps => SM5_fst_stps,
      SM5_running => SM5_running,
      SM5_irq_mask => SM5_irq_mask,
      SM5_irq_in => SM5_irq_in,
      SM5_irq_clr => SM5_irq_clr,
      SM5_vld_in => SM5_vld_in,
      SM5_vld_out => SM5_vld_out,
      SM6_tgt_ACC => SM6_tgt_ACC,
      SM6_tgt_EC => SM6_tgt_EC,
      SM6_dir => SM6_dir,
      SM6_load => SM6_load,
      SM6_res => SM6_res,
      SM6_init_EC => SM6_init_EC,
      SM6_cnt_o => SM6_cnt_o,
      SM6_cnt_i => SM6_cnt_i,
      SM6_ramp_up => SM6_ramp_up,
      SM6_ramp_dwn => SM6_ramp_dwn,
      SM6_spd_chg => SM6_spd_chg,
      SM6_slw_stps => SM6_slw_stps,
      SM6_fst_stps => SM6_fst_stps,
      SM6_running => SM6_running,
      SM6_irq_mask => SM6_irq_mask,
      SM6_irq_in => SM6_irq_in,
      SM6_irq_clr => SM6_irq_clr,
      SM6_vld_in => SM6_vld_in,
      SM6_vld_out => SM6_vld_out,
      SM7_tgt_ACC => SM7_tgt_ACC,
      SM7_tgt_EC => SM7_tgt_EC,
      SM7_dir => SM7_dir,
      SM7_load => SM7_load,
      SM7_res => SM7_res,
      SM7_init_EC => SM7_init_EC,
      SM7_cnt_o => SM7_cnt_o,
      SM7_cnt_i => SM7_cnt_i,
      SM7_ramp_up => SM7_ramp_up,
      SM7_ramp_dwn => SM7_ramp_dwn,
      SM7_spd_chg => SM7_spd_chg,
      SM7_slw_stps => SM7_slw_stps,
      SM7_fst_stps => SM7_fst_stps,
      SM7_running => SM7_running,
      SM7_irq_mask => SM7_irq_mask,
      SM7_irq_in => SM7_irq_in,
      SM7_irq_clr => SM7_irq_clr,
      SM7_vld_in => SM7_vld_in,
      SM7_vld_out => SM7_vld_out,
      SM8_tgt_ACC => SM8_tgt_ACC,
      SM8_tgt_EC => SM8_tgt_EC,
      SM8_dir => SM8_dir,
      SM8_load => SM8_load,
      SM8_res => SM8_res,
      SM8_init_EC => SM8_init_EC,
      SM8_cnt_o => SM8_cnt_o,
      SM8_cnt_i => SM8_cnt_i,
      SM8_ramp_up => SM8_ramp_up,
      SM8_ramp_dwn => SM8_ramp_dwn,
      SM8_spd_chg => SM8_spd_chg,
      SM8_slw_stps => SM8_slw_stps,
      SM8_fst_stps => SM8_fst_stps,
      SM8_running => SM8_running,
      SM8_irq_mask => SM8_irq_mask,
      SM8_irq_in => SM8_irq_in,
      SM8_irq_clr => SM8_irq_clr,
      SM8_vld_in => SM8_vld_in,
      SM8_vld_out => SM8_vld_out,
      SM9_tgt_ACC => SM9_tgt_ACC,
      SM9_tgt_EC => SM9_tgt_EC,
      SM9_dir => SM9_dir,
      SM9_load => SM9_load,
      SM9_res => SM9_res,
      SM9_init_EC => SM9_init_EC,
      SM9_cnt_o => SM9_cnt_o,
      SM9_cnt_i => SM9_cnt_i,
      SM9_ramp_up => SM9_ramp_up,
      SM9_ramp_dwn => SM9_ramp_dwn,
      SM9_spd_chg => SM9_spd_chg,
      SM9_slw_stps => SM9_slw_stps,
      SM9_fst_stps => SM9_fst_stps,
      SM9_running => SM9_running,
      SM9_irq_mask => SM9_irq_mask,
      SM9_irq_in => SM9_irq_in,
      SM9_irq_clr => SM9_irq_clr,
      SM9_vld_in => SM9_vld_in,
      SM9_vld_out => SM9_vld_out,
      SM10_tgt_ACC => SM10_tgt_ACC,
      SM10_tgt_EC => SM10_tgt_EC,
      SM10_dir => SM10_dir,
      SM10_load => SM10_load,
      SM10_res => SM10_res,
      SM10_init_EC => SM10_init_EC,
      SM10_cnt_o => SM10_cnt_o,
      SM10_cnt_i => SM10_cnt_i,
      SM10_ramp_up => SM10_ramp_up,
      SM10_ramp_dwn => SM10_ramp_dwn,
      SM10_spd_chg => SM10_spd_chg,
      SM10_slw_stps => SM10_slw_stps,
      SM10_fst_stps => SM10_fst_stps,
      SM10_running => SM10_running,
      SM10_irq_mask => SM10_irq_mask,
      SM10_irq_in => SM10_irq_in,
      SM10_irq_clr => SM10_irq_clr,
      SM10_vld_in => SM10_vld_in,
      SM10_vld_out => SM10_vld_out,
      SM11_tgt_ACC => SM11_tgt_ACC,
      SM11_tgt_EC => SM11_tgt_EC,
      SM11_dir => SM11_dir,
      SM11_load => SM11_load,
      SM11_res => SM11_res,
      SM11_init_EC => SM11_init_EC,
      SM11_cnt_o => SM11_cnt_o,
      SM11_cnt_i => SM11_cnt_i,
      SM11_ramp_up => SM11_ramp_up,
      SM11_ramp_dwn => SM11_ramp_dwn,
      SM11_spd_chg => SM11_spd_chg,
      SM11_slw_stps => SM11_slw_stps,
      SM11_fst_stps => SM11_fst_stps,
      SM11_running => SM11_running,
      SM11_irq_mask => SM11_irq_mask,
      SM11_irq_in => SM11_irq_in,
      SM11_irq_clr => SM11_irq_clr,
      SM11_vld_in => SM11_vld_in,
      SM11_vld_out => SM11_vld_out,
      SM12_tgt_ACC => SM12_tgt_ACC,
      SM12_tgt_EC => SM12_tgt_EC,
      SM12_dir => SM12_dir,
      SM12_load => SM12_load,
      SM12_res => SM12_res,
      SM12_init_EC => SM12_init_EC,
      SM12_cnt_o => SM12_cnt_o,
      SM12_cnt_i => SM12_cnt_i,
      SM12_ramp_up => SM12_ramp_up,
      SM12_ramp_dwn => SM12_ramp_dwn,
      SM12_spd_chg => SM12_spd_chg,
      SM12_slw_stps => SM12_slw_stps,
      SM12_fst_stps => SM12_fst_stps,
      SM12_running => SM12_running,
      SM12_irq_mask => SM12_irq_mask,
      SM12_irq_in => SM12_irq_in,
      SM12_irq_clr => SM12_irq_clr,
      SM12_vld_in => SM12_vld_in,
      SM12_vld_out => SM12_vld_out,
      SM13_tgt_ACC => SM13_tgt_ACC,
      SM13_tgt_EC => SM13_tgt_EC,
      SM13_dir => SM13_dir,
      SM13_load => SM13_load,
      SM13_res => SM13_res,
      SM13_init_EC => SM13_init_EC,
      SM13_cnt_o => SM13_cnt_o,
      SM13_cnt_i => SM13_cnt_i,
      SM13_ramp_up => SM13_ramp_up,
      SM13_ramp_dwn => SM13_ramp_dwn,
      SM13_spd_chg => SM13_spd_chg,
      SM13_slw_stps => SM13_slw_stps,
      SM13_fst_stps => SM13_fst_stps,
      SM13_running => SM13_running,
      SM13_irq_mask => SM13_irq_mask,
      SM13_irq_in => SM13_irq_in,
      SM13_irq_clr => SM13_irq_clr,
      SM13_vld_in => SM13_vld_in,
      SM13_vld_out => SM13_vld_out,
      SM14_tgt_ACC => SM14_tgt_ACC,
      SM14_tgt_EC => SM14_tgt_EC,
      SM14_dir => SM14_dir,
      SM14_load => SM14_load,
      SM14_res => SM14_res,
      SM14_init_EC => SM14_init_EC,
      SM14_cnt_o => SM14_cnt_o,
      SM14_cnt_i => SM14_cnt_i,
      SM14_ramp_up => SM14_ramp_up,
      SM14_ramp_dwn => SM14_ramp_dwn,
      SM14_spd_chg => SM14_spd_chg,
      SM14_slw_stps => SM14_slw_stps,
      SM14_fst_stps => SM14_fst_stps,
      SM14_running => SM14_running,
      SM14_irq_mask => SM14_irq_mask,
      SM14_irq_in => SM14_irq_in,
      SM14_irq_clr => SM14_irq_clr,
      SM14_vld_in => SM14_vld_in,
      SM14_vld_out => SM14_vld_out,
      SM15_tgt_ACC => SM15_tgt_ACC,
      SM15_tgt_EC => SM15_tgt_EC,
      SM15_dir => SM15_dir,
      SM15_load => SM15_load,
      SM15_res => SM15_res,
      SM15_init_EC => SM15_init_EC,
      SM15_cnt_o => SM15_cnt_o,
      SM15_cnt_i => SM15_cnt_i,
      SM15_ramp_up => SM15_ramp_up,
      SM15_ramp_dwn => SM15_ramp_dwn,
      SM15_spd_chg => SM15_spd_chg,
      SM15_slw_stps => SM15_slw_stps,
      SM15_fst_stps => SM15_fst_stps,
      SM15_running => SM15_running,
      SM15_irq_mask => SM15_irq_mask,
      SM15_irq_in => SM15_irq_in,
      SM15_irq_clr => SM15_irq_clr,
      SM15_vld_in => SM15_vld_in,
      SM15_vld_out => SM15_vld_out,
      SM16_tgt_ACC => SM16_tgt_ACC,
      SM16_tgt_EC => SM16_tgt_EC,
      SM16_dir => SM16_dir,
      SM16_load => SM16_load,
      SM16_res => SM16_res,
      SM16_init_EC => SM16_init_EC,
      SM16_cnt_o => SM16_cnt_o,
      SM16_cnt_i => SM16_cnt_i,
      SM16_ramp_up => SM16_ramp_up,
      SM16_ramp_dwn => SM16_ramp_dwn,
      SM16_spd_chg => SM16_spd_chg,
      SM16_slw_stps => SM16_slw_stps,
      SM16_fst_stps => SM16_fst_stps,
      SM16_running => SM16_running,
      SM16_irq_mask => SM16_irq_mask,
      SM16_irq_in => SM16_irq_in,
      SM16_irq_clr => SM16_irq_clr,
      SM16_vld_in => SM16_vld_in,
      SM16_vld_out => SM16_vld_out,
      SM17_tgt_ACC => SM17_tgt_ACC,
      SM17_tgt_EC => SM17_tgt_EC,
      SM17_dir => SM17_dir,
      SM17_load => SM17_load,
      SM17_res => SM17_res,
      SM17_init_EC => SM17_init_EC,
      SM17_cnt_o => SM17_cnt_o,
      SM17_cnt_i => SM17_cnt_i,
      SM17_ramp_up => SM17_ramp_up,
      SM17_ramp_dwn => SM17_ramp_dwn,
      SM17_spd_chg => SM17_spd_chg,
      SM17_slw_stps => SM17_slw_stps,
      SM17_fst_stps => SM17_fst_stps,
      SM17_running => SM17_running,
      SM17_irq_mask => SM17_irq_mask,
      SM17_irq_in => SM17_irq_in,
      SM17_irq_clr => SM17_irq_clr,
      SM17_vld_in => SM17_vld_in,
      SM17_vld_out => SM17_vld_out,
      SM18_tgt_ACC => SM18_tgt_ACC,
      SM18_tgt_EC => SM18_tgt_EC,
      SM18_dir => SM18_dir,
      SM18_load => SM18_load,
      SM18_res => SM18_res,
      SM18_init_EC => SM18_init_EC,
      SM18_cnt_o => SM18_cnt_o,
      SM18_cnt_i => SM18_cnt_i,
      SM18_ramp_up => SM18_ramp_up,
      SM18_ramp_dwn => SM18_ramp_dwn,
      SM18_spd_chg => SM18_spd_chg,
      SM18_slw_stps => SM18_slw_stps,
      SM18_fst_stps => SM18_fst_stps,
      SM18_running => SM18_running,
      SM18_irq_mask => SM18_irq_mask,
      SM18_irq_in => SM18_irq_in,
      SM18_irq_clr => SM18_irq_clr,
      SM18_vld_in => SM18_vld_in,
      SM18_vld_out => SM18_vld_out,
      SM19_tgt_ACC => SM19_tgt_ACC,
      SM19_tgt_EC => SM19_tgt_EC,
      SM19_dir => SM19_dir,
      SM19_load => SM19_load,
      SM19_res => SM19_res,
      SM19_init_EC => SM19_init_EC,
      SM19_cnt_o => SM19_cnt_o,
      SM19_cnt_i => SM19_cnt_i,
      SM19_ramp_up => SM19_ramp_up,
      SM19_ramp_dwn => SM19_ramp_dwn,
      SM19_spd_chg => SM19_spd_chg,
      SM19_slw_stps => SM19_slw_stps,
      SM19_fst_stps => SM19_fst_stps,
      SM19_running => SM19_running,
      SM19_irq_mask => SM19_irq_mask,
      SM19_irq_in => SM19_irq_in,
      SM19_irq_clr => SM19_irq_clr,
      SM19_vld_in => SM19_vld_in,
      SM19_vld_out => SM19_vld_out,
      SM_irqs => SM_irqs,
      SM_irq => SM_irq,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
END S7_SM_regs_0_0_arch;
