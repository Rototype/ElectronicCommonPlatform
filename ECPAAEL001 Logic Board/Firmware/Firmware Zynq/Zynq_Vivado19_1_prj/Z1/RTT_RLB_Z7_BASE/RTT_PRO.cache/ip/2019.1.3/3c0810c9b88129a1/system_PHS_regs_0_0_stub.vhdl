-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu May 14 13:24:58 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_PHS_regs_0_0_stub.vhdl
-- Design      : system_PHS_regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    PHS0_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS0_status : in STD_LOGIC;
    PHS0_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS0_irq0_L2S : in STD_LOGIC;
    PHS0_irq1_S2L : in STD_LOGIC;
    PHS0_irq0_clr : out STD_LOGIC;
    PHS0_irq1_clr : out STD_LOGIC;
    PHS0_vld_out : out STD_LOGIC;
    PHS0_vld_in : in STD_LOGIC;
    PHS1_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS1_status : in STD_LOGIC;
    PHS1_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS1_irq0_L2S : in STD_LOGIC;
    PHS1_irq1_S2L : in STD_LOGIC;
    PHS1_irq0_clr : out STD_LOGIC;
    PHS1_irq1_clr : out STD_LOGIC;
    PHS1_vld_out : out STD_LOGIC;
    PHS1_vld_in : in STD_LOGIC;
    PHS2_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS2_status : in STD_LOGIC;
    PHS2_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS2_irq0_L2S : in STD_LOGIC;
    PHS2_irq1_S2L : in STD_LOGIC;
    PHS2_irq0_clr : out STD_LOGIC;
    PHS2_irq1_clr : out STD_LOGIC;
    PHS2_vld_out : out STD_LOGIC;
    PHS2_vld_in : in STD_LOGIC;
    PHS3_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS3_status : in STD_LOGIC;
    PHS3_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS3_irq0_L2S : in STD_LOGIC;
    PHS3_irq1_S2L : in STD_LOGIC;
    PHS3_irq0_clr : out STD_LOGIC;
    PHS3_irq1_clr : out STD_LOGIC;
    PHS3_vld_out : out STD_LOGIC;
    PHS3_vld_in : in STD_LOGIC;
    PHS4_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS4_status : in STD_LOGIC;
    PHS4_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS4_irq0_L2S : in STD_LOGIC;
    PHS4_irq1_S2L : in STD_LOGIC;
    PHS4_irq0_clr : out STD_LOGIC;
    PHS4_irq1_clr : out STD_LOGIC;
    PHS4_vld_out : out STD_LOGIC;
    PHS4_vld_in : in STD_LOGIC;
    PHS5_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS5_status : in STD_LOGIC;
    PHS5_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS5_irq0_L2S : in STD_LOGIC;
    PHS5_irq1_S2L : in STD_LOGIC;
    PHS5_irq0_clr : out STD_LOGIC;
    PHS5_irq1_clr : out STD_LOGIC;
    PHS5_vld_out : out STD_LOGIC;
    PHS5_vld_in : in STD_LOGIC;
    PHS6_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS6_status : in STD_LOGIC;
    PHS6_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS6_irq0_L2S : in STD_LOGIC;
    PHS6_irq1_S2L : in STD_LOGIC;
    PHS6_irq0_clr : out STD_LOGIC;
    PHS6_irq1_clr : out STD_LOGIC;
    PHS6_vld_out : out STD_LOGIC;
    PHS6_vld_in : in STD_LOGIC;
    PHS7_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS7_status : in STD_LOGIC;
    PHS7_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS7_irq0_L2S : in STD_LOGIC;
    PHS7_irq1_S2L : in STD_LOGIC;
    PHS7_irq0_clr : out STD_LOGIC;
    PHS7_irq1_clr : out STD_LOGIC;
    PHS7_vld_out : out STD_LOGIC;
    PHS7_vld_in : in STD_LOGIC;
    PHS8_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS8_status : in STD_LOGIC;
    PHS8_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS8_irq0_L2S : in STD_LOGIC;
    PHS8_irq1_S2L : in STD_LOGIC;
    PHS8_irq0_clr : out STD_LOGIC;
    PHS8_irq1_clr : out STD_LOGIC;
    PHS8_vld_out : out STD_LOGIC;
    PHS8_vld_in : in STD_LOGIC;
    PHS9_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS9_status : in STD_LOGIC;
    PHS9_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS9_irq0_L2S : in STD_LOGIC;
    PHS9_irq1_S2L : in STD_LOGIC;
    PHS9_irq0_clr : out STD_LOGIC;
    PHS9_irq1_clr : out STD_LOGIC;
    PHS9_vld_out : out STD_LOGIC;
    PHS9_vld_in : in STD_LOGIC;
    PHS10_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS10_status : in STD_LOGIC;
    PHS10_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS10_irq0_L2S : in STD_LOGIC;
    PHS10_irq1_S2L : in STD_LOGIC;
    PHS10_irq0_clr : out STD_LOGIC;
    PHS10_irq1_clr : out STD_LOGIC;
    PHS10_vld_out : out STD_LOGIC;
    PHS10_vld_in : in STD_LOGIC;
    PHS11_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS11_status : in STD_LOGIC;
    PHS11_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS11_irq0_L2S : in STD_LOGIC;
    PHS11_irq1_S2L : in STD_LOGIC;
    PHS11_irq0_clr : out STD_LOGIC;
    PHS11_irq1_clr : out STD_LOGIC;
    PHS11_vld_out : out STD_LOGIC;
    PHS11_vld_in : in STD_LOGIC;
    PHS12_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS12_status : in STD_LOGIC;
    PHS12_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS12_irq0_L2S : in STD_LOGIC;
    PHS12_irq1_S2L : in STD_LOGIC;
    PHS12_irq0_clr : out STD_LOGIC;
    PHS12_irq1_clr : out STD_LOGIC;
    PHS13_irq1_clr : out STD_LOGIC;
    PHS12_vld_out : out STD_LOGIC;
    PHS12_vld_in : in STD_LOGIC;
    PHS13_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS13_status : in STD_LOGIC;
    PHS13_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS13_irq0_L2S : in STD_LOGIC;
    PHS13_irq1_S2L : in STD_LOGIC;
    PHS13_irq0_clr : out STD_LOGIC;
    PHS13_vld_out : out STD_LOGIC;
    PHS13_vld_in : in STD_LOGIC;
    PHS14_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS14_status : in STD_LOGIC;
    PHS14_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS14_irq0_L2S : in STD_LOGIC;
    PHS14_irq1_S2L : in STD_LOGIC;
    PHS14_irq0_clr : out STD_LOGIC;
    PHS14_irq1_clr : out STD_LOGIC;
    PHS14_vld_out : out STD_LOGIC;
    PHS14_vld_in : in STD_LOGIC;
    PHS15_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS15_status : in STD_LOGIC;
    PHS15_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS15_irq0_L2S : in STD_LOGIC;
    PHS15_irq1_S2L : in STD_LOGIC;
    PHS15_irq0_clr : out STD_LOGIC;
    PHS15_irq1_clr : out STD_LOGIC;
    PHS15_vld_out : out STD_LOGIC;
    PHS15_vld_in : in STD_LOGIC;
    PHS16_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS16_status : in STD_LOGIC;
    PHS16_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS16_irq0_L2S : in STD_LOGIC;
    PHS16_irq1_S2L : in STD_LOGIC;
    PHS16_irq0_clr : out STD_LOGIC;
    PHS16_irq1_clr : out STD_LOGIC;
    PHS16_vld_out : out STD_LOGIC;
    PHS16_vld_in : in STD_LOGIC;
    PHS17_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS17_status : in STD_LOGIC;
    PHS17_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS17_irq0_L2S : in STD_LOGIC;
    PHS17_irq1_S2L : in STD_LOGIC;
    PHS17_irq0_clr : out STD_LOGIC;
    PHS17_irq1_clr : out STD_LOGIC;
    PHS17_vld_out : out STD_LOGIC;
    PHS17_vld_in : in STD_LOGIC;
    PHS18_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS18_status : in STD_LOGIC;
    PHS18_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS18_irq0_L2S : in STD_LOGIC;
    PHS18_irq1_S2L : in STD_LOGIC;
    PHS18_irq0_clr : out STD_LOGIC;
    PHS18_irq1_clr : out STD_LOGIC;
    PHS18_vld_out : out STD_LOGIC;
    PHS18_vld_in : in STD_LOGIC;
    PHS19_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS19_status : in STD_LOGIC;
    PHS19_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS19_irq0_L2S : in STD_LOGIC;
    PHS19_irq1_S2L : in STD_LOGIC;
    PHS19_irq0_clr : out STD_LOGIC;
    PHS19_irq1_clr : out STD_LOGIC;
    PHS19_vld_out : out STD_LOGIC;
    PHS19_vld_in : in STD_LOGIC;
    PHS20_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS20_status : in STD_LOGIC;
    PHS20_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS20_irq0_L2S : in STD_LOGIC;
    PHS20_irq1_S2L : in STD_LOGIC;
    PHS20_irq0_clr : out STD_LOGIC;
    PHS20_irq1_clr : out STD_LOGIC;
    PHS20_vld_out : out STD_LOGIC;
    PHS20_vld_in : in STD_LOGIC;
    PHS21_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS21_status : in STD_LOGIC;
    PHS21_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS21_irq0_L2S : in STD_LOGIC;
    PHS21_irq1_S2L : in STD_LOGIC;
    PHS21_irq0_clr : out STD_LOGIC;
    PHS21_irq1_clr : out STD_LOGIC;
    PHS21_vld_out : out STD_LOGIC;
    PHS21_vld_in : in STD_LOGIC;
    PHS22_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS22_status : in STD_LOGIC;
    PHS22_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS22_irq0_L2S : in STD_LOGIC;
    PHS22_irq1_S2L : in STD_LOGIC;
    PHS22_irq0_clr : out STD_LOGIC;
    PHS22_irq1_clr : out STD_LOGIC;
    PHS22_vld_out : out STD_LOGIC;
    PHS22_vld_in : in STD_LOGIC;
    PHS23_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS23_status : in STD_LOGIC;
    PHS23_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS23_irq0_L2S : in STD_LOGIC;
    PHS23_irq1_S2L : in STD_LOGIC;
    PHS23_irq0_clr : out STD_LOGIC;
    PHS23_irq1_clr : out STD_LOGIC;
    PHS23_vld_out : out STD_LOGIC;
    PHS23_vld_in : in STD_LOGIC;
    PHS24_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS24_status : in STD_LOGIC;
    PHS24_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS24_irq0_L2S : in STD_LOGIC;
    PHS24_irq1_S2L : in STD_LOGIC;
    PHS24_irq0_clr : out STD_LOGIC;
    PHS24_irq1_clr : out STD_LOGIC;
    PHS24_vld_out : out STD_LOGIC;
    PHS24_vld_in : in STD_LOGIC;
    PHS25_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS25_status : in STD_LOGIC;
    PHS25_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS25_irq0_L2S : in STD_LOGIC;
    PHS25_irq1_S2L : in STD_LOGIC;
    PHS25_irq0_clr : out STD_LOGIC;
    PHS25_irq1_clr : out STD_LOGIC;
    PHS25_vld_out : out STD_LOGIC;
    PHS25_vld_in : in STD_LOGIC;
    PHS26_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS26_status : in STD_LOGIC;
    PHS26_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS26_irq0_L2S : in STD_LOGIC;
    PHS26_irq1_S2L : in STD_LOGIC;
    PHS26_irq0_clr : out STD_LOGIC;
    PHS26_irq1_clr : out STD_LOGIC;
    PHS26_vld_out : out STD_LOGIC;
    PHS26_vld_in : in STD_LOGIC;
    PHS27_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS27_status : in STD_LOGIC;
    PHS27_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS27_irq0_L2S : in STD_LOGIC;
    PHS27_irq1_S2L : in STD_LOGIC;
    PHS27_irq0_clr : out STD_LOGIC;
    PHS27_irq1_clr : out STD_LOGIC;
    PHS27_vld_out : out STD_LOGIC;
    PHS27_vld_in : in STD_LOGIC;
    PHS28_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS28_status : in STD_LOGIC;
    PHS28_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS28_irq0_L2S : in STD_LOGIC;
    PHS28_irq1_S2L : in STD_LOGIC;
    PHS28_irq0_clr : out STD_LOGIC;
    PHS28_irq1_clr : out STD_LOGIC;
    PHS28_vld_out : out STD_LOGIC;
    PHS28_vld_in : in STD_LOGIC;
    PHS29_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS29_status : in STD_LOGIC;
    PHS29_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS29_irq0_L2S : in STD_LOGIC;
    PHS29_irq1_S2L : in STD_LOGIC;
    PHS29_irq0_clr : out STD_LOGIC;
    PHS29_irq1_clr : out STD_LOGIC;
    PHS29_vld_out : out STD_LOGIC;
    PHS29_vld_in : in STD_LOGIC;
    PHS30_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS30_status : in STD_LOGIC;
    PHS30_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS30_irq0_L2S : in STD_LOGIC;
    PHS30_irq1_S2L : in STD_LOGIC;
    PHS30_irq0_clr : out STD_LOGIC;
    PHS30_irq1_clr : out STD_LOGIC;
    PHS30_vld_out : out STD_LOGIC;
    PHS30_vld_in : in STD_LOGIC;
    PHS31_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS31_status : in STD_LOGIC;
    PHS31_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS31_irq0_L2S : in STD_LOGIC;
    PHS31_irq1_S2L : in STD_LOGIC;
    PHS31_irq0_clr : out STD_LOGIC;
    PHS31_irq1_clr : out STD_LOGIC;
    PHS31_vld_out : out STD_LOGIC;
    PHS31_vld_in : in STD_LOGIC;
    PHS32_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS32_status : in STD_LOGIC;
    PHS32_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS32_irq0_L2S : in STD_LOGIC;
    PHS32_irq1_S2L : in STD_LOGIC;
    PHS32_irq0_clr : out STD_LOGIC;
    PHS32_irq1_clr : out STD_LOGIC;
    PHS32_vld_out : out STD_LOGIC;
    PHS32_vld_in : in STD_LOGIC;
    PHS33_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS33_status : in STD_LOGIC;
    PHS33_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS33_irq0_L2S : in STD_LOGIC;
    PHS33_irq1_S2L : in STD_LOGIC;
    PHS33_irq0_clr : out STD_LOGIC;
    PHS33_irq1_clr : out STD_LOGIC;
    PHS33_vld_out : out STD_LOGIC;
    PHS33_vld_in : in STD_LOGIC;
    PHS34_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS34_status : in STD_LOGIC;
    PHS34_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS34_irq0_L2S : in STD_LOGIC;
    PHS34_irq1_S2L : in STD_LOGIC;
    PHS34_irq0_clr : out STD_LOGIC;
    PHS34_irq1_clr : out STD_LOGIC;
    PHS34_vld_out : out STD_LOGIC;
    PHS34_vld_in : in STD_LOGIC;
    PHS35_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS35_status : in STD_LOGIC;
    PHS35_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS35_irq0_L2S : in STD_LOGIC;
    PHS35_irq1_S2L : in STD_LOGIC;
    PHS35_irq0_clr : out STD_LOGIC;
    PHS35_irq1_clr : out STD_LOGIC;
    PHS35_vld_out : out STD_LOGIC;
    PHS35_vld_in : in STD_LOGIC;
    PHS36_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS36_status : in STD_LOGIC;
    PHS36_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS36_irq0_L2S : in STD_LOGIC;
    PHS36_irq1_S2L : in STD_LOGIC;
    PHS36_irq0_clr : out STD_LOGIC;
    PHS36_irq1_clr : out STD_LOGIC;
    PHS36_vld_out : out STD_LOGIC;
    PHS36_vld_in : in STD_LOGIC;
    PHS37_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS37_status : in STD_LOGIC;
    PHS37_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS37_irq0_L2S : in STD_LOGIC;
    PHS37_irq1_S2L : in STD_LOGIC;
    PHS37_irq0_clr : out STD_LOGIC;
    PHS37_irq1_clr : out STD_LOGIC;
    PHS37_vld_out : out STD_LOGIC;
    PHS37_vld_in : in STD_LOGIC;
    PHS38_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS38_status : in STD_LOGIC;
    PHS38_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS38_irq0_L2S : in STD_LOGIC;
    PHS38_irq1_S2L : in STD_LOGIC;
    PHS38_irq0_clr : out STD_LOGIC;
    PHS38_irq1_clr : out STD_LOGIC;
    PHS38_vld_out : out STD_LOGIC;
    PHS38_vld_in : in STD_LOGIC;
    PHS39_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS39_status : in STD_LOGIC;
    PHS39_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS39_irq0_L2S : in STD_LOGIC;
    PHS39_irq1_S2L : in STD_LOGIC;
    PHS39_irq0_clr : out STD_LOGIC;
    PHS39_irq1_clr : out STD_LOGIC;
    PHS39_vld_out : out STD_LOGIC;
    PHS39_vld_in : in STD_LOGIC;
    PHS40_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS40_status : in STD_LOGIC;
    PHS40_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS40_irq0_L2S : in STD_LOGIC;
    PHS40_irq1_S2L : in STD_LOGIC;
    PHS40_irq0_clr : out STD_LOGIC;
    PHS40_irq1_clr : out STD_LOGIC;
    PHS40_vld_out : out STD_LOGIC;
    PHS40_vld_in : in STD_LOGIC;
    PHS41_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS41_status : in STD_LOGIC;
    PHS41_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS41_irq0_L2S : in STD_LOGIC;
    PHS41_irq1_S2L : in STD_LOGIC;
    PHS41_irq0_clr : out STD_LOGIC;
    PHS41_irq1_clr : out STD_LOGIC;
    PHS41_vld_out : out STD_LOGIC;
    PHS41_vld_in : in STD_LOGIC;
    PHS42_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS42_status : in STD_LOGIC;
    PHS42_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS42_irq0_L2S : in STD_LOGIC;
    PHS42_irq1_S2L : in STD_LOGIC;
    PHS42_irq0_clr : out STD_LOGIC;
    PHS42_irq1_clr : out STD_LOGIC;
    PHS42_vld_out : out STD_LOGIC;
    PHS42_vld_in : in STD_LOGIC;
    PHS43_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS43_status : in STD_LOGIC;
    PHS43_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS43_irq0_L2S : in STD_LOGIC;
    PHS43_irq1_S2L : in STD_LOGIC;
    PHS43_irq0_clr : out STD_LOGIC;
    PHS43_irq1_clr : out STD_LOGIC;
    PHS43_vld_out : out STD_LOGIC;
    PHS43_vld_in : in STD_LOGIC;
    PHS44_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS44_status : in STD_LOGIC;
    PHS44_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS44_irq0_L2S : in STD_LOGIC;
    PHS44_irq1_S2L : in STD_LOGIC;
    PHS44_irq0_clr : out STD_LOGIC;
    PHS44_irq1_clr : out STD_LOGIC;
    PHS44_vld_out : out STD_LOGIC;
    PHS44_vld_in : in STD_LOGIC;
    PHS45_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS45_status : in STD_LOGIC;
    PHS45_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS45_irq0_L2S : in STD_LOGIC;
    PHS45_irq1_S2L : in STD_LOGIC;
    PHS45_irq0_clr : out STD_LOGIC;
    PHS45_irq1_clr : out STD_LOGIC;
    PHS45_vld_out : out STD_LOGIC;
    PHS45_vld_in : in STD_LOGIC;
    PHS46_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS46_status : in STD_LOGIC;
    PHS46_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS46_irq0_L2S : in STD_LOGIC;
    PHS46_irq1_S2L : in STD_LOGIC;
    PHS46_irq0_clr : out STD_LOGIC;
    PHS46_irq1_clr : out STD_LOGIC;
    PHS46_vld_out : out STD_LOGIC;
    PHS46_vld_in : in STD_LOGIC;
    PHS47_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS47_status : in STD_LOGIC;
    PHS47_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS47_irq0_L2S : in STD_LOGIC;
    PHS47_irq1_S2L : in STD_LOGIC;
    PHS47_irq0_clr : out STD_LOGIC;
    PHS47_irq1_clr : out STD_LOGIC;
    PHS47_vld_out : out STD_LOGIC;
    PHS47_vld_in : in STD_LOGIC;
    PHS48_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS48_status : in STD_LOGIC;
    PHS48_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS48_irq0_L2S : in STD_LOGIC;
    PHS48_irq1_S2L : in STD_LOGIC;
    PHS48_irq0_clr : out STD_LOGIC;
    PHS48_irq1_clr : out STD_LOGIC;
    PHS48_vld_out : out STD_LOGIC;
    PHS48_vld_in : in STD_LOGIC;
    PHS49_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS49_status : in STD_LOGIC;
    PHS49_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS49_irq0_L2S : in STD_LOGIC;
    PHS49_irq1_S2L : in STD_LOGIC;
    PHS49_irq0_clr : out STD_LOGIC;
    PHS49_irq1_clr : out STD_LOGIC;
    PHS49_vld_out : out STD_LOGIC;
    PHS49_vld_in : in STD_LOGIC;
    PHS_irqs_L2S_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_L2S_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irq_L2S_0 : out STD_LOGIC;
    PHS_irq_L2S_1 : out STD_LOGIC;
    PHS_irqs_S2L_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irq_S2L_0 : out STD_LOGIC;
    PHS_irq_S2L_1 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
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
attribute black_box_pad_pin of stub : architecture is "PHS0_pwm_val[9:0],PHS0_status,PHS0_irq_mask[1:0],PHS0_irq0_L2S,PHS0_irq1_S2L,PHS0_irq0_clr,PHS0_irq1_clr,PHS0_vld_out,PHS0_vld_in,PHS1_pwm_val[9:0],PHS1_status,PHS1_irq_mask[1:0],PHS1_irq0_L2S,PHS1_irq1_S2L,PHS1_irq0_clr,PHS1_irq1_clr,PHS1_vld_out,PHS1_vld_in,PHS2_pwm_val[9:0],PHS2_status,PHS2_irq_mask[1:0],PHS2_irq0_L2S,PHS2_irq1_S2L,PHS2_irq0_clr,PHS2_irq1_clr,PHS2_vld_out,PHS2_vld_in,PHS3_pwm_val[9:0],PHS3_status,PHS3_irq_mask[1:0],PHS3_irq0_L2S,PHS3_irq1_S2L,PHS3_irq0_clr,PHS3_irq1_clr,PHS3_vld_out,PHS3_vld_in,PHS4_pwm_val[9:0],PHS4_status,PHS4_irq_mask[1:0],PHS4_irq0_L2S,PHS4_irq1_S2L,PHS4_irq0_clr,PHS4_irq1_clr,PHS4_vld_out,PHS4_vld_in,PHS5_pwm_val[9:0],PHS5_status,PHS5_irq_mask[1:0],PHS5_irq0_L2S,PHS5_irq1_S2L,PHS5_irq0_clr,PHS5_irq1_clr,PHS5_vld_out,PHS5_vld_in,PHS6_pwm_val[9:0],PHS6_status,PHS6_irq_mask[1:0],PHS6_irq0_L2S,PHS6_irq1_S2L,PHS6_irq0_clr,PHS6_irq1_clr,PHS6_vld_out,PHS6_vld_in,PHS7_pwm_val[9:0],PHS7_status,PHS7_irq_mask[1:0],PHS7_irq0_L2S,PHS7_irq1_S2L,PHS7_irq0_clr,PHS7_irq1_clr,PHS7_vld_out,PHS7_vld_in,PHS8_pwm_val[9:0],PHS8_status,PHS8_irq_mask[1:0],PHS8_irq0_L2S,PHS8_irq1_S2L,PHS8_irq0_clr,PHS8_irq1_clr,PHS8_vld_out,PHS8_vld_in,PHS9_pwm_val[9:0],PHS9_status,PHS9_irq_mask[1:0],PHS9_irq0_L2S,PHS9_irq1_S2L,PHS9_irq0_clr,PHS9_irq1_clr,PHS9_vld_out,PHS9_vld_in,PHS10_pwm_val[9:0],PHS10_status,PHS10_irq_mask[1:0],PHS10_irq0_L2S,PHS10_irq1_S2L,PHS10_irq0_clr,PHS10_irq1_clr,PHS10_vld_out,PHS10_vld_in,PHS11_pwm_val[9:0],PHS11_status,PHS11_irq_mask[1:0],PHS11_irq0_L2S,PHS11_irq1_S2L,PHS11_irq0_clr,PHS11_irq1_clr,PHS11_vld_out,PHS11_vld_in,PHS12_pwm_val[9:0],PHS12_status,PHS12_irq_mask[1:0],PHS12_irq0_L2S,PHS12_irq1_S2L,PHS12_irq0_clr,PHS12_irq1_clr,PHS13_irq1_clr,PHS12_vld_out,PHS12_vld_in,PHS13_pwm_val[9:0],PHS13_status,PHS13_irq_mask[1:0],PHS13_irq0_L2S,PHS13_irq1_S2L,PHS13_irq0_clr,PHS13_vld_out,PHS13_vld_in,PHS14_pwm_val[9:0],PHS14_status,PHS14_irq_mask[1:0],PHS14_irq0_L2S,PHS14_irq1_S2L,PHS14_irq0_clr,PHS14_irq1_clr,PHS14_vld_out,PHS14_vld_in,PHS15_pwm_val[9:0],PHS15_status,PHS15_irq_mask[1:0],PHS15_irq0_L2S,PHS15_irq1_S2L,PHS15_irq0_clr,PHS15_irq1_clr,PHS15_vld_out,PHS15_vld_in,PHS16_pwm_val[9:0],PHS16_status,PHS16_irq_mask[1:0],PHS16_irq0_L2S,PHS16_irq1_S2L,PHS16_irq0_clr,PHS16_irq1_clr,PHS16_vld_out,PHS16_vld_in,PHS17_pwm_val[9:0],PHS17_status,PHS17_irq_mask[1:0],PHS17_irq0_L2S,PHS17_irq1_S2L,PHS17_irq0_clr,PHS17_irq1_clr,PHS17_vld_out,PHS17_vld_in,PHS18_pwm_val[9:0],PHS18_status,PHS18_irq_mask[1:0],PHS18_irq0_L2S,PHS18_irq1_S2L,PHS18_irq0_clr,PHS18_irq1_clr,PHS18_vld_out,PHS18_vld_in,PHS19_pwm_val[9:0],PHS19_status,PHS19_irq_mask[1:0],PHS19_irq0_L2S,PHS19_irq1_S2L,PHS19_irq0_clr,PHS19_irq1_clr,PHS19_vld_out,PHS19_vld_in,PHS20_pwm_val[9:0],PHS20_status,PHS20_irq_mask[1:0],PHS20_irq0_L2S,PHS20_irq1_S2L,PHS20_irq0_clr,PHS20_irq1_clr,PHS20_vld_out,PHS20_vld_in,PHS21_pwm_val[9:0],PHS21_status,PHS21_irq_mask[1:0],PHS21_irq0_L2S,PHS21_irq1_S2L,PHS21_irq0_clr,PHS21_irq1_clr,PHS21_vld_out,PHS21_vld_in,PHS22_pwm_val[9:0],PHS22_status,PHS22_irq_mask[1:0],PHS22_irq0_L2S,PHS22_irq1_S2L,PHS22_irq0_clr,PHS22_irq1_clr,PHS22_vld_out,PHS22_vld_in,PHS23_pwm_val[9:0],PHS23_status,PHS23_irq_mask[1:0],PHS23_irq0_L2S,PHS23_irq1_S2L,PHS23_irq0_clr,PHS23_irq1_clr,PHS23_vld_out,PHS23_vld_in,PHS24_pwm_val[9:0],PHS24_status,PHS24_irq_mask[1:0],PHS24_irq0_L2S,PHS24_irq1_S2L,PHS24_irq0_clr,PHS24_irq1_clr,PHS24_vld_out,PHS24_vld_in,PHS25_pwm_val[9:0],PHS25_status,PHS25_irq_mask[1:0],PHS25_irq0_L2S,PHS25_irq1_S2L,PHS25_irq0_clr,PHS25_irq1_clr,PHS25_vld_out,PHS25_vld_in,PHS26_pwm_val[9:0],PHS26_status,PHS26_irq_mask[1:0],PHS26_irq0_L2S,PHS26_irq1_S2L,PHS26_irq0_clr,PHS26_irq1_clr,PHS26_vld_out,PHS26_vld_in,PHS27_pwm_val[9:0],PHS27_status,PHS27_irq_mask[1:0],PHS27_irq0_L2S,PHS27_irq1_S2L,PHS27_irq0_clr,PHS27_irq1_clr,PHS27_vld_out,PHS27_vld_in,PHS28_pwm_val[9:0],PHS28_status,PHS28_irq_mask[1:0],PHS28_irq0_L2S,PHS28_irq1_S2L,PHS28_irq0_clr,PHS28_irq1_clr,PHS28_vld_out,PHS28_vld_in,PHS29_pwm_val[9:0],PHS29_status,PHS29_irq_mask[1:0],PHS29_irq0_L2S,PHS29_irq1_S2L,PHS29_irq0_clr,PHS29_irq1_clr,PHS29_vld_out,PHS29_vld_in,PHS30_pwm_val[9:0],PHS30_status,PHS30_irq_mask[1:0],PHS30_irq0_L2S,PHS30_irq1_S2L,PHS30_irq0_clr,PHS30_irq1_clr,PHS30_vld_out,PHS30_vld_in,PHS31_pwm_val[9:0],PHS31_status,PHS31_irq_mask[1:0],PHS31_irq0_L2S,PHS31_irq1_S2L,PHS31_irq0_clr,PHS31_irq1_clr,PHS31_vld_out,PHS31_vld_in,PHS32_pwm_val[9:0],PHS32_status,PHS32_irq_mask[1:0],PHS32_irq0_L2S,PHS32_irq1_S2L,PHS32_irq0_clr,PHS32_irq1_clr,PHS32_vld_out,PHS32_vld_in,PHS33_pwm_val[9:0],PHS33_status,PHS33_irq_mask[1:0],PHS33_irq0_L2S,PHS33_irq1_S2L,PHS33_irq0_clr,PHS33_irq1_clr,PHS33_vld_out,PHS33_vld_in,PHS34_pwm_val[9:0],PHS34_status,PHS34_irq_mask[1:0],PHS34_irq0_L2S,PHS34_irq1_S2L,PHS34_irq0_clr,PHS34_irq1_clr,PHS34_vld_out,PHS34_vld_in,PHS35_pwm_val[9:0],PHS35_status,PHS35_irq_mask[1:0],PHS35_irq0_L2S,PHS35_irq1_S2L,PHS35_irq0_clr,PHS35_irq1_clr,PHS35_vld_out,PHS35_vld_in,PHS36_pwm_val[9:0],PHS36_status,PHS36_irq_mask[1:0],PHS36_irq0_L2S,PHS36_irq1_S2L,PHS36_irq0_clr,PHS36_irq1_clr,PHS36_vld_out,PHS36_vld_in,PHS37_pwm_val[9:0],PHS37_status,PHS37_irq_mask[1:0],PHS37_irq0_L2S,PHS37_irq1_S2L,PHS37_irq0_clr,PHS37_irq1_clr,PHS37_vld_out,PHS37_vld_in,PHS38_pwm_val[9:0],PHS38_status,PHS38_irq_mask[1:0],PHS38_irq0_L2S,PHS38_irq1_S2L,PHS38_irq0_clr,PHS38_irq1_clr,PHS38_vld_out,PHS38_vld_in,PHS39_pwm_val[9:0],PHS39_status,PHS39_irq_mask[1:0],PHS39_irq0_L2S,PHS39_irq1_S2L,PHS39_irq0_clr,PHS39_irq1_clr,PHS39_vld_out,PHS39_vld_in,PHS40_pwm_val[9:0],PHS40_status,PHS40_irq_mask[1:0],PHS40_irq0_L2S,PHS40_irq1_S2L,PHS40_irq0_clr,PHS40_irq1_clr,PHS40_vld_out,PHS40_vld_in,PHS41_pwm_val[9:0],PHS41_status,PHS41_irq_mask[1:0],PHS41_irq0_L2S,PHS41_irq1_S2L,PHS41_irq0_clr,PHS41_irq1_clr,PHS41_vld_out,PHS41_vld_in,PHS42_pwm_val[9:0],PHS42_status,PHS42_irq_mask[1:0],PHS42_irq0_L2S,PHS42_irq1_S2L,PHS42_irq0_clr,PHS42_irq1_clr,PHS42_vld_out,PHS42_vld_in,PHS43_pwm_val[9:0],PHS43_status,PHS43_irq_mask[1:0],PHS43_irq0_L2S,PHS43_irq1_S2L,PHS43_irq0_clr,PHS43_irq1_clr,PHS43_vld_out,PHS43_vld_in,PHS44_pwm_val[9:0],PHS44_status,PHS44_irq_mask[1:0],PHS44_irq0_L2S,PHS44_irq1_S2L,PHS44_irq0_clr,PHS44_irq1_clr,PHS44_vld_out,PHS44_vld_in,PHS45_pwm_val[9:0],PHS45_status,PHS45_irq_mask[1:0],PHS45_irq0_L2S,PHS45_irq1_S2L,PHS45_irq0_clr,PHS45_irq1_clr,PHS45_vld_out,PHS45_vld_in,PHS46_pwm_val[9:0],PHS46_status,PHS46_irq_mask[1:0],PHS46_irq0_L2S,PHS46_irq1_S2L,PHS46_irq0_clr,PHS46_irq1_clr,PHS46_vld_out,PHS46_vld_in,PHS47_pwm_val[9:0],PHS47_status,PHS47_irq_mask[1:0],PHS47_irq0_L2S,PHS47_irq1_S2L,PHS47_irq0_clr,PHS47_irq1_clr,PHS47_vld_out,PHS47_vld_in,PHS48_pwm_val[9:0],PHS48_status,PHS48_irq_mask[1:0],PHS48_irq0_L2S,PHS48_irq1_S2L,PHS48_irq0_clr,PHS48_irq1_clr,PHS48_vld_out,PHS48_vld_in,PHS49_pwm_val[9:0],PHS49_status,PHS49_irq_mask[1:0],PHS49_irq0_L2S,PHS49_irq1_S2L,PHS49_irq0_clr,PHS49_irq1_clr,PHS49_vld_out,PHS49_vld_in,PHS_irqs_L2S_0[24:0],PHS_irqs_L2S_1[24:0],PHS_irq_L2S_0,PHS_irq_L2S_1,PHS_irqs_S2L_0[24:0],PHS_irqs_S2L_1[24:0],PHS_irq_S2L_0,PHS_irq_S2L_1,s00_axi_awaddr[9:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[9:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PHS_regs_v1_0,Vivado 2019.1.3";
begin
end;
