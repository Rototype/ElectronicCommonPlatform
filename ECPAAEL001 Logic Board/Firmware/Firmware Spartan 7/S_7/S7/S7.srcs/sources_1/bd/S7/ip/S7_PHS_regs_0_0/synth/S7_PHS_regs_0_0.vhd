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

-- IP VLNV: xilinx.com:user:PHS_regs:1.0
-- IP Revision: 19

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_PHS_regs_0_0 IS
  PORT (
    PHS0_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS0_status : IN STD_LOGIC;
    PHS0_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS0_irq0_L2S : IN STD_LOGIC;
    PHS0_irq1_S2L : IN STD_LOGIC;
    PHS0_irq0_clr : OUT STD_LOGIC;
    PHS0_irq1_clr : OUT STD_LOGIC;
    PHS0_vld_out : OUT STD_LOGIC;
    PHS0_vld_in : IN STD_LOGIC;
    PHS1_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS1_status : IN STD_LOGIC;
    PHS1_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS1_irq0_L2S : IN STD_LOGIC;
    PHS1_irq1_S2L : IN STD_LOGIC;
    PHS1_irq0_clr : OUT STD_LOGIC;
    PHS1_irq1_clr : OUT STD_LOGIC;
    PHS1_vld_out : OUT STD_LOGIC;
    PHS1_vld_in : IN STD_LOGIC;
    PHS2_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS2_status : IN STD_LOGIC;
    PHS2_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS2_irq0_L2S : IN STD_LOGIC;
    PHS2_irq1_S2L : IN STD_LOGIC;
    PHS2_irq0_clr : OUT STD_LOGIC;
    PHS2_irq1_clr : OUT STD_LOGIC;
    PHS2_vld_out : OUT STD_LOGIC;
    PHS2_vld_in : IN STD_LOGIC;
    PHS3_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS3_status : IN STD_LOGIC;
    PHS3_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS3_irq0_L2S : IN STD_LOGIC;
    PHS3_irq1_S2L : IN STD_LOGIC;
    PHS3_irq0_clr : OUT STD_LOGIC;
    PHS3_irq1_clr : OUT STD_LOGIC;
    PHS3_vld_out : OUT STD_LOGIC;
    PHS3_vld_in : IN STD_LOGIC;
    PHS4_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS4_status : IN STD_LOGIC;
    PHS4_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS4_irq0_L2S : IN STD_LOGIC;
    PHS4_irq1_S2L : IN STD_LOGIC;
    PHS4_irq0_clr : OUT STD_LOGIC;
    PHS4_irq1_clr : OUT STD_LOGIC;
    PHS4_vld_out : OUT STD_LOGIC;
    PHS4_vld_in : IN STD_LOGIC;
    PHS5_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS5_status : IN STD_LOGIC;
    PHS5_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS5_irq0_L2S : IN STD_LOGIC;
    PHS5_irq1_S2L : IN STD_LOGIC;
    PHS5_irq0_clr : OUT STD_LOGIC;
    PHS5_irq1_clr : OUT STD_LOGIC;
    PHS5_vld_out : OUT STD_LOGIC;
    PHS5_vld_in : IN STD_LOGIC;
    PHS6_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS6_status : IN STD_LOGIC;
    PHS6_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS6_irq0_L2S : IN STD_LOGIC;
    PHS6_irq1_S2L : IN STD_LOGIC;
    PHS6_irq0_clr : OUT STD_LOGIC;
    PHS6_irq1_clr : OUT STD_LOGIC;
    PHS6_vld_out : OUT STD_LOGIC;
    PHS6_vld_in : IN STD_LOGIC;
    PHS7_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS7_status : IN STD_LOGIC;
    PHS7_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS7_irq0_L2S : IN STD_LOGIC;
    PHS7_irq1_S2L : IN STD_LOGIC;
    PHS7_irq0_clr : OUT STD_LOGIC;
    PHS7_irq1_clr : OUT STD_LOGIC;
    PHS7_vld_out : OUT STD_LOGIC;
    PHS7_vld_in : IN STD_LOGIC;
    PHS8_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS8_status : IN STD_LOGIC;
    PHS8_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS8_irq0_L2S : IN STD_LOGIC;
    PHS8_irq1_S2L : IN STD_LOGIC;
    PHS8_irq0_clr : OUT STD_LOGIC;
    PHS8_irq1_clr : OUT STD_LOGIC;
    PHS8_vld_out : OUT STD_LOGIC;
    PHS8_vld_in : IN STD_LOGIC;
    PHS9_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS9_status : IN STD_LOGIC;
    PHS9_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS9_irq0_L2S : IN STD_LOGIC;
    PHS9_irq1_S2L : IN STD_LOGIC;
    PHS9_irq0_clr : OUT STD_LOGIC;
    PHS9_irq1_clr : OUT STD_LOGIC;
    PHS9_vld_out : OUT STD_LOGIC;
    PHS9_vld_in : IN STD_LOGIC;
    PHS10_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS10_status : IN STD_LOGIC;
    PHS10_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS10_irq0_L2S : IN STD_LOGIC;
    PHS10_irq1_S2L : IN STD_LOGIC;
    PHS10_irq0_clr : OUT STD_LOGIC;
    PHS10_irq1_clr : OUT STD_LOGIC;
    PHS10_vld_out : OUT STD_LOGIC;
    PHS10_vld_in : IN STD_LOGIC;
    PHS11_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS11_status : IN STD_LOGIC;
    PHS11_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS11_irq0_L2S : IN STD_LOGIC;
    PHS11_irq1_S2L : IN STD_LOGIC;
    PHS11_irq0_clr : OUT STD_LOGIC;
    PHS11_irq1_clr : OUT STD_LOGIC;
    PHS11_vld_out : OUT STD_LOGIC;
    PHS11_vld_in : IN STD_LOGIC;
    PHS12_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS12_status : IN STD_LOGIC;
    PHS12_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS12_irq0_L2S : IN STD_LOGIC;
    PHS12_irq1_S2L : IN STD_LOGIC;
    PHS12_irq0_clr : OUT STD_LOGIC;
    PHS12_irq1_clr : OUT STD_LOGIC;
    PHS13_irq1_clr : OUT STD_LOGIC;
    PHS12_vld_out : OUT STD_LOGIC;
    PHS12_vld_in : IN STD_LOGIC;
    PHS13_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS13_status : IN STD_LOGIC;
    PHS13_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS13_irq0_L2S : IN STD_LOGIC;
    PHS13_irq1_S2L : IN STD_LOGIC;
    PHS13_irq0_clr : OUT STD_LOGIC;
    PHS13_vld_out : OUT STD_LOGIC;
    PHS13_vld_in : IN STD_LOGIC;
    PHS14_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS14_status : IN STD_LOGIC;
    PHS14_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS14_irq0_L2S : IN STD_LOGIC;
    PHS14_irq1_S2L : IN STD_LOGIC;
    PHS14_irq0_clr : OUT STD_LOGIC;
    PHS14_irq1_clr : OUT STD_LOGIC;
    PHS14_vld_out : OUT STD_LOGIC;
    PHS14_vld_in : IN STD_LOGIC;
    PHS15_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS15_status : IN STD_LOGIC;
    PHS15_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS15_irq0_L2S : IN STD_LOGIC;
    PHS15_irq1_S2L : IN STD_LOGIC;
    PHS15_irq0_clr : OUT STD_LOGIC;
    PHS15_irq1_clr : OUT STD_LOGIC;
    PHS15_vld_out : OUT STD_LOGIC;
    PHS15_vld_in : IN STD_LOGIC;
    PHS16_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS16_status : IN STD_LOGIC;
    PHS16_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS16_irq0_L2S : IN STD_LOGIC;
    PHS16_irq1_S2L : IN STD_LOGIC;
    PHS16_irq0_clr : OUT STD_LOGIC;
    PHS16_irq1_clr : OUT STD_LOGIC;
    PHS16_vld_out : OUT STD_LOGIC;
    PHS16_vld_in : IN STD_LOGIC;
    PHS17_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS17_status : IN STD_LOGIC;
    PHS17_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS17_irq0_L2S : IN STD_LOGIC;
    PHS17_irq1_S2L : IN STD_LOGIC;
    PHS17_irq0_clr : OUT STD_LOGIC;
    PHS17_irq1_clr : OUT STD_LOGIC;
    PHS17_vld_out : OUT STD_LOGIC;
    PHS17_vld_in : IN STD_LOGIC;
    PHS18_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS18_status : IN STD_LOGIC;
    PHS18_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS18_irq0_L2S : IN STD_LOGIC;
    PHS18_irq1_S2L : IN STD_LOGIC;
    PHS18_irq0_clr : OUT STD_LOGIC;
    PHS18_irq1_clr : OUT STD_LOGIC;
    PHS18_vld_out : OUT STD_LOGIC;
    PHS18_vld_in : IN STD_LOGIC;
    PHS19_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS19_status : IN STD_LOGIC;
    PHS19_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS19_irq0_L2S : IN STD_LOGIC;
    PHS19_irq1_S2L : IN STD_LOGIC;
    PHS19_irq0_clr : OUT STD_LOGIC;
    PHS19_irq1_clr : OUT STD_LOGIC;
    PHS19_vld_out : OUT STD_LOGIC;
    PHS19_vld_in : IN STD_LOGIC;
    PHS20_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS20_status : IN STD_LOGIC;
    PHS20_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS20_irq0_L2S : IN STD_LOGIC;
    PHS20_irq1_S2L : IN STD_LOGIC;
    PHS20_irq0_clr : OUT STD_LOGIC;
    PHS20_irq1_clr : OUT STD_LOGIC;
    PHS20_vld_out : OUT STD_LOGIC;
    PHS20_vld_in : IN STD_LOGIC;
    PHS21_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS21_status : IN STD_LOGIC;
    PHS21_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS21_irq0_L2S : IN STD_LOGIC;
    PHS21_irq1_S2L : IN STD_LOGIC;
    PHS21_irq0_clr : OUT STD_LOGIC;
    PHS21_irq1_clr : OUT STD_LOGIC;
    PHS21_vld_out : OUT STD_LOGIC;
    PHS21_vld_in : IN STD_LOGIC;
    PHS22_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS22_status : IN STD_LOGIC;
    PHS22_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS22_irq0_L2S : IN STD_LOGIC;
    PHS22_irq1_S2L : IN STD_LOGIC;
    PHS22_irq0_clr : OUT STD_LOGIC;
    PHS22_irq1_clr : OUT STD_LOGIC;
    PHS22_vld_out : OUT STD_LOGIC;
    PHS22_vld_in : IN STD_LOGIC;
    PHS23_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS23_status : IN STD_LOGIC;
    PHS23_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS23_irq0_L2S : IN STD_LOGIC;
    PHS23_irq1_S2L : IN STD_LOGIC;
    PHS23_irq0_clr : OUT STD_LOGIC;
    PHS23_irq1_clr : OUT STD_LOGIC;
    PHS23_vld_out : OUT STD_LOGIC;
    PHS23_vld_in : IN STD_LOGIC;
    PHS24_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS24_status : IN STD_LOGIC;
    PHS24_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS24_irq0_L2S : IN STD_LOGIC;
    PHS24_irq1_S2L : IN STD_LOGIC;
    PHS24_irq0_clr : OUT STD_LOGIC;
    PHS24_irq1_clr : OUT STD_LOGIC;
    PHS24_vld_out : OUT STD_LOGIC;
    PHS24_vld_in : IN STD_LOGIC;
    PHS25_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS25_status : IN STD_LOGIC;
    PHS25_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS25_irq0_L2S : IN STD_LOGIC;
    PHS25_irq1_S2L : IN STD_LOGIC;
    PHS25_irq0_clr : OUT STD_LOGIC;
    PHS25_irq1_clr : OUT STD_LOGIC;
    PHS25_vld_out : OUT STD_LOGIC;
    PHS25_vld_in : IN STD_LOGIC;
    PHS26_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS26_status : IN STD_LOGIC;
    PHS26_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS26_irq0_L2S : IN STD_LOGIC;
    PHS26_irq1_S2L : IN STD_LOGIC;
    PHS26_irq0_clr : OUT STD_LOGIC;
    PHS26_irq1_clr : OUT STD_LOGIC;
    PHS26_vld_out : OUT STD_LOGIC;
    PHS26_vld_in : IN STD_LOGIC;
    PHS27_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS27_status : IN STD_LOGIC;
    PHS27_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS27_irq0_L2S : IN STD_LOGIC;
    PHS27_irq1_S2L : IN STD_LOGIC;
    PHS27_irq0_clr : OUT STD_LOGIC;
    PHS27_irq1_clr : OUT STD_LOGIC;
    PHS27_vld_out : OUT STD_LOGIC;
    PHS27_vld_in : IN STD_LOGIC;
    PHS28_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS28_status : IN STD_LOGIC;
    PHS28_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS28_irq0_L2S : IN STD_LOGIC;
    PHS28_irq1_S2L : IN STD_LOGIC;
    PHS28_irq0_clr : OUT STD_LOGIC;
    PHS28_irq1_clr : OUT STD_LOGIC;
    PHS28_vld_out : OUT STD_LOGIC;
    PHS28_vld_in : IN STD_LOGIC;
    PHS29_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS29_status : IN STD_LOGIC;
    PHS29_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS29_irq0_L2S : IN STD_LOGIC;
    PHS29_irq1_S2L : IN STD_LOGIC;
    PHS29_irq0_clr : OUT STD_LOGIC;
    PHS29_irq1_clr : OUT STD_LOGIC;
    PHS29_vld_out : OUT STD_LOGIC;
    PHS29_vld_in : IN STD_LOGIC;
    PHS30_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS30_status : IN STD_LOGIC;
    PHS30_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS30_irq0_L2S : IN STD_LOGIC;
    PHS30_irq1_S2L : IN STD_LOGIC;
    PHS30_irq0_clr : OUT STD_LOGIC;
    PHS30_irq1_clr : OUT STD_LOGIC;
    PHS30_vld_out : OUT STD_LOGIC;
    PHS30_vld_in : IN STD_LOGIC;
    PHS31_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS31_status : IN STD_LOGIC;
    PHS31_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS31_irq0_L2S : IN STD_LOGIC;
    PHS31_irq1_S2L : IN STD_LOGIC;
    PHS31_irq0_clr : OUT STD_LOGIC;
    PHS31_irq1_clr : OUT STD_LOGIC;
    PHS31_vld_out : OUT STD_LOGIC;
    PHS31_vld_in : IN STD_LOGIC;
    PHS32_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS32_status : IN STD_LOGIC;
    PHS32_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS32_irq0_L2S : IN STD_LOGIC;
    PHS32_irq1_S2L : IN STD_LOGIC;
    PHS32_irq0_clr : OUT STD_LOGIC;
    PHS32_irq1_clr : OUT STD_LOGIC;
    PHS32_vld_out : OUT STD_LOGIC;
    PHS32_vld_in : IN STD_LOGIC;
    PHS33_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS33_status : IN STD_LOGIC;
    PHS33_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS33_irq0_L2S : IN STD_LOGIC;
    PHS33_irq1_S2L : IN STD_LOGIC;
    PHS33_irq0_clr : OUT STD_LOGIC;
    PHS33_irq1_clr : OUT STD_LOGIC;
    PHS33_vld_out : OUT STD_LOGIC;
    PHS33_vld_in : IN STD_LOGIC;
    PHS34_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS34_status : IN STD_LOGIC;
    PHS34_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS34_irq0_L2S : IN STD_LOGIC;
    PHS34_irq1_S2L : IN STD_LOGIC;
    PHS34_irq0_clr : OUT STD_LOGIC;
    PHS34_irq1_clr : OUT STD_LOGIC;
    PHS34_vld_out : OUT STD_LOGIC;
    PHS34_vld_in : IN STD_LOGIC;
    PHS35_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS35_status : IN STD_LOGIC;
    PHS35_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS35_irq0_L2S : IN STD_LOGIC;
    PHS35_irq1_S2L : IN STD_LOGIC;
    PHS35_irq0_clr : OUT STD_LOGIC;
    PHS35_irq1_clr : OUT STD_LOGIC;
    PHS35_vld_out : OUT STD_LOGIC;
    PHS35_vld_in : IN STD_LOGIC;
    PHS36_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS36_status : IN STD_LOGIC;
    PHS36_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS36_irq0_L2S : IN STD_LOGIC;
    PHS36_irq1_S2L : IN STD_LOGIC;
    PHS36_irq0_clr : OUT STD_LOGIC;
    PHS36_irq1_clr : OUT STD_LOGIC;
    PHS36_vld_out : OUT STD_LOGIC;
    PHS36_vld_in : IN STD_LOGIC;
    PHS37_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS37_status : IN STD_LOGIC;
    PHS37_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS37_irq0_L2S : IN STD_LOGIC;
    PHS37_irq1_S2L : IN STD_LOGIC;
    PHS37_irq0_clr : OUT STD_LOGIC;
    PHS37_irq1_clr : OUT STD_LOGIC;
    PHS37_vld_out : OUT STD_LOGIC;
    PHS37_vld_in : IN STD_LOGIC;
    PHS38_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS38_status : IN STD_LOGIC;
    PHS38_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS38_irq0_L2S : IN STD_LOGIC;
    PHS38_irq1_S2L : IN STD_LOGIC;
    PHS38_irq0_clr : OUT STD_LOGIC;
    PHS38_irq1_clr : OUT STD_LOGIC;
    PHS38_vld_out : OUT STD_LOGIC;
    PHS38_vld_in : IN STD_LOGIC;
    PHS39_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS39_status : IN STD_LOGIC;
    PHS39_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS39_irq0_L2S : IN STD_LOGIC;
    PHS39_irq1_S2L : IN STD_LOGIC;
    PHS39_irq0_clr : OUT STD_LOGIC;
    PHS39_irq1_clr : OUT STD_LOGIC;
    PHS39_vld_out : OUT STD_LOGIC;
    PHS39_vld_in : IN STD_LOGIC;
    PHS40_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS40_status : IN STD_LOGIC;
    PHS40_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS40_irq0_L2S : IN STD_LOGIC;
    PHS40_irq1_S2L : IN STD_LOGIC;
    PHS40_irq0_clr : OUT STD_LOGIC;
    PHS40_irq1_clr : OUT STD_LOGIC;
    PHS40_vld_out : OUT STD_LOGIC;
    PHS40_vld_in : IN STD_LOGIC;
    PHS41_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS41_status : IN STD_LOGIC;
    PHS41_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS41_irq0_L2S : IN STD_LOGIC;
    PHS41_irq1_S2L : IN STD_LOGIC;
    PHS41_irq0_clr : OUT STD_LOGIC;
    PHS41_irq1_clr : OUT STD_LOGIC;
    PHS41_vld_out : OUT STD_LOGIC;
    PHS41_vld_in : IN STD_LOGIC;
    PHS42_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS42_status : IN STD_LOGIC;
    PHS42_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS42_irq0_L2S : IN STD_LOGIC;
    PHS42_irq1_S2L : IN STD_LOGIC;
    PHS42_irq0_clr : OUT STD_LOGIC;
    PHS42_irq1_clr : OUT STD_LOGIC;
    PHS42_vld_out : OUT STD_LOGIC;
    PHS42_vld_in : IN STD_LOGIC;
    PHS43_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS43_status : IN STD_LOGIC;
    PHS43_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS43_irq0_L2S : IN STD_LOGIC;
    PHS43_irq1_S2L : IN STD_LOGIC;
    PHS43_irq0_clr : OUT STD_LOGIC;
    PHS43_irq1_clr : OUT STD_LOGIC;
    PHS43_vld_out : OUT STD_LOGIC;
    PHS43_vld_in : IN STD_LOGIC;
    PHS44_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS44_status : IN STD_LOGIC;
    PHS44_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS44_irq0_L2S : IN STD_LOGIC;
    PHS44_irq1_S2L : IN STD_LOGIC;
    PHS44_irq0_clr : OUT STD_LOGIC;
    PHS44_irq1_clr : OUT STD_LOGIC;
    PHS44_vld_out : OUT STD_LOGIC;
    PHS44_vld_in : IN STD_LOGIC;
    PHS45_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS45_status : IN STD_LOGIC;
    PHS45_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS45_irq0_L2S : IN STD_LOGIC;
    PHS45_irq1_S2L : IN STD_LOGIC;
    PHS45_irq0_clr : OUT STD_LOGIC;
    PHS45_irq1_clr : OUT STD_LOGIC;
    PHS45_vld_out : OUT STD_LOGIC;
    PHS45_vld_in : IN STD_LOGIC;
    PHS46_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS46_status : IN STD_LOGIC;
    PHS46_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS46_irq0_L2S : IN STD_LOGIC;
    PHS46_irq1_S2L : IN STD_LOGIC;
    PHS46_irq0_clr : OUT STD_LOGIC;
    PHS46_irq1_clr : OUT STD_LOGIC;
    PHS46_vld_out : OUT STD_LOGIC;
    PHS46_vld_in : IN STD_LOGIC;
    PHS47_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS47_status : IN STD_LOGIC;
    PHS47_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS47_irq0_L2S : IN STD_LOGIC;
    PHS47_irq1_S2L : IN STD_LOGIC;
    PHS47_irq0_clr : OUT STD_LOGIC;
    PHS47_irq1_clr : OUT STD_LOGIC;
    PHS47_vld_out : OUT STD_LOGIC;
    PHS47_vld_in : IN STD_LOGIC;
    PHS48_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS48_status : IN STD_LOGIC;
    PHS48_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS48_irq0_L2S : IN STD_LOGIC;
    PHS48_irq1_S2L : IN STD_LOGIC;
    PHS48_irq0_clr : OUT STD_LOGIC;
    PHS48_irq1_clr : OUT STD_LOGIC;
    PHS48_vld_out : OUT STD_LOGIC;
    PHS48_vld_in : IN STD_LOGIC;
    PHS49_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    PHS49_status : IN STD_LOGIC;
    PHS49_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    PHS49_irq0_L2S : IN STD_LOGIC;
    PHS49_irq1_S2L : IN STD_LOGIC;
    PHS49_irq0_clr : OUT STD_LOGIC;
    PHS49_irq1_clr : OUT STD_LOGIC;
    PHS49_vld_out : OUT STD_LOGIC;
    PHS49_vld_in : IN STD_LOGIC;
    PHS_irqs_L2S_0 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    PHS_irqs_L2S_1 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    PHS_irq_L2S_0 : OUT STD_LOGIC;
    PHS_irq_L2S_1 : OUT STD_LOGIC;
    PHS_irqs_S2L_0 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    PHS_irqs_S2L_1 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    PHS_irq_S2L_0 : OUT STD_LOGIC;
    PHS_irq_S2L_1 : OUT STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
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
    s00_axi_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
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
END S7_PHS_regs_0_0;

ARCHITECTURE S7_PHS_regs_0_0_arch OF S7_PHS_regs_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_PHS_regs_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT PHS_regs_v1_0 IS
    GENERIC (
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      PHS0_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS0_status : IN STD_LOGIC;
      PHS0_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS0_irq0_L2S : IN STD_LOGIC;
      PHS0_irq1_S2L : IN STD_LOGIC;
      PHS0_irq0_clr : OUT STD_LOGIC;
      PHS0_irq1_clr : OUT STD_LOGIC;
      PHS0_vld_out : OUT STD_LOGIC;
      PHS0_vld_in : IN STD_LOGIC;
      PHS1_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS1_status : IN STD_LOGIC;
      PHS1_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS1_irq0_L2S : IN STD_LOGIC;
      PHS1_irq1_S2L : IN STD_LOGIC;
      PHS1_irq0_clr : OUT STD_LOGIC;
      PHS1_irq1_clr : OUT STD_LOGIC;
      PHS1_vld_out : OUT STD_LOGIC;
      PHS1_vld_in : IN STD_LOGIC;
      PHS2_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS2_status : IN STD_LOGIC;
      PHS2_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS2_irq0_L2S : IN STD_LOGIC;
      PHS2_irq1_S2L : IN STD_LOGIC;
      PHS2_irq0_clr : OUT STD_LOGIC;
      PHS2_irq1_clr : OUT STD_LOGIC;
      PHS2_vld_out : OUT STD_LOGIC;
      PHS2_vld_in : IN STD_LOGIC;
      PHS3_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS3_status : IN STD_LOGIC;
      PHS3_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS3_irq0_L2S : IN STD_LOGIC;
      PHS3_irq1_S2L : IN STD_LOGIC;
      PHS3_irq0_clr : OUT STD_LOGIC;
      PHS3_irq1_clr : OUT STD_LOGIC;
      PHS3_vld_out : OUT STD_LOGIC;
      PHS3_vld_in : IN STD_LOGIC;
      PHS4_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS4_status : IN STD_LOGIC;
      PHS4_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS4_irq0_L2S : IN STD_LOGIC;
      PHS4_irq1_S2L : IN STD_LOGIC;
      PHS4_irq0_clr : OUT STD_LOGIC;
      PHS4_irq1_clr : OUT STD_LOGIC;
      PHS4_vld_out : OUT STD_LOGIC;
      PHS4_vld_in : IN STD_LOGIC;
      PHS5_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS5_status : IN STD_LOGIC;
      PHS5_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS5_irq0_L2S : IN STD_LOGIC;
      PHS5_irq1_S2L : IN STD_LOGIC;
      PHS5_irq0_clr : OUT STD_LOGIC;
      PHS5_irq1_clr : OUT STD_LOGIC;
      PHS5_vld_out : OUT STD_LOGIC;
      PHS5_vld_in : IN STD_LOGIC;
      PHS6_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS6_status : IN STD_LOGIC;
      PHS6_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS6_irq0_L2S : IN STD_LOGIC;
      PHS6_irq1_S2L : IN STD_LOGIC;
      PHS6_irq0_clr : OUT STD_LOGIC;
      PHS6_irq1_clr : OUT STD_LOGIC;
      PHS6_vld_out : OUT STD_LOGIC;
      PHS6_vld_in : IN STD_LOGIC;
      PHS7_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS7_status : IN STD_LOGIC;
      PHS7_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS7_irq0_L2S : IN STD_LOGIC;
      PHS7_irq1_S2L : IN STD_LOGIC;
      PHS7_irq0_clr : OUT STD_LOGIC;
      PHS7_irq1_clr : OUT STD_LOGIC;
      PHS7_vld_out : OUT STD_LOGIC;
      PHS7_vld_in : IN STD_LOGIC;
      PHS8_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS8_status : IN STD_LOGIC;
      PHS8_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS8_irq0_L2S : IN STD_LOGIC;
      PHS8_irq1_S2L : IN STD_LOGIC;
      PHS8_irq0_clr : OUT STD_LOGIC;
      PHS8_irq1_clr : OUT STD_LOGIC;
      PHS8_vld_out : OUT STD_LOGIC;
      PHS8_vld_in : IN STD_LOGIC;
      PHS9_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS9_status : IN STD_LOGIC;
      PHS9_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS9_irq0_L2S : IN STD_LOGIC;
      PHS9_irq1_S2L : IN STD_LOGIC;
      PHS9_irq0_clr : OUT STD_LOGIC;
      PHS9_irq1_clr : OUT STD_LOGIC;
      PHS9_vld_out : OUT STD_LOGIC;
      PHS9_vld_in : IN STD_LOGIC;
      PHS10_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS10_status : IN STD_LOGIC;
      PHS10_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS10_irq0_L2S : IN STD_LOGIC;
      PHS10_irq1_S2L : IN STD_LOGIC;
      PHS10_irq0_clr : OUT STD_LOGIC;
      PHS10_irq1_clr : OUT STD_LOGIC;
      PHS10_vld_out : OUT STD_LOGIC;
      PHS10_vld_in : IN STD_LOGIC;
      PHS11_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS11_status : IN STD_LOGIC;
      PHS11_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS11_irq0_L2S : IN STD_LOGIC;
      PHS11_irq1_S2L : IN STD_LOGIC;
      PHS11_irq0_clr : OUT STD_LOGIC;
      PHS11_irq1_clr : OUT STD_LOGIC;
      PHS11_vld_out : OUT STD_LOGIC;
      PHS11_vld_in : IN STD_LOGIC;
      PHS12_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS12_status : IN STD_LOGIC;
      PHS12_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS12_irq0_L2S : IN STD_LOGIC;
      PHS12_irq1_S2L : IN STD_LOGIC;
      PHS12_irq0_clr : OUT STD_LOGIC;
      PHS12_irq1_clr : OUT STD_LOGIC;
      PHS13_irq1_clr : OUT STD_LOGIC;
      PHS12_vld_out : OUT STD_LOGIC;
      PHS12_vld_in : IN STD_LOGIC;
      PHS13_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS13_status : IN STD_LOGIC;
      PHS13_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS13_irq0_L2S : IN STD_LOGIC;
      PHS13_irq1_S2L : IN STD_LOGIC;
      PHS13_irq0_clr : OUT STD_LOGIC;
      PHS13_vld_out : OUT STD_LOGIC;
      PHS13_vld_in : IN STD_LOGIC;
      PHS14_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS14_status : IN STD_LOGIC;
      PHS14_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS14_irq0_L2S : IN STD_LOGIC;
      PHS14_irq1_S2L : IN STD_LOGIC;
      PHS14_irq0_clr : OUT STD_LOGIC;
      PHS14_irq1_clr : OUT STD_LOGIC;
      PHS14_vld_out : OUT STD_LOGIC;
      PHS14_vld_in : IN STD_LOGIC;
      PHS15_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS15_status : IN STD_LOGIC;
      PHS15_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS15_irq0_L2S : IN STD_LOGIC;
      PHS15_irq1_S2L : IN STD_LOGIC;
      PHS15_irq0_clr : OUT STD_LOGIC;
      PHS15_irq1_clr : OUT STD_LOGIC;
      PHS15_vld_out : OUT STD_LOGIC;
      PHS15_vld_in : IN STD_LOGIC;
      PHS16_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS16_status : IN STD_LOGIC;
      PHS16_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS16_irq0_L2S : IN STD_LOGIC;
      PHS16_irq1_S2L : IN STD_LOGIC;
      PHS16_irq0_clr : OUT STD_LOGIC;
      PHS16_irq1_clr : OUT STD_LOGIC;
      PHS16_vld_out : OUT STD_LOGIC;
      PHS16_vld_in : IN STD_LOGIC;
      PHS17_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS17_status : IN STD_LOGIC;
      PHS17_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS17_irq0_L2S : IN STD_LOGIC;
      PHS17_irq1_S2L : IN STD_LOGIC;
      PHS17_irq0_clr : OUT STD_LOGIC;
      PHS17_irq1_clr : OUT STD_LOGIC;
      PHS17_vld_out : OUT STD_LOGIC;
      PHS17_vld_in : IN STD_LOGIC;
      PHS18_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS18_status : IN STD_LOGIC;
      PHS18_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS18_irq0_L2S : IN STD_LOGIC;
      PHS18_irq1_S2L : IN STD_LOGIC;
      PHS18_irq0_clr : OUT STD_LOGIC;
      PHS18_irq1_clr : OUT STD_LOGIC;
      PHS18_vld_out : OUT STD_LOGIC;
      PHS18_vld_in : IN STD_LOGIC;
      PHS19_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS19_status : IN STD_LOGIC;
      PHS19_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS19_irq0_L2S : IN STD_LOGIC;
      PHS19_irq1_S2L : IN STD_LOGIC;
      PHS19_irq0_clr : OUT STD_LOGIC;
      PHS19_irq1_clr : OUT STD_LOGIC;
      PHS19_vld_out : OUT STD_LOGIC;
      PHS19_vld_in : IN STD_LOGIC;
      PHS20_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS20_status : IN STD_LOGIC;
      PHS20_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS20_irq0_L2S : IN STD_LOGIC;
      PHS20_irq1_S2L : IN STD_LOGIC;
      PHS20_irq0_clr : OUT STD_LOGIC;
      PHS20_irq1_clr : OUT STD_LOGIC;
      PHS20_vld_out : OUT STD_LOGIC;
      PHS20_vld_in : IN STD_LOGIC;
      PHS21_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS21_status : IN STD_LOGIC;
      PHS21_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS21_irq0_L2S : IN STD_LOGIC;
      PHS21_irq1_S2L : IN STD_LOGIC;
      PHS21_irq0_clr : OUT STD_LOGIC;
      PHS21_irq1_clr : OUT STD_LOGIC;
      PHS21_vld_out : OUT STD_LOGIC;
      PHS21_vld_in : IN STD_LOGIC;
      PHS22_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS22_status : IN STD_LOGIC;
      PHS22_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS22_irq0_L2S : IN STD_LOGIC;
      PHS22_irq1_S2L : IN STD_LOGIC;
      PHS22_irq0_clr : OUT STD_LOGIC;
      PHS22_irq1_clr : OUT STD_LOGIC;
      PHS22_vld_out : OUT STD_LOGIC;
      PHS22_vld_in : IN STD_LOGIC;
      PHS23_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS23_status : IN STD_LOGIC;
      PHS23_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS23_irq0_L2S : IN STD_LOGIC;
      PHS23_irq1_S2L : IN STD_LOGIC;
      PHS23_irq0_clr : OUT STD_LOGIC;
      PHS23_irq1_clr : OUT STD_LOGIC;
      PHS23_vld_out : OUT STD_LOGIC;
      PHS23_vld_in : IN STD_LOGIC;
      PHS24_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS24_status : IN STD_LOGIC;
      PHS24_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS24_irq0_L2S : IN STD_LOGIC;
      PHS24_irq1_S2L : IN STD_LOGIC;
      PHS24_irq0_clr : OUT STD_LOGIC;
      PHS24_irq1_clr : OUT STD_LOGIC;
      PHS24_vld_out : OUT STD_LOGIC;
      PHS24_vld_in : IN STD_LOGIC;
      PHS25_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS25_status : IN STD_LOGIC;
      PHS25_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS25_irq0_L2S : IN STD_LOGIC;
      PHS25_irq1_S2L : IN STD_LOGIC;
      PHS25_irq0_clr : OUT STD_LOGIC;
      PHS25_irq1_clr : OUT STD_LOGIC;
      PHS25_vld_out : OUT STD_LOGIC;
      PHS25_vld_in : IN STD_LOGIC;
      PHS26_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS26_status : IN STD_LOGIC;
      PHS26_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS26_irq0_L2S : IN STD_LOGIC;
      PHS26_irq1_S2L : IN STD_LOGIC;
      PHS26_irq0_clr : OUT STD_LOGIC;
      PHS26_irq1_clr : OUT STD_LOGIC;
      PHS26_vld_out : OUT STD_LOGIC;
      PHS26_vld_in : IN STD_LOGIC;
      PHS27_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS27_status : IN STD_LOGIC;
      PHS27_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS27_irq0_L2S : IN STD_LOGIC;
      PHS27_irq1_S2L : IN STD_LOGIC;
      PHS27_irq0_clr : OUT STD_LOGIC;
      PHS27_irq1_clr : OUT STD_LOGIC;
      PHS27_vld_out : OUT STD_LOGIC;
      PHS27_vld_in : IN STD_LOGIC;
      PHS28_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS28_status : IN STD_LOGIC;
      PHS28_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS28_irq0_L2S : IN STD_LOGIC;
      PHS28_irq1_S2L : IN STD_LOGIC;
      PHS28_irq0_clr : OUT STD_LOGIC;
      PHS28_irq1_clr : OUT STD_LOGIC;
      PHS28_vld_out : OUT STD_LOGIC;
      PHS28_vld_in : IN STD_LOGIC;
      PHS29_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS29_status : IN STD_LOGIC;
      PHS29_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS29_irq0_L2S : IN STD_LOGIC;
      PHS29_irq1_S2L : IN STD_LOGIC;
      PHS29_irq0_clr : OUT STD_LOGIC;
      PHS29_irq1_clr : OUT STD_LOGIC;
      PHS29_vld_out : OUT STD_LOGIC;
      PHS29_vld_in : IN STD_LOGIC;
      PHS30_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS30_status : IN STD_LOGIC;
      PHS30_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS30_irq0_L2S : IN STD_LOGIC;
      PHS30_irq1_S2L : IN STD_LOGIC;
      PHS30_irq0_clr : OUT STD_LOGIC;
      PHS30_irq1_clr : OUT STD_LOGIC;
      PHS30_vld_out : OUT STD_LOGIC;
      PHS30_vld_in : IN STD_LOGIC;
      PHS31_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS31_status : IN STD_LOGIC;
      PHS31_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS31_irq0_L2S : IN STD_LOGIC;
      PHS31_irq1_S2L : IN STD_LOGIC;
      PHS31_irq0_clr : OUT STD_LOGIC;
      PHS31_irq1_clr : OUT STD_LOGIC;
      PHS31_vld_out : OUT STD_LOGIC;
      PHS31_vld_in : IN STD_LOGIC;
      PHS32_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS32_status : IN STD_LOGIC;
      PHS32_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS32_irq0_L2S : IN STD_LOGIC;
      PHS32_irq1_S2L : IN STD_LOGIC;
      PHS32_irq0_clr : OUT STD_LOGIC;
      PHS32_irq1_clr : OUT STD_LOGIC;
      PHS32_vld_out : OUT STD_LOGIC;
      PHS32_vld_in : IN STD_LOGIC;
      PHS33_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS33_status : IN STD_LOGIC;
      PHS33_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS33_irq0_L2S : IN STD_LOGIC;
      PHS33_irq1_S2L : IN STD_LOGIC;
      PHS33_irq0_clr : OUT STD_LOGIC;
      PHS33_irq1_clr : OUT STD_LOGIC;
      PHS33_vld_out : OUT STD_LOGIC;
      PHS33_vld_in : IN STD_LOGIC;
      PHS34_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS34_status : IN STD_LOGIC;
      PHS34_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS34_irq0_L2S : IN STD_LOGIC;
      PHS34_irq1_S2L : IN STD_LOGIC;
      PHS34_irq0_clr : OUT STD_LOGIC;
      PHS34_irq1_clr : OUT STD_LOGIC;
      PHS34_vld_out : OUT STD_LOGIC;
      PHS34_vld_in : IN STD_LOGIC;
      PHS35_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS35_status : IN STD_LOGIC;
      PHS35_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS35_irq0_L2S : IN STD_LOGIC;
      PHS35_irq1_S2L : IN STD_LOGIC;
      PHS35_irq0_clr : OUT STD_LOGIC;
      PHS35_irq1_clr : OUT STD_LOGIC;
      PHS35_vld_out : OUT STD_LOGIC;
      PHS35_vld_in : IN STD_LOGIC;
      PHS36_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS36_status : IN STD_LOGIC;
      PHS36_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS36_irq0_L2S : IN STD_LOGIC;
      PHS36_irq1_S2L : IN STD_LOGIC;
      PHS36_irq0_clr : OUT STD_LOGIC;
      PHS36_irq1_clr : OUT STD_LOGIC;
      PHS36_vld_out : OUT STD_LOGIC;
      PHS36_vld_in : IN STD_LOGIC;
      PHS37_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS37_status : IN STD_LOGIC;
      PHS37_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS37_irq0_L2S : IN STD_LOGIC;
      PHS37_irq1_S2L : IN STD_LOGIC;
      PHS37_irq0_clr : OUT STD_LOGIC;
      PHS37_irq1_clr : OUT STD_LOGIC;
      PHS37_vld_out : OUT STD_LOGIC;
      PHS37_vld_in : IN STD_LOGIC;
      PHS38_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS38_status : IN STD_LOGIC;
      PHS38_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS38_irq0_L2S : IN STD_LOGIC;
      PHS38_irq1_S2L : IN STD_LOGIC;
      PHS38_irq0_clr : OUT STD_LOGIC;
      PHS38_irq1_clr : OUT STD_LOGIC;
      PHS38_vld_out : OUT STD_LOGIC;
      PHS38_vld_in : IN STD_LOGIC;
      PHS39_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS39_status : IN STD_LOGIC;
      PHS39_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS39_irq0_L2S : IN STD_LOGIC;
      PHS39_irq1_S2L : IN STD_LOGIC;
      PHS39_irq0_clr : OUT STD_LOGIC;
      PHS39_irq1_clr : OUT STD_LOGIC;
      PHS39_vld_out : OUT STD_LOGIC;
      PHS39_vld_in : IN STD_LOGIC;
      PHS40_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS40_status : IN STD_LOGIC;
      PHS40_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS40_irq0_L2S : IN STD_LOGIC;
      PHS40_irq1_S2L : IN STD_LOGIC;
      PHS40_irq0_clr : OUT STD_LOGIC;
      PHS40_irq1_clr : OUT STD_LOGIC;
      PHS40_vld_out : OUT STD_LOGIC;
      PHS40_vld_in : IN STD_LOGIC;
      PHS41_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS41_status : IN STD_LOGIC;
      PHS41_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS41_irq0_L2S : IN STD_LOGIC;
      PHS41_irq1_S2L : IN STD_LOGIC;
      PHS41_irq0_clr : OUT STD_LOGIC;
      PHS41_irq1_clr : OUT STD_LOGIC;
      PHS41_vld_out : OUT STD_LOGIC;
      PHS41_vld_in : IN STD_LOGIC;
      PHS42_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS42_status : IN STD_LOGIC;
      PHS42_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS42_irq0_L2S : IN STD_LOGIC;
      PHS42_irq1_S2L : IN STD_LOGIC;
      PHS42_irq0_clr : OUT STD_LOGIC;
      PHS42_irq1_clr : OUT STD_LOGIC;
      PHS42_vld_out : OUT STD_LOGIC;
      PHS42_vld_in : IN STD_LOGIC;
      PHS43_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS43_status : IN STD_LOGIC;
      PHS43_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS43_irq0_L2S : IN STD_LOGIC;
      PHS43_irq1_S2L : IN STD_LOGIC;
      PHS43_irq0_clr : OUT STD_LOGIC;
      PHS43_irq1_clr : OUT STD_LOGIC;
      PHS43_vld_out : OUT STD_LOGIC;
      PHS43_vld_in : IN STD_LOGIC;
      PHS44_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS44_status : IN STD_LOGIC;
      PHS44_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS44_irq0_L2S : IN STD_LOGIC;
      PHS44_irq1_S2L : IN STD_LOGIC;
      PHS44_irq0_clr : OUT STD_LOGIC;
      PHS44_irq1_clr : OUT STD_LOGIC;
      PHS44_vld_out : OUT STD_LOGIC;
      PHS44_vld_in : IN STD_LOGIC;
      PHS45_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS45_status : IN STD_LOGIC;
      PHS45_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS45_irq0_L2S : IN STD_LOGIC;
      PHS45_irq1_S2L : IN STD_LOGIC;
      PHS45_irq0_clr : OUT STD_LOGIC;
      PHS45_irq1_clr : OUT STD_LOGIC;
      PHS45_vld_out : OUT STD_LOGIC;
      PHS45_vld_in : IN STD_LOGIC;
      PHS46_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS46_status : IN STD_LOGIC;
      PHS46_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS46_irq0_L2S : IN STD_LOGIC;
      PHS46_irq1_S2L : IN STD_LOGIC;
      PHS46_irq0_clr : OUT STD_LOGIC;
      PHS46_irq1_clr : OUT STD_LOGIC;
      PHS46_vld_out : OUT STD_LOGIC;
      PHS46_vld_in : IN STD_LOGIC;
      PHS47_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS47_status : IN STD_LOGIC;
      PHS47_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS47_irq0_L2S : IN STD_LOGIC;
      PHS47_irq1_S2L : IN STD_LOGIC;
      PHS47_irq0_clr : OUT STD_LOGIC;
      PHS47_irq1_clr : OUT STD_LOGIC;
      PHS47_vld_out : OUT STD_LOGIC;
      PHS47_vld_in : IN STD_LOGIC;
      PHS48_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS48_status : IN STD_LOGIC;
      PHS48_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS48_irq0_L2S : IN STD_LOGIC;
      PHS48_irq1_S2L : IN STD_LOGIC;
      PHS48_irq0_clr : OUT STD_LOGIC;
      PHS48_irq1_clr : OUT STD_LOGIC;
      PHS48_vld_out : OUT STD_LOGIC;
      PHS48_vld_in : IN STD_LOGIC;
      PHS49_pwm_val : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      PHS49_status : IN STD_LOGIC;
      PHS49_irq_mask : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      PHS49_irq0_L2S : IN STD_LOGIC;
      PHS49_irq1_S2L : IN STD_LOGIC;
      PHS49_irq0_clr : OUT STD_LOGIC;
      PHS49_irq1_clr : OUT STD_LOGIC;
      PHS49_vld_out : OUT STD_LOGIC;
      PHS49_vld_in : IN STD_LOGIC;
      PHS_irqs_L2S_0 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      PHS_irqs_L2S_1 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      PHS_irq_L2S_0 : OUT STD_LOGIC;
      PHS_irq_L2S_1 : OUT STD_LOGIC;
      PHS_irqs_S2L_0 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      PHS_irqs_S2L_1 : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      PHS_irq_S2L_0 : OUT STD_LOGIC;
      PHS_irq_S2L_1 : OUT STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
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
      s00_axi_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
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
  END COMPONENT PHS_regs_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF S7_PHS_regs_0_0_arch: ARCHITECTURE IS "PHS_regs_v1_0,Vivado 2019.1.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF S7_PHS_regs_0_0_arch : ARCHITECTURE IS "S7_PHS_regs_0_0,PHS_regs_v1_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF S7_PHS_regs_0_0_arch: ARCHITECTURE IS "S7_PHS_regs_0_0,PHS_regs_v1_0,{x_ipProduct=Vivado 2019.1.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=PHS_regs,x_ipVersion=1.0,x_ipCoreRevision=19,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=10}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
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
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 208, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBU" & 
"F_OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS49_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS49_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS48_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS48_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS47_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS47_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS46_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS46_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS45_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS45_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS44_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS44_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS43_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS43_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS42_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS42_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS41_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS41_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS40_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS40_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS39_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS39_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS38_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS38_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS37_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS37_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS36_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS36_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS35_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS35_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS34_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS34_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS33_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS33_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS32_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS32_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS31_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS31_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS30_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS30_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS29_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS29_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS28_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS28_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS27_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS27_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS26_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS26_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS25_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS25_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS24_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS24_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS23_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS23_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS22_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS22_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS21_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS21_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS20_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS20_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS19_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS19_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS18_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS18_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS17_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS17_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS16_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS16_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS15_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS15_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS14_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS14_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS13_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS12_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS12_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS11_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS11_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS10_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS10_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS9_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS9_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS8_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS8_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS7_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS7_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS6_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS6_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS5_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS5_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS4_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS4_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS3_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS3_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS2_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS2_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS1_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS1_regs pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF PHS0_pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS0_regs pwm_val";
BEGIN
  U0 : PHS_regs_v1_0
    GENERIC MAP (
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 10
    )
    PORT MAP (
      PHS0_pwm_val => PHS0_pwm_val,
      PHS0_status => PHS0_status,
      PHS0_irq_mask => PHS0_irq_mask,
      PHS0_irq0_L2S => PHS0_irq0_L2S,
      PHS0_irq1_S2L => PHS0_irq1_S2L,
      PHS0_irq0_clr => PHS0_irq0_clr,
      PHS0_irq1_clr => PHS0_irq1_clr,
      PHS0_vld_out => PHS0_vld_out,
      PHS0_vld_in => PHS0_vld_in,
      PHS1_pwm_val => PHS1_pwm_val,
      PHS1_status => PHS1_status,
      PHS1_irq_mask => PHS1_irq_mask,
      PHS1_irq0_L2S => PHS1_irq0_L2S,
      PHS1_irq1_S2L => PHS1_irq1_S2L,
      PHS1_irq0_clr => PHS1_irq0_clr,
      PHS1_irq1_clr => PHS1_irq1_clr,
      PHS1_vld_out => PHS1_vld_out,
      PHS1_vld_in => PHS1_vld_in,
      PHS2_pwm_val => PHS2_pwm_val,
      PHS2_status => PHS2_status,
      PHS2_irq_mask => PHS2_irq_mask,
      PHS2_irq0_L2S => PHS2_irq0_L2S,
      PHS2_irq1_S2L => PHS2_irq1_S2L,
      PHS2_irq0_clr => PHS2_irq0_clr,
      PHS2_irq1_clr => PHS2_irq1_clr,
      PHS2_vld_out => PHS2_vld_out,
      PHS2_vld_in => PHS2_vld_in,
      PHS3_pwm_val => PHS3_pwm_val,
      PHS3_status => PHS3_status,
      PHS3_irq_mask => PHS3_irq_mask,
      PHS3_irq0_L2S => PHS3_irq0_L2S,
      PHS3_irq1_S2L => PHS3_irq1_S2L,
      PHS3_irq0_clr => PHS3_irq0_clr,
      PHS3_irq1_clr => PHS3_irq1_clr,
      PHS3_vld_out => PHS3_vld_out,
      PHS3_vld_in => PHS3_vld_in,
      PHS4_pwm_val => PHS4_pwm_val,
      PHS4_status => PHS4_status,
      PHS4_irq_mask => PHS4_irq_mask,
      PHS4_irq0_L2S => PHS4_irq0_L2S,
      PHS4_irq1_S2L => PHS4_irq1_S2L,
      PHS4_irq0_clr => PHS4_irq0_clr,
      PHS4_irq1_clr => PHS4_irq1_clr,
      PHS4_vld_out => PHS4_vld_out,
      PHS4_vld_in => PHS4_vld_in,
      PHS5_pwm_val => PHS5_pwm_val,
      PHS5_status => PHS5_status,
      PHS5_irq_mask => PHS5_irq_mask,
      PHS5_irq0_L2S => PHS5_irq0_L2S,
      PHS5_irq1_S2L => PHS5_irq1_S2L,
      PHS5_irq0_clr => PHS5_irq0_clr,
      PHS5_irq1_clr => PHS5_irq1_clr,
      PHS5_vld_out => PHS5_vld_out,
      PHS5_vld_in => PHS5_vld_in,
      PHS6_pwm_val => PHS6_pwm_val,
      PHS6_status => PHS6_status,
      PHS6_irq_mask => PHS6_irq_mask,
      PHS6_irq0_L2S => PHS6_irq0_L2S,
      PHS6_irq1_S2L => PHS6_irq1_S2L,
      PHS6_irq0_clr => PHS6_irq0_clr,
      PHS6_irq1_clr => PHS6_irq1_clr,
      PHS6_vld_out => PHS6_vld_out,
      PHS6_vld_in => PHS6_vld_in,
      PHS7_pwm_val => PHS7_pwm_val,
      PHS7_status => PHS7_status,
      PHS7_irq_mask => PHS7_irq_mask,
      PHS7_irq0_L2S => PHS7_irq0_L2S,
      PHS7_irq1_S2L => PHS7_irq1_S2L,
      PHS7_irq0_clr => PHS7_irq0_clr,
      PHS7_irq1_clr => PHS7_irq1_clr,
      PHS7_vld_out => PHS7_vld_out,
      PHS7_vld_in => PHS7_vld_in,
      PHS8_pwm_val => PHS8_pwm_val,
      PHS8_status => PHS8_status,
      PHS8_irq_mask => PHS8_irq_mask,
      PHS8_irq0_L2S => PHS8_irq0_L2S,
      PHS8_irq1_S2L => PHS8_irq1_S2L,
      PHS8_irq0_clr => PHS8_irq0_clr,
      PHS8_irq1_clr => PHS8_irq1_clr,
      PHS8_vld_out => PHS8_vld_out,
      PHS8_vld_in => PHS8_vld_in,
      PHS9_pwm_val => PHS9_pwm_val,
      PHS9_status => PHS9_status,
      PHS9_irq_mask => PHS9_irq_mask,
      PHS9_irq0_L2S => PHS9_irq0_L2S,
      PHS9_irq1_S2L => PHS9_irq1_S2L,
      PHS9_irq0_clr => PHS9_irq0_clr,
      PHS9_irq1_clr => PHS9_irq1_clr,
      PHS9_vld_out => PHS9_vld_out,
      PHS9_vld_in => PHS9_vld_in,
      PHS10_pwm_val => PHS10_pwm_val,
      PHS10_status => PHS10_status,
      PHS10_irq_mask => PHS10_irq_mask,
      PHS10_irq0_L2S => PHS10_irq0_L2S,
      PHS10_irq1_S2L => PHS10_irq1_S2L,
      PHS10_irq0_clr => PHS10_irq0_clr,
      PHS10_irq1_clr => PHS10_irq1_clr,
      PHS10_vld_out => PHS10_vld_out,
      PHS10_vld_in => PHS10_vld_in,
      PHS11_pwm_val => PHS11_pwm_val,
      PHS11_status => PHS11_status,
      PHS11_irq_mask => PHS11_irq_mask,
      PHS11_irq0_L2S => PHS11_irq0_L2S,
      PHS11_irq1_S2L => PHS11_irq1_S2L,
      PHS11_irq0_clr => PHS11_irq0_clr,
      PHS11_irq1_clr => PHS11_irq1_clr,
      PHS11_vld_out => PHS11_vld_out,
      PHS11_vld_in => PHS11_vld_in,
      PHS12_pwm_val => PHS12_pwm_val,
      PHS12_status => PHS12_status,
      PHS12_irq_mask => PHS12_irq_mask,
      PHS12_irq0_L2S => PHS12_irq0_L2S,
      PHS12_irq1_S2L => PHS12_irq1_S2L,
      PHS12_irq0_clr => PHS12_irq0_clr,
      PHS12_irq1_clr => PHS12_irq1_clr,
      PHS13_irq1_clr => PHS13_irq1_clr,
      PHS12_vld_out => PHS12_vld_out,
      PHS12_vld_in => PHS12_vld_in,
      PHS13_pwm_val => PHS13_pwm_val,
      PHS13_status => PHS13_status,
      PHS13_irq_mask => PHS13_irq_mask,
      PHS13_irq0_L2S => PHS13_irq0_L2S,
      PHS13_irq1_S2L => PHS13_irq1_S2L,
      PHS13_irq0_clr => PHS13_irq0_clr,
      PHS13_vld_out => PHS13_vld_out,
      PHS13_vld_in => PHS13_vld_in,
      PHS14_pwm_val => PHS14_pwm_val,
      PHS14_status => PHS14_status,
      PHS14_irq_mask => PHS14_irq_mask,
      PHS14_irq0_L2S => PHS14_irq0_L2S,
      PHS14_irq1_S2L => PHS14_irq1_S2L,
      PHS14_irq0_clr => PHS14_irq0_clr,
      PHS14_irq1_clr => PHS14_irq1_clr,
      PHS14_vld_out => PHS14_vld_out,
      PHS14_vld_in => PHS14_vld_in,
      PHS15_pwm_val => PHS15_pwm_val,
      PHS15_status => PHS15_status,
      PHS15_irq_mask => PHS15_irq_mask,
      PHS15_irq0_L2S => PHS15_irq0_L2S,
      PHS15_irq1_S2L => PHS15_irq1_S2L,
      PHS15_irq0_clr => PHS15_irq0_clr,
      PHS15_irq1_clr => PHS15_irq1_clr,
      PHS15_vld_out => PHS15_vld_out,
      PHS15_vld_in => PHS15_vld_in,
      PHS16_pwm_val => PHS16_pwm_val,
      PHS16_status => PHS16_status,
      PHS16_irq_mask => PHS16_irq_mask,
      PHS16_irq0_L2S => PHS16_irq0_L2S,
      PHS16_irq1_S2L => PHS16_irq1_S2L,
      PHS16_irq0_clr => PHS16_irq0_clr,
      PHS16_irq1_clr => PHS16_irq1_clr,
      PHS16_vld_out => PHS16_vld_out,
      PHS16_vld_in => PHS16_vld_in,
      PHS17_pwm_val => PHS17_pwm_val,
      PHS17_status => PHS17_status,
      PHS17_irq_mask => PHS17_irq_mask,
      PHS17_irq0_L2S => PHS17_irq0_L2S,
      PHS17_irq1_S2L => PHS17_irq1_S2L,
      PHS17_irq0_clr => PHS17_irq0_clr,
      PHS17_irq1_clr => PHS17_irq1_clr,
      PHS17_vld_out => PHS17_vld_out,
      PHS17_vld_in => PHS17_vld_in,
      PHS18_pwm_val => PHS18_pwm_val,
      PHS18_status => PHS18_status,
      PHS18_irq_mask => PHS18_irq_mask,
      PHS18_irq0_L2S => PHS18_irq0_L2S,
      PHS18_irq1_S2L => PHS18_irq1_S2L,
      PHS18_irq0_clr => PHS18_irq0_clr,
      PHS18_irq1_clr => PHS18_irq1_clr,
      PHS18_vld_out => PHS18_vld_out,
      PHS18_vld_in => PHS18_vld_in,
      PHS19_pwm_val => PHS19_pwm_val,
      PHS19_status => PHS19_status,
      PHS19_irq_mask => PHS19_irq_mask,
      PHS19_irq0_L2S => PHS19_irq0_L2S,
      PHS19_irq1_S2L => PHS19_irq1_S2L,
      PHS19_irq0_clr => PHS19_irq0_clr,
      PHS19_irq1_clr => PHS19_irq1_clr,
      PHS19_vld_out => PHS19_vld_out,
      PHS19_vld_in => PHS19_vld_in,
      PHS20_pwm_val => PHS20_pwm_val,
      PHS20_status => PHS20_status,
      PHS20_irq_mask => PHS20_irq_mask,
      PHS20_irq0_L2S => PHS20_irq0_L2S,
      PHS20_irq1_S2L => PHS20_irq1_S2L,
      PHS20_irq0_clr => PHS20_irq0_clr,
      PHS20_irq1_clr => PHS20_irq1_clr,
      PHS20_vld_out => PHS20_vld_out,
      PHS20_vld_in => PHS20_vld_in,
      PHS21_pwm_val => PHS21_pwm_val,
      PHS21_status => PHS21_status,
      PHS21_irq_mask => PHS21_irq_mask,
      PHS21_irq0_L2S => PHS21_irq0_L2S,
      PHS21_irq1_S2L => PHS21_irq1_S2L,
      PHS21_irq0_clr => PHS21_irq0_clr,
      PHS21_irq1_clr => PHS21_irq1_clr,
      PHS21_vld_out => PHS21_vld_out,
      PHS21_vld_in => PHS21_vld_in,
      PHS22_pwm_val => PHS22_pwm_val,
      PHS22_status => PHS22_status,
      PHS22_irq_mask => PHS22_irq_mask,
      PHS22_irq0_L2S => PHS22_irq0_L2S,
      PHS22_irq1_S2L => PHS22_irq1_S2L,
      PHS22_irq0_clr => PHS22_irq0_clr,
      PHS22_irq1_clr => PHS22_irq1_clr,
      PHS22_vld_out => PHS22_vld_out,
      PHS22_vld_in => PHS22_vld_in,
      PHS23_pwm_val => PHS23_pwm_val,
      PHS23_status => PHS23_status,
      PHS23_irq_mask => PHS23_irq_mask,
      PHS23_irq0_L2S => PHS23_irq0_L2S,
      PHS23_irq1_S2L => PHS23_irq1_S2L,
      PHS23_irq0_clr => PHS23_irq0_clr,
      PHS23_irq1_clr => PHS23_irq1_clr,
      PHS23_vld_out => PHS23_vld_out,
      PHS23_vld_in => PHS23_vld_in,
      PHS24_pwm_val => PHS24_pwm_val,
      PHS24_status => PHS24_status,
      PHS24_irq_mask => PHS24_irq_mask,
      PHS24_irq0_L2S => PHS24_irq0_L2S,
      PHS24_irq1_S2L => PHS24_irq1_S2L,
      PHS24_irq0_clr => PHS24_irq0_clr,
      PHS24_irq1_clr => PHS24_irq1_clr,
      PHS24_vld_out => PHS24_vld_out,
      PHS24_vld_in => PHS24_vld_in,
      PHS25_pwm_val => PHS25_pwm_val,
      PHS25_status => PHS25_status,
      PHS25_irq_mask => PHS25_irq_mask,
      PHS25_irq0_L2S => PHS25_irq0_L2S,
      PHS25_irq1_S2L => PHS25_irq1_S2L,
      PHS25_irq0_clr => PHS25_irq0_clr,
      PHS25_irq1_clr => PHS25_irq1_clr,
      PHS25_vld_out => PHS25_vld_out,
      PHS25_vld_in => PHS25_vld_in,
      PHS26_pwm_val => PHS26_pwm_val,
      PHS26_status => PHS26_status,
      PHS26_irq_mask => PHS26_irq_mask,
      PHS26_irq0_L2S => PHS26_irq0_L2S,
      PHS26_irq1_S2L => PHS26_irq1_S2L,
      PHS26_irq0_clr => PHS26_irq0_clr,
      PHS26_irq1_clr => PHS26_irq1_clr,
      PHS26_vld_out => PHS26_vld_out,
      PHS26_vld_in => PHS26_vld_in,
      PHS27_pwm_val => PHS27_pwm_val,
      PHS27_status => PHS27_status,
      PHS27_irq_mask => PHS27_irq_mask,
      PHS27_irq0_L2S => PHS27_irq0_L2S,
      PHS27_irq1_S2L => PHS27_irq1_S2L,
      PHS27_irq0_clr => PHS27_irq0_clr,
      PHS27_irq1_clr => PHS27_irq1_clr,
      PHS27_vld_out => PHS27_vld_out,
      PHS27_vld_in => PHS27_vld_in,
      PHS28_pwm_val => PHS28_pwm_val,
      PHS28_status => PHS28_status,
      PHS28_irq_mask => PHS28_irq_mask,
      PHS28_irq0_L2S => PHS28_irq0_L2S,
      PHS28_irq1_S2L => PHS28_irq1_S2L,
      PHS28_irq0_clr => PHS28_irq0_clr,
      PHS28_irq1_clr => PHS28_irq1_clr,
      PHS28_vld_out => PHS28_vld_out,
      PHS28_vld_in => PHS28_vld_in,
      PHS29_pwm_val => PHS29_pwm_val,
      PHS29_status => PHS29_status,
      PHS29_irq_mask => PHS29_irq_mask,
      PHS29_irq0_L2S => PHS29_irq0_L2S,
      PHS29_irq1_S2L => PHS29_irq1_S2L,
      PHS29_irq0_clr => PHS29_irq0_clr,
      PHS29_irq1_clr => PHS29_irq1_clr,
      PHS29_vld_out => PHS29_vld_out,
      PHS29_vld_in => PHS29_vld_in,
      PHS30_pwm_val => PHS30_pwm_val,
      PHS30_status => PHS30_status,
      PHS30_irq_mask => PHS30_irq_mask,
      PHS30_irq0_L2S => PHS30_irq0_L2S,
      PHS30_irq1_S2L => PHS30_irq1_S2L,
      PHS30_irq0_clr => PHS30_irq0_clr,
      PHS30_irq1_clr => PHS30_irq1_clr,
      PHS30_vld_out => PHS30_vld_out,
      PHS30_vld_in => PHS30_vld_in,
      PHS31_pwm_val => PHS31_pwm_val,
      PHS31_status => PHS31_status,
      PHS31_irq_mask => PHS31_irq_mask,
      PHS31_irq0_L2S => PHS31_irq0_L2S,
      PHS31_irq1_S2L => PHS31_irq1_S2L,
      PHS31_irq0_clr => PHS31_irq0_clr,
      PHS31_irq1_clr => PHS31_irq1_clr,
      PHS31_vld_out => PHS31_vld_out,
      PHS31_vld_in => PHS31_vld_in,
      PHS32_pwm_val => PHS32_pwm_val,
      PHS32_status => PHS32_status,
      PHS32_irq_mask => PHS32_irq_mask,
      PHS32_irq0_L2S => PHS32_irq0_L2S,
      PHS32_irq1_S2L => PHS32_irq1_S2L,
      PHS32_irq0_clr => PHS32_irq0_clr,
      PHS32_irq1_clr => PHS32_irq1_clr,
      PHS32_vld_out => PHS32_vld_out,
      PHS32_vld_in => PHS32_vld_in,
      PHS33_pwm_val => PHS33_pwm_val,
      PHS33_status => PHS33_status,
      PHS33_irq_mask => PHS33_irq_mask,
      PHS33_irq0_L2S => PHS33_irq0_L2S,
      PHS33_irq1_S2L => PHS33_irq1_S2L,
      PHS33_irq0_clr => PHS33_irq0_clr,
      PHS33_irq1_clr => PHS33_irq1_clr,
      PHS33_vld_out => PHS33_vld_out,
      PHS33_vld_in => PHS33_vld_in,
      PHS34_pwm_val => PHS34_pwm_val,
      PHS34_status => PHS34_status,
      PHS34_irq_mask => PHS34_irq_mask,
      PHS34_irq0_L2S => PHS34_irq0_L2S,
      PHS34_irq1_S2L => PHS34_irq1_S2L,
      PHS34_irq0_clr => PHS34_irq0_clr,
      PHS34_irq1_clr => PHS34_irq1_clr,
      PHS34_vld_out => PHS34_vld_out,
      PHS34_vld_in => PHS34_vld_in,
      PHS35_pwm_val => PHS35_pwm_val,
      PHS35_status => PHS35_status,
      PHS35_irq_mask => PHS35_irq_mask,
      PHS35_irq0_L2S => PHS35_irq0_L2S,
      PHS35_irq1_S2L => PHS35_irq1_S2L,
      PHS35_irq0_clr => PHS35_irq0_clr,
      PHS35_irq1_clr => PHS35_irq1_clr,
      PHS35_vld_out => PHS35_vld_out,
      PHS35_vld_in => PHS35_vld_in,
      PHS36_pwm_val => PHS36_pwm_val,
      PHS36_status => PHS36_status,
      PHS36_irq_mask => PHS36_irq_mask,
      PHS36_irq0_L2S => PHS36_irq0_L2S,
      PHS36_irq1_S2L => PHS36_irq1_S2L,
      PHS36_irq0_clr => PHS36_irq0_clr,
      PHS36_irq1_clr => PHS36_irq1_clr,
      PHS36_vld_out => PHS36_vld_out,
      PHS36_vld_in => PHS36_vld_in,
      PHS37_pwm_val => PHS37_pwm_val,
      PHS37_status => PHS37_status,
      PHS37_irq_mask => PHS37_irq_mask,
      PHS37_irq0_L2S => PHS37_irq0_L2S,
      PHS37_irq1_S2L => PHS37_irq1_S2L,
      PHS37_irq0_clr => PHS37_irq0_clr,
      PHS37_irq1_clr => PHS37_irq1_clr,
      PHS37_vld_out => PHS37_vld_out,
      PHS37_vld_in => PHS37_vld_in,
      PHS38_pwm_val => PHS38_pwm_val,
      PHS38_status => PHS38_status,
      PHS38_irq_mask => PHS38_irq_mask,
      PHS38_irq0_L2S => PHS38_irq0_L2S,
      PHS38_irq1_S2L => PHS38_irq1_S2L,
      PHS38_irq0_clr => PHS38_irq0_clr,
      PHS38_irq1_clr => PHS38_irq1_clr,
      PHS38_vld_out => PHS38_vld_out,
      PHS38_vld_in => PHS38_vld_in,
      PHS39_pwm_val => PHS39_pwm_val,
      PHS39_status => PHS39_status,
      PHS39_irq_mask => PHS39_irq_mask,
      PHS39_irq0_L2S => PHS39_irq0_L2S,
      PHS39_irq1_S2L => PHS39_irq1_S2L,
      PHS39_irq0_clr => PHS39_irq0_clr,
      PHS39_irq1_clr => PHS39_irq1_clr,
      PHS39_vld_out => PHS39_vld_out,
      PHS39_vld_in => PHS39_vld_in,
      PHS40_pwm_val => PHS40_pwm_val,
      PHS40_status => PHS40_status,
      PHS40_irq_mask => PHS40_irq_mask,
      PHS40_irq0_L2S => PHS40_irq0_L2S,
      PHS40_irq1_S2L => PHS40_irq1_S2L,
      PHS40_irq0_clr => PHS40_irq0_clr,
      PHS40_irq1_clr => PHS40_irq1_clr,
      PHS40_vld_out => PHS40_vld_out,
      PHS40_vld_in => PHS40_vld_in,
      PHS41_pwm_val => PHS41_pwm_val,
      PHS41_status => PHS41_status,
      PHS41_irq_mask => PHS41_irq_mask,
      PHS41_irq0_L2S => PHS41_irq0_L2S,
      PHS41_irq1_S2L => PHS41_irq1_S2L,
      PHS41_irq0_clr => PHS41_irq0_clr,
      PHS41_irq1_clr => PHS41_irq1_clr,
      PHS41_vld_out => PHS41_vld_out,
      PHS41_vld_in => PHS41_vld_in,
      PHS42_pwm_val => PHS42_pwm_val,
      PHS42_status => PHS42_status,
      PHS42_irq_mask => PHS42_irq_mask,
      PHS42_irq0_L2S => PHS42_irq0_L2S,
      PHS42_irq1_S2L => PHS42_irq1_S2L,
      PHS42_irq0_clr => PHS42_irq0_clr,
      PHS42_irq1_clr => PHS42_irq1_clr,
      PHS42_vld_out => PHS42_vld_out,
      PHS42_vld_in => PHS42_vld_in,
      PHS43_pwm_val => PHS43_pwm_val,
      PHS43_status => PHS43_status,
      PHS43_irq_mask => PHS43_irq_mask,
      PHS43_irq0_L2S => PHS43_irq0_L2S,
      PHS43_irq1_S2L => PHS43_irq1_S2L,
      PHS43_irq0_clr => PHS43_irq0_clr,
      PHS43_irq1_clr => PHS43_irq1_clr,
      PHS43_vld_out => PHS43_vld_out,
      PHS43_vld_in => PHS43_vld_in,
      PHS44_pwm_val => PHS44_pwm_val,
      PHS44_status => PHS44_status,
      PHS44_irq_mask => PHS44_irq_mask,
      PHS44_irq0_L2S => PHS44_irq0_L2S,
      PHS44_irq1_S2L => PHS44_irq1_S2L,
      PHS44_irq0_clr => PHS44_irq0_clr,
      PHS44_irq1_clr => PHS44_irq1_clr,
      PHS44_vld_out => PHS44_vld_out,
      PHS44_vld_in => PHS44_vld_in,
      PHS45_pwm_val => PHS45_pwm_val,
      PHS45_status => PHS45_status,
      PHS45_irq_mask => PHS45_irq_mask,
      PHS45_irq0_L2S => PHS45_irq0_L2S,
      PHS45_irq1_S2L => PHS45_irq1_S2L,
      PHS45_irq0_clr => PHS45_irq0_clr,
      PHS45_irq1_clr => PHS45_irq1_clr,
      PHS45_vld_out => PHS45_vld_out,
      PHS45_vld_in => PHS45_vld_in,
      PHS46_pwm_val => PHS46_pwm_val,
      PHS46_status => PHS46_status,
      PHS46_irq_mask => PHS46_irq_mask,
      PHS46_irq0_L2S => PHS46_irq0_L2S,
      PHS46_irq1_S2L => PHS46_irq1_S2L,
      PHS46_irq0_clr => PHS46_irq0_clr,
      PHS46_irq1_clr => PHS46_irq1_clr,
      PHS46_vld_out => PHS46_vld_out,
      PHS46_vld_in => PHS46_vld_in,
      PHS47_pwm_val => PHS47_pwm_val,
      PHS47_status => PHS47_status,
      PHS47_irq_mask => PHS47_irq_mask,
      PHS47_irq0_L2S => PHS47_irq0_L2S,
      PHS47_irq1_S2L => PHS47_irq1_S2L,
      PHS47_irq0_clr => PHS47_irq0_clr,
      PHS47_irq1_clr => PHS47_irq1_clr,
      PHS47_vld_out => PHS47_vld_out,
      PHS47_vld_in => PHS47_vld_in,
      PHS48_pwm_val => PHS48_pwm_val,
      PHS48_status => PHS48_status,
      PHS48_irq_mask => PHS48_irq_mask,
      PHS48_irq0_L2S => PHS48_irq0_L2S,
      PHS48_irq1_S2L => PHS48_irq1_S2L,
      PHS48_irq0_clr => PHS48_irq0_clr,
      PHS48_irq1_clr => PHS48_irq1_clr,
      PHS48_vld_out => PHS48_vld_out,
      PHS48_vld_in => PHS48_vld_in,
      PHS49_pwm_val => PHS49_pwm_val,
      PHS49_status => PHS49_status,
      PHS49_irq_mask => PHS49_irq_mask,
      PHS49_irq0_L2S => PHS49_irq0_L2S,
      PHS49_irq1_S2L => PHS49_irq1_S2L,
      PHS49_irq0_clr => PHS49_irq0_clr,
      PHS49_irq1_clr => PHS49_irq1_clr,
      PHS49_vld_out => PHS49_vld_out,
      PHS49_vld_in => PHS49_vld_in,
      PHS_irqs_L2S_0 => PHS_irqs_L2S_0,
      PHS_irqs_L2S_1 => PHS_irqs_L2S_1,
      PHS_irq_L2S_0 => PHS_irq_L2S_0,
      PHS_irq_L2S_1 => PHS_irq_L2S_1,
      PHS_irqs_S2L_0 => PHS_irqs_S2L_0,
      PHS_irqs_S2L_1 => PHS_irqs_S2L_1,
      PHS_irq_S2L_0 => PHS_irq_S2L_0,
      PHS_irq_S2L_1 => PHS_irq_S2L_1,
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
END S7_PHS_regs_0_0_arch;
