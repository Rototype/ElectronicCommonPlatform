-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Wed Jul 29 04:13:42 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_PHS_regs_0_0_sim_netlist.vhdl
-- Design      : S7_PHS_regs_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    PHS0_vld_out : out STD_LOGIC;
    PHS1_vld_out : out STD_LOGIC;
    PHS2_vld_out : out STD_LOGIC;
    PHS3_vld_out : out STD_LOGIC;
    PHS4_vld_out : out STD_LOGIC;
    PHS5_vld_out : out STD_LOGIC;
    PHS6_vld_out : out STD_LOGIC;
    PHS7_vld_out : out STD_LOGIC;
    PHS8_vld_out : out STD_LOGIC;
    PHS9_vld_out : out STD_LOGIC;
    PHS10_vld_out : out STD_LOGIC;
    PHS11_vld_out : out STD_LOGIC;
    PHS12_vld_out : out STD_LOGIC;
    PHS13_vld_out : out STD_LOGIC;
    PHS14_vld_out : out STD_LOGIC;
    PHS15_vld_out : out STD_LOGIC;
    PHS16_vld_out : out STD_LOGIC;
    PHS17_vld_out : out STD_LOGIC;
    PHS18_vld_out : out STD_LOGIC;
    PHS19_vld_out : out STD_LOGIC;
    PHS20_vld_out : out STD_LOGIC;
    PHS21_vld_out : out STD_LOGIC;
    PHS22_vld_out : out STD_LOGIC;
    PHS23_vld_out : out STD_LOGIC;
    PHS24_vld_out : out STD_LOGIC;
    PHS25_vld_out : out STD_LOGIC;
    PHS26_vld_out : out STD_LOGIC;
    PHS27_vld_out : out STD_LOGIC;
    PHS28_vld_out : out STD_LOGIC;
    PHS29_vld_out : out STD_LOGIC;
    PHS30_vld_out : out STD_LOGIC;
    PHS31_vld_out : out STD_LOGIC;
    PHS32_vld_out : out STD_LOGIC;
    PHS33_vld_out : out STD_LOGIC;
    PHS34_vld_out : out STD_LOGIC;
    PHS35_vld_out : out STD_LOGIC;
    PHS36_vld_out : out STD_LOGIC;
    PHS37_vld_out : out STD_LOGIC;
    PHS38_vld_out : out STD_LOGIC;
    PHS39_vld_out : out STD_LOGIC;
    PHS40_vld_out : out STD_LOGIC;
    PHS41_vld_out : out STD_LOGIC;
    PHS42_vld_out : out STD_LOGIC;
    PHS43_vld_out : out STD_LOGIC;
    PHS44_vld_out : out STD_LOGIC;
    PHS45_vld_out : out STD_LOGIC;
    PHS46_vld_out : out STD_LOGIC;
    PHS47_vld_out : out STD_LOGIC;
    PHS48_vld_out : out STD_LOGIC;
    PHS49_vld_out : out STD_LOGIC;
    PHS_irq_L2S_0 : out STD_LOGIC;
    PHS_irq_L2S_1 : out STD_LOGIC;
    PHS_irq_S2L_0 : out STD_LOGIC;
    PHS_irq_S2L_1 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    slv_reg1 : out STD_LOGIC;
    slv_reg5 : out STD_LOGIC;
    slv_reg9 : out STD_LOGIC;
    slv_reg13 : out STD_LOGIC;
    slv_reg17 : out STD_LOGIC;
    slv_reg21 : out STD_LOGIC;
    slv_reg25 : out STD_LOGIC;
    slv_reg29 : out STD_LOGIC;
    slv_reg33 : out STD_LOGIC;
    slv_reg37 : out STD_LOGIC;
    slv_reg41 : out STD_LOGIC;
    slv_reg45 : out STD_LOGIC;
    slv_reg49 : out STD_LOGIC;
    slv_reg53 : out STD_LOGIC;
    slv_reg57 : out STD_LOGIC;
    slv_reg61 : out STD_LOGIC;
    slv_reg65 : out STD_LOGIC;
    slv_reg69 : out STD_LOGIC;
    slv_reg73 : out STD_LOGIC;
    slv_reg77 : out STD_LOGIC;
    slv_reg81 : out STD_LOGIC;
    slv_reg85 : out STD_LOGIC;
    slv_reg89 : out STD_LOGIC;
    slv_reg93 : out STD_LOGIC;
    slv_reg97 : out STD_LOGIC;
    slv_reg101 : out STD_LOGIC;
    slv_reg105 : out STD_LOGIC;
    slv_reg109 : out STD_LOGIC;
    slv_reg113 : out STD_LOGIC;
    slv_reg117 : out STD_LOGIC;
    slv_reg121 : out STD_LOGIC;
    slv_reg125 : out STD_LOGIC;
    slv_reg129 : out STD_LOGIC;
    slv_reg133 : out STD_LOGIC;
    slv_reg137 : out STD_LOGIC;
    slv_reg141 : out STD_LOGIC;
    slv_reg145 : out STD_LOGIC;
    slv_reg149 : out STD_LOGIC;
    slv_reg153 : out STD_LOGIC;
    slv_reg157 : out STD_LOGIC;
    slv_reg161 : out STD_LOGIC;
    slv_reg165 : out STD_LOGIC;
    slv_reg169 : out STD_LOGIC;
    slv_reg173 : out STD_LOGIC;
    slv_reg177 : out STD_LOGIC;
    slv_reg181 : out STD_LOGIC;
    slv_reg185 : out STD_LOGIC;
    slv_reg189 : out STD_LOGIC;
    slv_reg193 : out STD_LOGIC;
    slv_reg197 : out STD_LOGIC;
    PHS20_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS21_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS22_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS23_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS30_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS31_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS28_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS29_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS0_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS0_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS0_irq1_clr : out STD_LOGIC;
    PHS0_irq0_clr : out STD_LOGIC;
    PHS1_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS1_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS1_irq1_clr : out STD_LOGIC;
    PHS1_irq0_clr : out STD_LOGIC;
    PHS2_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS2_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS2_irq1_clr : out STD_LOGIC;
    PHS2_irq0_clr : out STD_LOGIC;
    PHS3_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS3_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS3_irq1_clr : out STD_LOGIC;
    PHS3_irq0_clr : out STD_LOGIC;
    PHS4_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS4_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS4_irq1_clr : out STD_LOGIC;
    PHS4_irq0_clr : out STD_LOGIC;
    PHS5_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS5_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS5_irq1_clr : out STD_LOGIC;
    PHS5_irq0_clr : out STD_LOGIC;
    PHS6_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS6_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS6_irq1_clr : out STD_LOGIC;
    PHS6_irq0_clr : out STD_LOGIC;
    PHS7_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS7_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS7_irq1_clr : out STD_LOGIC;
    PHS7_irq0_clr : out STD_LOGIC;
    PHS8_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS8_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS8_irq1_clr : out STD_LOGIC;
    PHS8_irq0_clr : out STD_LOGIC;
    PHS9_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS9_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS9_irq1_clr : out STD_LOGIC;
    PHS9_irq0_clr : out STD_LOGIC;
    PHS10_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS10_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS10_irq1_clr : out STD_LOGIC;
    PHS10_irq0_clr : out STD_LOGIC;
    PHS11_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS11_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS11_irq1_clr : out STD_LOGIC;
    PHS11_irq0_clr : out STD_LOGIC;
    PHS12_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS12_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS12_irq1_clr : out STD_LOGIC;
    PHS12_irq0_clr : out STD_LOGIC;
    PHS13_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS13_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS13_irq1_clr : out STD_LOGIC;
    PHS13_irq0_clr : out STD_LOGIC;
    PHS14_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS14_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS14_irq1_clr : out STD_LOGIC;
    PHS14_irq0_clr : out STD_LOGIC;
    PHS15_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS15_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS15_irq1_clr : out STD_LOGIC;
    PHS15_irq0_clr : out STD_LOGIC;
    PHS16_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS16_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS16_irq1_clr : out STD_LOGIC;
    PHS16_irq0_clr : out STD_LOGIC;
    PHS17_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS17_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS17_irq1_clr : out STD_LOGIC;
    PHS17_irq0_clr : out STD_LOGIC;
    PHS18_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS18_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS18_irq1_clr : out STD_LOGIC;
    PHS18_irq0_clr : out STD_LOGIC;
    PHS19_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS19_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS19_irq1_clr : out STD_LOGIC;
    PHS19_irq0_clr : out STD_LOGIC;
    PHS20_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS20_irq1_clr : out STD_LOGIC;
    PHS20_irq0_clr : out STD_LOGIC;
    PHS21_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS21_irq1_clr : out STD_LOGIC;
    PHS21_irq0_clr : out STD_LOGIC;
    PHS22_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS22_irq1_clr : out STD_LOGIC;
    PHS22_irq0_clr : out STD_LOGIC;
    PHS23_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS23_irq1_clr : out STD_LOGIC;
    PHS23_irq0_clr : out STD_LOGIC;
    PHS24_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS24_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS24_irq1_clr : out STD_LOGIC;
    PHS24_irq0_clr : out STD_LOGIC;
    PHS25_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS25_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS25_irq1_clr : out STD_LOGIC;
    PHS25_irq0_clr : out STD_LOGIC;
    PHS26_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS26_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS26_irq1_clr : out STD_LOGIC;
    PHS26_irq0_clr : out STD_LOGIC;
    PHS27_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS27_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS27_irq1_clr : out STD_LOGIC;
    PHS27_irq0_clr : out STD_LOGIC;
    PHS28_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS28_irq1_clr : out STD_LOGIC;
    PHS28_irq0_clr : out STD_LOGIC;
    PHS29_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS29_irq1_clr : out STD_LOGIC;
    PHS29_irq0_clr : out STD_LOGIC;
    PHS30_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS30_irq1_clr : out STD_LOGIC;
    PHS30_irq0_clr : out STD_LOGIC;
    PHS31_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS31_irq1_clr : out STD_LOGIC;
    PHS31_irq0_clr : out STD_LOGIC;
    PHS32_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS32_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS32_irq1_clr : out STD_LOGIC;
    PHS32_irq0_clr : out STD_LOGIC;
    PHS33_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS33_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS33_irq1_clr : out STD_LOGIC;
    PHS33_irq0_clr : out STD_LOGIC;
    PHS34_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS34_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS34_irq1_clr : out STD_LOGIC;
    PHS34_irq0_clr : out STD_LOGIC;
    PHS35_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS35_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS35_irq1_clr : out STD_LOGIC;
    PHS35_irq0_clr : out STD_LOGIC;
    PHS36_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS36_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS36_irq1_clr : out STD_LOGIC;
    PHS36_irq0_clr : out STD_LOGIC;
    PHS37_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS37_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS37_irq1_clr : out STD_LOGIC;
    PHS37_irq0_clr : out STD_LOGIC;
    PHS38_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS38_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS38_irq1_clr : out STD_LOGIC;
    PHS38_irq0_clr : out STD_LOGIC;
    PHS39_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS39_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS39_irq1_clr : out STD_LOGIC;
    PHS39_irq0_clr : out STD_LOGIC;
    PHS40_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS40_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS40_irq1_clr : out STD_LOGIC;
    PHS40_irq0_clr : out STD_LOGIC;
    PHS41_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS41_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS41_irq1_clr : out STD_LOGIC;
    PHS41_irq0_clr : out STD_LOGIC;
    PHS42_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS42_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS42_irq1_clr : out STD_LOGIC;
    PHS42_irq0_clr : out STD_LOGIC;
    PHS43_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS43_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS43_irq1_clr : out STD_LOGIC;
    PHS43_irq0_clr : out STD_LOGIC;
    PHS44_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS44_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS44_irq1_clr : out STD_LOGIC;
    PHS44_irq0_clr : out STD_LOGIC;
    PHS45_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS45_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS45_irq1_clr : out STD_LOGIC;
    PHS45_irq0_clr : out STD_LOGIC;
    PHS46_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS46_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS46_irq1_clr : out STD_LOGIC;
    PHS46_irq0_clr : out STD_LOGIC;
    PHS47_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS47_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS47_irq1_clr : out STD_LOGIC;
    PHS47_irq0_clr : out STD_LOGIC;
    PHS48_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS48_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS48_irq1_clr : out STD_LOGIC;
    PHS48_irq0_clr : out STD_LOGIC;
    PHS49_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS49_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS49_irq1_clr : out STD_LOGIC;
    PHS49_irq0_clr : out STD_LOGIC;
    PHS_irqs_L2S_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_L2S_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 24 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_0 : in STD_LOGIC;
    \slv_reg1_reg[0]_0\ : in STD_LOGIC;
    \slv_reg5_reg[0]_0\ : in STD_LOGIC;
    \slv_reg9_reg[0]_0\ : in STD_LOGIC;
    \slv_reg13_reg[0]_0\ : in STD_LOGIC;
    \slv_reg17_reg[0]_0\ : in STD_LOGIC;
    \slv_reg21_reg[0]_0\ : in STD_LOGIC;
    \slv_reg25_reg[0]_0\ : in STD_LOGIC;
    \slv_reg29_reg[0]_0\ : in STD_LOGIC;
    \slv_reg33_reg[0]_0\ : in STD_LOGIC;
    \slv_reg37_reg[0]_0\ : in STD_LOGIC;
    \slv_reg41_reg[0]_0\ : in STD_LOGIC;
    \slv_reg45_reg[0]_0\ : in STD_LOGIC;
    \slv_reg49_reg[0]_0\ : in STD_LOGIC;
    \slv_reg53_reg[0]_0\ : in STD_LOGIC;
    \slv_reg57_reg[0]_0\ : in STD_LOGIC;
    \slv_reg61_reg[0]_0\ : in STD_LOGIC;
    \slv_reg65_reg[0]_0\ : in STD_LOGIC;
    \slv_reg69_reg[0]_0\ : in STD_LOGIC;
    \slv_reg73_reg[0]_0\ : in STD_LOGIC;
    \slv_reg77_reg[0]_0\ : in STD_LOGIC;
    \slv_reg81_reg[0]_0\ : in STD_LOGIC;
    \slv_reg85_reg[0]_0\ : in STD_LOGIC;
    \slv_reg89_reg[0]_0\ : in STD_LOGIC;
    \slv_reg93_reg[0]_0\ : in STD_LOGIC;
    \slv_reg97_reg[0]_0\ : in STD_LOGIC;
    \slv_reg101_reg[0]_0\ : in STD_LOGIC;
    \slv_reg105_reg[0]_0\ : in STD_LOGIC;
    \slv_reg109_reg[0]_0\ : in STD_LOGIC;
    \slv_reg113_reg[0]_0\ : in STD_LOGIC;
    \slv_reg117_reg[0]_0\ : in STD_LOGIC;
    \slv_reg121_reg[0]_0\ : in STD_LOGIC;
    \slv_reg125_reg[0]_0\ : in STD_LOGIC;
    \slv_reg129_reg[0]_0\ : in STD_LOGIC;
    \slv_reg133_reg[0]_0\ : in STD_LOGIC;
    \slv_reg137_reg[0]_0\ : in STD_LOGIC;
    \slv_reg141_reg[0]_0\ : in STD_LOGIC;
    \slv_reg145_reg[0]_0\ : in STD_LOGIC;
    \slv_reg149_reg[0]_0\ : in STD_LOGIC;
    \slv_reg153_reg[0]_0\ : in STD_LOGIC;
    \slv_reg157_reg[0]_0\ : in STD_LOGIC;
    \slv_reg161_reg[0]_0\ : in STD_LOGIC;
    \slv_reg165_reg[0]_0\ : in STD_LOGIC;
    \slv_reg169_reg[0]_0\ : in STD_LOGIC;
    \slv_reg173_reg[0]_0\ : in STD_LOGIC;
    \slv_reg177_reg[0]_0\ : in STD_LOGIC;
    \slv_reg181_reg[0]_0\ : in STD_LOGIC;
    \slv_reg185_reg[0]_0\ : in STD_LOGIC;
    \slv_reg189_reg[0]_0\ : in STD_LOGIC;
    \slv_reg193_reg[0]_0\ : in STD_LOGIC;
    \slv_reg197_reg[0]_0\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PHS2_irq0_L2S : in STD_LOGIC;
    PHS24_irq0_L2S : in STD_LOGIC;
    PHS11_irq0_L2S : in STD_LOGIC;
    PHS23_irq0_L2S : in STD_LOGIC;
    PHS0_irq0_L2S : in STD_LOGIC;
    PHS22_irq0_L2S : in STD_LOGIC;
    PHS4_irq0_L2S : in STD_LOGIC;
    PHS1_irq0_L2S : in STD_LOGIC;
    PHS21_irq0_L2S : in STD_LOGIC;
    PHS8_irq0_L2S : in STD_LOGIC;
    PHS17_irq0_L2S : in STD_LOGIC;
    PHS20_irq0_L2S : in STD_LOGIC;
    PHS15_irq0_L2S : in STD_LOGIC;
    PHS19_irq0_L2S : in STD_LOGIC;
    PHS14_irq0_L2S : in STD_LOGIC;
    PHS18_irq0_L2S : in STD_LOGIC;
    PHS9_irq0_L2S : in STD_LOGIC;
    PHS7_irq0_L2S : in STD_LOGIC;
    PHS13_irq0_L2S : in STD_LOGIC;
    PHS16_irq0_L2S : in STD_LOGIC;
    PHS6_irq0_L2S : in STD_LOGIC;
    PHS12_irq0_L2S : in STD_LOGIC;
    PHS3_irq0_L2S : in STD_LOGIC;
    PHS10_irq0_L2S : in STD_LOGIC;
    PHS5_irq0_L2S : in STD_LOGIC;
    PHS27_irq0_L2S : in STD_LOGIC;
    PHS49_irq0_L2S : in STD_LOGIC;
    PHS36_irq0_L2S : in STD_LOGIC;
    PHS48_irq0_L2S : in STD_LOGIC;
    PHS25_irq0_L2S : in STD_LOGIC;
    PHS47_irq0_L2S : in STD_LOGIC;
    PHS29_irq0_L2S : in STD_LOGIC;
    PHS26_irq0_L2S : in STD_LOGIC;
    PHS46_irq0_L2S : in STD_LOGIC;
    PHS33_irq0_L2S : in STD_LOGIC;
    PHS42_irq0_L2S : in STD_LOGIC;
    PHS45_irq0_L2S : in STD_LOGIC;
    PHS40_irq0_L2S : in STD_LOGIC;
    PHS44_irq0_L2S : in STD_LOGIC;
    PHS39_irq0_L2S : in STD_LOGIC;
    PHS43_irq0_L2S : in STD_LOGIC;
    PHS34_irq0_L2S : in STD_LOGIC;
    PHS32_irq0_L2S : in STD_LOGIC;
    PHS38_irq0_L2S : in STD_LOGIC;
    PHS41_irq0_L2S : in STD_LOGIC;
    PHS31_irq0_L2S : in STD_LOGIC;
    PHS37_irq0_L2S : in STD_LOGIC;
    PHS28_irq0_L2S : in STD_LOGIC;
    PHS35_irq0_L2S : in STD_LOGIC;
    PHS30_irq0_L2S : in STD_LOGIC;
    PHS2_irq1_S2L : in STD_LOGIC;
    PHS24_irq1_S2L : in STD_LOGIC;
    PHS11_irq1_S2L : in STD_LOGIC;
    PHS23_irq1_S2L : in STD_LOGIC;
    PHS0_irq1_S2L : in STD_LOGIC;
    PHS22_irq1_S2L : in STD_LOGIC;
    PHS4_irq1_S2L : in STD_LOGIC;
    PHS1_irq1_S2L : in STD_LOGIC;
    PHS21_irq1_S2L : in STD_LOGIC;
    PHS8_irq1_S2L : in STD_LOGIC;
    PHS17_irq1_S2L : in STD_LOGIC;
    PHS20_irq1_S2L : in STD_LOGIC;
    PHS15_irq1_S2L : in STD_LOGIC;
    PHS19_irq1_S2L : in STD_LOGIC;
    PHS14_irq1_S2L : in STD_LOGIC;
    PHS18_irq1_S2L : in STD_LOGIC;
    PHS9_irq1_S2L : in STD_LOGIC;
    PHS7_irq1_S2L : in STD_LOGIC;
    PHS13_irq1_S2L : in STD_LOGIC;
    PHS16_irq1_S2L : in STD_LOGIC;
    PHS6_irq1_S2L : in STD_LOGIC;
    PHS12_irq1_S2L : in STD_LOGIC;
    PHS3_irq1_S2L : in STD_LOGIC;
    PHS10_irq1_S2L : in STD_LOGIC;
    PHS5_irq1_S2L : in STD_LOGIC;
    PHS27_irq1_S2L : in STD_LOGIC;
    PHS49_irq1_S2L : in STD_LOGIC;
    PHS36_irq1_S2L : in STD_LOGIC;
    PHS48_irq1_S2L : in STD_LOGIC;
    PHS25_irq1_S2L : in STD_LOGIC;
    PHS47_irq1_S2L : in STD_LOGIC;
    PHS29_irq1_S2L : in STD_LOGIC;
    PHS26_irq1_S2L : in STD_LOGIC;
    PHS46_irq1_S2L : in STD_LOGIC;
    PHS33_irq1_S2L : in STD_LOGIC;
    PHS42_irq1_S2L : in STD_LOGIC;
    PHS45_irq1_S2L : in STD_LOGIC;
    PHS40_irq1_S2L : in STD_LOGIC;
    PHS44_irq1_S2L : in STD_LOGIC;
    PHS39_irq1_S2L : in STD_LOGIC;
    PHS43_irq1_S2L : in STD_LOGIC;
    PHS34_irq1_S2L : in STD_LOGIC;
    PHS32_irq1_S2L : in STD_LOGIC;
    PHS38_irq1_S2L : in STD_LOGIC;
    PHS41_irq1_S2L : in STD_LOGIC;
    PHS31_irq1_S2L : in STD_LOGIC;
    PHS37_irq1_S2L : in STD_LOGIC;
    PHS28_irq1_S2L : in STD_LOGIC;
    PHS35_irq1_S2L : in STD_LOGIC;
    PHS30_irq1_S2L : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0_S00_AXI is
  signal \^phs0_irq0_clr\ : STD_LOGIC;
  signal \^phs0_irq1_clr\ : STD_LOGIC;
  signal \^phs0_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs0_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS0_vld_out_i_1_n_0 : STD_LOGIC;
  signal PHS0_vld_out_i_2_n_0 : STD_LOGIC;
  signal PHS0_vld_out_i_3_n_0 : STD_LOGIC;
  signal \^phs10_irq0_clr\ : STD_LOGIC;
  signal \^phs10_irq1_clr\ : STD_LOGIC;
  signal \^phs10_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs10_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS10_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs11_irq0_clr\ : STD_LOGIC;
  signal \^phs11_irq1_clr\ : STD_LOGIC;
  signal \^phs11_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs11_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS11_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs12_irq0_clr\ : STD_LOGIC;
  signal \^phs12_irq1_clr\ : STD_LOGIC;
  signal \^phs12_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs12_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS12_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs13_irq0_clr\ : STD_LOGIC;
  signal \^phs13_irq1_clr\ : STD_LOGIC;
  signal \^phs13_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs13_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS13_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs14_irq0_clr\ : STD_LOGIC;
  signal \^phs14_irq1_clr\ : STD_LOGIC;
  signal \^phs14_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs14_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS14_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs15_irq0_clr\ : STD_LOGIC;
  signal \^phs15_irq1_clr\ : STD_LOGIC;
  signal \^phs15_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs15_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS15_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs16_irq0_clr\ : STD_LOGIC;
  signal \^phs16_irq1_clr\ : STD_LOGIC;
  signal \^phs16_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs16_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS16_vld_out_i_1_n_0 : STD_LOGIC;
  signal PHS16_vld_out_i_2_n_0 : STD_LOGIC;
  signal \^phs17_irq0_clr\ : STD_LOGIC;
  signal \^phs17_irq1_clr\ : STD_LOGIC;
  signal \^phs17_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs17_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS17_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs18_irq0_clr\ : STD_LOGIC;
  signal \^phs18_irq1_clr\ : STD_LOGIC;
  signal \^phs18_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs18_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS18_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs19_irq0_clr\ : STD_LOGIC;
  signal \^phs19_irq1_clr\ : STD_LOGIC;
  signal \^phs19_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs19_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS19_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs1_irq0_clr\ : STD_LOGIC;
  signal \^phs1_irq1_clr\ : STD_LOGIC;
  signal \^phs1_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs1_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS1_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs20_irq0_clr\ : STD_LOGIC;
  signal \^phs20_irq1_clr\ : STD_LOGIC;
  signal \^phs20_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs20_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS20_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs21_irq0_clr\ : STD_LOGIC;
  signal \^phs21_irq1_clr\ : STD_LOGIC;
  signal \^phs21_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs21_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS21_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs22_irq0_clr\ : STD_LOGIC;
  signal \^phs22_irq1_clr\ : STD_LOGIC;
  signal \^phs22_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs22_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS22_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs23_irq0_clr\ : STD_LOGIC;
  signal \^phs23_irq1_clr\ : STD_LOGIC;
  signal \^phs23_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs23_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS23_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs24_irq0_clr\ : STD_LOGIC;
  signal \^phs24_irq1_clr\ : STD_LOGIC;
  signal \^phs24_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs24_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS24_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs25_irq0_clr\ : STD_LOGIC;
  signal \^phs25_irq1_clr\ : STD_LOGIC;
  signal \^phs25_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs25_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS25_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs26_irq0_clr\ : STD_LOGIC;
  signal \^phs26_irq1_clr\ : STD_LOGIC;
  signal \^phs26_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs26_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS26_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs27_irq0_clr\ : STD_LOGIC;
  signal \^phs27_irq1_clr\ : STD_LOGIC;
  signal \^phs27_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs27_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS27_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs28_irq0_clr\ : STD_LOGIC;
  signal \^phs28_irq1_clr\ : STD_LOGIC;
  signal \^phs28_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs28_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS28_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs29_irq0_clr\ : STD_LOGIC;
  signal \^phs29_irq1_clr\ : STD_LOGIC;
  signal \^phs29_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs29_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS29_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs2_irq0_clr\ : STD_LOGIC;
  signal \^phs2_irq1_clr\ : STD_LOGIC;
  signal \^phs2_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs2_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS2_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs30_irq0_clr\ : STD_LOGIC;
  signal \^phs30_irq1_clr\ : STD_LOGIC;
  signal \^phs30_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs30_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS30_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs31_irq0_clr\ : STD_LOGIC;
  signal \^phs31_irq1_clr\ : STD_LOGIC;
  signal \^phs31_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs31_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS31_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs32_irq0_clr\ : STD_LOGIC;
  signal \^phs32_irq1_clr\ : STD_LOGIC;
  signal \^phs32_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs32_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS32_vld_out_i_1_n_0 : STD_LOGIC;
  signal PHS32_vld_out_i_2_n_0 : STD_LOGIC;
  signal \^phs33_irq0_clr\ : STD_LOGIC;
  signal \^phs33_irq1_clr\ : STD_LOGIC;
  signal \^phs33_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs33_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS33_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs34_irq0_clr\ : STD_LOGIC;
  signal \^phs34_irq1_clr\ : STD_LOGIC;
  signal \^phs34_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs34_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS34_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs35_irq0_clr\ : STD_LOGIC;
  signal \^phs35_irq1_clr\ : STD_LOGIC;
  signal \^phs35_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs35_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS35_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs36_irq0_clr\ : STD_LOGIC;
  signal \^phs36_irq1_clr\ : STD_LOGIC;
  signal \^phs36_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs36_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS36_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs37_irq0_clr\ : STD_LOGIC;
  signal \^phs37_irq1_clr\ : STD_LOGIC;
  signal \^phs37_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs37_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS37_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs38_irq0_clr\ : STD_LOGIC;
  signal \^phs38_irq1_clr\ : STD_LOGIC;
  signal \^phs38_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs38_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS38_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs39_irq0_clr\ : STD_LOGIC;
  signal \^phs39_irq1_clr\ : STD_LOGIC;
  signal \^phs39_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs39_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS39_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs3_irq0_clr\ : STD_LOGIC;
  signal \^phs3_irq1_clr\ : STD_LOGIC;
  signal \^phs3_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs3_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS3_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs40_irq0_clr\ : STD_LOGIC;
  signal \^phs40_irq1_clr\ : STD_LOGIC;
  signal \^phs40_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs40_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS40_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs41_irq0_clr\ : STD_LOGIC;
  signal \^phs41_irq1_clr\ : STD_LOGIC;
  signal \^phs41_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs41_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS41_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs42_irq0_clr\ : STD_LOGIC;
  signal \^phs42_irq1_clr\ : STD_LOGIC;
  signal \^phs42_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs42_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS42_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs43_irq0_clr\ : STD_LOGIC;
  signal \^phs43_irq1_clr\ : STD_LOGIC;
  signal \^phs43_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs43_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS43_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs44_irq0_clr\ : STD_LOGIC;
  signal \^phs44_irq1_clr\ : STD_LOGIC;
  signal \^phs44_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs44_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS44_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs45_irq0_clr\ : STD_LOGIC;
  signal \^phs45_irq1_clr\ : STD_LOGIC;
  signal \^phs45_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs45_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS45_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs46_irq0_clr\ : STD_LOGIC;
  signal \^phs46_irq1_clr\ : STD_LOGIC;
  signal \^phs46_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs46_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS46_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs47_irq0_clr\ : STD_LOGIC;
  signal \^phs47_irq1_clr\ : STD_LOGIC;
  signal \^phs47_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs47_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS47_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs48_irq0_clr\ : STD_LOGIC;
  signal \^phs48_irq1_clr\ : STD_LOGIC;
  signal \^phs48_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs48_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS48_vld_out_i_1_n_0 : STD_LOGIC;
  signal PHS48_vld_out_i_2_n_0 : STD_LOGIC;
  signal \^phs49_irq0_clr\ : STD_LOGIC;
  signal \^phs49_irq1_clr\ : STD_LOGIC;
  signal \^phs49_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs49_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS49_vld_out_i_1_n_0 : STD_LOGIC;
  signal PHS49_vld_out_i_2_n_0 : STD_LOGIC;
  signal \^phs4_irq0_clr\ : STD_LOGIC;
  signal \^phs4_irq1_clr\ : STD_LOGIC;
  signal \^phs4_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs4_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS4_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs5_irq0_clr\ : STD_LOGIC;
  signal \^phs5_irq1_clr\ : STD_LOGIC;
  signal \^phs5_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs5_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS5_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs6_irq0_clr\ : STD_LOGIC;
  signal \^phs6_irq1_clr\ : STD_LOGIC;
  signal \^phs6_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs6_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS6_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs7_irq0_clr\ : STD_LOGIC;
  signal \^phs7_irq1_clr\ : STD_LOGIC;
  signal \^phs7_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs7_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS7_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs8_irq0_clr\ : STD_LOGIC;
  signal \^phs8_irq1_clr\ : STD_LOGIC;
  signal \^phs8_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs8_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS8_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^phs9_irq0_clr\ : STD_LOGIC;
  signal \^phs9_irq1_clr\ : STD_LOGIC;
  signal \^phs9_irq_mask\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^phs9_pwm_val\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS9_vld_out_i_1_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_00 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_10_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_11_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_12_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_13_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_2_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_3_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_4_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_5_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_6_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_7_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_8_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_0_i_9_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_10 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_10_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_11_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_12_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_13_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_2_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_3_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_4_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_5_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_6_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_7_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_8_n_0 : STD_LOGIC;
  signal PHS_irq_L2S_1_i_9_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_00 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_10_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_11_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_12_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_13_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_2_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_3_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_4_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_5_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_6_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_7_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_8_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_0_i_9_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_10 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_10_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_11_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_12_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_13_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_2_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_3_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_4_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_5_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_6_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_7_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_8_n_0 : STD_LOGIC;
  signal PHS_irq_S2L_1_i_9_n_0 : STD_LOGIC;
  signal \^phs_irqs_l2s_0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_irqs_L2S_0_int_0 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_1 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_10 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_11 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_12 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_13 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_14 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_15 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_16 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_17 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_18 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_19 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_2 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_20 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_21 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_22 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_23 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_24 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_3 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_4 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_5 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_6 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_7 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_8 : STD_LOGIC;
  signal PHS_irqs_L2S_0_int_9 : STD_LOGIC;
  signal \^phs_irqs_l2s_1\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_irqs_L2S_1_int_0 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_1 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_10 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_11 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_12 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_13 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_14 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_15 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_16 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_17 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_18 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_19 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_2 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_20 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_21 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_22 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_23 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_24 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_3 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_4 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_5 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_6 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_7 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_8 : STD_LOGIC;
  signal PHS_irqs_L2S_1_int_9 : STD_LOGIC;
  signal \^phs_irqs_s2l_0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_irqs_S2L_0_int_0 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_1 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_10 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_11 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_12 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_13 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_14 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_15 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_16 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_17 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_18 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_19 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_2 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_20 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_21 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_22 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_23 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_24 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_3 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_4 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_5 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_6 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_7 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_8 : STD_LOGIC;
  signal PHS_irqs_S2L_0_int_9 : STD_LOGIC;
  signal \^phs_irqs_s2l_1\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_irqs_S2L_1_int_0 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_1 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_10 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_11 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_12 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_13 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_14 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_15 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_16 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_17 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_18 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_19 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_2 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_20 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_21 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_22 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_23 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_24 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_3 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_4 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_5 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_6 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_7 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_8 : STD_LOGIC;
  signal PHS_irqs_S2L_1_int_9 : STD_LOGIC;
  signal \^aw_en_reg_0\ : STD_LOGIC;
  signal \axi_araddr_reg[4]_rep_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[2]_rep__0_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[2]_rep_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[3]_rep__0_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg[3]_rep_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_39_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_40_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_41_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_42_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_43_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_44_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_45_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_46_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_47_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_48_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_49_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_50_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_51_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_52_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_53_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_54_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_55_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_56_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_57_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_58_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_59_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_60_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_61_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_62_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_63_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_64_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_65_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_66_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_67_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_68_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_69_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_70_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_71_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_72_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_73_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_74_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_75_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_76_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_77_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_78_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_79_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_80_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_81_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_82_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_83_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_84_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_85_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_86_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_35_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_36_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_37_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_38_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_39_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_40_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_41_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_42_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_43_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_44_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_45_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_46_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_47_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_48_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_49_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_50_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_67_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_68_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_69_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_70_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_71_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_72_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_73_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_74_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_75_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_76_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_77_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_78_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_79_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_80_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_81_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_82_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_83_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_84_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_85_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_86_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_87_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_88_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_89_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_90_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_91_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_92_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_93_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_94_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_95_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_96_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_97_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_98_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_26_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_27_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_26_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_27_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_28_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_29_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_30_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_31_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_32_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_33_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_34_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_35_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_36_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_37_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_38_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_19_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_20_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_22_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_24_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_25_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_27_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_28_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_29_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_30_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_31_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_32_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_33_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_34_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_51_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_52_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_53_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_54_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_55_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_56_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_57_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_58_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_59_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_60_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_61_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_62_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_63_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_64_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_65_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_66_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_13_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in100_in : STD_LOGIC;
  signal p_0_in101_in : STD_LOGIC;
  signal p_0_in102_in : STD_LOGIC;
  signal p_0_in103_in : STD_LOGIC;
  signal p_0_in104_in : STD_LOGIC;
  signal p_0_in105_in : STD_LOGIC;
  signal p_0_in106_in : STD_LOGIC;
  signal p_0_in107_in : STD_LOGIC;
  signal p_0_in108_in : STD_LOGIC;
  signal p_0_in109_in : STD_LOGIC;
  signal p_0_in110_in : STD_LOGIC;
  signal p_0_in111_in : STD_LOGIC;
  signal p_0_in112_in : STD_LOGIC;
  signal p_0_in113_in : STD_LOGIC;
  signal p_0_in114_in : STD_LOGIC;
  signal p_0_in115_in : STD_LOGIC;
  signal p_0_in116_in : STD_LOGIC;
  signal p_0_in117_in : STD_LOGIC;
  signal p_0_in118_in : STD_LOGIC;
  signal p_0_in119_in : STD_LOGIC;
  signal p_0_in120_in : STD_LOGIC;
  signal p_0_in121_in : STD_LOGIC;
  signal p_0_in122_in : STD_LOGIC;
  signal p_0_in123_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_7_in : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_8_in : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slv_reg0 : STD_LOGIC;
  signal \slv_reg0[9]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0[9]_i_4_n_0\ : STD_LOGIC;
  signal \^slv_reg1\ : STD_LOGIC;
  signal slv_reg100 : STD_LOGIC;
  signal \^slv_reg101\ : STD_LOGIC;
  signal \slv_reg102[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg102[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg103[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg103[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg104 : STD_LOGIC;
  signal \^slv_reg105\ : STD_LOGIC;
  signal \slv_reg106[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg106[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg107[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg107[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg108 : STD_LOGIC;
  signal \^slv_reg109\ : STD_LOGIC;
  signal \slv_reg10[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg110[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg110[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg111[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg111[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg112 : STD_LOGIC;
  signal \^slv_reg113\ : STD_LOGIC;
  signal \slv_reg114[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg114[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg115[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg115[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg116 : STD_LOGIC;
  signal \^slv_reg117\ : STD_LOGIC;
  signal \slv_reg118[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg118[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg119[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg119[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg12 : STD_LOGIC;
  signal slv_reg120 : STD_LOGIC;
  signal \^slv_reg121\ : STD_LOGIC;
  signal \slv_reg122[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg122[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg123[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg123[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg124 : STD_LOGIC;
  signal \^slv_reg125\ : STD_LOGIC;
  signal \slv_reg126[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg126[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg127[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg127[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg128 : STD_LOGIC;
  signal \^slv_reg129\ : STD_LOGIC;
  signal \slv_reg12[9]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg12[9]_i_3_n_0\ : STD_LOGIC;
  signal \^slv_reg13\ : STD_LOGIC;
  signal \slv_reg130[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg130[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg130[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg131[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg131[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg132 : STD_LOGIC;
  signal \^slv_reg133\ : STD_LOGIC;
  signal \slv_reg134[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg134[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg135[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg135[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg136 : STD_LOGIC;
  signal \^slv_reg137\ : STD_LOGIC;
  signal \slv_reg138[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg138[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg139[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg139[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg140 : STD_LOGIC;
  signal \^slv_reg141\ : STD_LOGIC;
  signal \slv_reg142[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg142[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg143[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg143[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg144 : STD_LOGIC;
  signal \^slv_reg145\ : STD_LOGIC;
  signal \slv_reg146[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg146[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg147[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg147[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg148 : STD_LOGIC;
  signal \^slv_reg149\ : STD_LOGIC;
  signal \slv_reg14[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg150[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg150[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg151[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg151[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg152 : STD_LOGIC;
  signal \^slv_reg153\ : STD_LOGIC;
  signal \slv_reg154[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg154[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg155[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg155[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg156 : STD_LOGIC;
  signal \^slv_reg157\ : STD_LOGIC;
  signal \slv_reg158[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg158[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg159[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg159[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg16 : STD_LOGIC;
  signal slv_reg160 : STD_LOGIC;
  signal \^slv_reg161\ : STD_LOGIC;
  signal \slv_reg162[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg162[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg162[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg163[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg163[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg164 : STD_LOGIC;
  signal \^slv_reg165\ : STD_LOGIC;
  signal \slv_reg166[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg166[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg167[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg167[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg168 : STD_LOGIC;
  signal \^slv_reg169\ : STD_LOGIC;
  signal \slv_reg16[9]_i_2_n_0\ : STD_LOGIC;
  signal \^slv_reg17\ : STD_LOGIC;
  signal \slv_reg170[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg170[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg171[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg171[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg172 : STD_LOGIC;
  signal \^slv_reg173\ : STD_LOGIC;
  signal \slv_reg174[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg174[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg175[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg175[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg176 : STD_LOGIC;
  signal \^slv_reg177\ : STD_LOGIC;
  signal \slv_reg178[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg178[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg179[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg179[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg180 : STD_LOGIC;
  signal \^slv_reg181\ : STD_LOGIC;
  signal \slv_reg182[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg182[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg183[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg183[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg184 : STD_LOGIC;
  signal \^slv_reg185\ : STD_LOGIC;
  signal \slv_reg186[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg186[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg187[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg187[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg188 : STD_LOGIC;
  signal \^slv_reg189\ : STD_LOGIC;
  signal \slv_reg18[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg18[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg190[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg190[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg191[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg191[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg192 : STD_LOGIC;
  signal \^slv_reg193\ : STD_LOGIC;
  signal \slv_reg194[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg194[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg194[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg195[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg195[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg196 : STD_LOGIC;
  signal \^slv_reg197\ : STD_LOGIC;
  signal \slv_reg198[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg198[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg199[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg199[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg20 : STD_LOGIC;
  signal \slv_reg200[24]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg201 : STD_LOGIC;
  signal \slv_reg204[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg204_reg_n_0_[0]\ : STD_LOGIC;
  signal slv_reg205 : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg205_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg20[9]_i_2_n_0\ : STD_LOGIC;
  signal \^slv_reg21\ : STD_LOGIC;
  signal \slv_reg22[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg22[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg24 : STD_LOGIC;
  signal \slv_reg24[9]_i_2_n_0\ : STD_LOGIC;
  signal \^slv_reg25\ : STD_LOGIC;
  signal \slv_reg26[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg28 : STD_LOGIC;
  signal \slv_reg28[9]_i_2_n_0\ : STD_LOGIC;
  signal \^slv_reg29\ : STD_LOGIC;
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg30[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg30[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg31[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg31[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg32 : STD_LOGIC;
  signal \^slv_reg33\ : STD_LOGIC;
  signal \slv_reg34[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg34[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg34[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg35[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg35[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg36 : STD_LOGIC;
  signal \^slv_reg37\ : STD_LOGIC;
  signal \slv_reg38[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg38[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg39[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg39[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC;
  signal slv_reg40 : STD_LOGIC;
  signal \^slv_reg41\ : STD_LOGIC;
  signal \slv_reg42[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg42[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg43[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg43[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg44 : STD_LOGIC;
  signal \^slv_reg45\ : STD_LOGIC;
  signal \slv_reg46[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg46[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg47[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg47[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg48 : STD_LOGIC;
  signal \^slv_reg49\ : STD_LOGIC;
  signal \slv_reg4[9]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[9]_i_3_n_0\ : STD_LOGIC;
  signal \^slv_reg5\ : STD_LOGIC;
  signal \slv_reg50[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg50[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg51[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg51[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg52 : STD_LOGIC;
  signal \^slv_reg53\ : STD_LOGIC;
  signal \slv_reg54[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg54[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg55[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg55[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg56 : STD_LOGIC;
  signal \^slv_reg57\ : STD_LOGIC;
  signal \slv_reg58[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg58[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg59[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg59[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg60 : STD_LOGIC;
  signal \^slv_reg61\ : STD_LOGIC;
  signal \slv_reg62[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg62[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg63[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg63[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg64 : STD_LOGIC;
  signal \^slv_reg65\ : STD_LOGIC;
  signal \slv_reg66[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg66[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg66[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg67[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg67[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg68 : STD_LOGIC;
  signal \^slv_reg69\ : STD_LOGIC;
  signal \slv_reg6[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg70[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg70[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg71[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg71[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg72 : STD_LOGIC;
  signal \^slv_reg73\ : STD_LOGIC;
  signal \slv_reg74[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg74[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg75[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg75[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg76 : STD_LOGIC;
  signal \^slv_reg77\ : STD_LOGIC;
  signal \slv_reg78[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg78[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg79[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg79[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg8 : STD_LOGIC;
  signal slv_reg80 : STD_LOGIC;
  signal \^slv_reg81\ : STD_LOGIC;
  signal \slv_reg82[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg82[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg83[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg83[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg84 : STD_LOGIC;
  signal \^slv_reg85\ : STD_LOGIC;
  signal \slv_reg86[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg86[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg87[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg87[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg88 : STD_LOGIC;
  signal \^slv_reg89\ : STD_LOGIC;
  signal \slv_reg8[9]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg8[9]_i_3_n_0\ : STD_LOGIC;
  signal \^slv_reg9\ : STD_LOGIC;
  signal \slv_reg90[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg90[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg91[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg91[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg92 : STD_LOGIC;
  signal \^slv_reg93\ : STD_LOGIC;
  signal \slv_reg94[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg94[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg95[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg95[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg96 : STD_LOGIC;
  signal \^slv_reg97\ : STD_LOGIC;
  signal \slv_reg98[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg98[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg98[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg99[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg99[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of PHS0_vld_out_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of PHS0_vld_out_i_3 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of PHS10_vld_out_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of PHS11_vld_out_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of PHS12_vld_out_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of PHS13_vld_out_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of PHS14_vld_out_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of PHS15_vld_out_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of PHS16_vld_out_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of PHS16_vld_out_i_2 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of PHS17_vld_out_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of PHS18_vld_out_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of PHS19_vld_out_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of PHS1_vld_out_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of PHS20_vld_out_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of PHS21_vld_out_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of PHS22_vld_out_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of PHS23_vld_out_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of PHS24_vld_out_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of PHS25_vld_out_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of PHS26_vld_out_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of PHS27_vld_out_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of PHS28_vld_out_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of PHS29_vld_out_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of PHS2_vld_out_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of PHS30_vld_out_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of PHS31_vld_out_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of PHS32_vld_out_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of PHS32_vld_out_i_2 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of PHS33_vld_out_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of PHS34_vld_out_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of PHS35_vld_out_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of PHS36_vld_out_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of PHS37_vld_out_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of PHS38_vld_out_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of PHS39_vld_out_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of PHS3_vld_out_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of PHS40_vld_out_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of PHS41_vld_out_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of PHS42_vld_out_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of PHS43_vld_out_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of PHS44_vld_out_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of PHS45_vld_out_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of PHS46_vld_out_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of PHS47_vld_out_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of PHS48_vld_out_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of PHS48_vld_out_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of PHS49_vld_out_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of PHS49_vld_out_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of PHS4_vld_out_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of PHS5_vld_out_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of PHS6_vld_out_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of PHS7_vld_out_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of PHS8_vld_out_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of PHS9_vld_out_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_10 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_11 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_12 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_13 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_5 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_6 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_8 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of PHS_irq_L2S_0_i_9 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_10 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_11 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_12 : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_13 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_6 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_8 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of PHS_irq_L2S_1_i_9 : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_10 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_11 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_12 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_13 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_6 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_8 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of PHS_irq_S2L_0_i_9 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_10 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_11 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_12 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_13 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_6 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_8 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of PHS_irq_S2L_1_i_9 : label is "soft_lutpair49";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \axi_araddr_reg[4]\ : label is "axi_araddr_reg[4]";
  attribute ORIG_CELL_NAME of \axi_araddr_reg[4]_rep\ : label is "axi_araddr_reg[4]";
  attribute ORIG_CELL_NAME of \axi_awaddr_reg[2]\ : label is "axi_awaddr_reg[2]";
  attribute ORIG_CELL_NAME of \axi_awaddr_reg[2]_rep\ : label is "axi_awaddr_reg[2]";
  attribute ORIG_CELL_NAME of \axi_awaddr_reg[2]_rep__0\ : label is "axi_awaddr_reg[2]";
  attribute ORIG_CELL_NAME of \axi_awaddr_reg[3]\ : label is "axi_awaddr_reg[3]";
  attribute ORIG_CELL_NAME of \axi_awaddr_reg[3]_rep\ : label is "axi_awaddr_reg[3]";
  attribute ORIG_CELL_NAME of \axi_awaddr_reg[3]_rep__0\ : label is "axi_awaddr_reg[3]";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_11\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_15\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_19\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_8\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_20\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \slv_reg0[9]_i_4\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \slv_reg12[9]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \slv_reg194[1]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \slv_reg202[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg202[10]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \slv_reg202[11]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg202[12]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \slv_reg202[16]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \slv_reg202[18]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \slv_reg202[19]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \slv_reg202[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \slv_reg202[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg202[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg203[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg203[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \slv_reg203[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg203[12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \slv_reg203[16]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \slv_reg203[18]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \slv_reg203[19]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \slv_reg203[20]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \slv_reg203[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg203[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg206[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg206[10]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \slv_reg206[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg206[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \slv_reg206[13]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \slv_reg206[14]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \slv_reg206[15]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \slv_reg206[16]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \slv_reg206[17]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \slv_reg206[18]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \slv_reg206[19]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \slv_reg206[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \slv_reg206[20]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \slv_reg206[21]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \slv_reg206[22]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \slv_reg206[23]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \slv_reg206[24]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \slv_reg206[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg206[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \slv_reg206[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \slv_reg206[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \slv_reg206[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \slv_reg206[7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \slv_reg206[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg206[9]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \slv_reg207[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg207[10]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \slv_reg207[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg207[12]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \slv_reg207[13]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \slv_reg207[14]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \slv_reg207[15]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \slv_reg207[16]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \slv_reg207[17]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \slv_reg207[18]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \slv_reg207[19]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \slv_reg207[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \slv_reg207[20]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \slv_reg207[21]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \slv_reg207[22]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \slv_reg207[23]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \slv_reg207[24]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \slv_reg207[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg207[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \slv_reg207[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \slv_reg207[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \slv_reg207[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \slv_reg207[7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \slv_reg207[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \slv_reg207[9]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \slv_reg4[9]_i_3\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \slv_reg8[9]_i_3\ : label is "soft_lutpair89";
begin
  PHS0_irq0_clr <= \^phs0_irq0_clr\;
  PHS0_irq1_clr <= \^phs0_irq1_clr\;
  PHS0_irq_mask(1 downto 0) <= \^phs0_irq_mask\(1 downto 0);
  PHS0_pwm_val(9 downto 0) <= \^phs0_pwm_val\(9 downto 0);
  PHS10_irq0_clr <= \^phs10_irq0_clr\;
  PHS10_irq1_clr <= \^phs10_irq1_clr\;
  PHS10_irq_mask(1 downto 0) <= \^phs10_irq_mask\(1 downto 0);
  PHS10_pwm_val(9 downto 0) <= \^phs10_pwm_val\(9 downto 0);
  PHS11_irq0_clr <= \^phs11_irq0_clr\;
  PHS11_irq1_clr <= \^phs11_irq1_clr\;
  PHS11_irq_mask(1 downto 0) <= \^phs11_irq_mask\(1 downto 0);
  PHS11_pwm_val(9 downto 0) <= \^phs11_pwm_val\(9 downto 0);
  PHS12_irq0_clr <= \^phs12_irq0_clr\;
  PHS12_irq1_clr <= \^phs12_irq1_clr\;
  PHS12_irq_mask(1 downto 0) <= \^phs12_irq_mask\(1 downto 0);
  PHS12_pwm_val(9 downto 0) <= \^phs12_pwm_val\(9 downto 0);
  PHS13_irq0_clr <= \^phs13_irq0_clr\;
  PHS13_irq1_clr <= \^phs13_irq1_clr\;
  PHS13_irq_mask(1 downto 0) <= \^phs13_irq_mask\(1 downto 0);
  PHS13_pwm_val(9 downto 0) <= \^phs13_pwm_val\(9 downto 0);
  PHS14_irq0_clr <= \^phs14_irq0_clr\;
  PHS14_irq1_clr <= \^phs14_irq1_clr\;
  PHS14_irq_mask(1 downto 0) <= \^phs14_irq_mask\(1 downto 0);
  PHS14_pwm_val(9 downto 0) <= \^phs14_pwm_val\(9 downto 0);
  PHS15_irq0_clr <= \^phs15_irq0_clr\;
  PHS15_irq1_clr <= \^phs15_irq1_clr\;
  PHS15_irq_mask(1 downto 0) <= \^phs15_irq_mask\(1 downto 0);
  PHS15_pwm_val(9 downto 0) <= \^phs15_pwm_val\(9 downto 0);
  PHS16_irq0_clr <= \^phs16_irq0_clr\;
  PHS16_irq1_clr <= \^phs16_irq1_clr\;
  PHS16_irq_mask(1 downto 0) <= \^phs16_irq_mask\(1 downto 0);
  PHS16_pwm_val(9 downto 0) <= \^phs16_pwm_val\(9 downto 0);
  PHS17_irq0_clr <= \^phs17_irq0_clr\;
  PHS17_irq1_clr <= \^phs17_irq1_clr\;
  PHS17_irq_mask(1 downto 0) <= \^phs17_irq_mask\(1 downto 0);
  PHS17_pwm_val(9 downto 0) <= \^phs17_pwm_val\(9 downto 0);
  PHS18_irq0_clr <= \^phs18_irq0_clr\;
  PHS18_irq1_clr <= \^phs18_irq1_clr\;
  PHS18_irq_mask(1 downto 0) <= \^phs18_irq_mask\(1 downto 0);
  PHS18_pwm_val(9 downto 0) <= \^phs18_pwm_val\(9 downto 0);
  PHS19_irq0_clr <= \^phs19_irq0_clr\;
  PHS19_irq1_clr <= \^phs19_irq1_clr\;
  PHS19_irq_mask(1 downto 0) <= \^phs19_irq_mask\(1 downto 0);
  PHS19_pwm_val(9 downto 0) <= \^phs19_pwm_val\(9 downto 0);
  PHS1_irq0_clr <= \^phs1_irq0_clr\;
  PHS1_irq1_clr <= \^phs1_irq1_clr\;
  PHS1_irq_mask(1 downto 0) <= \^phs1_irq_mask\(1 downto 0);
  PHS1_pwm_val(9 downto 0) <= \^phs1_pwm_val\(9 downto 0);
  PHS20_irq0_clr <= \^phs20_irq0_clr\;
  PHS20_irq1_clr <= \^phs20_irq1_clr\;
  PHS20_irq_mask(1 downto 0) <= \^phs20_irq_mask\(1 downto 0);
  PHS20_pwm_val(9 downto 0) <= \^phs20_pwm_val\(9 downto 0);
  PHS21_irq0_clr <= \^phs21_irq0_clr\;
  PHS21_irq1_clr <= \^phs21_irq1_clr\;
  PHS21_irq_mask(1 downto 0) <= \^phs21_irq_mask\(1 downto 0);
  PHS21_pwm_val(9 downto 0) <= \^phs21_pwm_val\(9 downto 0);
  PHS22_irq0_clr <= \^phs22_irq0_clr\;
  PHS22_irq1_clr <= \^phs22_irq1_clr\;
  PHS22_irq_mask(1 downto 0) <= \^phs22_irq_mask\(1 downto 0);
  PHS22_pwm_val(9 downto 0) <= \^phs22_pwm_val\(9 downto 0);
  PHS23_irq0_clr <= \^phs23_irq0_clr\;
  PHS23_irq1_clr <= \^phs23_irq1_clr\;
  PHS23_irq_mask(1 downto 0) <= \^phs23_irq_mask\(1 downto 0);
  PHS23_pwm_val(9 downto 0) <= \^phs23_pwm_val\(9 downto 0);
  PHS24_irq0_clr <= \^phs24_irq0_clr\;
  PHS24_irq1_clr <= \^phs24_irq1_clr\;
  PHS24_irq_mask(1 downto 0) <= \^phs24_irq_mask\(1 downto 0);
  PHS24_pwm_val(9 downto 0) <= \^phs24_pwm_val\(9 downto 0);
  PHS25_irq0_clr <= \^phs25_irq0_clr\;
  PHS25_irq1_clr <= \^phs25_irq1_clr\;
  PHS25_irq_mask(1 downto 0) <= \^phs25_irq_mask\(1 downto 0);
  PHS25_pwm_val(9 downto 0) <= \^phs25_pwm_val\(9 downto 0);
  PHS26_irq0_clr <= \^phs26_irq0_clr\;
  PHS26_irq1_clr <= \^phs26_irq1_clr\;
  PHS26_irq_mask(1 downto 0) <= \^phs26_irq_mask\(1 downto 0);
  PHS26_pwm_val(9 downto 0) <= \^phs26_pwm_val\(9 downto 0);
  PHS27_irq0_clr <= \^phs27_irq0_clr\;
  PHS27_irq1_clr <= \^phs27_irq1_clr\;
  PHS27_irq_mask(1 downto 0) <= \^phs27_irq_mask\(1 downto 0);
  PHS27_pwm_val(9 downto 0) <= \^phs27_pwm_val\(9 downto 0);
  PHS28_irq0_clr <= \^phs28_irq0_clr\;
  PHS28_irq1_clr <= \^phs28_irq1_clr\;
  PHS28_irq_mask(1 downto 0) <= \^phs28_irq_mask\(1 downto 0);
  PHS28_pwm_val(9 downto 0) <= \^phs28_pwm_val\(9 downto 0);
  PHS29_irq0_clr <= \^phs29_irq0_clr\;
  PHS29_irq1_clr <= \^phs29_irq1_clr\;
  PHS29_irq_mask(1 downto 0) <= \^phs29_irq_mask\(1 downto 0);
  PHS29_pwm_val(9 downto 0) <= \^phs29_pwm_val\(9 downto 0);
  PHS2_irq0_clr <= \^phs2_irq0_clr\;
  PHS2_irq1_clr <= \^phs2_irq1_clr\;
  PHS2_irq_mask(1 downto 0) <= \^phs2_irq_mask\(1 downto 0);
  PHS2_pwm_val(9 downto 0) <= \^phs2_pwm_val\(9 downto 0);
  PHS30_irq0_clr <= \^phs30_irq0_clr\;
  PHS30_irq1_clr <= \^phs30_irq1_clr\;
  PHS30_irq_mask(1 downto 0) <= \^phs30_irq_mask\(1 downto 0);
  PHS30_pwm_val(9 downto 0) <= \^phs30_pwm_val\(9 downto 0);
  PHS31_irq0_clr <= \^phs31_irq0_clr\;
  PHS31_irq1_clr <= \^phs31_irq1_clr\;
  PHS31_irq_mask(1 downto 0) <= \^phs31_irq_mask\(1 downto 0);
  PHS31_pwm_val(9 downto 0) <= \^phs31_pwm_val\(9 downto 0);
  PHS32_irq0_clr <= \^phs32_irq0_clr\;
  PHS32_irq1_clr <= \^phs32_irq1_clr\;
  PHS32_irq_mask(1 downto 0) <= \^phs32_irq_mask\(1 downto 0);
  PHS32_pwm_val(9 downto 0) <= \^phs32_pwm_val\(9 downto 0);
  PHS33_irq0_clr <= \^phs33_irq0_clr\;
  PHS33_irq1_clr <= \^phs33_irq1_clr\;
  PHS33_irq_mask(1 downto 0) <= \^phs33_irq_mask\(1 downto 0);
  PHS33_pwm_val(9 downto 0) <= \^phs33_pwm_val\(9 downto 0);
  PHS34_irq0_clr <= \^phs34_irq0_clr\;
  PHS34_irq1_clr <= \^phs34_irq1_clr\;
  PHS34_irq_mask(1 downto 0) <= \^phs34_irq_mask\(1 downto 0);
  PHS34_pwm_val(9 downto 0) <= \^phs34_pwm_val\(9 downto 0);
  PHS35_irq0_clr <= \^phs35_irq0_clr\;
  PHS35_irq1_clr <= \^phs35_irq1_clr\;
  PHS35_irq_mask(1 downto 0) <= \^phs35_irq_mask\(1 downto 0);
  PHS35_pwm_val(9 downto 0) <= \^phs35_pwm_val\(9 downto 0);
  PHS36_irq0_clr <= \^phs36_irq0_clr\;
  PHS36_irq1_clr <= \^phs36_irq1_clr\;
  PHS36_irq_mask(1 downto 0) <= \^phs36_irq_mask\(1 downto 0);
  PHS36_pwm_val(9 downto 0) <= \^phs36_pwm_val\(9 downto 0);
  PHS37_irq0_clr <= \^phs37_irq0_clr\;
  PHS37_irq1_clr <= \^phs37_irq1_clr\;
  PHS37_irq_mask(1 downto 0) <= \^phs37_irq_mask\(1 downto 0);
  PHS37_pwm_val(9 downto 0) <= \^phs37_pwm_val\(9 downto 0);
  PHS38_irq0_clr <= \^phs38_irq0_clr\;
  PHS38_irq1_clr <= \^phs38_irq1_clr\;
  PHS38_irq_mask(1 downto 0) <= \^phs38_irq_mask\(1 downto 0);
  PHS38_pwm_val(9 downto 0) <= \^phs38_pwm_val\(9 downto 0);
  PHS39_irq0_clr <= \^phs39_irq0_clr\;
  PHS39_irq1_clr <= \^phs39_irq1_clr\;
  PHS39_irq_mask(1 downto 0) <= \^phs39_irq_mask\(1 downto 0);
  PHS39_pwm_val(9 downto 0) <= \^phs39_pwm_val\(9 downto 0);
  PHS3_irq0_clr <= \^phs3_irq0_clr\;
  PHS3_irq1_clr <= \^phs3_irq1_clr\;
  PHS3_irq_mask(1 downto 0) <= \^phs3_irq_mask\(1 downto 0);
  PHS3_pwm_val(9 downto 0) <= \^phs3_pwm_val\(9 downto 0);
  PHS40_irq0_clr <= \^phs40_irq0_clr\;
  PHS40_irq1_clr <= \^phs40_irq1_clr\;
  PHS40_irq_mask(1 downto 0) <= \^phs40_irq_mask\(1 downto 0);
  PHS40_pwm_val(9 downto 0) <= \^phs40_pwm_val\(9 downto 0);
  PHS41_irq0_clr <= \^phs41_irq0_clr\;
  PHS41_irq1_clr <= \^phs41_irq1_clr\;
  PHS41_irq_mask(1 downto 0) <= \^phs41_irq_mask\(1 downto 0);
  PHS41_pwm_val(9 downto 0) <= \^phs41_pwm_val\(9 downto 0);
  PHS42_irq0_clr <= \^phs42_irq0_clr\;
  PHS42_irq1_clr <= \^phs42_irq1_clr\;
  PHS42_irq_mask(1 downto 0) <= \^phs42_irq_mask\(1 downto 0);
  PHS42_pwm_val(9 downto 0) <= \^phs42_pwm_val\(9 downto 0);
  PHS43_irq0_clr <= \^phs43_irq0_clr\;
  PHS43_irq1_clr <= \^phs43_irq1_clr\;
  PHS43_irq_mask(1 downto 0) <= \^phs43_irq_mask\(1 downto 0);
  PHS43_pwm_val(9 downto 0) <= \^phs43_pwm_val\(9 downto 0);
  PHS44_irq0_clr <= \^phs44_irq0_clr\;
  PHS44_irq1_clr <= \^phs44_irq1_clr\;
  PHS44_irq_mask(1 downto 0) <= \^phs44_irq_mask\(1 downto 0);
  PHS44_pwm_val(9 downto 0) <= \^phs44_pwm_val\(9 downto 0);
  PHS45_irq0_clr <= \^phs45_irq0_clr\;
  PHS45_irq1_clr <= \^phs45_irq1_clr\;
  PHS45_irq_mask(1 downto 0) <= \^phs45_irq_mask\(1 downto 0);
  PHS45_pwm_val(9 downto 0) <= \^phs45_pwm_val\(9 downto 0);
  PHS46_irq0_clr <= \^phs46_irq0_clr\;
  PHS46_irq1_clr <= \^phs46_irq1_clr\;
  PHS46_irq_mask(1 downto 0) <= \^phs46_irq_mask\(1 downto 0);
  PHS46_pwm_val(9 downto 0) <= \^phs46_pwm_val\(9 downto 0);
  PHS47_irq0_clr <= \^phs47_irq0_clr\;
  PHS47_irq1_clr <= \^phs47_irq1_clr\;
  PHS47_irq_mask(1 downto 0) <= \^phs47_irq_mask\(1 downto 0);
  PHS47_pwm_val(9 downto 0) <= \^phs47_pwm_val\(9 downto 0);
  PHS48_irq0_clr <= \^phs48_irq0_clr\;
  PHS48_irq1_clr <= \^phs48_irq1_clr\;
  PHS48_irq_mask(1 downto 0) <= \^phs48_irq_mask\(1 downto 0);
  PHS48_pwm_val(9 downto 0) <= \^phs48_pwm_val\(9 downto 0);
  PHS49_irq0_clr <= \^phs49_irq0_clr\;
  PHS49_irq1_clr <= \^phs49_irq1_clr\;
  PHS49_irq_mask(1 downto 0) <= \^phs49_irq_mask\(1 downto 0);
  PHS49_pwm_val(9 downto 0) <= \^phs49_pwm_val\(9 downto 0);
  PHS4_irq0_clr <= \^phs4_irq0_clr\;
  PHS4_irq1_clr <= \^phs4_irq1_clr\;
  PHS4_irq_mask(1 downto 0) <= \^phs4_irq_mask\(1 downto 0);
  PHS4_pwm_val(9 downto 0) <= \^phs4_pwm_val\(9 downto 0);
  PHS5_irq0_clr <= \^phs5_irq0_clr\;
  PHS5_irq1_clr <= \^phs5_irq1_clr\;
  PHS5_irq_mask(1 downto 0) <= \^phs5_irq_mask\(1 downto 0);
  PHS5_pwm_val(9 downto 0) <= \^phs5_pwm_val\(9 downto 0);
  PHS6_irq0_clr <= \^phs6_irq0_clr\;
  PHS6_irq1_clr <= \^phs6_irq1_clr\;
  PHS6_irq_mask(1 downto 0) <= \^phs6_irq_mask\(1 downto 0);
  PHS6_pwm_val(9 downto 0) <= \^phs6_pwm_val\(9 downto 0);
  PHS7_irq0_clr <= \^phs7_irq0_clr\;
  PHS7_irq1_clr <= \^phs7_irq1_clr\;
  PHS7_irq_mask(1 downto 0) <= \^phs7_irq_mask\(1 downto 0);
  PHS7_pwm_val(9 downto 0) <= \^phs7_pwm_val\(9 downto 0);
  PHS8_irq0_clr <= \^phs8_irq0_clr\;
  PHS8_irq1_clr <= \^phs8_irq1_clr\;
  PHS8_irq_mask(1 downto 0) <= \^phs8_irq_mask\(1 downto 0);
  PHS8_pwm_val(9 downto 0) <= \^phs8_pwm_val\(9 downto 0);
  PHS9_irq0_clr <= \^phs9_irq0_clr\;
  PHS9_irq1_clr <= \^phs9_irq1_clr\;
  PHS9_irq_mask(1 downto 0) <= \^phs9_irq_mask\(1 downto 0);
  PHS9_pwm_val(9 downto 0) <= \^phs9_pwm_val\(9 downto 0);
  PHS_irqs_L2S_0(24 downto 0) <= \^phs_irqs_l2s_0\(24 downto 0);
  PHS_irqs_L2S_1(24 downto 0) <= \^phs_irqs_l2s_1\(24 downto 0);
  PHS_irqs_S2L_0(24 downto 0) <= \^phs_irqs_s2l_0\(24 downto 0);
  PHS_irqs_S2L_1(24 downto 0) <= \^phs_irqs_s2l_1\(24 downto 0);
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  slv_reg1 <= \^slv_reg1\;
  slv_reg101 <= \^slv_reg101\;
  slv_reg105 <= \^slv_reg105\;
  slv_reg109 <= \^slv_reg109\;
  slv_reg113 <= \^slv_reg113\;
  slv_reg117 <= \^slv_reg117\;
  slv_reg121 <= \^slv_reg121\;
  slv_reg125 <= \^slv_reg125\;
  slv_reg129 <= \^slv_reg129\;
  slv_reg13 <= \^slv_reg13\;
  slv_reg133 <= \^slv_reg133\;
  slv_reg137 <= \^slv_reg137\;
  slv_reg141 <= \^slv_reg141\;
  slv_reg145 <= \^slv_reg145\;
  slv_reg149 <= \^slv_reg149\;
  slv_reg153 <= \^slv_reg153\;
  slv_reg157 <= \^slv_reg157\;
  slv_reg161 <= \^slv_reg161\;
  slv_reg165 <= \^slv_reg165\;
  slv_reg169 <= \^slv_reg169\;
  slv_reg17 <= \^slv_reg17\;
  slv_reg173 <= \^slv_reg173\;
  slv_reg177 <= \^slv_reg177\;
  slv_reg181 <= \^slv_reg181\;
  slv_reg185 <= \^slv_reg185\;
  slv_reg189 <= \^slv_reg189\;
  slv_reg193 <= \^slv_reg193\;
  slv_reg197 <= \^slv_reg197\;
  slv_reg21 <= \^slv_reg21\;
  slv_reg25 <= \^slv_reg25\;
  slv_reg29 <= \^slv_reg29\;
  slv_reg33 <= \^slv_reg33\;
  slv_reg37 <= \^slv_reg37\;
  slv_reg41 <= \^slv_reg41\;
  slv_reg45 <= \^slv_reg45\;
  slv_reg49 <= \^slv_reg49\;
  slv_reg5 <= \^slv_reg5\;
  slv_reg53 <= \^slv_reg53\;
  slv_reg57 <= \^slv_reg57\;
  slv_reg61 <= \^slv_reg61\;
  slv_reg65 <= \^slv_reg65\;
  slv_reg69 <= \^slv_reg69\;
  slv_reg73 <= \^slv_reg73\;
  slv_reg77 <= \^slv_reg77\;
  slv_reg81 <= \^slv_reg81\;
  slv_reg85 <= \^slv_reg85\;
  slv_reg89 <= \^slv_reg89\;
  slv_reg9 <= \^slv_reg9\;
  slv_reg93 <= \^slv_reg93\;
  slv_reg97 <= \^slv_reg97\;
PHS0_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_aresetn,
      O => PHS0_vld_out_i_1_n_0
    );
PHS0_vld_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS0_vld_out_i_3_n_0,
      O => PHS0_vld_out_i_2_n_0
    );
PHS0_vld_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000B"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      O => PHS0_vld_out_i_3_n_0
    );
PHS0_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS0_vld_out_i_2_n_0,
      Q => PHS0_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS10_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS10_vld_out_i_1_n_0
    );
PHS10_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS10_vld_out_i_1_n_0,
      Q => PHS10_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS11_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS11_vld_out_i_1_n_0
    );
PHS11_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS11_vld_out_i_1_n_0,
      Q => PHS11_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS12_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS12_vld_out_i_1_n_0
    );
PHS12_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS12_vld_out_i_1_n_0,
      Q => PHS12_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS13_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      O => PHS13_vld_out_i_1_n_0
    );
PHS13_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS13_vld_out_i_1_n_0,
      Q => PHS13_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS14_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS14_vld_out_i_1_n_0
    );
PHS14_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS14_vld_out_i_1_n_0,
      Q => PHS14_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS15_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS15_vld_out_i_1_n_0
    );
PHS15_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS15_vld_out_i_1_n_0,
      Q => PHS15_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS16_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS16_vld_out_i_1_n_0
    );
PHS16_vld_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      O => PHS16_vld_out_i_2_n_0
    );
PHS16_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS16_vld_out_i_1_n_0,
      Q => PHS16_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS17_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS17_vld_out_i_1_n_0
    );
PHS17_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS17_vld_out_i_1_n_0,
      Q => PHS17_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS18_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS18_vld_out_i_1_n_0
    );
PHS18_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS18_vld_out_i_1_n_0,
      Q => PHS18_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS19_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS19_vld_out_i_1_n_0
    );
PHS19_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS19_vld_out_i_1_n_0,
      Q => PHS19_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS1_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(3),
      I2 => p_0_in(2),
      I3 => p_0_in(5),
      I4 => p_0_in(4),
      O => PHS1_vld_out_i_1_n_0
    );
PHS1_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS1_vld_out_i_1_n_0,
      Q => PHS1_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS20_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS20_vld_out_i_1_n_0
    );
PHS20_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS20_vld_out_i_1_n_0,
      Q => PHS20_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS21_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS21_vld_out_i_1_n_0
    );
PHS21_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS21_vld_out_i_1_n_0,
      Q => PHS21_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS22_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS22_vld_out_i_1_n_0
    );
PHS22_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS22_vld_out_i_1_n_0,
      Q => PHS22_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS23_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS23_vld_out_i_1_n_0
    );
PHS23_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS23_vld_out_i_1_n_0,
      Q => PHS23_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS24_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS24_vld_out_i_1_n_0
    );
PHS24_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS24_vld_out_i_1_n_0,
      Q => PHS24_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS25_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS25_vld_out_i_1_n_0
    );
PHS25_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS25_vld_out_i_1_n_0,
      Q => PHS25_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS26_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS26_vld_out_i_1_n_0
    );
PHS26_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS26_vld_out_i_1_n_0,
      Q => PHS26_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS27_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS27_vld_out_i_1_n_0
    );
PHS27_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS27_vld_out_i_1_n_0,
      Q => PHS27_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS28_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS28_vld_out_i_1_n_0
    );
PHS28_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS28_vld_out_i_1_n_0,
      Q => PHS28_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS29_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS29_vld_out_i_1_n_0
    );
PHS29_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS29_vld_out_i_1_n_0,
      Q => PHS29_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS2_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(5),
      I4 => p_0_in(4),
      O => PHS2_vld_out_i_1_n_0
    );
PHS2_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS2_vld_out_i_1_n_0,
      Q => PHS2_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS30_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS30_vld_out_i_1_n_0
    );
PHS30_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS30_vld_out_i_1_n_0,
      Q => PHS30_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS31_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS16_vld_out_i_2_n_0,
      O => PHS31_vld_out_i_1_n_0
    );
PHS31_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS31_vld_out_i_1_n_0,
      Q => PHS31_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS32_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS32_vld_out_i_1_n_0
    );
PHS32_vld_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      O => PHS32_vld_out_i_2_n_0
    );
PHS32_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS32_vld_out_i_1_n_0,
      Q => PHS32_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS33_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS33_vld_out_i_1_n_0
    );
PHS33_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS33_vld_out_i_1_n_0,
      Q => PHS33_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS34_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS34_vld_out_i_1_n_0
    );
PHS34_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS34_vld_out_i_1_n_0,
      Q => PHS34_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS35_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS35_vld_out_i_1_n_0
    );
PHS35_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS35_vld_out_i_1_n_0,
      Q => PHS35_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS36_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS36_vld_out_i_1_n_0
    );
PHS36_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS36_vld_out_i_1_n_0,
      Q => PHS36_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS37_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS37_vld_out_i_1_n_0
    );
PHS37_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS37_vld_out_i_1_n_0,
      Q => PHS37_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS38_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS38_vld_out_i_1_n_0
    );
PHS38_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS38_vld_out_i_1_n_0,
      Q => PHS38_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS39_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS39_vld_out_i_1_n_0
    );
PHS39_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS39_vld_out_i_1_n_0,
      Q => PHS39_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS3_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(5),
      I4 => p_0_in(4),
      O => PHS3_vld_out_i_1_n_0
    );
PHS3_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS3_vld_out_i_1_n_0,
      Q => PHS3_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS40_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS40_vld_out_i_1_n_0
    );
PHS40_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS40_vld_out_i_1_n_0,
      Q => PHS40_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS41_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS41_vld_out_i_1_n_0
    );
PHS41_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS41_vld_out_i_1_n_0,
      Q => PHS41_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS42_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS42_vld_out_i_1_n_0
    );
PHS42_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS42_vld_out_i_1_n_0,
      Q => PHS42_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS43_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS43_vld_out_i_1_n_0
    );
PHS43_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS43_vld_out_i_1_n_0,
      Q => PHS43_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS44_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS44_vld_out_i_1_n_0
    );
PHS44_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS44_vld_out_i_1_n_0,
      Q => PHS44_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS45_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS45_vld_out_i_1_n_0
    );
PHS45_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS45_vld_out_i_1_n_0,
      Q => PHS45_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS46_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS46_vld_out_i_1_n_0
    );
PHS46_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS46_vld_out_i_1_n_0,
      Q => PHS46_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS47_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(4),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      I4 => PHS32_vld_out_i_2_n_0,
      O => PHS47_vld_out_i_1_n_0
    );
PHS47_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS47_vld_out_i_1_n_0,
      Q => PHS47_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS48_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800080"
    )
        port map (
      I0 => PHS48_vld_out_i_2_n_0,
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => PHS48_vld_out_i_1_n_0
    );
PHS48_vld_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => p_0_in(4),
      I3 => p_0_in(5),
      O => PHS48_vld_out_i_2_n_0
    );
PHS48_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS48_vld_out_i_1_n_0,
      Q => PHS48_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS49_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800080"
    )
        port map (
      I0 => PHS49_vld_out_i_2_n_0,
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => PHS49_vld_out_i_1_n_0
    );
PHS49_vld_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(5),
      I2 => p_0_in(2),
      I3 => p_0_in(3),
      O => PHS49_vld_out_i_2_n_0
    );
PHS49_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS49_vld_out_i_1_n_0,
      Q => PHS49_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS4_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS4_vld_out_i_1_n_0
    );
PHS4_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS4_vld_out_i_1_n_0,
      Q => PHS4_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS5_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      O => PHS5_vld_out_i_1_n_0
    );
PHS5_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS5_vld_out_i_1_n_0,
      Q => PHS5_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS6_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS6_vld_out_i_1_n_0
    );
PHS6_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS6_vld_out_i_1_n_0,
      Q => PHS6_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS7_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS7_vld_out_i_1_n_0
    );
PHS7_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS7_vld_out_i_1_n_0,
      Q => PHS7_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS8_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      O => PHS8_vld_out_i_1_n_0
    );
PHS8_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS8_vld_out_i_1_n_0,
      Q => PHS8_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS9_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => PHS0_vld_out_i_3_n_0,
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      O => PHS9_vld_out_i_1_n_0
    );
PHS9_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS9_vld_out_i_1_n_0,
      Q => PHS9_vld_out,
      R => PHS0_vld_out_i_1_n_0
    );
PHS_irq_L2S_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS_irq_L2S_0_i_2_n_0,
      I1 => PHS_irq_L2S_0_i_3_n_0,
      I2 => PHS_irq_L2S_0_i_4_n_0,
      I3 => PHS_irq_L2S_0_i_5_n_0,
      I4 => PHS_irq_L2S_0_i_6_n_0,
      I5 => PHS_irq_L2S_0_i_7_n_0,
      O => PHS_irq_L2S_00
    );
PHS_irq_L2S_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS19_irq0_L2S,
      I1 => p_0_in118_in,
      I2 => PHS14_irq0_L2S,
      I3 => p_0_in113_in,
      O => PHS_irq_L2S_0_i_10_n_0
    );
PHS_irq_L2S_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS20_irq0_L2S,
      I1 => p_0_in119_in,
      I2 => PHS15_irq0_L2S,
      I3 => p_0_in114_in,
      O => PHS_irq_L2S_0_i_11_n_0
    );
PHS_irq_L2S_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS16_irq0_L2S,
      I1 => p_0_in115_in,
      I2 => PHS6_irq0_L2S,
      I3 => p_0_in105_in,
      O => PHS_irq_L2S_0_i_12_n_0
    );
PHS_irq_L2S_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS12_irq0_L2S,
      I1 => p_0_in111_in,
      I2 => PHS3_irq0_L2S,
      I3 => p_0_in102_in,
      O => PHS_irq_L2S_0_i_13_n_0
    );
PHS_irq_L2S_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg204_reg_n_0_[0]\,
      I1 => PHS0_irq0_L2S,
      I2 => p_0_in121_in,
      I3 => PHS22_irq0_L2S,
      I4 => PHS_irq_L2S_0_i_8_n_0,
      O => PHS_irq_L2S_0_i_2_n_0
    );
PHS_irq_L2S_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => PHS11_irq0_L2S,
      I2 => p_0_in122_in,
      I3 => PHS23_irq0_L2S,
      I4 => PHS_irq_L2S_0_i_9_n_0,
      O => PHS_irq_L2S_0_i_3_n_0
    );
PHS_irq_L2S_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS4_irq0_L2S,
      I1 => p_0_in103_in,
      I2 => p_0_in100_in,
      I3 => PHS1_irq0_L2S,
      I4 => p_0_in120_in,
      I5 => PHS21_irq0_L2S,
      O => PHS_irq_L2S_0_i_4_n_0
    );
PHS_irq_L2S_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in101_in,
      I1 => PHS2_irq0_L2S,
      I2 => p_0_in123_in,
      I3 => PHS24_irq0_L2S,
      I4 => PHS_irq_L2S_0_i_10_n_0,
      O => PHS_irq_L2S_0_i_5_n_0
    );
PHS_irq_L2S_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in107_in,
      I1 => PHS8_irq0_L2S,
      I2 => p_0_in116_in,
      I3 => PHS17_irq0_L2S,
      I4 => PHS_irq_L2S_0_i_11_n_0,
      O => PHS_irq_L2S_0_i_6_n_0
    );
PHS_irq_L2S_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in106_in,
      I1 => PHS7_irq0_L2S,
      I2 => p_0_in112_in,
      I3 => PHS13_irq0_L2S,
      I4 => PHS_irq_L2S_0_i_12_n_0,
      I5 => PHS_irq_L2S_0_i_13_n_0,
      O => PHS_irq_L2S_0_i_7_n_0
    );
PHS_irq_L2S_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS10_irq0_L2S,
      I1 => p_0_in109_in,
      I2 => PHS5_irq0_L2S,
      I3 => p_0_in104_in,
      O => PHS_irq_L2S_0_i_8_n_0
    );
PHS_irq_L2S_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS18_irq0_L2S,
      I1 => p_0_in117_in,
      I2 => PHS9_irq0_L2S,
      I3 => p_0_in108_in,
      O => PHS_irq_L2S_0_i_9_n_0
    );
PHS_irq_L2S_0_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irq_L2S_00,
      Q => PHS_irq_L2S_0,
      R => \p_0_in__0\
    );
PHS_irq_L2S_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS_irq_L2S_1_i_2_n_0,
      I1 => PHS_irq_L2S_1_i_3_n_0,
      I2 => PHS_irq_L2S_1_i_4_n_0,
      I3 => PHS_irq_L2S_1_i_5_n_0,
      I4 => PHS_irq_L2S_1_i_6_n_0,
      I5 => PHS_irq_L2S_1_i_7_n_0,
      O => PHS_irq_L2S_10
    );
PHS_irq_L2S_1_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS44_irq0_L2S,
      I1 => p_0_in118_in,
      I2 => PHS39_irq0_L2S,
      I3 => p_0_in113_in,
      O => PHS_irq_L2S_1_i_10_n_0
    );
PHS_irq_L2S_1_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS45_irq0_L2S,
      I1 => p_0_in119_in,
      I2 => PHS40_irq0_L2S,
      I3 => p_0_in114_in,
      O => PHS_irq_L2S_1_i_11_n_0
    );
PHS_irq_L2S_1_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS41_irq0_L2S,
      I1 => p_0_in115_in,
      I2 => PHS31_irq0_L2S,
      I3 => p_0_in105_in,
      O => PHS_irq_L2S_1_i_12_n_0
    );
PHS_irq_L2S_1_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS37_irq0_L2S,
      I1 => p_0_in111_in,
      I2 => PHS28_irq0_L2S,
      I3 => p_0_in102_in,
      O => PHS_irq_L2S_1_i_13_n_0
    );
PHS_irq_L2S_1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \slv_reg204_reg_n_0_[0]\,
      I1 => PHS25_irq0_L2S,
      I2 => p_0_in121_in,
      I3 => PHS47_irq0_L2S,
      I4 => PHS_irq_L2S_1_i_8_n_0,
      O => PHS_irq_L2S_1_i_2_n_0
    );
PHS_irq_L2S_1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => PHS36_irq0_L2S,
      I2 => p_0_in122_in,
      I3 => PHS48_irq0_L2S,
      I4 => PHS_irq_L2S_1_i_9_n_0,
      O => PHS_irq_L2S_1_i_3_n_0
    );
PHS_irq_L2S_1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS29_irq0_L2S,
      I1 => p_0_in103_in,
      I2 => p_0_in100_in,
      I3 => PHS26_irq0_L2S,
      I4 => p_0_in120_in,
      I5 => PHS46_irq0_L2S,
      O => PHS_irq_L2S_1_i_4_n_0
    );
PHS_irq_L2S_1_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in101_in,
      I1 => PHS27_irq0_L2S,
      I2 => p_0_in123_in,
      I3 => PHS49_irq0_L2S,
      I4 => PHS_irq_L2S_1_i_10_n_0,
      O => PHS_irq_L2S_1_i_5_n_0
    );
PHS_irq_L2S_1_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_0_in107_in,
      I1 => PHS33_irq0_L2S,
      I2 => p_0_in116_in,
      I3 => PHS42_irq0_L2S,
      I4 => PHS_irq_L2S_1_i_11_n_0,
      O => PHS_irq_L2S_1_i_6_n_0
    );
PHS_irq_L2S_1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in106_in,
      I1 => PHS32_irq0_L2S,
      I2 => p_0_in112_in,
      I3 => PHS38_irq0_L2S,
      I4 => PHS_irq_L2S_1_i_12_n_0,
      I5 => PHS_irq_L2S_1_i_13_n_0,
      O => PHS_irq_L2S_1_i_7_n_0
    );
PHS_irq_L2S_1_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS35_irq0_L2S,
      I1 => p_0_in109_in,
      I2 => PHS30_irq0_L2S,
      I3 => p_0_in104_in,
      O => PHS_irq_L2S_1_i_8_n_0
    );
PHS_irq_L2S_1_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS43_irq0_L2S,
      I1 => p_0_in117_in,
      I2 => PHS34_irq0_L2S,
      I3 => p_0_in108_in,
      O => PHS_irq_L2S_1_i_9_n_0
    );
PHS_irq_L2S_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irq_L2S_10,
      Q => PHS_irq_L2S_1,
      R => \p_0_in__0\
    );
PHS_irq_S2L_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS_irq_S2L_0_i_2_n_0,
      I1 => PHS_irq_S2L_0_i_3_n_0,
      I2 => PHS_irq_S2L_0_i_4_n_0,
      I3 => PHS_irq_S2L_0_i_5_n_0,
      I4 => PHS_irq_S2L_0_i_6_n_0,
      I5 => PHS_irq_S2L_0_i_7_n_0,
      O => PHS_irq_S2L_00
    );
PHS_irq_S2L_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS19_irq1_S2L,
      I1 => p_8_in(19),
      I2 => PHS14_irq1_S2L,
      I3 => p_8_in(14),
      O => PHS_irq_S2L_0_i_10_n_0
    );
PHS_irq_S2L_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS20_irq1_S2L,
      I1 => p_8_in(20),
      I2 => PHS15_irq1_S2L,
      I3 => p_8_in(15),
      O => PHS_irq_S2L_0_i_11_n_0
    );
PHS_irq_S2L_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS16_irq1_S2L,
      I1 => p_8_in(16),
      I2 => PHS6_irq1_S2L,
      I3 => p_8_in(6),
      O => PHS_irq_S2L_0_i_12_n_0
    );
PHS_irq_S2L_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS12_irq1_S2L,
      I1 => p_8_in(12),
      I2 => PHS3_irq1_S2L,
      I3 => p_8_in(3),
      O => PHS_irq_S2L_0_i_13_n_0
    );
PHS_irq_S2L_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_8_in(0),
      I1 => PHS0_irq1_S2L,
      I2 => p_8_in(22),
      I3 => PHS22_irq1_S2L,
      I4 => PHS_irq_S2L_0_i_8_n_0,
      O => PHS_irq_S2L_0_i_2_n_0
    );
PHS_irq_S2L_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_8_in(11),
      I1 => PHS11_irq1_S2L,
      I2 => p_8_in(23),
      I3 => PHS23_irq1_S2L,
      I4 => PHS_irq_S2L_0_i_9_n_0,
      O => PHS_irq_S2L_0_i_3_n_0
    );
PHS_irq_S2L_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS4_irq1_S2L,
      I1 => p_8_in(4),
      I2 => p_8_in(1),
      I3 => PHS1_irq1_S2L,
      I4 => p_8_in(21),
      I5 => PHS21_irq1_S2L,
      O => PHS_irq_S2L_0_i_4_n_0
    );
PHS_irq_S2L_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_8_in(2),
      I1 => PHS2_irq1_S2L,
      I2 => p_8_in(24),
      I3 => PHS24_irq1_S2L,
      I4 => PHS_irq_S2L_0_i_10_n_0,
      O => PHS_irq_S2L_0_i_5_n_0
    );
PHS_irq_S2L_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_8_in(8),
      I1 => PHS8_irq1_S2L,
      I2 => p_8_in(17),
      I3 => PHS17_irq1_S2L,
      I4 => PHS_irq_S2L_0_i_11_n_0,
      O => PHS_irq_S2L_0_i_6_n_0
    );
PHS_irq_S2L_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_8_in(7),
      I1 => PHS7_irq1_S2L,
      I2 => p_8_in(13),
      I3 => PHS13_irq1_S2L,
      I4 => PHS_irq_S2L_0_i_12_n_0,
      I5 => PHS_irq_S2L_0_i_13_n_0,
      O => PHS_irq_S2L_0_i_7_n_0
    );
PHS_irq_S2L_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS10_irq1_S2L,
      I1 => p_8_in(10),
      I2 => PHS5_irq1_S2L,
      I3 => p_8_in(5),
      O => PHS_irq_S2L_0_i_8_n_0
    );
PHS_irq_S2L_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS18_irq1_S2L,
      I1 => p_8_in(18),
      I2 => PHS9_irq1_S2L,
      I3 => p_8_in(9),
      O => PHS_irq_S2L_0_i_9_n_0
    );
PHS_irq_S2L_0_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irq_S2L_00,
      Q => PHS_irq_S2L_0,
      R => \p_0_in__0\
    );
PHS_irq_S2L_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS_irq_S2L_1_i_2_n_0,
      I1 => PHS_irq_S2L_1_i_3_n_0,
      I2 => PHS_irq_S2L_1_i_4_n_0,
      I3 => PHS_irq_S2L_1_i_5_n_0,
      I4 => PHS_irq_S2L_1_i_6_n_0,
      I5 => PHS_irq_S2L_1_i_7_n_0,
      O => PHS_irq_S2L_10
    );
PHS_irq_S2L_1_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS44_irq1_S2L,
      I1 => p_7_in(19),
      I2 => PHS39_irq1_S2L,
      I3 => p_7_in(14),
      O => PHS_irq_S2L_1_i_10_n_0
    );
PHS_irq_S2L_1_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS45_irq1_S2L,
      I1 => p_7_in(20),
      I2 => PHS40_irq1_S2L,
      I3 => p_7_in(15),
      O => PHS_irq_S2L_1_i_11_n_0
    );
PHS_irq_S2L_1_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS41_irq1_S2L,
      I1 => p_7_in(16),
      I2 => PHS31_irq1_S2L,
      I3 => p_7_in(6),
      O => PHS_irq_S2L_1_i_12_n_0
    );
PHS_irq_S2L_1_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS37_irq1_S2L,
      I1 => p_7_in(12),
      I2 => PHS28_irq1_S2L,
      I3 => p_7_in(3),
      O => PHS_irq_S2L_1_i_13_n_0
    );
PHS_irq_S2L_1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_7_in(0),
      I1 => PHS25_irq1_S2L,
      I2 => p_7_in(22),
      I3 => PHS47_irq1_S2L,
      I4 => PHS_irq_S2L_1_i_8_n_0,
      O => PHS_irq_S2L_1_i_2_n_0
    );
PHS_irq_S2L_1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_7_in(11),
      I1 => PHS36_irq1_S2L,
      I2 => p_7_in(23),
      I3 => PHS48_irq1_S2L,
      I4 => PHS_irq_S2L_1_i_9_n_0,
      O => PHS_irq_S2L_1_i_3_n_0
    );
PHS_irq_S2L_1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => PHS29_irq1_S2L,
      I1 => p_7_in(4),
      I2 => p_7_in(1),
      I3 => PHS26_irq1_S2L,
      I4 => p_7_in(21),
      I5 => PHS46_irq1_S2L,
      O => PHS_irq_S2L_1_i_4_n_0
    );
PHS_irq_S2L_1_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_7_in(2),
      I1 => PHS27_irq1_S2L,
      I2 => p_7_in(24),
      I3 => PHS49_irq1_S2L,
      I4 => PHS_irq_S2L_1_i_10_n_0,
      O => PHS_irq_S2L_1_i_5_n_0
    );
PHS_irq_S2L_1_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_7_in(8),
      I1 => PHS33_irq1_S2L,
      I2 => p_7_in(17),
      I3 => PHS42_irq1_S2L,
      I4 => PHS_irq_S2L_1_i_11_n_0,
      O => PHS_irq_S2L_1_i_6_n_0
    );
PHS_irq_S2L_1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_7_in(7),
      I1 => PHS32_irq1_S2L,
      I2 => p_7_in(13),
      I3 => PHS38_irq1_S2L,
      I4 => PHS_irq_S2L_1_i_12_n_0,
      I5 => PHS_irq_S2L_1_i_13_n_0,
      O => PHS_irq_S2L_1_i_7_n_0
    );
PHS_irq_S2L_1_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS35_irq1_S2L,
      I1 => p_7_in(10),
      I2 => PHS30_irq1_S2L,
      I3 => p_7_in(5),
      O => PHS_irq_S2L_1_i_8_n_0
    );
PHS_irq_S2L_1_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => PHS43_irq1_S2L,
      I1 => p_7_in(18),
      I2 => PHS34_irq1_S2L,
      I3 => p_7_in(9),
      O => PHS_irq_S2L_1_i_9_n_0
    );
PHS_irq_S2L_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irq_S2L_10,
      Q => PHS_irq_S2L_1,
      R => \p_0_in__0\
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => \p_0_in__0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      S => \p_0_in__0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      S => \p_0_in__0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      S => \p_0_in__0\
    );
\axi_araddr_reg[4]_rep\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => \axi_araddr_reg[4]_rep_n_0\,
      S => \p_0_in__0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      S => \p_0_in__0\
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(4),
      Q => sel0(4),
      S => \p_0_in__0\
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(5),
      Q => sel0(5),
      S => \p_0_in__0\
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(6),
      Q => sel0(6),
      S => \p_0_in__0\
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(7),
      Q => sel0(7),
      S => \p_0_in__0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \p_0_in__0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in(0),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[2]_rep\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => \axi_awaddr_reg[2]_rep_n_0\,
      R => \p_0_in__0\
    );
\axi_awaddr_reg[2]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => \axi_awaddr_reg[2]_rep__0_n_0\,
      R => \p_0_in__0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in(1),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[3]_rep\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => \axi_awaddr_reg[3]_rep_n_0\,
      R => \p_0_in__0\
    );
\axi_awaddr_reg[3]_rep__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => \axi_awaddr_reg[3]_rep__0_n_0\,
      R => \p_0_in__0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in(2),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in(3),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => p_0_in(4),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => p_0_in(5),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(6),
      Q => p_0_in(6),
      R => \p_0_in__0\
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(7),
      Q => p_0_in(7),
      R => \p_0_in__0\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^aw_en_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \p_0_in__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => \p_0_in__0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0EFEFAFA0E0E0"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => sel0(7),
      I3 => \axi_rdata[0]_i_4_n_0\,
      I4 => sel0(6),
      I5 => \axi_rdata[0]_i_5_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \axi_rdata[0]_i_39_n_0\,
      I1 => \axi_rdata[0]_i_40_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[0]_i_41_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_42_n_0\,
      O => \axi_rdata[0]_i_15_n_0\
    );
\axi_rdata[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \axi_rdata[0]_i_43_n_0\,
      I1 => \axi_rdata[0]_i_44_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[0]_i_45_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_46_n_0\,
      O => \axi_rdata[0]_i_16_n_0\
    );
\axi_rdata[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \axi_rdata[0]_i_47_n_0\,
      I1 => \axi_rdata[0]_i_48_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[0]_i_49_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_50_n_0\,
      O => \axi_rdata[0]_i_17_n_0\
    );
\axi_rdata[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050303F5F5F303F"
    )
        port map (
      I0 => \axi_rdata[0]_i_51_n_0\,
      I1 => \axi_rdata[0]_i_52_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[0]_i_53_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_54_n_0\,
      O => \axi_rdata[0]_i_18_n_0\
    );
\axi_rdata[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(0),
      I1 => \^phs_irqs_l2s_0\(0),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg204_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_19_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => \axi_rdata[0]_i_6_n_0\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(0),
      I1 => \^phs_irqs_s2l_0\(0),
      I2 => sel0(1),
      I3 => p_7_in(0),
      I4 => sel0(0),
      I5 => p_8_in(0),
      O => \axi_rdata[0]_i_20_n_0\
    );
\axi_rdata[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs49_irq0_clr\,
      I1 => \^phs49_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg197\,
      I4 => sel0(0),
      I5 => \^phs49_pwm_val\(0),
      O => \axi_rdata[0]_i_21_n_0\
    );
\axi_rdata[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs48_irq0_clr\,
      I1 => \^phs48_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg193\,
      I4 => sel0(0),
      I5 => \^phs48_pwm_val\(0),
      O => \axi_rdata[0]_i_22_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[0]_i_7_n_0\,
      I1 => \axi_rdata_reg[0]_i_8_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[0]_i_9_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[0]_i_10_n_0\,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs11_irq0_clr\,
      I1 => \^phs11_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg45\,
      I4 => sel0(0),
      I5 => \^phs11_pwm_val\(0),
      O => \axi_rdata[0]_i_39_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[0]_i_11_n_0\,
      I1 => \axi_rdata_reg[0]_i_12_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[0]_i_13_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[0]_i_14_n_0\,
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs10_irq0_clr\,
      I1 => \^phs10_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg41\,
      I4 => sel0(0),
      I5 => \^phs10_pwm_val\(0),
      O => \axi_rdata[0]_i_40_n_0\
    );
\axi_rdata[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs8_irq0_clr\,
      I1 => \^phs8_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg33\,
      I4 => sel0(0),
      I5 => \^phs8_pwm_val\(0),
      O => \axi_rdata[0]_i_41_n_0\
    );
\axi_rdata[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs9_irq0_clr\,
      I1 => \^phs9_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg37\,
      I4 => sel0(0),
      I5 => \^phs9_pwm_val\(0),
      O => \axi_rdata[0]_i_42_n_0\
    );
\axi_rdata[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs15_irq0_clr\,
      I1 => \^phs15_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg61\,
      I4 => sel0(0),
      I5 => \^phs15_pwm_val\(0),
      O => \axi_rdata[0]_i_43_n_0\
    );
\axi_rdata[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs14_irq0_clr\,
      I1 => \^phs14_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg57\,
      I4 => sel0(0),
      I5 => \^phs14_pwm_val\(0),
      O => \axi_rdata[0]_i_44_n_0\
    );
\axi_rdata[0]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs12_irq0_clr\,
      I1 => \^phs12_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg49\,
      I4 => sel0(0),
      I5 => \^phs12_pwm_val\(0),
      O => \axi_rdata[0]_i_45_n_0\
    );
\axi_rdata[0]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs13_irq0_clr\,
      I1 => \^phs13_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg53\,
      I4 => sel0(0),
      I5 => \^phs13_pwm_val\(0),
      O => \axi_rdata[0]_i_46_n_0\
    );
\axi_rdata[0]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs3_irq0_clr\,
      I1 => \^phs3_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg13\,
      I4 => sel0(0),
      I5 => \^phs3_pwm_val\(0),
      O => \axi_rdata[0]_i_47_n_0\
    );
\axi_rdata[0]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs2_irq0_clr\,
      I1 => \^phs2_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg9\,
      I4 => sel0(0),
      I5 => \^phs2_pwm_val\(0),
      O => \axi_rdata[0]_i_48_n_0\
    );
\axi_rdata[0]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs0_irq0_clr\,
      I1 => \^phs0_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg1\,
      I4 => sel0(0),
      I5 => \^phs0_pwm_val\(0),
      O => \axi_rdata[0]_i_49_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303F3F505F505F"
    )
        port map (
      I0 => \axi_rdata[0]_i_15_n_0\,
      I1 => \axi_rdata[0]_i_16_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata[0]_i_17_n_0\,
      I4 => \axi_rdata[0]_i_18_n_0\,
      I5 => sel0(4),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs1_irq0_clr\,
      I1 => \^phs1_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg5\,
      I4 => sel0(0),
      I5 => \^phs1_pwm_val\(0),
      O => \axi_rdata[0]_i_50_n_0\
    );
\axi_rdata[0]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs7_irq0_clr\,
      I1 => \^phs7_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg29\,
      I4 => sel0(0),
      I5 => \^phs7_pwm_val\(0),
      O => \axi_rdata[0]_i_51_n_0\
    );
\axi_rdata[0]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs6_irq0_clr\,
      I1 => \^phs6_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg25\,
      I4 => sel0(0),
      I5 => \^phs6_pwm_val\(0),
      O => \axi_rdata[0]_i_52_n_0\
    );
\axi_rdata[0]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs4_irq0_clr\,
      I1 => \^phs4_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg17\,
      I4 => sel0(0),
      I5 => \^phs4_pwm_val\(0),
      O => \axi_rdata[0]_i_53_n_0\
    );
\axi_rdata[0]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs5_irq0_clr\,
      I1 => \^phs5_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg21\,
      I4 => sel0(0),
      I5 => \^phs5_pwm_val\(0),
      O => \axi_rdata[0]_i_54_n_0\
    );
\axi_rdata[0]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs44_irq0_clr\,
      I1 => \^phs44_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg177\,
      I4 => sel0(0),
      I5 => \^phs44_pwm_val\(0),
      O => \axi_rdata[0]_i_55_n_0\
    );
\axi_rdata[0]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs45_irq0_clr\,
      I1 => \^phs45_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg181\,
      I4 => sel0(0),
      I5 => \^phs45_pwm_val\(0),
      O => \axi_rdata[0]_i_56_n_0\
    );
\axi_rdata[0]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs46_irq0_clr\,
      I1 => \^phs46_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg185\,
      I4 => sel0(0),
      I5 => \^phs46_pwm_val\(0),
      O => \axi_rdata[0]_i_57_n_0\
    );
\axi_rdata[0]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_irq0_clr\,
      I1 => \^phs47_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg189\,
      I4 => sel0(0),
      I5 => \^phs47_pwm_val\(0),
      O => \axi_rdata[0]_i_58_n_0\
    );
\axi_rdata[0]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs40_irq0_clr\,
      I1 => \^phs40_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg161\,
      I4 => sel0(0),
      I5 => \^phs40_pwm_val\(0),
      O => \axi_rdata[0]_i_59_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \axi_rdata[0]_i_19_n_0\,
      I1 => \axi_rdata[0]_i_20_n_0\,
      I2 => sel0(3),
      I3 => \axi_rdata[0]_i_21_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[0]_i_22_n_0\,
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs41_irq0_clr\,
      I1 => \^phs41_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg165\,
      I4 => sel0(0),
      I5 => \^phs41_pwm_val\(0),
      O => \axi_rdata[0]_i_60_n_0\
    );
\axi_rdata[0]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs42_irq0_clr\,
      I1 => \^phs42_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg169\,
      I4 => sel0(0),
      I5 => \^phs42_pwm_val\(0),
      O => \axi_rdata[0]_i_61_n_0\
    );
\axi_rdata[0]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_irq0_clr\,
      I1 => \^phs43_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg173\,
      I4 => sel0(0),
      I5 => \^phs43_pwm_val\(0),
      O => \axi_rdata[0]_i_62_n_0\
    );
\axi_rdata[0]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs36_irq0_clr\,
      I1 => \^phs36_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg145\,
      I4 => sel0(0),
      I5 => \^phs36_pwm_val\(0),
      O => \axi_rdata[0]_i_63_n_0\
    );
\axi_rdata[0]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs37_irq0_clr\,
      I1 => \^phs37_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg149\,
      I4 => sel0(0),
      I5 => \^phs37_pwm_val\(0),
      O => \axi_rdata[0]_i_64_n_0\
    );
\axi_rdata[0]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs38_irq0_clr\,
      I1 => \^phs38_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg153\,
      I4 => sel0(0),
      I5 => \^phs38_pwm_val\(0),
      O => \axi_rdata[0]_i_65_n_0\
    );
\axi_rdata[0]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_irq0_clr\,
      I1 => \^phs39_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg157\,
      I4 => sel0(0),
      I5 => \^phs39_pwm_val\(0),
      O => \axi_rdata[0]_i_66_n_0\
    );
\axi_rdata[0]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs32_irq0_clr\,
      I1 => \^phs32_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg129\,
      I4 => sel0(0),
      I5 => \^phs32_pwm_val\(0),
      O => \axi_rdata[0]_i_67_n_0\
    );
\axi_rdata[0]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs33_irq0_clr\,
      I1 => \^phs33_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg133\,
      I4 => sel0(0),
      I5 => \^phs33_pwm_val\(0),
      O => \axi_rdata[0]_i_68_n_0\
    );
\axi_rdata[0]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs34_irq0_clr\,
      I1 => \^phs34_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg137\,
      I4 => sel0(0),
      I5 => \^phs34_pwm_val\(0),
      O => \axi_rdata[0]_i_69_n_0\
    );
\axi_rdata[0]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_irq0_clr\,
      I1 => \^phs35_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg141\,
      I4 => sel0(0),
      I5 => \^phs35_pwm_val\(0),
      O => \axi_rdata[0]_i_70_n_0\
    );
\axi_rdata[0]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs28_irq0_clr\,
      I1 => \^phs28_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg113\,
      I4 => sel0(0),
      I5 => \^phs28_pwm_val\(0),
      O => \axi_rdata[0]_i_71_n_0\
    );
\axi_rdata[0]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs29_irq0_clr\,
      I1 => \^phs29_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg117\,
      I4 => sel0(0),
      I5 => \^phs29_pwm_val\(0),
      O => \axi_rdata[0]_i_72_n_0\
    );
\axi_rdata[0]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs30_irq0_clr\,
      I1 => \^phs30_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg121\,
      I4 => sel0(0),
      I5 => \^phs30_pwm_val\(0),
      O => \axi_rdata[0]_i_73_n_0\
    );
\axi_rdata[0]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs31_irq0_clr\,
      I1 => \^phs31_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg125\,
      I4 => sel0(0),
      I5 => \^phs31_pwm_val\(0),
      O => \axi_rdata[0]_i_74_n_0\
    );
\axi_rdata[0]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs24_irq0_clr\,
      I1 => \^phs24_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg97\,
      I4 => sel0(0),
      I5 => \^phs24_pwm_val\(0),
      O => \axi_rdata[0]_i_75_n_0\
    );
\axi_rdata[0]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs25_irq0_clr\,
      I1 => \^phs25_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg101\,
      I4 => sel0(0),
      I5 => \^phs25_pwm_val\(0),
      O => \axi_rdata[0]_i_76_n_0\
    );
\axi_rdata[0]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs26_irq0_clr\,
      I1 => \^phs26_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg105\,
      I4 => sel0(0),
      I5 => \^phs26_pwm_val\(0),
      O => \axi_rdata[0]_i_77_n_0\
    );
\axi_rdata[0]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs27_irq0_clr\,
      I1 => \^phs27_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg109\,
      I4 => sel0(0),
      I5 => \^phs27_pwm_val\(0),
      O => \axi_rdata[0]_i_78_n_0\
    );
\axi_rdata[0]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs20_irq0_clr\,
      I1 => \^phs20_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg81\,
      I4 => sel0(0),
      I5 => \^phs20_pwm_val\(0),
      O => \axi_rdata[0]_i_79_n_0\
    );
\axi_rdata[0]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs21_irq0_clr\,
      I1 => \^phs21_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg85\,
      I4 => sel0(0),
      I5 => \^phs21_pwm_val\(0),
      O => \axi_rdata[0]_i_80_n_0\
    );
\axi_rdata[0]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs22_irq0_clr\,
      I1 => \^phs22_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg89\,
      I4 => sel0(0),
      I5 => \^phs22_pwm_val\(0),
      O => \axi_rdata[0]_i_81_n_0\
    );
\axi_rdata[0]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs23_irq0_clr\,
      I1 => \^phs23_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg93\,
      I4 => sel0(0),
      I5 => \^phs23_pwm_val\(0),
      O => \axi_rdata[0]_i_82_n_0\
    );
\axi_rdata[0]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs16_irq0_clr\,
      I1 => \^phs16_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg65\,
      I4 => sel0(0),
      I5 => \^phs16_pwm_val\(0),
      O => \axi_rdata[0]_i_83_n_0\
    );
\axi_rdata[0]_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs17_irq0_clr\,
      I1 => \^phs17_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg69\,
      I4 => sel0(0),
      I5 => \^phs17_pwm_val\(0),
      O => \axi_rdata[0]_i_84_n_0\
    );
\axi_rdata[0]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs18_irq0_clr\,
      I1 => \^phs18_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg73\,
      I4 => sel0(0),
      I5 => \^phs18_pwm_val\(0),
      O => \axi_rdata[0]_i_85_n_0\
    );
\axi_rdata[0]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs19_irq0_clr\,
      I1 => \^phs19_irq_mask\(0),
      I2 => sel0(1),
      I3 => \^slv_reg77\,
      I4 => sel0(0),
      I5 => \^phs19_pwm_val\(0),
      O => \axi_rdata[0]_i_86_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(10),
      I1 => \^phs_irqs_l2s_0\(10),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[10]\,
      I4 => sel0(0),
      I5 => p_0_in109_in,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(10),
      I1 => \^phs_irqs_s2l_0\(10),
      I2 => sel0(1),
      I3 => p_7_in(10),
      I4 => sel0(0),
      I5 => p_8_in(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(11),
      I1 => \^phs_irqs_l2s_0\(11),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[11]\,
      I4 => sel0(0),
      I5 => p_0_in110_in,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(11),
      I1 => \^phs_irqs_s2l_0\(11),
      I2 => sel0(1),
      I3 => p_7_in(11),
      I4 => sel0(0),
      I5 => p_8_in(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(12),
      I1 => \^phs_irqs_l2s_0\(12),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[12]\,
      I4 => sel0(0),
      I5 => p_0_in111_in,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(12),
      I1 => \^phs_irqs_s2l_0\(12),
      I2 => sel0(1),
      I3 => p_7_in(12),
      I4 => sel0(0),
      I5 => p_8_in(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(13),
      I1 => \^phs_irqs_l2s_0\(13),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[13]\,
      I4 => sel0(0),
      I5 => p_0_in112_in,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(13),
      I1 => \^phs_irqs_s2l_0\(13),
      I2 => sel0(1),
      I3 => p_7_in(13),
      I4 => sel0(0),
      I5 => p_8_in(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(14),
      I1 => \^phs_irqs_l2s_0\(14),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[14]\,
      I4 => sel0(0),
      I5 => p_0_in113_in,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(14),
      I1 => \^phs_irqs_s2l_0\(14),
      I2 => sel0(1),
      I3 => p_7_in(14),
      I4 => sel0(0),
      I5 => p_8_in(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(15),
      I1 => \^phs_irqs_l2s_0\(15),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[15]\,
      I4 => sel0(0),
      I5 => p_0_in114_in,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(15),
      I1 => \^phs_irqs_s2l_0\(15),
      I2 => sel0(1),
      I3 => p_7_in(15),
      I4 => sel0(0),
      I5 => p_8_in(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(16),
      I1 => \^phs_irqs_l2s_0\(16),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[16]\,
      I4 => sel0(0),
      I5 => p_0_in115_in,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(16),
      I1 => \^phs_irqs_s2l_0\(16),
      I2 => sel0(1),
      I3 => p_7_in(16),
      I4 => sel0(0),
      I5 => p_8_in(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(17),
      I1 => \^phs_irqs_l2s_0\(17),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[17]\,
      I4 => sel0(0),
      I5 => p_0_in116_in,
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(17),
      I1 => \^phs_irqs_s2l_0\(17),
      I2 => sel0(1),
      I3 => p_7_in(17),
      I4 => sel0(0),
      I5 => p_8_in(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => \axi_rdata[18]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(18),
      I1 => \^phs_irqs_l2s_0\(18),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[18]\,
      I4 => sel0(0),
      I5 => p_0_in117_in,
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(18),
      I1 => \^phs_irqs_s2l_0\(18),
      I2 => sel0(1),
      I3 => p_7_in(18),
      I4 => sel0(0),
      I5 => p_8_in(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \axi_rdata[19]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(19),
      I1 => \^phs_irqs_l2s_0\(19),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[19]\,
      I4 => sel0(0),
      I5 => p_0_in118_in,
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(19),
      I1 => \^phs_irqs_s2l_0\(19),
      I2 => sel0(1),
      I3 => p_7_in(19),
      I4 => sel0(0),
      I5 => p_8_in(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8830FFFF88300000"
    )
        port map (
      I0 => \axi_rdata_reg[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      I2 => \axi_rdata[1]_i_4_n_0\,
      I3 => \axi_rdata[1]_i_5_n_0\,
      I4 => sel0(7),
      I5 => \axi_rdata_reg[1]_i_6_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[1]_i_27_n_0\,
      I1 => \axi_rdata_reg[1]_i_28_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[1]_i_29_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[1]_i_30_n_0\,
      O => \axi_rdata[1]_i_13_n_0\
    );
\axi_rdata[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[1]_i_31_n_0\,
      I1 => \axi_rdata_reg[1]_i_32_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[1]_i_33_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[1]_i_34_n_0\,
      O => \axi_rdata[1]_i_14_n_0\
    );
\axi_rdata[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs48_irq1_clr\,
      I1 => \^phs48_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_15_n_0\
    );
\axi_rdata[1]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs49_irq1_clr\,
      I1 => \^phs49_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs49_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_16_n_0\
    );
\axi_rdata[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(1),
      I1 => \^phs_irqs_s2l_0\(1),
      I2 => sel0(1),
      I3 => p_7_in(1),
      I4 => sel0(0),
      I5 => p_8_in(1),
      O => \axi_rdata[1]_i_17_n_0\
    );
\axi_rdata[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(1),
      I1 => \^phs_irqs_l2s_0\(1),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => p_0_in100_in,
      O => \axi_rdata[1]_i_18_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs44_irq1_clr\,
      I1 => \^phs44_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs44_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_35_n_0\
    );
\axi_rdata[1]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs45_irq1_clr\,
      I1 => \^phs45_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs45_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_36_n_0\
    );
\axi_rdata[1]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs46_irq1_clr\,
      I1 => \^phs46_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs46_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_37_n_0\
    );
\axi_rdata[1]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs47_irq1_clr\,
      I1 => \^phs47_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs47_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_38_n_0\
    );
\axi_rdata[1]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs40_irq1_clr\,
      I1 => \^phs40_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs40_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_39_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[1]_i_9_n_0\,
      I1 => \axi_rdata_reg[1]_i_10_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[1]_i_11_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[1]_i_12_n_0\,
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs41_irq1_clr\,
      I1 => \^phs41_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs41_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_40_n_0\
    );
\axi_rdata[1]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs42_irq1_clr\,
      I1 => \^phs42_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs42_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_41_n_0\
    );
\axi_rdata[1]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs43_irq1_clr\,
      I1 => \^phs43_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs43_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_42_n_0\
    );
\axi_rdata[1]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs36_irq1_clr\,
      I1 => \^phs36_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs36_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_43_n_0\
    );
\axi_rdata[1]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs37_irq1_clr\,
      I1 => \^phs37_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs37_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_44_n_0\
    );
\axi_rdata[1]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs38_irq1_clr\,
      I1 => \^phs38_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs38_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_45_n_0\
    );
\axi_rdata[1]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs39_irq1_clr\,
      I1 => \^phs39_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs39_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_46_n_0\
    );
\axi_rdata[1]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs32_irq1_clr\,
      I1 => \^phs32_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs32_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_47_n_0\
    );
\axi_rdata[1]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs33_irq1_clr\,
      I1 => \^phs33_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs33_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_48_n_0\
    );
\axi_rdata[1]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs34_irq1_clr\,
      I1 => \^phs34_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs34_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_49_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs35_irq1_clr\,
      I1 => \^phs35_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs35_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_50_n_0\
    );
\axi_rdata[1]_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs12_irq1_clr\,
      I1 => \^phs12_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs12_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_67_n_0\
    );
\axi_rdata[1]_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs13_irq1_clr\,
      I1 => \^phs13_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs13_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_68_n_0\
    );
\axi_rdata[1]_i_69\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs14_irq1_clr\,
      I1 => \^phs14_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs14_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_69_n_0\
    );
\axi_rdata[1]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs15_irq1_clr\,
      I1 => \^phs15_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs15_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_70_n_0\
    );
\axi_rdata[1]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs8_irq1_clr\,
      I1 => \^phs8_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs8_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_71_n_0\
    );
\axi_rdata[1]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs9_irq1_clr\,
      I1 => \^phs9_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs9_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_72_n_0\
    );
\axi_rdata[1]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs10_irq1_clr\,
      I1 => \^phs10_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs10_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_73_n_0\
    );
\axi_rdata[1]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs11_irq1_clr\,
      I1 => \^phs11_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs11_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_74_n_0\
    );
\axi_rdata[1]_i_75\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs4_irq1_clr\,
      I1 => \^phs4_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs4_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_75_n_0\
    );
\axi_rdata[1]_i_76\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs5_irq1_clr\,
      I1 => \^phs5_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs5_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_76_n_0\
    );
\axi_rdata[1]_i_77\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs6_irq1_clr\,
      I1 => \^phs6_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs6_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_77_n_0\
    );
\axi_rdata[1]_i_78\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs7_irq1_clr\,
      I1 => \^phs7_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs7_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_78_n_0\
    );
\axi_rdata[1]_i_79\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs0_irq1_clr\,
      I1 => \^phs0_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs0_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_79_n_0\
    );
\axi_rdata[1]_i_80\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs1_irq1_clr\,
      I1 => \^phs1_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs1_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_80_n_0\
    );
\axi_rdata[1]_i_81\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs2_irq1_clr\,
      I1 => \^phs2_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs2_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_81_n_0\
    );
\axi_rdata[1]_i_82\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs3_irq1_clr\,
      I1 => \^phs3_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs3_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_82_n_0\
    );
\axi_rdata[1]_i_83\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs28_irq1_clr\,
      I1 => \^phs28_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs28_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_83_n_0\
    );
\axi_rdata[1]_i_84\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs29_irq1_clr\,
      I1 => \^phs29_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs29_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_84_n_0\
    );
\axi_rdata[1]_i_85\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs30_irq1_clr\,
      I1 => \^phs30_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs30_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_85_n_0\
    );
\axi_rdata[1]_i_86\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs31_irq1_clr\,
      I1 => \^phs31_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs31_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_86_n_0\
    );
\axi_rdata[1]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs24_irq1_clr\,
      I1 => \^phs24_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs24_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_87_n_0\
    );
\axi_rdata[1]_i_88\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs25_irq1_clr\,
      I1 => \^phs25_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs25_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_88_n_0\
    );
\axi_rdata[1]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs26_irq1_clr\,
      I1 => \^phs26_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs26_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_89_n_0\
    );
\axi_rdata[1]_i_90\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs27_irq1_clr\,
      I1 => \^phs27_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs27_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_90_n_0\
    );
\axi_rdata[1]_i_91\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs20_irq1_clr\,
      I1 => \^phs20_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs20_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_91_n_0\
    );
\axi_rdata[1]_i_92\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs21_irq1_clr\,
      I1 => \^phs21_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs21_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_92_n_0\
    );
\axi_rdata[1]_i_93\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs22_irq1_clr\,
      I1 => \^phs22_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs22_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_93_n_0\
    );
\axi_rdata[1]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs23_irq1_clr\,
      I1 => \^phs23_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs23_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_94_n_0\
    );
\axi_rdata[1]_i_95\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs16_irq1_clr\,
      I1 => \^phs16_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs16_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_95_n_0\
    );
\axi_rdata[1]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs17_irq1_clr\,
      I1 => \^phs17_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs17_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_96_n_0\
    );
\axi_rdata[1]_i_97\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs18_irq1_clr\,
      I1 => \^phs18_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs18_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_97_n_0\
    );
\axi_rdata[1]_i_98\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^phs19_irq1_clr\,
      I1 => \^phs19_irq_mask\(1),
      I2 => sel0(1),
      I3 => \^phs19_pwm_val\(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_98_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \axi_rdata[20]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(20),
      I1 => \^phs_irqs_l2s_0\(20),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[20]\,
      I4 => sel0(0),
      I5 => p_0_in119_in,
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(20),
      I1 => \^phs_irqs_s2l_0\(20),
      I2 => sel0(1),
      I3 => p_7_in(20),
      I4 => sel0(0),
      I5 => p_8_in(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \axi_rdata[21]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(21),
      I1 => \^phs_irqs_l2s_0\(21),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[21]\,
      I4 => sel0(0),
      I5 => p_0_in120_in,
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(21),
      I1 => \^phs_irqs_s2l_0\(21),
      I2 => sel0(1),
      I3 => p_7_in(21),
      I4 => sel0(0),
      I5 => p_8_in(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => \axi_rdata[22]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(22),
      I1 => \^phs_irqs_l2s_0\(22),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[22]\,
      I4 => sel0(0),
      I5 => p_0_in121_in,
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(22),
      I1 => \^phs_irqs_s2l_0\(22),
      I2 => sel0(1),
      I3 => p_7_in(22),
      I4 => sel0(0),
      I5 => p_8_in(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(23),
      I1 => \^phs_irqs_l2s_0\(23),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[23]\,
      I4 => sel0(0),
      I5 => p_0_in122_in,
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(23),
      I1 => \^phs_irqs_s2l_0\(23),
      I2 => sel0(1),
      I3 => p_7_in(23),
      I4 => sel0(0),
      I5 => p_8_in(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \axi_rdata[24]_i_3_n_0\,
      I1 => \axi_rdata[24]_i_4_n_0\,
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \axi_rdata[24]_i_5_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(24),
      I1 => \^phs_irqs_l2s_0\(24),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[24]\,
      I4 => sel0(0),
      I5 => p_0_in123_in,
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(24),
      I1 => \^phs_irqs_s2l_0\(24),
      I2 => sel0(1),
      I3 => p_7_in(24),
      I4 => sel0(0),
      I5 => p_8_in(24),
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(4),
      I2 => sel0(6),
      I3 => sel0(5),
      I4 => sel0(3),
      O => \axi_rdata[24]_i_5_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      I2 => \axi_rdata[9]_i_4_n_0\,
      I3 => \axi_rdata[2]_i_4_n_0\,
      I4 => \axi_rdata[2]_i_5_n_0\,
      I5 => \axi_rdata[2]_i_6_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[2]_i_21_n_0\,
      I1 => \^phs30_pwm_val\(2),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \^phs31_pwm_val\(2),
      I5 => \axi_rdata[9]_i_20_n_0\,
      O => \axi_rdata[2]_i_10_n_0\
    );
\axi_rdata[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^phs15_pwm_val\(2),
      I1 => \^phs14_pwm_val\(2),
      I2 => \^phs13_pwm_val\(2),
      I3 => sel0(2),
      I4 => \^phs12_pwm_val\(2),
      I5 => sel0(3),
      O => \axi_rdata[2]_i_11_n_0\
    );
\axi_rdata[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs9_pwm_val\(2),
      I1 => \^phs8_pwm_val\(2),
      I2 => sel0(2),
      I3 => \^phs10_pwm_val\(2),
      I4 => sel0(3),
      I5 => \^phs11_pwm_val\(2),
      O => \axi_rdata[2]_i_12_n_0\
    );
\axi_rdata[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(2),
      I1 => \^phs46_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(2),
      I4 => sel0(2),
      I5 => \^phs44_pwm_val\(2),
      O => \axi_rdata[2]_i_15_n_0\
    );
\axi_rdata[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(2),
      I1 => \^phs42_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(2),
      I4 => sel0(2),
      I5 => \^phs40_pwm_val\(2),
      O => \axi_rdata[2]_i_16_n_0\
    );
\axi_rdata[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(2),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(2),
      I4 => sel0(0),
      O => \axi_rdata[2]_i_17_n_0\
    );
\axi_rdata[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(2),
      I1 => \^phs_irqs_s2l_0\(2),
      I2 => sel0(1),
      I3 => p_7_in(2),
      I4 => sel0(0),
      I5 => p_8_in(2),
      O => \axi_rdata[2]_i_18_n_0\
    );
\axi_rdata[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(2),
      I1 => \^phs_irqs_l2s_0\(2),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[2]\,
      I4 => sel0(0),
      I5 => p_0_in101_in,
      O => \axi_rdata[2]_i_19_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[2]_i_7_n_0\,
      I1 => \^phs19_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs18_pwm_val\(2),
      I4 => sel0(2),
      I5 => \axi_rdata[2]_i_8_n_0\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10B0FFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => \^phs22_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs23_pwm_val\(2),
      I4 => sel0(4),
      O => \axi_rdata[2]_i_20_n_0\
    );
\axi_rdata[2]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \^phs29_pwm_val\(2),
      I1 => sel0(2),
      I2 => \^phs28_pwm_val\(2),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \axi_rdata[2]_i_21_n_0\
    );
\axi_rdata[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs2_pwm_val\(2),
      I1 => \^phs3_pwm_val\(2),
      I2 => \^phs1_pwm_val\(2),
      I3 => sel0(2),
      I4 => \^phs0_pwm_val\(2),
      I5 => sel0(3),
      O => \axi_rdata[2]_i_22_n_0\
    );
\axi_rdata[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs5_pwm_val\(2),
      I1 => \^phs4_pwm_val\(2),
      I2 => sel0(2),
      I3 => \^phs6_pwm_val\(2),
      I4 => sel0(3),
      I5 => \^phs7_pwm_val\(2),
      O => \axi_rdata[2]_i_23_n_0\
    );
\axi_rdata[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(2),
      I1 => \^phs34_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(2),
      I4 => sel0(2),
      I5 => \^phs32_pwm_val\(2),
      O => \axi_rdata[2]_i_24_n_0\
    );
\axi_rdata[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(2),
      I1 => \^phs38_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(2),
      I4 => sel0(2),
      I5 => \^phs36_pwm_val\(2),
      O => \axi_rdata[2]_i_25_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[2]_i_9_n_0\,
      I1 => \^phs27_pwm_val\(2),
      I2 => sel0(3),
      I3 => \^phs26_pwm_val\(2),
      I4 => sel0(2),
      I5 => \axi_rdata[2]_i_10_n_0\,
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \axi_rdata[2]_i_11_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[2]_i_12_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata_reg[2]_i_13_n_0\,
      I5 => sel0(6),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CACAFA0A"
    )
        port map (
      I0 => \axi_rdata_reg[2]_i_14_n_0\,
      I1 => \axi_rdata[2]_i_15_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata[2]_i_16_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata[6]_i_15_n_0\,
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[2]_i_17_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[2]_i_18_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[2]_i_19_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs17_pwm_val\(2),
      I2 => sel0(2),
      I3 => \^phs16_pwm_val\(2),
      I4 => sel0(3),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[2]_i_20_n_0\,
      I1 => sel0(3),
      I2 => \^phs20_pwm_val\(2),
      I3 => sel0(2),
      I4 => \^phs21_pwm_val\(2),
      I5 => \axi_rdata[1]_i_3_n_0\,
      O => \axi_rdata[2]_i_8_n_0\
    );
\axi_rdata[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs25_pwm_val\(2),
      I2 => sel0(2),
      I3 => \^phs24_pwm_val\(2),
      I4 => sel0(3),
      O => \axi_rdata[2]_i_9_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      I2 => \axi_rdata[9]_i_4_n_0\,
      I3 => \axi_rdata[3]_i_4_n_0\,
      I4 => \axi_rdata[3]_i_5_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^phs15_pwm_val\(3),
      I1 => \^phs14_pwm_val\(3),
      I2 => \^phs13_pwm_val\(3),
      I3 => sel0(2),
      I4 => \^phs12_pwm_val\(3),
      I5 => sel0(3),
      O => \axi_rdata[3]_i_10_n_0\
    );
\axi_rdata[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs9_pwm_val\(3),
      I1 => \^phs8_pwm_val\(3),
      I2 => sel0(2),
      I3 => \^phs10_pwm_val\(3),
      I4 => sel0(3),
      I5 => \^phs11_pwm_val\(3),
      O => \axi_rdata[3]_i_11_n_0\
    );
\axi_rdata[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[3]_i_21_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[3]_i_22_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[3]_i_23_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[3]_i_13_n_0\
    );
\axi_rdata[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAEFAA"
    )
        port map (
      I0 => \axi_rdata[6]_i_15_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[3]_i_24_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata[3]_i_25_n_0\,
      O => \axi_rdata[3]_i_14_n_0\
    );
\axi_rdata[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(3),
      I1 => \^phs38_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(3),
      I4 => sel0(2),
      I5 => \^phs36_pwm_val\(3),
      O => \axi_rdata[3]_i_15_n_0\
    );
\axi_rdata[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(3),
      I1 => \^phs34_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(3),
      I4 => sel0(2),
      I5 => \^phs32_pwm_val\(3),
      O => \axi_rdata[3]_i_16_n_0\
    );
\axi_rdata[3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \^phs21_pwm_val\(3),
      I1 => sel0(2),
      I2 => \^phs20_pwm_val\(3),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \axi_rdata[3]_i_17_n_0\
    );
\axi_rdata[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10B0FFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => \^phs30_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs31_pwm_val\(3),
      I4 => sel0(4),
      O => \axi_rdata[3]_i_18_n_0\
    );
\axi_rdata[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs2_pwm_val\(3),
      I1 => \^phs3_pwm_val\(3),
      I2 => \^phs1_pwm_val\(3),
      I3 => sel0(2),
      I4 => \^phs0_pwm_val\(3),
      I5 => sel0(3),
      O => \axi_rdata[3]_i_19_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[3]_i_6_n_0\,
      I1 => \^phs19_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs18_pwm_val\(3),
      I4 => sel0(2),
      I5 => \axi_rdata[3]_i_7_n_0\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs5_pwm_val\(3),
      I1 => \^phs4_pwm_val\(3),
      I2 => sel0(2),
      I3 => \^phs6_pwm_val\(3),
      I4 => sel0(3),
      I5 => \^phs7_pwm_val\(3),
      O => \axi_rdata[3]_i_20_n_0\
    );
\axi_rdata[3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(3),
      I4 => sel0(0),
      O => \axi_rdata[3]_i_21_n_0\
    );
\axi_rdata[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(3),
      I1 => \^phs_irqs_s2l_0\(3),
      I2 => sel0(1),
      I3 => p_7_in(3),
      I4 => sel0(0),
      I5 => p_8_in(3),
      O => \axi_rdata[3]_i_22_n_0\
    );
\axi_rdata[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(3),
      I1 => \^phs_irqs_l2s_0\(3),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[3]\,
      I4 => sel0(0),
      I5 => p_0_in102_in,
      O => \axi_rdata[3]_i_23_n_0\
    );
\axi_rdata[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(3),
      I1 => \^phs42_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(3),
      I4 => sel0(2),
      I5 => \^phs40_pwm_val\(3),
      O => \axi_rdata[3]_i_24_n_0\
    );
\axi_rdata[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(3),
      I1 => \^phs46_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(3),
      I4 => sel0(2),
      I5 => \^phs44_pwm_val\(3),
      O => \axi_rdata[3]_i_25_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[3]_i_8_n_0\,
      I1 => \^phs27_pwm_val\(3),
      I2 => sel0(3),
      I3 => \^phs26_pwm_val\(3),
      I4 => sel0(2),
      I5 => \axi_rdata[3]_i_9_n_0\,
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \axi_rdata[3]_i_10_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[3]_i_11_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata_reg[3]_i_12_n_0\,
      I5 => sel0(6),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBABABBAA"
    )
        port map (
      I0 => \axi_rdata[3]_i_13_n_0\,
      I1 => \axi_rdata[3]_i_14_n_0\,
      I2 => \axi_rdata[3]_i_15_n_0\,
      I3 => \axi_rdata[3]_i_16_n_0\,
      I4 => sel0(4),
      I5 => sel0(5),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs17_pwm_val\(3),
      I2 => sel0(2),
      I3 => \^phs16_pwm_val\(3),
      I4 => sel0(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[3]_i_17_n_0\,
      I1 => \^phs22_pwm_val\(3),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \^phs23_pwm_val\(3),
      I5 => \axi_rdata[1]_i_3_n_0\,
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs25_pwm_val\(3),
      I2 => sel0(2),
      I3 => \^phs24_pwm_val\(3),
      I4 => sel0(3),
      O => \axi_rdata[3]_i_8_n_0\
    );
\axi_rdata[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[3]_i_18_n_0\,
      I1 => sel0(3),
      I2 => \^phs28_pwm_val\(3),
      I3 => sel0(2),
      I4 => \^phs29_pwm_val\(3),
      I5 => \axi_rdata[9]_i_20_n_0\,
      O => \axi_rdata[3]_i_9_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      I2 => \axi_rdata[9]_i_4_n_0\,
      I3 => \axi_rdata[4]_i_4_n_0\,
      I4 => \axi_rdata[4]_i_5_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^phs7_pwm_val\(4),
      I1 => \^phs6_pwm_val\(4),
      I2 => \^phs5_pwm_val\(4),
      I3 => sel0(2),
      I4 => \^phs4_pwm_val\(4),
      I5 => sel0(3),
      O => \axi_rdata[4]_i_10_n_0\
    );
\axi_rdata[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs1_pwm_val\(4),
      I1 => \^phs0_pwm_val\(4),
      I2 => sel0(2),
      I3 => \^phs2_pwm_val\(4),
      I4 => sel0(3),
      I5 => \^phs3_pwm_val\(4),
      O => \axi_rdata[4]_i_11_n_0\
    );
\axi_rdata[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[4]_i_21_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[4]_i_22_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[4]_i_23_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[4]_i_13_n_0\
    );
\axi_rdata[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBABB"
    )
        port map (
      I0 => \axi_rdata[6]_i_15_n_0\,
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => \axi_rdata[4]_i_24_n_0\,
      I4 => \axi_rdata[4]_i_25_n_0\,
      O => \axi_rdata[4]_i_14_n_0\
    );
\axi_rdata[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(4),
      I1 => \^phs46_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(4),
      I4 => sel0(2),
      I5 => \^phs44_pwm_val\(4),
      O => \axi_rdata[4]_i_15_n_0\
    );
\axi_rdata[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(4),
      I1 => \^phs42_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(4),
      I4 => sel0(2),
      I5 => \^phs40_pwm_val\(4),
      O => \axi_rdata[4]_i_16_n_0\
    );
\axi_rdata[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10B0FFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => \^phs22_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs23_pwm_val\(4),
      I4 => sel0(4),
      O => \axi_rdata[4]_i_17_n_0\
    );
\axi_rdata[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \^phs29_pwm_val\(4),
      I1 => sel0(2),
      I2 => \^phs28_pwm_val\(4),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \axi_rdata[4]_i_18_n_0\
    );
\axi_rdata[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs10_pwm_val\(4),
      I1 => \^phs11_pwm_val\(4),
      I2 => \^phs9_pwm_val\(4),
      I3 => sel0(2),
      I4 => \^phs8_pwm_val\(4),
      I5 => sel0(3),
      O => \axi_rdata[4]_i_19_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[4]_i_6_n_0\,
      I1 => \^phs19_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs18_pwm_val\(4),
      I4 => sel0(2),
      I5 => \axi_rdata[4]_i_7_n_0\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs14_pwm_val\(4),
      I1 => \^phs15_pwm_val\(4),
      I2 => \^phs13_pwm_val\(4),
      I3 => sel0(2),
      I4 => \^phs12_pwm_val\(4),
      I5 => sel0(3),
      O => \axi_rdata[4]_i_20_n_0\
    );
\axi_rdata[4]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(4),
      I4 => sel0(0),
      O => \axi_rdata[4]_i_21_n_0\
    );
\axi_rdata[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(4),
      I1 => \^phs_irqs_s2l_0\(4),
      I2 => sel0(1),
      I3 => p_7_in(4),
      I4 => sel0(0),
      I5 => p_8_in(4),
      O => \axi_rdata[4]_i_22_n_0\
    );
\axi_rdata[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(4),
      I1 => \^phs_irqs_l2s_0\(4),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[4]\,
      I4 => sel0(0),
      I5 => p_0_in103_in,
      O => \axi_rdata[4]_i_23_n_0\
    );
\axi_rdata[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(4),
      I1 => \^phs34_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(4),
      I4 => sel0(2),
      I5 => \^phs32_pwm_val\(4),
      O => \axi_rdata[4]_i_24_n_0\
    );
\axi_rdata[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(4),
      I1 => \^phs38_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(4),
      I4 => sel0(2),
      I5 => \^phs36_pwm_val\(4),
      O => \axi_rdata[4]_i_25_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[4]_i_8_n_0\,
      I1 => \^phs27_pwm_val\(4),
      I2 => sel0(3),
      I3 => \^phs26_pwm_val\(4),
      I4 => sel0(2),
      I5 => \axi_rdata[4]_i_9_n_0\,
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0047FF47"
    )
        port map (
      I0 => \axi_rdata[4]_i_10_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[4]_i_11_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata_reg[4]_i_12_n_0\,
      I5 => sel0(6),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBBBBAABB"
    )
        port map (
      I0 => \axi_rdata[4]_i_13_n_0\,
      I1 => \axi_rdata[4]_i_14_n_0\,
      I2 => \axi_rdata[4]_i_15_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata[4]_i_16_n_0\,
      I5 => sel0(4),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs17_pwm_val\(4),
      I2 => sel0(2),
      I3 => \^phs16_pwm_val\(4),
      I4 => sel0(3),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[4]_i_17_n_0\,
      I1 => sel0(3),
      I2 => \^phs20_pwm_val\(4),
      I3 => sel0(2),
      I4 => \^phs21_pwm_val\(4),
      I5 => \axi_rdata[1]_i_3_n_0\,
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs25_pwm_val\(4),
      I2 => sel0(2),
      I3 => \^phs24_pwm_val\(4),
      I4 => sel0(3),
      O => \axi_rdata[4]_i_8_n_0\
    );
\axi_rdata[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[4]_i_18_n_0\,
      I1 => \^phs30_pwm_val\(4),
      I2 => sel0(3),
      I3 => sel0(2),
      I4 => \^phs31_pwm_val\(4),
      I5 => \axi_rdata[9]_i_20_n_0\,
      O => \axi_rdata[4]_i_9_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF10"
    )
        port map (
      I0 => \axi_rdata[9]_i_4_n_0\,
      I1 => \axi_rdata[5]_i_2_n_0\,
      I2 => \axi_rdata[5]_i_3_n_0\,
      I3 => \axi_rdata[5]_i_4_n_0\,
      I4 => \axi_rdata[5]_i_5_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^phs5_pwm_val\(5),
      I1 => \^phs4_pwm_val\(5),
      I2 => \^phs7_pwm_val\(5),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \^phs6_pwm_val\(5),
      O => \axi_rdata[5]_i_10_n_0\
    );
\axi_rdata[5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => sel0(6),
      I1 => \axi_rdata[5]_i_20_n_0\,
      I2 => sel0(4),
      I3 => sel0(5),
      I4 => \axi_rdata[5]_i_21_n_0\,
      O => \axi_rdata[5]_i_11_n_0\
    );
\axi_rdata[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(5),
      I1 => \^phs46_pwm_val\(5),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(5),
      I4 => sel0(2),
      I5 => \^phs44_pwm_val\(5),
      O => \axi_rdata[5]_i_13_n_0\
    );
\axi_rdata[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(5),
      I1 => \^phs42_pwm_val\(5),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(5),
      I4 => sel0(2),
      I5 => \^phs40_pwm_val\(5),
      O => \axi_rdata[5]_i_14_n_0\
    );
\axi_rdata[5]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(5),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(5),
      I4 => sel0(0),
      O => \axi_rdata[5]_i_15_n_0\
    );
\axi_rdata[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(5),
      I1 => \^phs_irqs_s2l_0\(5),
      I2 => sel0(1),
      I3 => p_7_in(5),
      I4 => sel0(0),
      I5 => p_8_in(5),
      O => \axi_rdata[5]_i_16_n_0\
    );
\axi_rdata[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(5),
      I1 => \^phs_irqs_l2s_0\(5),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[5]\,
      I4 => sel0(0),
      I5 => p_0_in104_in,
      O => \axi_rdata[5]_i_17_n_0\
    );
\axi_rdata[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^phs22_pwm_val\(5),
      I1 => \^phs23_pwm_val\(5),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => \^phs18_pwm_val\(5),
      I5 => \^phs19_pwm_val\(5),
      O => \axi_rdata[5]_i_18_n_0\
    );
\axi_rdata[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^phs26_pwm_val\(5),
      I1 => \^phs27_pwm_val\(5),
      I2 => \^phs31_pwm_val\(5),
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => \^phs30_pwm_val\(5),
      O => \axi_rdata[5]_i_19_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAFABA"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[5]_i_6_n_0\,
      I2 => sel0(6),
      I3 => sel0(5),
      I4 => \axi_rdata[5]_i_7_n_0\,
      I5 => \axi_rdata[5]_i_8_n_0\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAF0FFF000"
    )
        port map (
      I0 => \^phs14_pwm_val\(5),
      I1 => \^phs15_pwm_val\(5),
      I2 => \^phs13_pwm_val\(5),
      I3 => sel0(2),
      I4 => \^phs12_pwm_val\(5),
      I5 => sel0(3),
      O => \axi_rdata[5]_i_20_n_0\
    );
\axi_rdata[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAF0FFF000"
    )
        port map (
      I0 => \^phs10_pwm_val\(5),
      I1 => \^phs11_pwm_val\(5),
      I2 => \^phs9_pwm_val\(5),
      I3 => sel0(2),
      I4 => \^phs8_pwm_val\(5),
      I5 => sel0(3),
      O => \axi_rdata[5]_i_21_n_0\
    );
\axi_rdata[5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(5),
      I1 => \^phs34_pwm_val\(5),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(5),
      I4 => sel0(2),
      I5 => \^phs32_pwm_val\(5),
      O => \axi_rdata[5]_i_22_n_0\
    );
\axi_rdata[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(5),
      I1 => \^phs38_pwm_val\(5),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(5),
      I4 => sel0(2),
      I5 => \^phs36_pwm_val\(5),
      O => \axi_rdata[5]_i_23_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5404"
    )
        port map (
      I0 => sel0(5),
      I1 => \axi_rdata[5]_i_9_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[5]_i_10_n_0\,
      I4 => \axi_rdata[5]_i_11_n_0\,
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CACAFA0A"
    )
        port map (
      I0 => \axi_rdata_reg[5]_i_12_n_0\,
      I1 => \axi_rdata[5]_i_13_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata[5]_i_14_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata[6]_i_15_n_0\,
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[5]_i_15_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[5]_i_16_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[5]_i_17_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^phs20_pwm_val\(5),
      I1 => \^phs21_pwm_val\(5),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => \^phs16_pwm_val\(5),
      I5 => \^phs17_pwm_val\(5),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^phs24_pwm_val\(5),
      I1 => \^phs25_pwm_val\(5),
      I2 => \^phs29_pwm_val\(5),
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => \^phs28_pwm_val\(5),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8CC08CC"
    )
        port map (
      I0 => \axi_rdata[5]_i_18_n_0\,
      I1 => sel0(3),
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => \axi_rdata[5]_i_19_n_0\,
      O => \axi_rdata[5]_i_8_n_0\
    );
\axi_rdata[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAF0FFF000"
    )
        port map (
      I0 => \^phs2_pwm_val\(5),
      I1 => \^phs3_pwm_val\(5),
      I2 => \^phs1_pwm_val\(5),
      I3 => sel0(2),
      I4 => \^phs0_pwm_val\(5),
      I5 => sel0(3),
      O => \axi_rdata[5]_i_9_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF10"
    )
        port map (
      I0 => \axi_rdata[9]_i_4_n_0\,
      I1 => \axi_rdata[6]_i_2_n_0\,
      I2 => \axi_rdata[6]_i_3_n_0\,
      I3 => \axi_rdata[6]_i_4_n_0\,
      I4 => \axi_rdata[6]_i_5_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \^phs5_pwm_val\(6),
      I1 => \^phs4_pwm_val\(6),
      I2 => \^phs7_pwm_val\(6),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \^phs6_pwm_val\(6),
      O => \axi_rdata[6]_i_10_n_0\
    );
\axi_rdata[6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => sel0(6),
      I1 => \axi_rdata[6]_i_22_n_0\,
      I2 => sel0(4),
      I3 => sel0(5),
      I4 => \axi_rdata[6]_i_23_n_0\,
      O => \axi_rdata[6]_i_11_n_0\
    );
\axi_rdata[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(6),
      I1 => \^phs42_pwm_val\(6),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(6),
      I4 => sel0(2),
      I5 => \^phs40_pwm_val\(6),
      O => \axi_rdata[6]_i_13_n_0\
    );
\axi_rdata[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(6),
      I1 => \^phs46_pwm_val\(6),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(6),
      I4 => sel0(2),
      I5 => \^phs44_pwm_val\(6),
      O => \axi_rdata[6]_i_14_n_0\
    );
\axi_rdata[6]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(7),
      I3 => sel0(6),
      O => \axi_rdata[6]_i_15_n_0\
    );
\axi_rdata[6]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(6),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(6),
      I4 => sel0(0),
      O => \axi_rdata[6]_i_16_n_0\
    );
\axi_rdata[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(6),
      I1 => \^phs_irqs_s2l_0\(6),
      I2 => sel0(1),
      I3 => p_7_in(6),
      I4 => sel0(0),
      I5 => p_8_in(6),
      O => \axi_rdata[6]_i_17_n_0\
    );
\axi_rdata[6]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(6),
      I1 => \^phs_irqs_l2s_0\(6),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[6]\,
      I4 => sel0(0),
      I5 => p_0_in105_in,
      O => \axi_rdata[6]_i_18_n_0\
    );
\axi_rdata[6]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      I2 => sel0(4),
      I3 => sel0(7),
      O => \axi_rdata[6]_i_19_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAFABA"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[6]_i_6_n_0\,
      I2 => sel0(6),
      I3 => sel0(5),
      I4 => \axi_rdata[6]_i_7_n_0\,
      I5 => \axi_rdata[6]_i_8_n_0\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^phs22_pwm_val\(6),
      I1 => \^phs23_pwm_val\(6),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => \^phs18_pwm_val\(6),
      I5 => \^phs19_pwm_val\(6),
      O => \axi_rdata[6]_i_20_n_0\
    );
\axi_rdata[6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^phs26_pwm_val\(6),
      I1 => \^phs27_pwm_val\(6),
      I2 => \^phs31_pwm_val\(6),
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => \^phs30_pwm_val\(6),
      O => \axi_rdata[6]_i_21_n_0\
    );
\axi_rdata[6]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAF0FFF000"
    )
        port map (
      I0 => \^phs14_pwm_val\(6),
      I1 => \^phs15_pwm_val\(6),
      I2 => \^phs13_pwm_val\(6),
      I3 => sel0(2),
      I4 => \^phs12_pwm_val\(6),
      I5 => sel0(3),
      O => \axi_rdata[6]_i_22_n_0\
    );
\axi_rdata[6]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAF0FFF000"
    )
        port map (
      I0 => \^phs10_pwm_val\(6),
      I1 => \^phs11_pwm_val\(6),
      I2 => \^phs9_pwm_val\(6),
      I3 => sel0(2),
      I4 => \^phs8_pwm_val\(6),
      I5 => sel0(3),
      O => \axi_rdata[6]_i_23_n_0\
    );
\axi_rdata[6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(6),
      I1 => \^phs34_pwm_val\(6),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(6),
      I4 => sel0(2),
      I5 => \^phs32_pwm_val\(6),
      O => \axi_rdata[6]_i_24_n_0\
    );
\axi_rdata[6]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(6),
      I1 => \^phs38_pwm_val\(6),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(6),
      I4 => sel0(2),
      I5 => \^phs36_pwm_val\(6),
      O => \axi_rdata[6]_i_25_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5404"
    )
        port map (
      I0 => sel0(5),
      I1 => \axi_rdata[6]_i_9_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[6]_i_10_n_0\,
      I4 => \axi_rdata[6]_i_11_n_0\,
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FA0ACACA"
    )
        port map (
      I0 => \axi_rdata_reg[6]_i_12_n_0\,
      I1 => \axi_rdata[6]_i_13_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata[6]_i_14_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata[6]_i_15_n_0\,
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[6]_i_16_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[6]_i_17_n_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[6]_i_18_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^phs20_pwm_val\(6),
      I1 => \^phs21_pwm_val\(6),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => \^phs16_pwm_val\(6),
      I5 => \^phs17_pwm_val\(6),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^phs24_pwm_val\(6),
      I1 => \^phs25_pwm_val\(6),
      I2 => \^phs29_pwm_val\(6),
      I3 => sel0(2),
      I4 => sel0(4),
      I5 => \^phs28_pwm_val\(6),
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8CC08CC"
    )
        port map (
      I0 => \axi_rdata[6]_i_20_n_0\,
      I1 => sel0(3),
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => \axi_rdata[6]_i_21_n_0\,
      O => \axi_rdata[6]_i_8_n_0\
    );
\axi_rdata[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAF0FFF000"
    )
        port map (
      I0 => \^phs2_pwm_val\(6),
      I1 => \^phs3_pwm_val\(6),
      I2 => \^phs1_pwm_val\(6),
      I3 => sel0(2),
      I4 => \^phs0_pwm_val\(6),
      I5 => sel0(3),
      O => \axi_rdata[6]_i_9_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      I2 => \axi_rdata[9]_i_4_n_0\,
      I3 => \axi_rdata[7]_i_4_n_0\,
      I4 => \axi_rdata[7]_i_5_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^phs15_pwm_val\(7),
      I1 => \^phs14_pwm_val\(7),
      I2 => \^phs13_pwm_val\(7),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs12_pwm_val\(7),
      I5 => sel0(3),
      O => \axi_rdata[7]_i_10_n_0\
    );
\axi_rdata[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs9_pwm_val\(7),
      I1 => \^phs8_pwm_val\(7),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs10_pwm_val\(7),
      I4 => sel0(3),
      I5 => \^phs11_pwm_val\(7),
      O => \axi_rdata[7]_i_11_n_0\
    );
\axi_rdata[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[7]_i_21_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[7]_i_22_n_0\,
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \axi_rdata[7]_i_23_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[7]_i_13_n_0\
    );
\axi_rdata[7]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBABB"
    )
        port map (
      I0 => \axi_rdata[6]_i_15_n_0\,
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => \axi_rdata[7]_i_24_n_0\,
      I4 => \axi_rdata[7]_i_25_n_0\,
      O => \axi_rdata[7]_i_14_n_0\
    );
\axi_rdata[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(7),
      I1 => \^phs46_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(7),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs44_pwm_val\(7),
      O => \axi_rdata[7]_i_15_n_0\
    );
\axi_rdata[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(7),
      I1 => \^phs42_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(7),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs40_pwm_val\(7),
      O => \axi_rdata[7]_i_16_n_0\
    );
\axi_rdata[7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \^phs21_pwm_val\(7),
      I1 => \axi_araddr_reg[4]_rep_n_0\,
      I2 => \^phs20_pwm_val\(7),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \axi_rdata[7]_i_17_n_0\
    );
\axi_rdata[7]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10B0FFFF"
    )
        port map (
      I0 => \axi_araddr_reg[4]_rep_n_0\,
      I1 => \^phs30_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs31_pwm_val\(7),
      I4 => sel0(4),
      O => \axi_rdata[7]_i_18_n_0\
    );
\axi_rdata[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs2_pwm_val\(7),
      I1 => \^phs3_pwm_val\(7),
      I2 => \^phs1_pwm_val\(7),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs0_pwm_val\(7),
      I5 => sel0(3),
      O => \axi_rdata[7]_i_19_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[7]_i_6_n_0\,
      I1 => \^phs19_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs18_pwm_val\(7),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \axi_rdata[7]_i_7_n_0\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs5_pwm_val\(7),
      I1 => \^phs4_pwm_val\(7),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs6_pwm_val\(7),
      I4 => sel0(3),
      I5 => \^phs7_pwm_val\(7),
      O => \axi_rdata[7]_i_20_n_0\
    );
\axi_rdata[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(7),
      I1 => \axi_araddr_reg[4]_rep_n_0\,
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(7),
      I4 => sel0(0),
      O => \axi_rdata[7]_i_21_n_0\
    );
\axi_rdata[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(7),
      I1 => \^phs_irqs_s2l_0\(7),
      I2 => sel0(1),
      I3 => p_7_in(7),
      I4 => sel0(0),
      I5 => p_8_in(7),
      O => \axi_rdata[7]_i_22_n_0\
    );
\axi_rdata[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(7),
      I1 => \^phs_irqs_l2s_0\(7),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[7]\,
      I4 => sel0(0),
      I5 => p_0_in106_in,
      O => \axi_rdata[7]_i_23_n_0\
    );
\axi_rdata[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(7),
      I1 => \^phs34_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(7),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs32_pwm_val\(7),
      O => \axi_rdata[7]_i_24_n_0\
    );
\axi_rdata[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(7),
      I1 => \^phs38_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(7),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs36_pwm_val\(7),
      O => \axi_rdata[7]_i_25_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[7]_i_8_n_0\,
      I1 => \^phs27_pwm_val\(7),
      I2 => sel0(3),
      I3 => \^phs26_pwm_val\(7),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \axi_rdata[7]_i_9_n_0\,
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \axi_rdata[7]_i_10_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[7]_i_11_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata_reg[7]_i_12_n_0\,
      I5 => sel0(6),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBBBBAABB"
    )
        port map (
      I0 => \axi_rdata[7]_i_13_n_0\,
      I1 => \axi_rdata[7]_i_14_n_0\,
      I2 => \axi_rdata[7]_i_15_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata[7]_i_16_n_0\,
      I5 => sel0(4),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs17_pwm_val\(7),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs16_pwm_val\(7),
      I4 => sel0(3),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[7]_i_17_n_0\,
      I1 => \^phs22_pwm_val\(7),
      I2 => sel0(3),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs23_pwm_val\(7),
      I5 => \axi_rdata[1]_i_3_n_0\,
      O => \axi_rdata[7]_i_7_n_0\
    );
\axi_rdata[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs25_pwm_val\(7),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs24_pwm_val\(7),
      I4 => sel0(3),
      O => \axi_rdata[7]_i_8_n_0\
    );
\axi_rdata[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[7]_i_18_n_0\,
      I1 => sel0(3),
      I2 => \^phs28_pwm_val\(7),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs29_pwm_val\(7),
      I5 => \axi_rdata[9]_i_20_n_0\,
      O => \axi_rdata[7]_i_9_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      I2 => \axi_rdata[9]_i_4_n_0\,
      I3 => \axi_rdata[8]_i_4_n_0\,
      I4 => \axi_rdata[8]_i_5_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^phs15_pwm_val\(8),
      I1 => \^phs14_pwm_val\(8),
      I2 => \^phs13_pwm_val\(8),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs12_pwm_val\(8),
      I5 => sel0(3),
      O => \axi_rdata[8]_i_10_n_0\
    );
\axi_rdata[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs9_pwm_val\(8),
      I1 => \^phs8_pwm_val\(8),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs10_pwm_val\(8),
      I4 => sel0(3),
      I5 => \^phs11_pwm_val\(8),
      O => \axi_rdata[8]_i_11_n_0\
    );
\axi_rdata[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[8]_i_21_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[8]_i_22_n_0\,
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \axi_rdata[8]_i_23_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[8]_i_13_n_0\
    );
\axi_rdata[8]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAABBB"
    )
        port map (
      I0 => \axi_rdata[6]_i_15_n_0\,
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => \axi_rdata[8]_i_24_n_0\,
      I4 => \axi_rdata[8]_i_25_n_0\,
      O => \axi_rdata[8]_i_14_n_0\
    );
\axi_rdata[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(8),
      I1 => \^phs46_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(8),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs44_pwm_val\(8),
      O => \axi_rdata[8]_i_15_n_0\
    );
\axi_rdata[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(8),
      I1 => \^phs42_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(8),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs40_pwm_val\(8),
      O => \axi_rdata[8]_i_16_n_0\
    );
\axi_rdata[8]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10B0FFFF"
    )
        port map (
      I0 => \axi_araddr_reg[4]_rep_n_0\,
      I1 => \^phs22_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs23_pwm_val\(8),
      I4 => sel0(4),
      O => \axi_rdata[8]_i_17_n_0\
    );
\axi_rdata[8]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \^phs29_pwm_val\(8),
      I1 => \axi_araddr_reg[4]_rep_n_0\,
      I2 => \^phs28_pwm_val\(8),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \axi_rdata[8]_i_18_n_0\
    );
\axi_rdata[8]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs2_pwm_val\(8),
      I1 => \^phs3_pwm_val\(8),
      I2 => \^phs1_pwm_val\(8),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs0_pwm_val\(8),
      I5 => sel0(3),
      O => \axi_rdata[8]_i_19_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[8]_i_6_n_0\,
      I1 => \^phs19_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs18_pwm_val\(8),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \axi_rdata[8]_i_7_n_0\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs5_pwm_val\(8),
      I1 => \^phs4_pwm_val\(8),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs6_pwm_val\(8),
      I4 => sel0(3),
      I5 => \^phs7_pwm_val\(8),
      O => \axi_rdata[8]_i_20_n_0\
    );
\axi_rdata[8]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(8),
      I1 => \axi_araddr_reg[4]_rep_n_0\,
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(8),
      I4 => sel0(0),
      O => \axi_rdata[8]_i_21_n_0\
    );
\axi_rdata[8]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(8),
      I1 => \^phs_irqs_s2l_0\(8),
      I2 => sel0(1),
      I3 => p_7_in(8),
      I4 => sel0(0),
      I5 => p_8_in(8),
      O => \axi_rdata[8]_i_22_n_0\
    );
\axi_rdata[8]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(8),
      I1 => \^phs_irqs_l2s_0\(8),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[8]\,
      I4 => sel0(0),
      I5 => p_0_in107_in,
      O => \axi_rdata[8]_i_23_n_0\
    );
\axi_rdata[8]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(8),
      I1 => \^phs38_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(8),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs36_pwm_val\(8),
      O => \axi_rdata[8]_i_24_n_0\
    );
\axi_rdata[8]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(8),
      I1 => \^phs34_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(8),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs32_pwm_val\(8),
      O => \axi_rdata[8]_i_25_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[8]_i_8_n_0\,
      I1 => \^phs27_pwm_val\(8),
      I2 => sel0(3),
      I3 => \^phs26_pwm_val\(8),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \axi_rdata[8]_i_9_n_0\,
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \axi_rdata[8]_i_10_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[8]_i_11_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata_reg[8]_i_12_n_0\,
      I5 => sel0(6),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBBBBAABB"
    )
        port map (
      I0 => \axi_rdata[8]_i_13_n_0\,
      I1 => \axi_rdata[8]_i_14_n_0\,
      I2 => \axi_rdata[8]_i_15_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata[8]_i_16_n_0\,
      I5 => sel0(4),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs17_pwm_val\(8),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs16_pwm_val\(8),
      I4 => sel0(3),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[8]_i_17_n_0\,
      I1 => sel0(3),
      I2 => \^phs20_pwm_val\(8),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs21_pwm_val\(8),
      I5 => \axi_rdata[1]_i_3_n_0\,
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs25_pwm_val\(8),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs24_pwm_val\(8),
      I4 => sel0(3),
      O => \axi_rdata[8]_i_8_n_0\
    );
\axi_rdata[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[8]_i_18_n_0\,
      I1 => \^phs30_pwm_val\(8),
      I2 => sel0(3),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs31_pwm_val\(8),
      I5 => \axi_rdata[9]_i_20_n_0\,
      O => \axi_rdata[8]_i_9_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      I2 => \axi_rdata[9]_i_4_n_0\,
      I3 => \axi_rdata[9]_i_5_n_0\,
      I4 => \axi_rdata[9]_i_6_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55450545FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[9]_i_19_n_0\,
      I1 => \^phs30_pwm_val\(9),
      I2 => sel0(3),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs31_pwm_val\(9),
      I5 => \axi_rdata[9]_i_20_n_0\,
      O => \axi_rdata[9]_i_10_n_0\
    );
\axi_rdata[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs14_pwm_val\(9),
      I1 => \^phs15_pwm_val\(9),
      I2 => \^phs13_pwm_val\(9),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs12_pwm_val\(9),
      I5 => sel0(3),
      O => \axi_rdata[9]_i_11_n_0\
    );
\axi_rdata[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"335533550F000FFF"
    )
        port map (
      I0 => \^phs10_pwm_val\(9),
      I1 => \^phs11_pwm_val\(9),
      I2 => \^phs9_pwm_val\(9),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs8_pwm_val\(9),
      I5 => sel0(3),
      O => \axi_rdata[9]_i_12_n_0\
    );
\axi_rdata[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \axi_rdata[9]_i_23_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata[9]_i_24_n_0\,
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \axi_rdata[9]_i_25_n_0\,
      I5 => \axi_rdata[6]_i_19_n_0\,
      O => \axi_rdata[9]_i_14_n_0\
    );
\axi_rdata[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF10B0"
    )
        port map (
      I0 => sel0(4),
      I1 => \axi_rdata[9]_i_26_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata[9]_i_27_n_0\,
      I4 => \axi_rdata[6]_i_15_n_0\,
      O => \axi_rdata[9]_i_15_n_0\
    );
\axi_rdata[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs39_pwm_val\(9),
      I1 => \^phs38_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs37_pwm_val\(9),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs36_pwm_val\(9),
      O => \axi_rdata[9]_i_16_n_0\
    );
\axi_rdata[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs35_pwm_val\(9),
      I1 => \^phs34_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs33_pwm_val\(9),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs32_pwm_val\(9),
      O => \axi_rdata[9]_i_17_n_0\
    );
\axi_rdata[9]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10B0FFFF"
    )
        port map (
      I0 => \axi_araddr_reg[4]_rep_n_0\,
      I1 => \^phs22_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs23_pwm_val\(9),
      I4 => sel0(4),
      O => \axi_rdata[9]_i_18_n_0\
    );
\axi_rdata[9]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FFFF"
    )
        port map (
      I0 => \^phs29_pwm_val\(9),
      I1 => \axi_araddr_reg[4]_rep_n_0\,
      I2 => \^phs28_pwm_val\(9),
      I3 => sel0(3),
      I4 => sel0(4),
      O => \axi_rdata[9]_i_19_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[9]_i_7_n_0\,
      I1 => \^phs19_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs18_pwm_val\(9),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \axi_rdata[9]_i_8_n_0\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      O => \axi_rdata[9]_i_20_n_0\
    );
\axi_rdata[9]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F5353F0FF5353"
    )
        port map (
      I0 => \^phs1_pwm_val\(9),
      I1 => \^phs0_pwm_val\(9),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs2_pwm_val\(9),
      I4 => sel0(3),
      I5 => \^phs3_pwm_val\(9),
      O => \axi_rdata[9]_i_21_n_0\
    );
\axi_rdata[9]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => \^phs7_pwm_val\(9),
      I1 => \^phs6_pwm_val\(9),
      I2 => \^phs5_pwm_val\(9),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs4_pwm_val\(9),
      I5 => sel0(3),
      O => \axi_rdata[9]_i_22_n_0\
    );
\axi_rdata[9]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \^phs49_pwm_val\(9),
      I1 => \axi_araddr_reg[4]_rep_n_0\,
      I2 => sel0(1),
      I3 => \^phs48_pwm_val\(9),
      I4 => sel0(0),
      O => \axi_rdata[9]_i_23_n_0\
    );
\axi_rdata[9]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_s2l_1\(9),
      I1 => \^phs_irqs_s2l_0\(9),
      I2 => sel0(1),
      I3 => p_7_in(9),
      I4 => sel0(0),
      I5 => p_8_in(9),
      O => \axi_rdata[9]_i_24_n_0\
    );
\axi_rdata[9]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs_irqs_l2s_1\(9),
      I1 => \^phs_irqs_l2s_0\(9),
      I2 => sel0(1),
      I3 => \slv_reg205_reg_n_0_[9]\,
      I4 => sel0(0),
      I5 => p_0_in108_in,
      O => \axi_rdata[9]_i_25_n_0\
    );
\axi_rdata[9]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs43_pwm_val\(9),
      I1 => \^phs42_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs41_pwm_val\(9),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs40_pwm_val\(9),
      O => \axi_rdata[9]_i_26_n_0\
    );
\axi_rdata[9]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^phs47_pwm_val\(9),
      I1 => \^phs46_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs45_pwm_val\(9),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \^phs44_pwm_val\(9),
      O => \axi_rdata[9]_i_27_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAAAFA"
    )
        port map (
      I0 => \axi_rdata[9]_i_9_n_0\,
      I1 => \^phs27_pwm_val\(9),
      I2 => sel0(3),
      I3 => \^phs26_pwm_val\(9),
      I4 => \axi_araddr_reg[4]_rep_n_0\,
      I5 => \axi_rdata[9]_i_10_n_0\,
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(0),
      I2 => sel0(1),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \axi_rdata[9]_i_11_n_0\,
      I1 => sel0(4),
      I2 => \axi_rdata[9]_i_12_n_0\,
      I3 => sel0(5),
      I4 => \axi_rdata_reg[9]_i_13_n_0\,
      I5 => sel0(6),
      O => \axi_rdata[9]_i_5_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBABABBAA"
    )
        port map (
      I0 => \axi_rdata[9]_i_14_n_0\,
      I1 => \axi_rdata[9]_i_15_n_0\,
      I2 => \axi_rdata[9]_i_16_n_0\,
      I3 => \axi_rdata[9]_i_17_n_0\,
      I4 => sel0(4),
      I5 => sel0(5),
      O => \axi_rdata[9]_i_6_n_0\
    );
\axi_rdata[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs17_pwm_val\(9),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs16_pwm_val\(9),
      I4 => sel0(3),
      O => \axi_rdata[9]_i_7_n_0\
    );
\axi_rdata[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55544454FFFFFFFF"
    )
        port map (
      I0 => \axi_rdata[9]_i_18_n_0\,
      I1 => sel0(3),
      I2 => \^phs20_pwm_val\(9),
      I3 => \axi_araddr_reg[4]_rep_n_0\,
      I4 => \^phs21_pwm_val\(9),
      I5 => \axi_rdata[1]_i_3_n_0\,
      O => \axi_rdata[9]_i_8_n_0\
    );
\axi_rdata[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABABF"
    )
        port map (
      I0 => sel0(4),
      I1 => \^phs25_pwm_val\(9),
      I2 => \axi_araddr_reg[4]_rep_n_0\,
      I3 => \^phs24_pwm_val\(9),
      I4 => sel0(3),
      O => \axi_rdata[9]_i_9_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \p_0_in__0\
    );
\axi_rdata_reg[0]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_29_n_0\,
      I1 => \axi_rdata_reg[0]_i_30_n_0\,
      O => \axi_rdata_reg[0]_i_10_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_31_n_0\,
      I1 => \axi_rdata_reg[0]_i_32_n_0\,
      O => \axi_rdata_reg[0]_i_11_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_33_n_0\,
      I1 => \axi_rdata_reg[0]_i_34_n_0\,
      O => \axi_rdata_reg[0]_i_12_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_35_n_0\,
      I1 => \axi_rdata_reg[0]_i_36_n_0\,
      O => \axi_rdata_reg[0]_i_13_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_37_n_0\,
      I1 => \axi_rdata_reg[0]_i_38_n_0\,
      O => \axi_rdata_reg[0]_i_14_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_55_n_0\,
      I1 => \axi_rdata[0]_i_56_n_0\,
      O => \axi_rdata_reg[0]_i_23_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_57_n_0\,
      I1 => \axi_rdata[0]_i_58_n_0\,
      O => \axi_rdata_reg[0]_i_24_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_59_n_0\,
      I1 => \axi_rdata[0]_i_60_n_0\,
      O => \axi_rdata_reg[0]_i_25_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_61_n_0\,
      I1 => \axi_rdata[0]_i_62_n_0\,
      O => \axi_rdata_reg[0]_i_26_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_63_n_0\,
      I1 => \axi_rdata[0]_i_64_n_0\,
      O => \axi_rdata_reg[0]_i_27_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_65_n_0\,
      I1 => \axi_rdata[0]_i_66_n_0\,
      O => \axi_rdata_reg[0]_i_28_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_67_n_0\,
      I1 => \axi_rdata[0]_i_68_n_0\,
      O => \axi_rdata_reg[0]_i_29_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_69_n_0\,
      I1 => \axi_rdata[0]_i_70_n_0\,
      O => \axi_rdata_reg[0]_i_30_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_71_n_0\,
      I1 => \axi_rdata[0]_i_72_n_0\,
      O => \axi_rdata_reg[0]_i_31_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_73_n_0\,
      I1 => \axi_rdata[0]_i_74_n_0\,
      O => \axi_rdata_reg[0]_i_32_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_75_n_0\,
      I1 => \axi_rdata[0]_i_76_n_0\,
      O => \axi_rdata_reg[0]_i_33_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_77_n_0\,
      I1 => \axi_rdata[0]_i_78_n_0\,
      O => \axi_rdata_reg[0]_i_34_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_79_n_0\,
      I1 => \axi_rdata[0]_i_80_n_0\,
      O => \axi_rdata_reg[0]_i_35_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_81_n_0\,
      I1 => \axi_rdata[0]_i_82_n_0\,
      O => \axi_rdata_reg[0]_i_36_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_83_n_0\,
      I1 => \axi_rdata[0]_i_84_n_0\,
      O => \axi_rdata_reg[0]_i_37_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_85_n_0\,
      I1 => \axi_rdata[0]_i_86_n_0\,
      O => \axi_rdata_reg[0]_i_38_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_23_n_0\,
      I1 => \axi_rdata_reg[0]_i_24_n_0\,
      O => \axi_rdata_reg[0]_i_7_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_25_n_0\,
      I1 => \axi_rdata_reg[0]_i_26_n_0\,
      O => \axi_rdata_reg[0]_i_8_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_27_n_0\,
      I1 => \axi_rdata_reg[0]_i_28_n_0\,
      O => \axi_rdata_reg[0]_i_9_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \p_0_in__0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \p_0_in__0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \p_0_in__0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \p_0_in__0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \p_0_in__0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \p_0_in__0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \p_0_in__0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \p_0_in__0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \p_0_in__0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \p_0_in__0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \p_0_in__0\
    );
\axi_rdata_reg[1]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_21_n_0\,
      I1 => \axi_rdata_reg[1]_i_22_n_0\,
      O => \axi_rdata_reg[1]_i_10_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_23_n_0\,
      I1 => \axi_rdata_reg[1]_i_24_n_0\,
      O => \axi_rdata_reg[1]_i_11_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_25_n_0\,
      I1 => \axi_rdata_reg[1]_i_26_n_0\,
      O => \axi_rdata_reg[1]_i_12_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_35_n_0\,
      I1 => \axi_rdata[1]_i_36_n_0\,
      O => \axi_rdata_reg[1]_i_19_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_7_n_0\,
      I1 => \axi_rdata_reg[1]_i_8_n_0\,
      O => \axi_rdata_reg[1]_i_2_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_37_n_0\,
      I1 => \axi_rdata[1]_i_38_n_0\,
      O => \axi_rdata_reg[1]_i_20_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_39_n_0\,
      I1 => \axi_rdata[1]_i_40_n_0\,
      O => \axi_rdata_reg[1]_i_21_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_41_n_0\,
      I1 => \axi_rdata[1]_i_42_n_0\,
      O => \axi_rdata_reg[1]_i_22_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_43_n_0\,
      I1 => \axi_rdata[1]_i_44_n_0\,
      O => \axi_rdata_reg[1]_i_23_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_45_n_0\,
      I1 => \axi_rdata[1]_i_46_n_0\,
      O => \axi_rdata_reg[1]_i_24_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_47_n_0\,
      I1 => \axi_rdata[1]_i_48_n_0\,
      O => \axi_rdata_reg[1]_i_25_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_49_n_0\,
      I1 => \axi_rdata[1]_i_50_n_0\,
      O => \axi_rdata_reg[1]_i_26_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_27\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_51_n_0\,
      I1 => \axi_rdata_reg[1]_i_52_n_0\,
      O => \axi_rdata_reg[1]_i_27_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_28\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_53_n_0\,
      I1 => \axi_rdata_reg[1]_i_54_n_0\,
      O => \axi_rdata_reg[1]_i_28_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_29\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_55_n_0\,
      I1 => \axi_rdata_reg[1]_i_56_n_0\,
      O => \axi_rdata_reg[1]_i_29_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_30\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_57_n_0\,
      I1 => \axi_rdata_reg[1]_i_58_n_0\,
      O => \axi_rdata_reg[1]_i_30_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_31\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_59_n_0\,
      I1 => \axi_rdata_reg[1]_i_60_n_0\,
      O => \axi_rdata_reg[1]_i_31_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_32\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_61_n_0\,
      I1 => \axi_rdata_reg[1]_i_62_n_0\,
      O => \axi_rdata_reg[1]_i_32_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_33\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_63_n_0\,
      I1 => \axi_rdata_reg[1]_i_64_n_0\,
      O => \axi_rdata_reg[1]_i_33_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_34\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_65_n_0\,
      I1 => \axi_rdata_reg[1]_i_66_n_0\,
      O => \axi_rdata_reg[1]_i_34_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_67_n_0\,
      I1 => \axi_rdata[1]_i_68_n_0\,
      O => \axi_rdata_reg[1]_i_51_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_52\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_69_n_0\,
      I1 => \axi_rdata[1]_i_70_n_0\,
      O => \axi_rdata_reg[1]_i_52_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_53\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_71_n_0\,
      I1 => \axi_rdata[1]_i_72_n_0\,
      O => \axi_rdata_reg[1]_i_53_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_54\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_73_n_0\,
      I1 => \axi_rdata[1]_i_74_n_0\,
      O => \axi_rdata_reg[1]_i_54_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_55\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_75_n_0\,
      I1 => \axi_rdata[1]_i_76_n_0\,
      O => \axi_rdata_reg[1]_i_55_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_56\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_77_n_0\,
      I1 => \axi_rdata[1]_i_78_n_0\,
      O => \axi_rdata_reg[1]_i_56_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_57\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_79_n_0\,
      I1 => \axi_rdata[1]_i_80_n_0\,
      O => \axi_rdata_reg[1]_i_57_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_58\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_81_n_0\,
      I1 => \axi_rdata[1]_i_82_n_0\,
      O => \axi_rdata_reg[1]_i_58_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_59\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_83_n_0\,
      I1 => \axi_rdata[1]_i_84_n_0\,
      O => \axi_rdata_reg[1]_i_59_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_13_n_0\,
      I1 => \axi_rdata[1]_i_14_n_0\,
      O => \axi_rdata_reg[1]_i_6_n_0\,
      S => sel0(6)
    );
\axi_rdata_reg[1]_i_60\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_85_n_0\,
      I1 => \axi_rdata[1]_i_86_n_0\,
      O => \axi_rdata_reg[1]_i_60_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_61\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_87_n_0\,
      I1 => \axi_rdata[1]_i_88_n_0\,
      O => \axi_rdata_reg[1]_i_61_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_62\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_89_n_0\,
      I1 => \axi_rdata[1]_i_90_n_0\,
      O => \axi_rdata_reg[1]_i_62_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_63\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_91_n_0\,
      I1 => \axi_rdata[1]_i_92_n_0\,
      O => \axi_rdata_reg[1]_i_63_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_64\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_93_n_0\,
      I1 => \axi_rdata[1]_i_94_n_0\,
      O => \axi_rdata_reg[1]_i_64_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_65\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_95_n_0\,
      I1 => \axi_rdata[1]_i_96_n_0\,
      O => \axi_rdata_reg[1]_i_65_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_66\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_97_n_0\,
      I1 => \axi_rdata[1]_i_98_n_0\,
      O => \axi_rdata_reg[1]_i_66_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_15_n_0\,
      I1 => \axi_rdata[1]_i_16_n_0\,
      O => \axi_rdata_reg[1]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_17_n_0\,
      I1 => \axi_rdata[1]_i_18_n_0\,
      O => \axi_rdata_reg[1]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_19_n_0\,
      I1 => \axi_rdata_reg[1]_i_20_n_0\,
      O => \axi_rdata_reg[1]_i_9_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \p_0_in__0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \p_0_in__0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \p_0_in__0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \p_0_in__0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \p_0_in__0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \p_0_in__0\
    );
\axi_rdata_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_22_n_0\,
      I1 => \axi_rdata[2]_i_23_n_0\,
      O => \axi_rdata_reg[2]_i_13_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[2]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_24_n_0\,
      I1 => \axi_rdata[2]_i_25_n_0\,
      O => \axi_rdata_reg[2]_i_14_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \p_0_in__0\
    );
\axi_rdata_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_19_n_0\,
      I1 => \axi_rdata[3]_i_20_n_0\,
      O => \axi_rdata_reg[3]_i_12_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \p_0_in__0\
    );
\axi_rdata_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_19_n_0\,
      I1 => \axi_rdata[4]_i_20_n_0\,
      O => \axi_rdata_reg[4]_i_12_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \p_0_in__0\
    );
\axi_rdata_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_22_n_0\,
      I1 => \axi_rdata[5]_i_23_n_0\,
      O => \axi_rdata_reg[5]_i_12_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \p_0_in__0\
    );
\axi_rdata_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_24_n_0\,
      I1 => \axi_rdata[6]_i_25_n_0\,
      O => \axi_rdata_reg[6]_i_12_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \p_0_in__0\
    );
\axi_rdata_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_19_n_0\,
      I1 => \axi_rdata[7]_i_20_n_0\,
      O => \axi_rdata_reg[7]_i_12_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \p_0_in__0\
    );
\axi_rdata_reg[8]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_19_n_0\,
      I1 => \axi_rdata[8]_i_20_n_0\,
      O => \axi_rdata_reg[8]_i_12_n_0\,
      S => sel0(4)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \p_0_in__0\
    );
\axi_rdata_reg[9]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_21_n_0\,
      I1 => \axi_rdata[9]_i_22_n_0\,
      O => \axi_rdata_reg[9]_i_13_n_0\,
      S => sel0(4)
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_0,
      Q => \^s00_axi_rvalid\,
      R => \p_0_in__0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^aw_en_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \p_0_in__0\
    );
\slv_reg0[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \p_0_in__0\
    );
\slv_reg0[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg0
    );
\slv_reg0[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => p_0_in(4),
      I5 => \slv_reg0[9]_i_4_n_0\,
      O => \slv_reg0[9]_i_3_n_0\
    );
\slv_reg0[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      O => \slv_reg0[9]_i_4_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(0),
      Q => \^phs0_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(1),
      Q => \^phs0_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(2),
      Q => \^phs0_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(3),
      Q => \^phs0_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(4),
      Q => \^phs0_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(5),
      Q => \^phs0_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(6),
      Q => \^phs0_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(7),
      Q => \^phs0_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(8),
      Q => \^phs0_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(9),
      Q => \^phs0_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg100[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg4[9]_i_2_n_0\,
      O => slv_reg100
    );
\slv_reg100_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(0),
      Q => \^phs25_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg100_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(1),
      Q => \^phs25_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg100_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(2),
      Q => \^phs25_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg100_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(3),
      Q => \^phs25_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg100_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(4),
      Q => \^phs25_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg100_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(5),
      Q => \^phs25_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg100_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(6),
      Q => \^phs25_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg100_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(7),
      Q => \^phs25_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg100_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(8),
      Q => \^phs25_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg100_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg100,
      D => s00_axi_wdata(9),
      Q => \^phs25_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg101_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg101_reg[0]_0\,
      Q => \^slv_reg101\,
      R => \p_0_in__0\
    );
\slv_reg102[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs25_irq_mask\(0),
      O => \slv_reg102[0]_i_1_n_0\
    );
\slv_reg102[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs25_irq_mask\(1),
      O => \slv_reg102[1]_i_1_n_0\
    );
\slv_reg102_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg102[0]_i_1_n_0\,
      Q => \^phs25_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg102_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg102[1]_i_1_n_0\,
      Q => \^phs25_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg103[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs25_irq0_clr\,
      O => \slv_reg103[0]_i_1_n_0\
    );
\slv_reg103[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs25_irq1_clr\,
      O => \slv_reg103[1]_i_1_n_0\
    );
\slv_reg103_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg103[0]_i_1_n_0\,
      Q => \^phs25_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg103_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg103[1]_i_1_n_0\,
      Q => \^phs25_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg104[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => slv_reg104
    );
\slv_reg104_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(0),
      Q => \^phs26_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg104_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(1),
      Q => \^phs26_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg104_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(2),
      Q => \^phs26_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg104_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(3),
      Q => \^phs26_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg104_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(4),
      Q => \^phs26_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg104_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(5),
      Q => \^phs26_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg104_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(6),
      Q => \^phs26_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg104_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(7),
      Q => \^phs26_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg104_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(8),
      Q => \^phs26_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg104_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg104,
      D => s00_axi_wdata(9),
      Q => \^phs26_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg105_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg105_reg[0]_0\,
      Q => \^slv_reg105\,
      R => \p_0_in__0\
    );
\slv_reg106[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs26_irq_mask\(0),
      O => \slv_reg106[0]_i_1_n_0\
    );
\slv_reg106[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs26_irq_mask\(1),
      O => \slv_reg106[1]_i_1_n_0\
    );
\slv_reg106_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg106[0]_i_1_n_0\,
      Q => \^phs26_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg106_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg106[1]_i_1_n_0\,
      Q => \^phs26_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg107[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs26_irq0_clr\,
      O => \slv_reg107[0]_i_1_n_0\
    );
\slv_reg107[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs26_irq1_clr\,
      O => \slv_reg107[1]_i_1_n_0\
    );
\slv_reg107_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg107[0]_i_1_n_0\,
      Q => \^phs26_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg107_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg107[1]_i_1_n_0\,
      Q => \^phs26_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg108[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => slv_reg108
    );
\slv_reg108_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(0),
      Q => \^phs27_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg108_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(1),
      Q => \^phs27_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg108_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(2),
      Q => \^phs27_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg108_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(3),
      Q => \^phs27_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg108_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(4),
      Q => \^phs27_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg108_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(5),
      Q => \^phs27_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg108_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(6),
      Q => \^phs27_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg108_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(7),
      Q => \^phs27_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg108_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(8),
      Q => \^phs27_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg108_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg108,
      D => s00_axi_wdata(9),
      Q => \^phs27_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg109_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg109_reg[0]_0\,
      Q => \^slv_reg109\,
      R => \p_0_in__0\
    );
\slv_reg10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg8[9]_i_2_n_0\,
      I5 => \^phs2_irq_mask\(0),
      O => \slv_reg10[0]_i_1_n_0\
    );
\slv_reg10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg8[9]_i_2_n_0\,
      I5 => \^phs2_irq_mask\(1),
      O => \slv_reg10[1]_i_1_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg10[0]_i_1_n_0\,
      Q => \^phs2_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg10[1]_i_1_n_0\,
      Q => \^phs2_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg110[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs27_irq_mask\(0),
      O => \slv_reg110[0]_i_1_n_0\
    );
\slv_reg110[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs27_irq_mask\(1),
      O => \slv_reg110[1]_i_1_n_0\
    );
\slv_reg110_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg110[0]_i_1_n_0\,
      Q => \^phs27_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg110_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg110[1]_i_1_n_0\,
      Q => \^phs27_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg111[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs27_irq0_clr\,
      O => \slv_reg111[0]_i_1_n_0\
    );
\slv_reg111[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs27_irq1_clr\,
      O => \slv_reg111[1]_i_1_n_0\
    );
\slv_reg111_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg111[0]_i_1_n_0\,
      Q => \^phs27_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg111_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg111[1]_i_1_n_0\,
      Q => \^phs27_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg112[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg16[9]_i_2_n_0\,
      O => slv_reg112
    );
\slv_reg112_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(0),
      Q => \^phs28_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg112_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(1),
      Q => \^phs28_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg112_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(2),
      Q => \^phs28_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg112_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(3),
      Q => \^phs28_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg112_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(4),
      Q => \^phs28_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg112_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(5),
      Q => \^phs28_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg112_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(6),
      Q => \^phs28_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg112_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(7),
      Q => \^phs28_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg112_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(8),
      Q => \^phs28_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg112_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg112,
      D => s00_axi_wdata(9),
      Q => \^phs28_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg113_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg113_reg[0]_0\,
      Q => \^slv_reg113\,
      R => \p_0_in__0\
    );
\slv_reg114[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs28_irq_mask\(0),
      O => \slv_reg114[0]_i_1_n_0\
    );
\slv_reg114[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs28_irq_mask\(1),
      O => \slv_reg114[1]_i_1_n_0\
    );
\slv_reg114_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg114[0]_i_1_n_0\,
      Q => \^phs28_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg114_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg114[1]_i_1_n_0\,
      Q => \^phs28_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg115[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs28_irq0_clr\,
      O => \slv_reg115[0]_i_1_n_0\
    );
\slv_reg115[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs28_irq1_clr\,
      O => \slv_reg115[1]_i_1_n_0\
    );
\slv_reg115_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg115[0]_i_1_n_0\,
      Q => \^phs28_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg115_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg115[1]_i_1_n_0\,
      Q => \^phs28_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg116[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg20[9]_i_2_n_0\,
      O => slv_reg116
    );
\slv_reg116_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(0),
      Q => \^phs29_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg116_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(1),
      Q => \^phs29_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg116_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(2),
      Q => \^phs29_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg116_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(3),
      Q => \^phs29_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg116_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(4),
      Q => \^phs29_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg116_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(5),
      Q => \^phs29_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg116_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(6),
      Q => \^phs29_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg116_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(7),
      Q => \^phs29_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg116_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(8),
      Q => \^phs29_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg116_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg116,
      D => s00_axi_wdata(9),
      Q => \^phs29_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg117_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg117_reg[0]_0\,
      Q => \^slv_reg117\,
      R => \p_0_in__0\
    );
\slv_reg118[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs29_irq_mask\(0),
      O => \slv_reg118[0]_i_1_n_0\
    );
\slv_reg118[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs29_irq_mask\(1),
      O => \slv_reg118[1]_i_1_n_0\
    );
\slv_reg118_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg118[0]_i_1_n_0\,
      Q => \^phs29_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg118_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg118[1]_i_1_n_0\,
      Q => \^phs29_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg119[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs29_irq0_clr\,
      O => \slv_reg119[0]_i_1_n_0\
    );
\slv_reg119[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs29_irq1_clr\,
      O => \slv_reg119[1]_i_1_n_0\
    );
\slv_reg119_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg119[0]_i_1_n_0\,
      Q => \^phs29_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg119_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg119[1]_i_1_n_0\,
      Q => \^phs29_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg11[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg8[9]_i_2_n_0\,
      I5 => \^phs2_irq0_clr\,
      O => \slv_reg11[0]_i_1_n_0\
    );
\slv_reg11[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg8[9]_i_2_n_0\,
      I5 => \^phs2_irq1_clr\,
      O => \slv_reg11[1]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg11[0]_i_1_n_0\,
      Q => \^phs2_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg11[1]_i_1_n_0\,
      Q => \^phs2_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg120[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg24[9]_i_2_n_0\,
      O => slv_reg120
    );
\slv_reg120_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(0),
      Q => \^phs30_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg120_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(1),
      Q => \^phs30_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg120_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(2),
      Q => \^phs30_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg120_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(3),
      Q => \^phs30_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg120_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(4),
      Q => \^phs30_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg120_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(5),
      Q => \^phs30_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg120_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(6),
      Q => \^phs30_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg120_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(7),
      Q => \^phs30_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg120_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(8),
      Q => \^phs30_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg120_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg120,
      D => s00_axi_wdata(9),
      Q => \^phs30_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg121_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg121_reg[0]_0\,
      Q => \^slv_reg121\,
      R => \p_0_in__0\
    );
\slv_reg122[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs30_irq_mask\(0),
      O => \slv_reg122[0]_i_1_n_0\
    );
\slv_reg122[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs30_irq_mask\(1),
      O => \slv_reg122[1]_i_1_n_0\
    );
\slv_reg122_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg122[0]_i_1_n_0\,
      Q => \^phs30_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg122_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg122[1]_i_1_n_0\,
      Q => \^phs30_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg123[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs30_irq0_clr\,
      O => \slv_reg123[0]_i_1_n_0\
    );
\slv_reg123[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs30_irq1_clr\,
      O => \slv_reg123[1]_i_1_n_0\
    );
\slv_reg123_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg123[0]_i_1_n_0\,
      Q => \^phs30_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg123_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg123[1]_i_1_n_0\,
      Q => \^phs30_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg124[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg28[9]_i_2_n_0\,
      O => slv_reg124
    );
\slv_reg124_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(0),
      Q => \^phs31_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg124_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(1),
      Q => \^phs31_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg124_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(2),
      Q => \^phs31_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg124_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(3),
      Q => \^phs31_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg124_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(4),
      Q => \^phs31_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg124_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(5),
      Q => \^phs31_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg124_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(6),
      Q => \^phs31_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg124_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(7),
      Q => \^phs31_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg124_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(8),
      Q => \^phs31_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg124_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg124,
      D => s00_axi_wdata(9),
      Q => \^phs31_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg125_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg125_reg[0]_0\,
      Q => \^slv_reg125\,
      R => \p_0_in__0\
    );
\slv_reg126[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs31_irq_mask\(0),
      O => \slv_reg126[0]_i_1_n_0\
    );
\slv_reg126[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs31_irq_mask\(1),
      O => \slv_reg126[1]_i_1_n_0\
    );
\slv_reg126_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg126[0]_i_1_n_0\,
      Q => \^phs31_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg126_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg126[1]_i_1_n_0\,
      Q => \^phs31_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg127[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs31_irq0_clr\,
      O => \slv_reg127[0]_i_1_n_0\
    );
\slv_reg127[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs31_irq1_clr\,
      O => \slv_reg127[1]_i_1_n_0\
    );
\slv_reg127_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg127[0]_i_1_n_0\,
      Q => \^phs31_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg127_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg127[1]_i_1_n_0\,
      Q => \^phs31_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg128[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg128
    );
\slv_reg128_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(0),
      Q => \^phs32_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg128_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(1),
      Q => \^phs32_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg128_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(2),
      Q => \^phs32_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg128_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(3),
      Q => \^phs32_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg128_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(4),
      Q => \^phs32_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg128_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(5),
      Q => \^phs32_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg128_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(6),
      Q => \^phs32_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg128_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(7),
      Q => \^phs32_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg128_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(8),
      Q => \^phs32_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg128_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg128,
      D => s00_axi_wdata(9),
      Q => \^phs32_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg129_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg129_reg[0]_0\,
      Q => \^slv_reg129\,
      R => \p_0_in__0\
    );
\slv_reg12[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg12[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg12
    );
\slv_reg12[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \slv_reg12[9]_i_3_n_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => \^axi_awready_reg_0\,
      I5 => p_0_in(4),
      O => \slv_reg12[9]_i_2_n_0\
    );
\slv_reg12[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      O => \slv_reg12[9]_i_3_n_0\
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(0),
      Q => \^phs3_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(1),
      Q => \^phs3_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(2),
      Q => \^phs3_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(3),
      Q => \^phs3_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(4),
      Q => \^phs3_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(5),
      Q => \^phs3_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(6),
      Q => \^phs3_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(7),
      Q => \^phs3_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg12_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(8),
      Q => \^phs3_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg12_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(9),
      Q => \^phs3_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg130[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs32_irq_mask\(0),
      O => \slv_reg130[0]_i_1_n_0\
    );
\slv_reg130[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs32_irq_mask\(1),
      O => \slv_reg130[1]_i_1_n_0\
    );
\slv_reg130[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      O => \slv_reg130[1]_i_2_n_0\
    );
\slv_reg130_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg130[0]_i_1_n_0\,
      Q => \^phs32_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg130_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg130[1]_i_1_n_0\,
      Q => \^phs32_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg131[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs32_irq0_clr\,
      O => \slv_reg131[0]_i_1_n_0\
    );
\slv_reg131[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs32_irq1_clr\,
      O => \slv_reg131[1]_i_1_n_0\
    );
\slv_reg131_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg131[0]_i_1_n_0\,
      Q => \^phs32_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg131_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg131[1]_i_1_n_0\,
      Q => \^phs32_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg132[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg4[9]_i_2_n_0\,
      O => slv_reg132
    );
\slv_reg132_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(0),
      Q => \^phs33_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg132_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(1),
      Q => \^phs33_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg132_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(2),
      Q => \^phs33_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg132_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(3),
      Q => \^phs33_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg132_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(4),
      Q => \^phs33_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg132_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(5),
      Q => \^phs33_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg132_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(6),
      Q => \^phs33_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg132_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(7),
      Q => \^phs33_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg132_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(8),
      Q => \^phs33_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg132_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg132,
      D => s00_axi_wdata(9),
      Q => \^phs33_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg133_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg133_reg[0]_0\,
      Q => \^slv_reg133\,
      R => \p_0_in__0\
    );
\slv_reg134[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs33_irq_mask\(0),
      O => \slv_reg134[0]_i_1_n_0\
    );
\slv_reg134[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs33_irq_mask\(1),
      O => \slv_reg134[1]_i_1_n_0\
    );
\slv_reg134_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg134[0]_i_1_n_0\,
      Q => \^phs33_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg134_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg134[1]_i_1_n_0\,
      Q => \^phs33_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg135[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs33_irq0_clr\,
      O => \slv_reg135[0]_i_1_n_0\
    );
\slv_reg135[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs33_irq1_clr\,
      O => \slv_reg135[1]_i_1_n_0\
    );
\slv_reg135_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg135[0]_i_1_n_0\,
      Q => \^phs33_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg135_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg135[1]_i_1_n_0\,
      Q => \^phs33_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg136[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => slv_reg136
    );
\slv_reg136_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(0),
      Q => \^phs34_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg136_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(1),
      Q => \^phs34_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg136_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(2),
      Q => \^phs34_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg136_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(3),
      Q => \^phs34_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg136_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(4),
      Q => \^phs34_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg136_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(5),
      Q => \^phs34_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg136_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(6),
      Q => \^phs34_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg136_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(7),
      Q => \^phs34_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg136_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(8),
      Q => \^phs34_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg136_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg136,
      D => s00_axi_wdata(9),
      Q => \^phs34_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg137_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg137_reg[0]_0\,
      Q => \^slv_reg137\,
      R => \p_0_in__0\
    );
\slv_reg138[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs34_irq_mask\(0),
      O => \slv_reg138[0]_i_1_n_0\
    );
\slv_reg138[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs34_irq_mask\(1),
      O => \slv_reg138[1]_i_1_n_0\
    );
\slv_reg138_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg138[0]_i_1_n_0\,
      Q => \^phs34_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg138_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg138[1]_i_1_n_0\,
      Q => \^phs34_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg139[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs34_irq0_clr\,
      O => \slv_reg139[0]_i_1_n_0\
    );
\slv_reg139[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs34_irq1_clr\,
      O => \slv_reg139[1]_i_1_n_0\
    );
\slv_reg139_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg139[0]_i_1_n_0\,
      Q => \^phs34_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg139_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg139[1]_i_1_n_0\,
      Q => \^phs34_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg13_reg[0]_0\,
      Q => \^slv_reg13\,
      R => \p_0_in__0\
    );
\slv_reg140[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => slv_reg140
    );
\slv_reg140_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(0),
      Q => \^phs35_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg140_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(1),
      Q => \^phs35_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg140_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(2),
      Q => \^phs35_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg140_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(3),
      Q => \^phs35_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg140_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(4),
      Q => \^phs35_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg140_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(5),
      Q => \^phs35_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg140_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(6),
      Q => \^phs35_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg140_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(7),
      Q => \^phs35_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg140_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(8),
      Q => \^phs35_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg140_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg140,
      D => s00_axi_wdata(9),
      Q => \^phs35_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg141_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg141_reg[0]_0\,
      Q => \^slv_reg141\,
      R => \p_0_in__0\
    );
\slv_reg142[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs35_irq_mask\(0),
      O => \slv_reg142[0]_i_1_n_0\
    );
\slv_reg142[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs35_irq_mask\(1),
      O => \slv_reg142[1]_i_1_n_0\
    );
\slv_reg142_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg142[0]_i_1_n_0\,
      Q => \^phs35_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg142_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg142[1]_i_1_n_0\,
      Q => \^phs35_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg143[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs35_irq0_clr\,
      O => \slv_reg143[0]_i_1_n_0\
    );
\slv_reg143[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs35_irq1_clr\,
      O => \slv_reg143[1]_i_1_n_0\
    );
\slv_reg143_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg143[0]_i_1_n_0\,
      Q => \^phs35_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg143_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg143[1]_i_1_n_0\,
      Q => \^phs35_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg144[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg16[9]_i_2_n_0\,
      O => slv_reg144
    );
\slv_reg144_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(0),
      Q => \^phs36_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg144_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(1),
      Q => \^phs36_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg144_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(2),
      Q => \^phs36_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg144_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(3),
      Q => \^phs36_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg144_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(4),
      Q => \^phs36_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg144_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(5),
      Q => \^phs36_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg144_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(6),
      Q => \^phs36_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg144_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(7),
      Q => \^phs36_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg144_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(8),
      Q => \^phs36_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg144_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg144,
      D => s00_axi_wdata(9),
      Q => \^phs36_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg145_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg145_reg[0]_0\,
      Q => \^slv_reg145\,
      R => \p_0_in__0\
    );
\slv_reg146[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs36_irq_mask\(0),
      O => \slv_reg146[0]_i_1_n_0\
    );
\slv_reg146[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs36_irq_mask\(1),
      O => \slv_reg146[1]_i_1_n_0\
    );
\slv_reg146_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg146[0]_i_1_n_0\,
      Q => \^phs36_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg146_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg146[1]_i_1_n_0\,
      Q => \^phs36_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg147[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs36_irq0_clr\,
      O => \slv_reg147[0]_i_1_n_0\
    );
\slv_reg147[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs36_irq1_clr\,
      O => \slv_reg147[1]_i_1_n_0\
    );
\slv_reg147_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg147[0]_i_1_n_0\,
      Q => \^phs36_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg147_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg147[1]_i_1_n_0\,
      Q => \^phs36_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg148[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg20[9]_i_2_n_0\,
      O => slv_reg148
    );
\slv_reg148_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(0),
      Q => \^phs37_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg148_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(1),
      Q => \^phs37_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg148_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(2),
      Q => \^phs37_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg148_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(3),
      Q => \^phs37_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg148_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(4),
      Q => \^phs37_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg148_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(5),
      Q => \^phs37_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg148_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(6),
      Q => \^phs37_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg148_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(7),
      Q => \^phs37_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg148_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(8),
      Q => \^phs37_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg148_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg148,
      D => s00_axi_wdata(9),
      Q => \^phs37_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg149_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg149_reg[0]_0\,
      Q => \^slv_reg149\,
      R => \p_0_in__0\
    );
\slv_reg14[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg12[9]_i_2_n_0\,
      I5 => \^phs3_irq_mask\(0),
      O => \slv_reg14[0]_i_1_n_0\
    );
\slv_reg14[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg12[9]_i_2_n_0\,
      I5 => \^phs3_irq_mask\(1),
      O => \slv_reg14[1]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg14[0]_i_1_n_0\,
      Q => \^phs3_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg14_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg14[1]_i_1_n_0\,
      Q => \^phs3_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg150[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs37_irq_mask\(0),
      O => \slv_reg150[0]_i_1_n_0\
    );
\slv_reg150[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs37_irq_mask\(1),
      O => \slv_reg150[1]_i_1_n_0\
    );
\slv_reg150_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg150[0]_i_1_n_0\,
      Q => \^phs37_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg150_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg150[1]_i_1_n_0\,
      Q => \^phs37_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg151[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs37_irq0_clr\,
      O => \slv_reg151[0]_i_1_n_0\
    );
\slv_reg151[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs37_irq1_clr\,
      O => \slv_reg151[1]_i_1_n_0\
    );
\slv_reg151_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg151[0]_i_1_n_0\,
      Q => \^phs37_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg151_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg151[1]_i_1_n_0\,
      Q => \^phs37_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg152[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg24[9]_i_2_n_0\,
      O => slv_reg152
    );
\slv_reg152_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(0),
      Q => \^phs38_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg152_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(1),
      Q => \^phs38_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg152_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(2),
      Q => \^phs38_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg152_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(3),
      Q => \^phs38_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg152_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(4),
      Q => \^phs38_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg152_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(5),
      Q => \^phs38_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg152_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(6),
      Q => \^phs38_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg152_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(7),
      Q => \^phs38_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg152_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(8),
      Q => \^phs38_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg152_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg152,
      D => s00_axi_wdata(9),
      Q => \^phs38_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg153_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg153_reg[0]_0\,
      Q => \^slv_reg153\,
      R => \p_0_in__0\
    );
\slv_reg154[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs38_irq_mask\(0),
      O => \slv_reg154[0]_i_1_n_0\
    );
\slv_reg154[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs38_irq_mask\(1),
      O => \slv_reg154[1]_i_1_n_0\
    );
\slv_reg154_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg154[0]_i_1_n_0\,
      Q => \^phs38_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg154_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg154[1]_i_1_n_0\,
      Q => \^phs38_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg155[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs38_irq0_clr\,
      O => \slv_reg155[0]_i_1_n_0\
    );
\slv_reg155[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs38_irq1_clr\,
      O => \slv_reg155[1]_i_1_n_0\
    );
\slv_reg155_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg155[0]_i_1_n_0\,
      Q => \^phs38_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg155_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg155[1]_i_1_n_0\,
      Q => \^phs38_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg156[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg28[9]_i_2_n_0\,
      O => slv_reg156
    );
\slv_reg156_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(0),
      Q => \^phs39_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg156_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(1),
      Q => \^phs39_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg156_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(2),
      Q => \^phs39_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg156_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(3),
      Q => \^phs39_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg156_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(4),
      Q => \^phs39_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg156_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(5),
      Q => \^phs39_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg156_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(6),
      Q => \^phs39_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg156_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(7),
      Q => \^phs39_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg156_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(8),
      Q => \^phs39_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg156_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg156,
      D => s00_axi_wdata(9),
      Q => \^phs39_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg157_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg157_reg[0]_0\,
      Q => \^slv_reg157\,
      R => \p_0_in__0\
    );
\slv_reg158[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs39_irq_mask\(0),
      O => \slv_reg158[0]_i_1_n_0\
    );
\slv_reg158[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs39_irq_mask\(1),
      O => \slv_reg158[1]_i_1_n_0\
    );
\slv_reg158_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg158[0]_i_1_n_0\,
      Q => \^phs39_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg158_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg158[1]_i_1_n_0\,
      Q => \^phs39_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg159[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs39_irq0_clr\,
      O => \slv_reg159[0]_i_1_n_0\
    );
\slv_reg159[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg130[1]_i_2_n_0\,
      I5 => \^phs39_irq1_clr\,
      O => \slv_reg159[1]_i_1_n_0\
    );
\slv_reg159_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg159[0]_i_1_n_0\,
      Q => \^phs39_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg159_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg159[1]_i_1_n_0\,
      Q => \^phs39_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg15[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg12[9]_i_2_n_0\,
      I5 => \^phs3_irq0_clr\,
      O => \slv_reg15[0]_i_1_n_0\
    );
\slv_reg15[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg12[9]_i_2_n_0\,
      I5 => \^phs3_irq1_clr\,
      O => \slv_reg15[1]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg15[0]_i_1_n_0\,
      Q => \^phs3_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg15[1]_i_1_n_0\,
      Q => \^phs3_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg160[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg160
    );
\slv_reg160_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(0),
      Q => \^phs40_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg160_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(1),
      Q => \^phs40_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg160_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(2),
      Q => \^phs40_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg160_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(3),
      Q => \^phs40_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg160_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(4),
      Q => \^phs40_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg160_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(5),
      Q => \^phs40_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg160_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(6),
      Q => \^phs40_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg160_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(7),
      Q => \^phs40_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg160_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(8),
      Q => \^phs40_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg160_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg160,
      D => s00_axi_wdata(9),
      Q => \^phs40_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg161_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg161_reg[0]_0\,
      Q => \^slv_reg161\,
      R => \p_0_in__0\
    );
\slv_reg162[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs40_irq_mask\(0),
      O => \slv_reg162[0]_i_1_n_0\
    );
\slv_reg162[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs40_irq_mask\(1),
      O => \slv_reg162[1]_i_1_n_0\
    );
\slv_reg162[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(6),
      I2 => p_0_in(5),
      O => \slv_reg162[1]_i_2_n_0\
    );
\slv_reg162_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg162[0]_i_1_n_0\,
      Q => \^phs40_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg162_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg162[1]_i_1_n_0\,
      Q => \^phs40_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg163[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs40_irq0_clr\,
      O => \slv_reg163[0]_i_1_n_0\
    );
\slv_reg163[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs40_irq1_clr\,
      O => \slv_reg163[1]_i_1_n_0\
    );
\slv_reg163_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg163[0]_i_1_n_0\,
      Q => \^phs40_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg163_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg163[1]_i_1_n_0\,
      Q => \^phs40_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg164[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg4[9]_i_2_n_0\,
      O => slv_reg164
    );
\slv_reg164_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(0),
      Q => \^phs41_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg164_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(1),
      Q => \^phs41_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg164_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(2),
      Q => \^phs41_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg164_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(3),
      Q => \^phs41_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg164_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(4),
      Q => \^phs41_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg164_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(5),
      Q => \^phs41_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg164_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(6),
      Q => \^phs41_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg164_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(7),
      Q => \^phs41_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg164_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(8),
      Q => \^phs41_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg164_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg164,
      D => s00_axi_wdata(9),
      Q => \^phs41_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg165_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg165_reg[0]_0\,
      Q => \^slv_reg165\,
      R => \p_0_in__0\
    );
\slv_reg166[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs41_irq_mask\(0),
      O => \slv_reg166[0]_i_1_n_0\
    );
\slv_reg166[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs41_irq_mask\(1),
      O => \slv_reg166[1]_i_1_n_0\
    );
\slv_reg166_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg166[0]_i_1_n_0\,
      Q => \^phs41_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg166_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg166[1]_i_1_n_0\,
      Q => \^phs41_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg167[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs41_irq0_clr\,
      O => \slv_reg167[0]_i_1_n_0\
    );
\slv_reg167[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs41_irq1_clr\,
      O => \slv_reg167[1]_i_1_n_0\
    );
\slv_reg167_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg167[0]_i_1_n_0\,
      Q => \^phs41_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg167_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg167[1]_i_1_n_0\,
      Q => \^phs41_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg168[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => slv_reg168
    );
\slv_reg168_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(0),
      Q => \^phs42_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg168_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(1),
      Q => \^phs42_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg168_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(2),
      Q => \^phs42_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg168_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(3),
      Q => \^phs42_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg168_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(4),
      Q => \^phs42_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg168_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(5),
      Q => \^phs42_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg168_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(6),
      Q => \^phs42_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg168_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(7),
      Q => \^phs42_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg168_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(8),
      Q => \^phs42_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg168_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg168,
      D => s00_axi_wdata(9),
      Q => \^phs42_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg169_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg169_reg[0]_0\,
      Q => \^slv_reg169\,
      R => \p_0_in__0\
    );
\slv_reg16[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg16[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg16
    );
\slv_reg16[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => \^axi_awready_reg_0\,
      I5 => \slv_reg0[9]_i_4_n_0\,
      O => \slv_reg16[9]_i_2_n_0\
    );
\slv_reg16_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(0),
      Q => \^phs4_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg16_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(1),
      Q => \^phs4_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg16_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(2),
      Q => \^phs4_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg16_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(3),
      Q => \^phs4_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg16_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(4),
      Q => \^phs4_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg16_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(5),
      Q => \^phs4_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg16_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(6),
      Q => \^phs4_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg16_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(7),
      Q => \^phs4_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg16_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(8),
      Q => \^phs4_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg16_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(9),
      Q => \^phs4_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg170[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs42_irq_mask\(0),
      O => \slv_reg170[0]_i_1_n_0\
    );
\slv_reg170[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs42_irq_mask\(1),
      O => \slv_reg170[1]_i_1_n_0\
    );
\slv_reg170_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg170[0]_i_1_n_0\,
      Q => \^phs42_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg170_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg170[1]_i_1_n_0\,
      Q => \^phs42_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg171[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs42_irq0_clr\,
      O => \slv_reg171[0]_i_1_n_0\
    );
\slv_reg171[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs42_irq1_clr\,
      O => \slv_reg171[1]_i_1_n_0\
    );
\slv_reg171_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg171[0]_i_1_n_0\,
      Q => \^phs42_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg171_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg171[1]_i_1_n_0\,
      Q => \^phs42_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg172[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => slv_reg172
    );
\slv_reg172_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(0),
      Q => \^phs43_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg172_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(1),
      Q => \^phs43_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg172_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(2),
      Q => \^phs43_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg172_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(3),
      Q => \^phs43_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg172_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(4),
      Q => \^phs43_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg172_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(5),
      Q => \^phs43_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg172_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(6),
      Q => \^phs43_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg172_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(7),
      Q => \^phs43_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg172_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(8),
      Q => \^phs43_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg172_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg172,
      D => s00_axi_wdata(9),
      Q => \^phs43_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg173_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg173_reg[0]_0\,
      Q => \^slv_reg173\,
      R => \p_0_in__0\
    );
\slv_reg174[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs43_irq_mask\(0),
      O => \slv_reg174[0]_i_1_n_0\
    );
\slv_reg174[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs43_irq_mask\(1),
      O => \slv_reg174[1]_i_1_n_0\
    );
\slv_reg174_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg174[0]_i_1_n_0\,
      Q => \^phs43_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg174_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg174[1]_i_1_n_0\,
      Q => \^phs43_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg175[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs43_irq0_clr\,
      O => \slv_reg175[0]_i_1_n_0\
    );
\slv_reg175[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs43_irq1_clr\,
      O => \slv_reg175[1]_i_1_n_0\
    );
\slv_reg175_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg175[0]_i_1_n_0\,
      Q => \^phs43_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg175_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg175[1]_i_1_n_0\,
      Q => \^phs43_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg176[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg16[9]_i_2_n_0\,
      O => slv_reg176
    );
\slv_reg176_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(0),
      Q => \^phs44_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg176_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(1),
      Q => \^phs44_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg176_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(2),
      Q => \^phs44_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg176_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(3),
      Q => \^phs44_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg176_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(4),
      Q => \^phs44_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg176_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(5),
      Q => \^phs44_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg176_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(6),
      Q => \^phs44_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg176_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(7),
      Q => \^phs44_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg176_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(8),
      Q => \^phs44_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg176_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg176,
      D => s00_axi_wdata(9),
      Q => \^phs44_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg177_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg177_reg[0]_0\,
      Q => \^slv_reg177\,
      R => \p_0_in__0\
    );
\slv_reg178[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs44_irq_mask\(0),
      O => \slv_reg178[0]_i_1_n_0\
    );
\slv_reg178[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs44_irq_mask\(1),
      O => \slv_reg178[1]_i_1_n_0\
    );
\slv_reg178_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg178[0]_i_1_n_0\,
      Q => \^phs44_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg178_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg178[1]_i_1_n_0\,
      Q => \^phs44_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg179[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs44_irq0_clr\,
      O => \slv_reg179[0]_i_1_n_0\
    );
\slv_reg179[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs44_irq1_clr\,
      O => \slv_reg179[1]_i_1_n_0\
    );
\slv_reg179_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg179[0]_i_1_n_0\,
      Q => \^phs44_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg179_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg179[1]_i_1_n_0\,
      Q => \^phs44_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg17_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg17_reg[0]_0\,
      Q => \^slv_reg17\,
      R => \p_0_in__0\
    );
\slv_reg180[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg20[9]_i_2_n_0\,
      O => slv_reg180
    );
\slv_reg180_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(0),
      Q => \^phs45_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg180_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(1),
      Q => \^phs45_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg180_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(2),
      Q => \^phs45_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg180_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(3),
      Q => \^phs45_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg180_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(4),
      Q => \^phs45_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg180_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(5),
      Q => \^phs45_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg180_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(6),
      Q => \^phs45_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg180_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(7),
      Q => \^phs45_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg180_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(8),
      Q => \^phs45_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg180_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg180,
      D => s00_axi_wdata(9),
      Q => \^phs45_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg181_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg181_reg[0]_0\,
      Q => \^slv_reg181\,
      R => \p_0_in__0\
    );
\slv_reg182[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs45_irq_mask\(0),
      O => \slv_reg182[0]_i_1_n_0\
    );
\slv_reg182[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs45_irq_mask\(1),
      O => \slv_reg182[1]_i_1_n_0\
    );
\slv_reg182_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg182[0]_i_1_n_0\,
      Q => \^phs45_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg182_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg182[1]_i_1_n_0\,
      Q => \^phs45_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg183[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs45_irq0_clr\,
      O => \slv_reg183[0]_i_1_n_0\
    );
\slv_reg183[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs45_irq1_clr\,
      O => \slv_reg183[1]_i_1_n_0\
    );
\slv_reg183_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg183[0]_i_1_n_0\,
      Q => \^phs45_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg183_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg183[1]_i_1_n_0\,
      Q => \^phs45_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg184[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg24[9]_i_2_n_0\,
      O => slv_reg184
    );
\slv_reg184_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(0),
      Q => \^phs46_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg184_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(1),
      Q => \^phs46_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg184_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(2),
      Q => \^phs46_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg184_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(3),
      Q => \^phs46_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg184_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(4),
      Q => \^phs46_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg184_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(5),
      Q => \^phs46_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg184_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(6),
      Q => \^phs46_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg184_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(7),
      Q => \^phs46_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg184_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(8),
      Q => \^phs46_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg184_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg184,
      D => s00_axi_wdata(9),
      Q => \^phs46_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg185_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg185_reg[0]_0\,
      Q => \^slv_reg185\,
      R => \p_0_in__0\
    );
\slv_reg186[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs46_irq_mask\(0),
      O => \slv_reg186[0]_i_1_n_0\
    );
\slv_reg186[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs46_irq_mask\(1),
      O => \slv_reg186[1]_i_1_n_0\
    );
\slv_reg186_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg186[0]_i_1_n_0\,
      Q => \^phs46_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg186_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg186[1]_i_1_n_0\,
      Q => \^phs46_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg187[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs46_irq0_clr\,
      O => \slv_reg187[0]_i_1_n_0\
    );
\slv_reg187[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs46_irq1_clr\,
      O => \slv_reg187[1]_i_1_n_0\
    );
\slv_reg187_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg187[0]_i_1_n_0\,
      Q => \^phs46_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg187_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg187[1]_i_1_n_0\,
      Q => \^phs46_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg188[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg28[9]_i_2_n_0\,
      O => slv_reg188
    );
\slv_reg188_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(0),
      Q => \^phs47_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg188_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(1),
      Q => \^phs47_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg188_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(2),
      Q => \^phs47_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg188_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(3),
      Q => \^phs47_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg188_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(4),
      Q => \^phs47_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg188_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(5),
      Q => \^phs47_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg188_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(6),
      Q => \^phs47_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg188_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(7),
      Q => \^phs47_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg188_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(8),
      Q => \^phs47_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg188_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg188,
      D => s00_axi_wdata(9),
      Q => \^phs47_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg189_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg189_reg[0]_0\,
      Q => \^slv_reg189\,
      R => \p_0_in__0\
    );
\slv_reg18[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg16[9]_i_2_n_0\,
      I5 => \^phs4_irq_mask\(0),
      O => \slv_reg18[0]_i_1_n_0\
    );
\slv_reg18[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg16[9]_i_2_n_0\,
      I5 => \^phs4_irq_mask\(1),
      O => \slv_reg18[1]_i_1_n_0\
    );
\slv_reg18_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg18[0]_i_1_n_0\,
      Q => \^phs4_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg18_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg18[1]_i_1_n_0\,
      Q => \^phs4_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg190[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs47_irq_mask\(0),
      O => \slv_reg190[0]_i_1_n_0\
    );
\slv_reg190[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs47_irq_mask\(1),
      O => \slv_reg190[1]_i_1_n_0\
    );
\slv_reg190_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg190[0]_i_1_n_0\,
      Q => \^phs47_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg190_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg190[1]_i_1_n_0\,
      Q => \^phs47_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg191[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs47_irq0_clr\,
      O => \slv_reg191[0]_i_1_n_0\
    );
\slv_reg191[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg162[1]_i_2_n_0\,
      I5 => \^phs47_irq1_clr\,
      O => \slv_reg191[1]_i_1_n_0\
    );
\slv_reg191_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg191[0]_i_1_n_0\,
      Q => \^phs47_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg191_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg191[1]_i_1_n_0\,
      Q => \^phs47_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg192[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg192
    );
\slv_reg192_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(0),
      Q => \^phs48_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg192_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(1),
      Q => \^phs48_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg192_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(2),
      Q => \^phs48_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg192_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(3),
      Q => \^phs48_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg192_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(4),
      Q => \^phs48_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg192_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(5),
      Q => \^phs48_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg192_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(6),
      Q => \^phs48_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg192_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(7),
      Q => \^phs48_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg192_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(8),
      Q => \^phs48_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg192_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg192,
      D => s00_axi_wdata(9),
      Q => \^phs48_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg193_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg193_reg[0]_0\,
      Q => \^slv_reg193\,
      R => \p_0_in__0\
    );
\slv_reg194[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs48_irq_mask\(0),
      O => \slv_reg194[0]_i_1_n_0\
    );
\slv_reg194[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs48_irq_mask\(1),
      O => \slv_reg194[1]_i_1_n_0\
    );
\slv_reg194[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      O => \slv_reg194[1]_i_2_n_0\
    );
\slv_reg194_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg194[0]_i_1_n_0\,
      Q => \^phs48_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg194_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg194[1]_i_1_n_0\,
      Q => \^phs48_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg195[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs48_irq0_clr\,
      O => \slv_reg195[0]_i_1_n_0\
    );
\slv_reg195[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs48_irq1_clr\,
      O => \slv_reg195[1]_i_1_n_0\
    );
\slv_reg195_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg195[0]_i_1_n_0\,
      Q => \^phs48_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg195_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg195[1]_i_1_n_0\,
      Q => \^phs48_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg196[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(7),
      I4 => p_0_in(6),
      I5 => \slv_reg4[9]_i_2_n_0\,
      O => slv_reg196
    );
\slv_reg196_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(0),
      Q => \^phs49_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg196_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(1),
      Q => \^phs49_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg196_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(2),
      Q => \^phs49_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg196_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(3),
      Q => \^phs49_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg196_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(4),
      Q => \^phs49_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg196_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(5),
      Q => \^phs49_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg196_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(6),
      Q => \^phs49_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg196_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(7),
      Q => \^phs49_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg196_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(8),
      Q => \^phs49_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg196_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg196,
      D => s00_axi_wdata(9),
      Q => \^phs49_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg197_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg197_reg[0]_0\,
      Q => \^slv_reg197\,
      R => \p_0_in__0\
    );
\slv_reg198[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs49_irq_mask\(0),
      O => \slv_reg198[0]_i_1_n_0\
    );
\slv_reg198[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs49_irq_mask\(1),
      O => \slv_reg198[1]_i_1_n_0\
    );
\slv_reg198_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg198[0]_i_1_n_0\,
      Q => \^phs49_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg198_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg198[1]_i_1_n_0\,
      Q => \^phs49_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg199[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs49_irq0_clr\,
      O => \slv_reg199[0]_i_1_n_0\
    );
\slv_reg199[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg194[1]_i_2_n_0\,
      I5 => \^phs49_irq1_clr\,
      O => \slv_reg199[1]_i_1_n_0\
    );
\slv_reg199_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg199[0]_i_1_n_0\,
      Q => \^phs49_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg199_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg199[1]_i_1_n_0\,
      Q => \^phs49_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg19[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg16[9]_i_2_n_0\,
      I5 => \^phs4_irq0_clr\,
      O => \slv_reg19[0]_i_1_n_0\
    );
\slv_reg19[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg16[9]_i_2_n_0\,
      I5 => \^phs4_irq1_clr\,
      O => \slv_reg19[1]_i_1_n_0\
    );
\slv_reg19_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg19[0]_i_1_n_0\,
      Q => \^phs4_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg19_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg19[1]_i_1_n_0\,
      Q => \^phs4_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1_reg[0]_0\,
      Q => \^slv_reg1\,
      R => \p_0_in__0\
    );
\slv_reg200[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => \slv_reg200[24]_i_1_n_0\
    );
\slv_reg200_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => p_8_in(0),
      R => \p_0_in__0\
    );
\slv_reg200_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => p_8_in(10),
      R => \p_0_in__0\
    );
\slv_reg200_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => p_8_in(11),
      R => \p_0_in__0\
    );
\slv_reg200_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => p_8_in(12),
      R => \p_0_in__0\
    );
\slv_reg200_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => p_8_in(13),
      R => \p_0_in__0\
    );
\slv_reg200_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => p_8_in(14),
      R => \p_0_in__0\
    );
\slv_reg200_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => p_8_in(15),
      R => \p_0_in__0\
    );
\slv_reg200_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => p_8_in(16),
      R => \p_0_in__0\
    );
\slv_reg200_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => p_8_in(17),
      R => \p_0_in__0\
    );
\slv_reg200_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => p_8_in(18),
      R => \p_0_in__0\
    );
\slv_reg200_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => p_8_in(19),
      R => \p_0_in__0\
    );
\slv_reg200_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => p_8_in(1),
      R => \p_0_in__0\
    );
\slv_reg200_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => p_8_in(20),
      R => \p_0_in__0\
    );
\slv_reg200_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => p_8_in(21),
      R => \p_0_in__0\
    );
\slv_reg200_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => p_8_in(22),
      R => \p_0_in__0\
    );
\slv_reg200_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => p_8_in(23),
      R => \p_0_in__0\
    );
\slv_reg200_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => p_8_in(24),
      R => \p_0_in__0\
    );
\slv_reg200_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => p_8_in(2),
      R => \p_0_in__0\
    );
\slv_reg200_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => p_8_in(3),
      R => \p_0_in__0\
    );
\slv_reg200_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => p_8_in(4),
      R => \p_0_in__0\
    );
\slv_reg200_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => p_8_in(5),
      R => \p_0_in__0\
    );
\slv_reg200_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => p_8_in(6),
      R => \p_0_in__0\
    );
\slv_reg200_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => p_8_in(7),
      R => \p_0_in__0\
    );
\slv_reg200_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => p_8_in(8),
      R => \p_0_in__0\
    );
\slv_reg200_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg200[24]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => p_8_in(9),
      R => \p_0_in__0\
    );
\slv_reg201[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => slv_reg201
    );
\slv_reg201_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(0),
      Q => p_7_in(0),
      R => \p_0_in__0\
    );
\slv_reg201_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(10),
      Q => p_7_in(10),
      R => \p_0_in__0\
    );
\slv_reg201_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(11),
      Q => p_7_in(11),
      R => \p_0_in__0\
    );
\slv_reg201_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(12),
      Q => p_7_in(12),
      R => \p_0_in__0\
    );
\slv_reg201_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(13),
      Q => p_7_in(13),
      R => \p_0_in__0\
    );
\slv_reg201_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(14),
      Q => p_7_in(14),
      R => \p_0_in__0\
    );
\slv_reg201_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(15),
      Q => p_7_in(15),
      R => \p_0_in__0\
    );
\slv_reg201_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(16),
      Q => p_7_in(16),
      R => \p_0_in__0\
    );
\slv_reg201_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(17),
      Q => p_7_in(17),
      R => \p_0_in__0\
    );
\slv_reg201_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(18),
      Q => p_7_in(18),
      R => \p_0_in__0\
    );
\slv_reg201_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(19),
      Q => p_7_in(19),
      R => \p_0_in__0\
    );
\slv_reg201_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(1),
      Q => p_7_in(1),
      R => \p_0_in__0\
    );
\slv_reg201_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(20),
      Q => p_7_in(20),
      R => \p_0_in__0\
    );
\slv_reg201_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(21),
      Q => p_7_in(21),
      R => \p_0_in__0\
    );
\slv_reg201_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(22),
      Q => p_7_in(22),
      R => \p_0_in__0\
    );
\slv_reg201_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(23),
      Q => p_7_in(23),
      R => \p_0_in__0\
    );
\slv_reg201_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(24),
      Q => p_7_in(24),
      R => \p_0_in__0\
    );
\slv_reg201_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(2),
      Q => p_7_in(2),
      R => \p_0_in__0\
    );
\slv_reg201_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(3),
      Q => p_7_in(3),
      R => \p_0_in__0\
    );
\slv_reg201_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(4),
      Q => p_7_in(4),
      R => \p_0_in__0\
    );
\slv_reg201_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(5),
      Q => p_7_in(5),
      R => \p_0_in__0\
    );
\slv_reg201_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(6),
      Q => p_7_in(6),
      R => \p_0_in__0\
    );
\slv_reg201_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(7),
      Q => p_7_in(7),
      R => \p_0_in__0\
    );
\slv_reg201_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(8),
      Q => p_7_in(8),
      R => \p_0_in__0\
    );
\slv_reg201_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg201,
      D => s00_axi_wdata(9),
      Q => p_7_in(9),
      R => \p_0_in__0\
    );
\slv_reg202[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(0),
      I1 => PHS0_irq1_S2L,
      O => PHS_irqs_S2L_0_int_0
    );
\slv_reg202[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(10),
      I1 => PHS10_irq1_S2L,
      O => PHS_irqs_S2L_0_int_10
    );
\slv_reg202[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(11),
      I1 => PHS11_irq1_S2L,
      O => PHS_irqs_S2L_0_int_11
    );
\slv_reg202[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(12),
      I1 => PHS12_irq1_S2L,
      O => PHS_irqs_S2L_0_int_12
    );
\slv_reg202[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(13),
      I1 => PHS13_irq1_S2L,
      O => PHS_irqs_S2L_0_int_13
    );
\slv_reg202[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(14),
      I1 => PHS14_irq1_S2L,
      O => PHS_irqs_S2L_0_int_14
    );
\slv_reg202[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(15),
      I1 => PHS15_irq1_S2L,
      O => PHS_irqs_S2L_0_int_15
    );
\slv_reg202[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(16),
      I1 => PHS16_irq1_S2L,
      O => PHS_irqs_S2L_0_int_16
    );
\slv_reg202[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(17),
      I1 => PHS17_irq1_S2L,
      O => PHS_irqs_S2L_0_int_17
    );
\slv_reg202[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(18),
      I1 => PHS18_irq1_S2L,
      O => PHS_irqs_S2L_0_int_18
    );
\slv_reg202[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(19),
      I1 => PHS19_irq1_S2L,
      O => PHS_irqs_S2L_0_int_19
    );
\slv_reg202[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(1),
      I1 => PHS1_irq1_S2L,
      O => PHS_irqs_S2L_0_int_1
    );
\slv_reg202[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(20),
      I1 => PHS20_irq1_S2L,
      O => PHS_irqs_S2L_0_int_20
    );
\slv_reg202[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(21),
      I1 => PHS21_irq1_S2L,
      O => PHS_irqs_S2L_0_int_21
    );
\slv_reg202[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(22),
      I1 => PHS22_irq1_S2L,
      O => PHS_irqs_S2L_0_int_22
    );
\slv_reg202[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(23),
      I1 => PHS23_irq1_S2L,
      O => PHS_irqs_S2L_0_int_23
    );
\slv_reg202[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(24),
      I1 => PHS24_irq1_S2L,
      O => PHS_irqs_S2L_0_int_24
    );
\slv_reg202[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(2),
      I1 => PHS2_irq1_S2L,
      O => PHS_irqs_S2L_0_int_2
    );
\slv_reg202[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(3),
      I1 => PHS3_irq1_S2L,
      O => PHS_irqs_S2L_0_int_3
    );
\slv_reg202[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(4),
      I1 => PHS4_irq1_S2L,
      O => PHS_irqs_S2L_0_int_4
    );
\slv_reg202[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(5),
      I1 => PHS5_irq1_S2L,
      O => PHS_irqs_S2L_0_int_5
    );
\slv_reg202[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(6),
      I1 => PHS6_irq1_S2L,
      O => PHS_irqs_S2L_0_int_6
    );
\slv_reg202[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(7),
      I1 => PHS7_irq1_S2L,
      O => PHS_irqs_S2L_0_int_7
    );
\slv_reg202[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(8),
      I1 => PHS8_irq1_S2L,
      O => PHS_irqs_S2L_0_int_8
    );
\slv_reg202[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in(9),
      I1 => PHS9_irq1_S2L,
      O => PHS_irqs_S2L_0_int_9
    );
\slv_reg202_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_0,
      Q => \^phs_irqs_s2l_0\(0),
      R => \p_0_in__0\
    );
\slv_reg202_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_10,
      Q => \^phs_irqs_s2l_0\(10),
      R => \p_0_in__0\
    );
\slv_reg202_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_11,
      Q => \^phs_irqs_s2l_0\(11),
      R => \p_0_in__0\
    );
\slv_reg202_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_12,
      Q => \^phs_irqs_s2l_0\(12),
      R => \p_0_in__0\
    );
\slv_reg202_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_13,
      Q => \^phs_irqs_s2l_0\(13),
      R => \p_0_in__0\
    );
\slv_reg202_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_14,
      Q => \^phs_irqs_s2l_0\(14),
      R => \p_0_in__0\
    );
\slv_reg202_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_15,
      Q => \^phs_irqs_s2l_0\(15),
      R => \p_0_in__0\
    );
\slv_reg202_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_16,
      Q => \^phs_irqs_s2l_0\(16),
      R => \p_0_in__0\
    );
\slv_reg202_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_17,
      Q => \^phs_irqs_s2l_0\(17),
      R => \p_0_in__0\
    );
\slv_reg202_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_18,
      Q => \^phs_irqs_s2l_0\(18),
      R => \p_0_in__0\
    );
\slv_reg202_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_19,
      Q => \^phs_irqs_s2l_0\(19),
      R => \p_0_in__0\
    );
\slv_reg202_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_1,
      Q => \^phs_irqs_s2l_0\(1),
      R => \p_0_in__0\
    );
\slv_reg202_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_20,
      Q => \^phs_irqs_s2l_0\(20),
      R => \p_0_in__0\
    );
\slv_reg202_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_21,
      Q => \^phs_irqs_s2l_0\(21),
      R => \p_0_in__0\
    );
\slv_reg202_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_22,
      Q => \^phs_irqs_s2l_0\(22),
      R => \p_0_in__0\
    );
\slv_reg202_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_23,
      Q => \^phs_irqs_s2l_0\(23),
      R => \p_0_in__0\
    );
\slv_reg202_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_24,
      Q => \^phs_irqs_s2l_0\(24),
      R => \p_0_in__0\
    );
\slv_reg202_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_2,
      Q => \^phs_irqs_s2l_0\(2),
      R => \p_0_in__0\
    );
\slv_reg202_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_3,
      Q => \^phs_irqs_s2l_0\(3),
      R => \p_0_in__0\
    );
\slv_reg202_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_4,
      Q => \^phs_irqs_s2l_0\(4),
      R => \p_0_in__0\
    );
\slv_reg202_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_5,
      Q => \^phs_irqs_s2l_0\(5),
      R => \p_0_in__0\
    );
\slv_reg202_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_6,
      Q => \^phs_irqs_s2l_0\(6),
      R => \p_0_in__0\
    );
\slv_reg202_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_7,
      Q => \^phs_irqs_s2l_0\(7),
      R => \p_0_in__0\
    );
\slv_reg202_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_8,
      Q => \^phs_irqs_s2l_0\(8),
      R => \p_0_in__0\
    );
\slv_reg202_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_0_int_9,
      Q => \^phs_irqs_s2l_0\(9),
      R => \p_0_in__0\
    );
\slv_reg203[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(0),
      I1 => PHS25_irq1_S2L,
      O => PHS_irqs_S2L_1_int_0
    );
\slv_reg203[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(10),
      I1 => PHS35_irq1_S2L,
      O => PHS_irqs_S2L_1_int_10
    );
\slv_reg203[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(11),
      I1 => PHS36_irq1_S2L,
      O => PHS_irqs_S2L_1_int_11
    );
\slv_reg203[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(12),
      I1 => PHS37_irq1_S2L,
      O => PHS_irqs_S2L_1_int_12
    );
\slv_reg203[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(13),
      I1 => PHS38_irq1_S2L,
      O => PHS_irqs_S2L_1_int_13
    );
\slv_reg203[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(14),
      I1 => PHS39_irq1_S2L,
      O => PHS_irqs_S2L_1_int_14
    );
\slv_reg203[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(15),
      I1 => PHS40_irq1_S2L,
      O => PHS_irqs_S2L_1_int_15
    );
\slv_reg203[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(16),
      I1 => PHS41_irq1_S2L,
      O => PHS_irqs_S2L_1_int_16
    );
\slv_reg203[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(17),
      I1 => PHS42_irq1_S2L,
      O => PHS_irqs_S2L_1_int_17
    );
\slv_reg203[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(18),
      I1 => PHS43_irq1_S2L,
      O => PHS_irqs_S2L_1_int_18
    );
\slv_reg203[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(19),
      I1 => PHS44_irq1_S2L,
      O => PHS_irqs_S2L_1_int_19
    );
\slv_reg203[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(1),
      I1 => PHS26_irq1_S2L,
      O => PHS_irqs_S2L_1_int_1
    );
\slv_reg203[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(20),
      I1 => PHS45_irq1_S2L,
      O => PHS_irqs_S2L_1_int_20
    );
\slv_reg203[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(21),
      I1 => PHS46_irq1_S2L,
      O => PHS_irqs_S2L_1_int_21
    );
\slv_reg203[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(22),
      I1 => PHS47_irq1_S2L,
      O => PHS_irqs_S2L_1_int_22
    );
\slv_reg203[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(23),
      I1 => PHS48_irq1_S2L,
      O => PHS_irqs_S2L_1_int_23
    );
\slv_reg203[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(24),
      I1 => PHS49_irq1_S2L,
      O => PHS_irqs_S2L_1_int_24
    );
\slv_reg203[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(2),
      I1 => PHS27_irq1_S2L,
      O => PHS_irqs_S2L_1_int_2
    );
\slv_reg203[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(3),
      I1 => PHS28_irq1_S2L,
      O => PHS_irqs_S2L_1_int_3
    );
\slv_reg203[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(4),
      I1 => PHS29_irq1_S2L,
      O => PHS_irqs_S2L_1_int_4
    );
\slv_reg203[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(5),
      I1 => PHS30_irq1_S2L,
      O => PHS_irqs_S2L_1_int_5
    );
\slv_reg203[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(6),
      I1 => PHS31_irq1_S2L,
      O => PHS_irqs_S2L_1_int_6
    );
\slv_reg203[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(7),
      I1 => PHS32_irq1_S2L,
      O => PHS_irqs_S2L_1_int_7
    );
\slv_reg203[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(8),
      I1 => PHS33_irq1_S2L,
      O => PHS_irqs_S2L_1_int_8
    );
\slv_reg203[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_7_in(9),
      I1 => PHS34_irq1_S2L,
      O => PHS_irqs_S2L_1_int_9
    );
\slv_reg203_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_0,
      Q => \^phs_irqs_s2l_1\(0),
      R => \p_0_in__0\
    );
\slv_reg203_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_10,
      Q => \^phs_irqs_s2l_1\(10),
      R => \p_0_in__0\
    );
\slv_reg203_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_11,
      Q => \^phs_irqs_s2l_1\(11),
      R => \p_0_in__0\
    );
\slv_reg203_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_12,
      Q => \^phs_irqs_s2l_1\(12),
      R => \p_0_in__0\
    );
\slv_reg203_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_13,
      Q => \^phs_irqs_s2l_1\(13),
      R => \p_0_in__0\
    );
\slv_reg203_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_14,
      Q => \^phs_irqs_s2l_1\(14),
      R => \p_0_in__0\
    );
\slv_reg203_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_15,
      Q => \^phs_irqs_s2l_1\(15),
      R => \p_0_in__0\
    );
\slv_reg203_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_16,
      Q => \^phs_irqs_s2l_1\(16),
      R => \p_0_in__0\
    );
\slv_reg203_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_17,
      Q => \^phs_irqs_s2l_1\(17),
      R => \p_0_in__0\
    );
\slv_reg203_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_18,
      Q => \^phs_irqs_s2l_1\(18),
      R => \p_0_in__0\
    );
\slv_reg203_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_19,
      Q => \^phs_irqs_s2l_1\(19),
      R => \p_0_in__0\
    );
\slv_reg203_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_1,
      Q => \^phs_irqs_s2l_1\(1),
      R => \p_0_in__0\
    );
\slv_reg203_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_20,
      Q => \^phs_irqs_s2l_1\(20),
      R => \p_0_in__0\
    );
\slv_reg203_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_21,
      Q => \^phs_irqs_s2l_1\(21),
      R => \p_0_in__0\
    );
\slv_reg203_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_22,
      Q => \^phs_irqs_s2l_1\(22),
      R => \p_0_in__0\
    );
\slv_reg203_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_23,
      Q => \^phs_irqs_s2l_1\(23),
      R => \p_0_in__0\
    );
\slv_reg203_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_24,
      Q => \^phs_irqs_s2l_1\(24),
      R => \p_0_in__0\
    );
\slv_reg203_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_2,
      Q => \^phs_irqs_s2l_1\(2),
      R => \p_0_in__0\
    );
\slv_reg203_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_3,
      Q => \^phs_irqs_s2l_1\(3),
      R => \p_0_in__0\
    );
\slv_reg203_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_4,
      Q => \^phs_irqs_s2l_1\(4),
      R => \p_0_in__0\
    );
\slv_reg203_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_5,
      Q => \^phs_irqs_s2l_1\(5),
      R => \p_0_in__0\
    );
\slv_reg203_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_6,
      Q => \^phs_irqs_s2l_1\(6),
      R => \p_0_in__0\
    );
\slv_reg203_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_7,
      Q => \^phs_irqs_s2l_1\(7),
      R => \p_0_in__0\
    );
\slv_reg203_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_8,
      Q => \^phs_irqs_s2l_1\(8),
      R => \p_0_in__0\
    );
\slv_reg203_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_S2L_1_int_9,
      Q => \^phs_irqs_s2l_1\(9),
      R => \p_0_in__0\
    );
\slv_reg204[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => \slv_reg204[24]_i_1_n_0\
    );
\slv_reg204_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg204_reg_n_0_[0]\,
      R => \p_0_in__0\
    );
\slv_reg204_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => p_0_in109_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => p_0_in110_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => p_0_in111_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => p_0_in112_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => p_0_in113_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => p_0_in114_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => p_0_in115_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => p_0_in116_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => p_0_in117_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => p_0_in118_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => p_0_in100_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => p_0_in119_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => p_0_in120_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => p_0_in121_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => p_0_in122_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => p_0_in123_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => p_0_in101_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => p_0_in102_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => p_0_in103_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => p_0_in104_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => p_0_in105_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => p_0_in106_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => p_0_in107_in,
      R => \p_0_in__0\
    );
\slv_reg204_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg204[24]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => p_0_in108_in,
      R => \p_0_in__0\
    );
\slv_reg205[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => slv_reg205
    );
\slv_reg205_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(0),
      Q => \slv_reg205_reg_n_0_[0]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(10),
      Q => \slv_reg205_reg_n_0_[10]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(11),
      Q => \slv_reg205_reg_n_0_[11]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(12),
      Q => \slv_reg205_reg_n_0_[12]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(13),
      Q => \slv_reg205_reg_n_0_[13]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(14),
      Q => \slv_reg205_reg_n_0_[14]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(15),
      Q => \slv_reg205_reg_n_0_[15]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(16),
      Q => \slv_reg205_reg_n_0_[16]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(17),
      Q => \slv_reg205_reg_n_0_[17]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(18),
      Q => \slv_reg205_reg_n_0_[18]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(19),
      Q => \slv_reg205_reg_n_0_[19]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(1),
      Q => \slv_reg205_reg_n_0_[1]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(20),
      Q => \slv_reg205_reg_n_0_[20]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(21),
      Q => \slv_reg205_reg_n_0_[21]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(22),
      Q => \slv_reg205_reg_n_0_[22]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(23),
      Q => \slv_reg205_reg_n_0_[23]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(24),
      Q => \slv_reg205_reg_n_0_[24]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(2),
      Q => \slv_reg205_reg_n_0_[2]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(3),
      Q => \slv_reg205_reg_n_0_[3]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(4),
      Q => \slv_reg205_reg_n_0_[4]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(5),
      Q => \slv_reg205_reg_n_0_[5]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(6),
      Q => \slv_reg205_reg_n_0_[6]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(7),
      Q => \slv_reg205_reg_n_0_[7]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(8),
      Q => \slv_reg205_reg_n_0_[8]\,
      R => \p_0_in__0\
    );
\slv_reg205_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg205,
      D => s00_axi_wdata(9),
      Q => \slv_reg205_reg_n_0_[9]\,
      R => \p_0_in__0\
    );
\slv_reg206[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg204_reg_n_0_[0]\,
      I1 => PHS0_irq0_L2S,
      O => PHS_irqs_L2S_0_int_0
    );
\slv_reg206[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in109_in,
      I1 => PHS10_irq0_L2S,
      O => PHS_irqs_L2S_0_int_10
    );
\slv_reg206[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => PHS11_irq0_L2S,
      O => PHS_irqs_L2S_0_int_11
    );
\slv_reg206[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in111_in,
      I1 => PHS12_irq0_L2S,
      O => PHS_irqs_L2S_0_int_12
    );
\slv_reg206[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in112_in,
      I1 => PHS13_irq0_L2S,
      O => PHS_irqs_L2S_0_int_13
    );
\slv_reg206[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in113_in,
      I1 => PHS14_irq0_L2S,
      O => PHS_irqs_L2S_0_int_14
    );
\slv_reg206[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in114_in,
      I1 => PHS15_irq0_L2S,
      O => PHS_irqs_L2S_0_int_15
    );
\slv_reg206[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in115_in,
      I1 => PHS16_irq0_L2S,
      O => PHS_irqs_L2S_0_int_16
    );
\slv_reg206[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in116_in,
      I1 => PHS17_irq0_L2S,
      O => PHS_irqs_L2S_0_int_17
    );
\slv_reg206[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in117_in,
      I1 => PHS18_irq0_L2S,
      O => PHS_irqs_L2S_0_int_18
    );
\slv_reg206[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in118_in,
      I1 => PHS19_irq0_L2S,
      O => PHS_irqs_L2S_0_int_19
    );
\slv_reg206[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in100_in,
      I1 => PHS1_irq0_L2S,
      O => PHS_irqs_L2S_0_int_1
    );
\slv_reg206[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in119_in,
      I1 => PHS20_irq0_L2S,
      O => PHS_irqs_L2S_0_int_20
    );
\slv_reg206[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in120_in,
      I1 => PHS21_irq0_L2S,
      O => PHS_irqs_L2S_0_int_21
    );
\slv_reg206[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in121_in,
      I1 => PHS22_irq0_L2S,
      O => PHS_irqs_L2S_0_int_22
    );
\slv_reg206[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in122_in,
      I1 => PHS23_irq0_L2S,
      O => PHS_irqs_L2S_0_int_23
    );
\slv_reg206[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in123_in,
      I1 => PHS24_irq0_L2S,
      O => PHS_irqs_L2S_0_int_24
    );
\slv_reg206[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in101_in,
      I1 => PHS2_irq0_L2S,
      O => PHS_irqs_L2S_0_int_2
    );
\slv_reg206[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in102_in,
      I1 => PHS3_irq0_L2S,
      O => PHS_irqs_L2S_0_int_3
    );
\slv_reg206[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in103_in,
      I1 => PHS4_irq0_L2S,
      O => PHS_irqs_L2S_0_int_4
    );
\slv_reg206[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in104_in,
      I1 => PHS5_irq0_L2S,
      O => PHS_irqs_L2S_0_int_5
    );
\slv_reg206[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in105_in,
      I1 => PHS6_irq0_L2S,
      O => PHS_irqs_L2S_0_int_6
    );
\slv_reg206[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in106_in,
      I1 => PHS7_irq0_L2S,
      O => PHS_irqs_L2S_0_int_7
    );
\slv_reg206[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in107_in,
      I1 => PHS8_irq0_L2S,
      O => PHS_irqs_L2S_0_int_8
    );
\slv_reg206[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in108_in,
      I1 => PHS9_irq0_L2S,
      O => PHS_irqs_L2S_0_int_9
    );
\slv_reg206_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_0,
      Q => \^phs_irqs_l2s_0\(0),
      R => \p_0_in__0\
    );
\slv_reg206_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_10,
      Q => \^phs_irqs_l2s_0\(10),
      R => \p_0_in__0\
    );
\slv_reg206_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_11,
      Q => \^phs_irqs_l2s_0\(11),
      R => \p_0_in__0\
    );
\slv_reg206_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_12,
      Q => \^phs_irqs_l2s_0\(12),
      R => \p_0_in__0\
    );
\slv_reg206_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_13,
      Q => \^phs_irqs_l2s_0\(13),
      R => \p_0_in__0\
    );
\slv_reg206_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_14,
      Q => \^phs_irqs_l2s_0\(14),
      R => \p_0_in__0\
    );
\slv_reg206_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_15,
      Q => \^phs_irqs_l2s_0\(15),
      R => \p_0_in__0\
    );
\slv_reg206_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_16,
      Q => \^phs_irqs_l2s_0\(16),
      R => \p_0_in__0\
    );
\slv_reg206_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_17,
      Q => \^phs_irqs_l2s_0\(17),
      R => \p_0_in__0\
    );
\slv_reg206_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_18,
      Q => \^phs_irqs_l2s_0\(18),
      R => \p_0_in__0\
    );
\slv_reg206_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_19,
      Q => \^phs_irqs_l2s_0\(19),
      R => \p_0_in__0\
    );
\slv_reg206_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_1,
      Q => \^phs_irqs_l2s_0\(1),
      R => \p_0_in__0\
    );
\slv_reg206_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_20,
      Q => \^phs_irqs_l2s_0\(20),
      R => \p_0_in__0\
    );
\slv_reg206_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_21,
      Q => \^phs_irqs_l2s_0\(21),
      R => \p_0_in__0\
    );
\slv_reg206_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_22,
      Q => \^phs_irqs_l2s_0\(22),
      R => \p_0_in__0\
    );
\slv_reg206_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_23,
      Q => \^phs_irqs_l2s_0\(23),
      R => \p_0_in__0\
    );
\slv_reg206_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_24,
      Q => \^phs_irqs_l2s_0\(24),
      R => \p_0_in__0\
    );
\slv_reg206_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_2,
      Q => \^phs_irqs_l2s_0\(2),
      R => \p_0_in__0\
    );
\slv_reg206_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_3,
      Q => \^phs_irqs_l2s_0\(3),
      R => \p_0_in__0\
    );
\slv_reg206_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_4,
      Q => \^phs_irqs_l2s_0\(4),
      R => \p_0_in__0\
    );
\slv_reg206_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_5,
      Q => \^phs_irqs_l2s_0\(5),
      R => \p_0_in__0\
    );
\slv_reg206_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_6,
      Q => \^phs_irqs_l2s_0\(6),
      R => \p_0_in__0\
    );
\slv_reg206_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_7,
      Q => \^phs_irqs_l2s_0\(7),
      R => \p_0_in__0\
    );
\slv_reg206_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_8,
      Q => \^phs_irqs_l2s_0\(8),
      R => \p_0_in__0\
    );
\slv_reg206_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_0_int_9,
      Q => \^phs_irqs_l2s_0\(9),
      R => \p_0_in__0\
    );
\slv_reg207[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg204_reg_n_0_[0]\,
      I1 => PHS25_irq0_L2S,
      O => PHS_irqs_L2S_1_int_0
    );
\slv_reg207[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in109_in,
      I1 => PHS35_irq0_L2S,
      O => PHS_irqs_L2S_1_int_10
    );
\slv_reg207[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in110_in,
      I1 => PHS36_irq0_L2S,
      O => PHS_irqs_L2S_1_int_11
    );
\slv_reg207[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in111_in,
      I1 => PHS37_irq0_L2S,
      O => PHS_irqs_L2S_1_int_12
    );
\slv_reg207[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in112_in,
      I1 => PHS38_irq0_L2S,
      O => PHS_irqs_L2S_1_int_13
    );
\slv_reg207[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in113_in,
      I1 => PHS39_irq0_L2S,
      O => PHS_irqs_L2S_1_int_14
    );
\slv_reg207[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in114_in,
      I1 => PHS40_irq0_L2S,
      O => PHS_irqs_L2S_1_int_15
    );
\slv_reg207[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in115_in,
      I1 => PHS41_irq0_L2S,
      O => PHS_irqs_L2S_1_int_16
    );
\slv_reg207[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in116_in,
      I1 => PHS42_irq0_L2S,
      O => PHS_irqs_L2S_1_int_17
    );
\slv_reg207[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in117_in,
      I1 => PHS43_irq0_L2S,
      O => PHS_irqs_L2S_1_int_18
    );
\slv_reg207[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in118_in,
      I1 => PHS44_irq0_L2S,
      O => PHS_irqs_L2S_1_int_19
    );
\slv_reg207[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in100_in,
      I1 => PHS26_irq0_L2S,
      O => PHS_irqs_L2S_1_int_1
    );
\slv_reg207[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in119_in,
      I1 => PHS45_irq0_L2S,
      O => PHS_irqs_L2S_1_int_20
    );
\slv_reg207[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in120_in,
      I1 => PHS46_irq0_L2S,
      O => PHS_irqs_L2S_1_int_21
    );
\slv_reg207[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in121_in,
      I1 => PHS47_irq0_L2S,
      O => PHS_irqs_L2S_1_int_22
    );
\slv_reg207[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in122_in,
      I1 => PHS48_irq0_L2S,
      O => PHS_irqs_L2S_1_int_23
    );
\slv_reg207[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in123_in,
      I1 => PHS49_irq0_L2S,
      O => PHS_irqs_L2S_1_int_24
    );
\slv_reg207[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in101_in,
      I1 => PHS27_irq0_L2S,
      O => PHS_irqs_L2S_1_int_2
    );
\slv_reg207[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in102_in,
      I1 => PHS28_irq0_L2S,
      O => PHS_irqs_L2S_1_int_3
    );
\slv_reg207[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in103_in,
      I1 => PHS29_irq0_L2S,
      O => PHS_irqs_L2S_1_int_4
    );
\slv_reg207[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in104_in,
      I1 => PHS30_irq0_L2S,
      O => PHS_irqs_L2S_1_int_5
    );
\slv_reg207[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in105_in,
      I1 => PHS31_irq0_L2S,
      O => PHS_irqs_L2S_1_int_6
    );
\slv_reg207[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in106_in,
      I1 => PHS32_irq0_L2S,
      O => PHS_irqs_L2S_1_int_7
    );
\slv_reg207[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in107_in,
      I1 => PHS33_irq0_L2S,
      O => PHS_irqs_L2S_1_int_8
    );
\slv_reg207[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in108_in,
      I1 => PHS34_irq0_L2S,
      O => PHS_irqs_L2S_1_int_9
    );
\slv_reg207_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_0,
      Q => \^phs_irqs_l2s_1\(0),
      R => \p_0_in__0\
    );
\slv_reg207_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_10,
      Q => \^phs_irqs_l2s_1\(10),
      R => \p_0_in__0\
    );
\slv_reg207_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_11,
      Q => \^phs_irqs_l2s_1\(11),
      R => \p_0_in__0\
    );
\slv_reg207_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_12,
      Q => \^phs_irqs_l2s_1\(12),
      R => \p_0_in__0\
    );
\slv_reg207_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_13,
      Q => \^phs_irqs_l2s_1\(13),
      R => \p_0_in__0\
    );
\slv_reg207_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_14,
      Q => \^phs_irqs_l2s_1\(14),
      R => \p_0_in__0\
    );
\slv_reg207_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_15,
      Q => \^phs_irqs_l2s_1\(15),
      R => \p_0_in__0\
    );
\slv_reg207_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_16,
      Q => \^phs_irqs_l2s_1\(16),
      R => \p_0_in__0\
    );
\slv_reg207_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_17,
      Q => \^phs_irqs_l2s_1\(17),
      R => \p_0_in__0\
    );
\slv_reg207_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_18,
      Q => \^phs_irqs_l2s_1\(18),
      R => \p_0_in__0\
    );
\slv_reg207_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_19,
      Q => \^phs_irqs_l2s_1\(19),
      R => \p_0_in__0\
    );
\slv_reg207_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_1,
      Q => \^phs_irqs_l2s_1\(1),
      R => \p_0_in__0\
    );
\slv_reg207_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_20,
      Q => \^phs_irqs_l2s_1\(20),
      R => \p_0_in__0\
    );
\slv_reg207_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_21,
      Q => \^phs_irqs_l2s_1\(21),
      R => \p_0_in__0\
    );
\slv_reg207_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_22,
      Q => \^phs_irqs_l2s_1\(22),
      R => \p_0_in__0\
    );
\slv_reg207_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_23,
      Q => \^phs_irqs_l2s_1\(23),
      R => \p_0_in__0\
    );
\slv_reg207_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_24,
      Q => \^phs_irqs_l2s_1\(24),
      R => \p_0_in__0\
    );
\slv_reg207_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_2,
      Q => \^phs_irqs_l2s_1\(2),
      R => \p_0_in__0\
    );
\slv_reg207_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_3,
      Q => \^phs_irqs_l2s_1\(3),
      R => \p_0_in__0\
    );
\slv_reg207_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_4,
      Q => \^phs_irqs_l2s_1\(4),
      R => \p_0_in__0\
    );
\slv_reg207_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_5,
      Q => \^phs_irqs_l2s_1\(5),
      R => \p_0_in__0\
    );
\slv_reg207_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_6,
      Q => \^phs_irqs_l2s_1\(6),
      R => \p_0_in__0\
    );
\slv_reg207_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_7,
      Q => \^phs_irqs_l2s_1\(7),
      R => \p_0_in__0\
    );
\slv_reg207_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_8,
      Q => \^phs_irqs_l2s_1\(8),
      R => \p_0_in__0\
    );
\slv_reg207_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PHS_irqs_L2S_1_int_9,
      Q => \^phs_irqs_l2s_1\(9),
      R => \p_0_in__0\
    );
\slv_reg20[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg20[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg20
    );
\slv_reg20[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \slv_reg4[9]_i_3_n_0\,
      I1 => p_0_in(4),
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \^axi_wready_reg_0\,
      I5 => \^axi_awready_reg_0\,
      O => \slv_reg20[9]_i_2_n_0\
    );
\slv_reg20_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(0),
      Q => \^phs5_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg20_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(1),
      Q => \^phs5_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg20_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(2),
      Q => \^phs5_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg20_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(3),
      Q => \^phs5_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg20_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(4),
      Q => \^phs5_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg20_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(5),
      Q => \^phs5_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg20_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(6),
      Q => \^phs5_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg20_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(7),
      Q => \^phs5_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg20_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(8),
      Q => \^phs5_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg20_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(9),
      Q => \^phs5_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg21_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg21_reg[0]_0\,
      Q => \^slv_reg21\,
      R => \p_0_in__0\
    );
\slv_reg22[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg20[9]_i_2_n_0\,
      I5 => \^phs5_irq_mask\(0),
      O => \slv_reg22[0]_i_1_n_0\
    );
\slv_reg22[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg20[9]_i_2_n_0\,
      I5 => \^phs5_irq_mask\(1),
      O => \slv_reg22[1]_i_1_n_0\
    );
\slv_reg22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg22[0]_i_1_n_0\,
      Q => \^phs5_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg22_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg22[1]_i_1_n_0\,
      Q => \^phs5_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg23[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg20[9]_i_2_n_0\,
      I5 => \^phs5_irq0_clr\,
      O => \slv_reg23[0]_i_1_n_0\
    );
\slv_reg23[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg20[9]_i_2_n_0\,
      I5 => \^phs5_irq1_clr\,
      O => \slv_reg23[1]_i_1_n_0\
    );
\slv_reg23_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg23[0]_i_1_n_0\,
      Q => \^phs5_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg23_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg23[1]_i_1_n_0\,
      Q => \^phs5_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg24[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg24[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg24
    );
\slv_reg24[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \slv_reg8[9]_i_3_n_0\,
      I1 => p_0_in(4),
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \^axi_wready_reg_0\,
      I5 => \^axi_awready_reg_0\,
      O => \slv_reg24[9]_i_2_n_0\
    );
\slv_reg24_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(0),
      Q => \^phs6_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg24_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(1),
      Q => \^phs6_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg24_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(2),
      Q => \^phs6_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg24_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(3),
      Q => \^phs6_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg24_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(4),
      Q => \^phs6_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg24_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(5),
      Q => \^phs6_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg24_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(6),
      Q => \^phs6_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg24_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(7),
      Q => \^phs6_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg24_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(8),
      Q => \^phs6_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg24_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(9),
      Q => \^phs6_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg25_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg25_reg[0]_0\,
      Q => \^slv_reg25\,
      R => \p_0_in__0\
    );
\slv_reg26[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg24[9]_i_2_n_0\,
      I5 => \^phs6_irq_mask\(0),
      O => \slv_reg26[0]_i_1_n_0\
    );
\slv_reg26[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg24[9]_i_2_n_0\,
      I5 => \^phs6_irq_mask\(1),
      O => \slv_reg26[1]_i_1_n_0\
    );
\slv_reg26_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg26[0]_i_1_n_0\,
      Q => \^phs6_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg26_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg26[1]_i_1_n_0\,
      Q => \^phs6_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg27[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg24[9]_i_2_n_0\,
      I5 => \^phs6_irq0_clr\,
      O => \slv_reg27[0]_i_1_n_0\
    );
\slv_reg27[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg24[9]_i_2_n_0\,
      I5 => \^phs6_irq1_clr\,
      O => \slv_reg27[1]_i_1_n_0\
    );
\slv_reg27_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg27[0]_i_1_n_0\,
      Q => \^phs6_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg27_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg27[1]_i_1_n_0\,
      Q => \^phs6_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg28[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg28[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg28
    );
\slv_reg28[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \slv_reg12[9]_i_3_n_0\,
      I1 => p_0_in(4),
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \^axi_wready_reg_0\,
      I5 => \^axi_awready_reg_0\,
      O => \slv_reg28[9]_i_2_n_0\
    );
\slv_reg28_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(0),
      Q => \^phs7_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg28_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(1),
      Q => \^phs7_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg28_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(2),
      Q => \^phs7_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg28_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(3),
      Q => \^phs7_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg28_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(4),
      Q => \^phs7_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg28_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(5),
      Q => \^phs7_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg28_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(6),
      Q => \^phs7_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg28_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(7),
      Q => \^phs7_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg28_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(8),
      Q => \^phs7_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg28_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(9),
      Q => \^phs7_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg29_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg29_reg[0]_0\,
      Q => \^slv_reg29\,
      R => \p_0_in__0\
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg2[1]_i_2_n_0\,
      I5 => \^phs0_irq_mask\(0),
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg2[1]_i_2_n_0\,
      I5 => \^phs0_irq_mask\(1),
      O => \slv_reg2[1]_i_1_n_0\
    );
\slv_reg2[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(7),
      I2 => p_0_in(6),
      O => \slv_reg2[1]_i_2_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[0]_i_1_n_0\,
      Q => \^phs0_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[1]_i_1_n_0\,
      Q => \^phs0_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg30[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg28[9]_i_2_n_0\,
      I5 => \^phs7_irq_mask\(0),
      O => \slv_reg30[0]_i_1_n_0\
    );
\slv_reg30[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg28[9]_i_2_n_0\,
      I5 => \^phs7_irq_mask\(1),
      O => \slv_reg30[1]_i_1_n_0\
    );
\slv_reg30_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg30[0]_i_1_n_0\,
      Q => \^phs7_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg30_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg30[1]_i_1_n_0\,
      Q => \^phs7_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg31[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg28[9]_i_2_n_0\,
      I5 => \^phs7_irq0_clr\,
      O => \slv_reg31[0]_i_1_n_0\
    );
\slv_reg31[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg28[9]_i_2_n_0\,
      I5 => \^phs7_irq1_clr\,
      O => \slv_reg31[1]_i_1_n_0\
    );
\slv_reg31_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg31[0]_i_1_n_0\,
      Q => \^phs7_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg31_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg31[1]_i_1_n_0\,
      Q => \^phs7_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg32[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg32
    );
\slv_reg32_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(0),
      Q => \^phs8_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg32_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(1),
      Q => \^phs8_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg32_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(2),
      Q => \^phs8_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg32_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(3),
      Q => \^phs8_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg32_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(4),
      Q => \^phs8_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg32_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(5),
      Q => \^phs8_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg32_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(6),
      Q => \^phs8_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg32_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(7),
      Q => \^phs8_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg32_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(8),
      Q => \^phs8_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg32_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(9),
      Q => \^phs8_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg33_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg33_reg[0]_0\,
      Q => \^slv_reg33\,
      R => \p_0_in__0\
    );
\slv_reg34[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs8_irq_mask\(0),
      O => \slv_reg34[0]_i_1_n_0\
    );
\slv_reg34[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs8_irq_mask\(1),
      O => \slv_reg34[1]_i_1_n_0\
    );
\slv_reg34[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(6),
      I2 => p_0_in(5),
      O => \slv_reg34[1]_i_2_n_0\
    );
\slv_reg34_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg34[0]_i_1_n_0\,
      Q => \^phs8_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg34_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg34[1]_i_1_n_0\,
      Q => \^phs8_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg35[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs8_irq0_clr\,
      O => \slv_reg35[0]_i_1_n_0\
    );
\slv_reg35[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs8_irq1_clr\,
      O => \slv_reg35[1]_i_1_n_0\
    );
\slv_reg35_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg35[0]_i_1_n_0\,
      Q => \^phs8_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg35_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg35[1]_i_1_n_0\,
      Q => \^phs8_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg36[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg4[9]_i_2_n_0\,
      O => slv_reg36
    );
\slv_reg36_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(0),
      Q => \^phs9_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg36_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(1),
      Q => \^phs9_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg36_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(2),
      Q => \^phs9_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg36_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(3),
      Q => \^phs9_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg36_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(4),
      Q => \^phs9_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg36_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(5),
      Q => \^phs9_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg36_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(6),
      Q => \^phs9_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg36_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(7),
      Q => \^phs9_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg36_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(8),
      Q => \^phs9_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg36_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(9),
      Q => \^phs9_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg37_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg37_reg[0]_0\,
      Q => \^slv_reg37\,
      R => \p_0_in__0\
    );
\slv_reg38[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs9_irq_mask\(0),
      O => \slv_reg38[0]_i_1_n_0\
    );
\slv_reg38[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs9_irq_mask\(1),
      O => \slv_reg38[1]_i_1_n_0\
    );
\slv_reg38_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg38[0]_i_1_n_0\,
      Q => \^phs9_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg38_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg38[1]_i_1_n_0\,
      Q => \^phs9_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg39[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs9_irq0_clr\,
      O => \slv_reg39[0]_i_1_n_0\
    );
\slv_reg39[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs9_irq1_clr\,
      O => \slv_reg39[1]_i_1_n_0\
    );
\slv_reg39_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg39[0]_i_1_n_0\,
      Q => \^phs9_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg39_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg39[1]_i_1_n_0\,
      Q => \^phs9_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg2[1]_i_2_n_0\,
      I5 => \^phs0_irq0_clr\,
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg2[1]_i_2_n_0\,
      I5 => \^phs0_irq1_clr\,
      O => \slv_reg3[1]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => \^phs0_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg3[1]_i_1_n_0\,
      Q => \^phs0_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg40[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => slv_reg40
    );
\slv_reg40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(0),
      Q => \^phs10_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(1),
      Q => \^phs10_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg40_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(2),
      Q => \^phs10_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg40_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(3),
      Q => \^phs10_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg40_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(4),
      Q => \^phs10_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg40_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(5),
      Q => \^phs10_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg40_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(6),
      Q => \^phs10_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg40_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(7),
      Q => \^phs10_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg40_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(8),
      Q => \^phs10_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg40_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg40,
      D => s00_axi_wdata(9),
      Q => \^phs10_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg41_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg41_reg[0]_0\,
      Q => \^slv_reg41\,
      R => \p_0_in__0\
    );
\slv_reg42[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs10_irq_mask\(0),
      O => \slv_reg42[0]_i_1_n_0\
    );
\slv_reg42[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs10_irq_mask\(1),
      O => \slv_reg42[1]_i_1_n_0\
    );
\slv_reg42_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg42[0]_i_1_n_0\,
      Q => \^phs10_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg42_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg42[1]_i_1_n_0\,
      Q => \^phs10_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg43[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs10_irq0_clr\,
      O => \slv_reg43[0]_i_1_n_0\
    );
\slv_reg43[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs10_irq1_clr\,
      O => \slv_reg43[1]_i_1_n_0\
    );
\slv_reg43_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg43[0]_i_1_n_0\,
      Q => \^phs10_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg43_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg43[1]_i_1_n_0\,
      Q => \^phs10_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg44[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => slv_reg44
    );
\slv_reg44_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(0),
      Q => \^phs11_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg44_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(1),
      Q => \^phs11_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg44_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(2),
      Q => \^phs11_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg44_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(3),
      Q => \^phs11_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg44_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(4),
      Q => \^phs11_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg44_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(5),
      Q => \^phs11_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg44_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(6),
      Q => \^phs11_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg44_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(7),
      Q => \^phs11_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg44_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(8),
      Q => \^phs11_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg44_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg44,
      D => s00_axi_wdata(9),
      Q => \^phs11_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg45_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg45_reg[0]_0\,
      Q => \^slv_reg45\,
      R => \p_0_in__0\
    );
\slv_reg46[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs11_irq_mask\(0),
      O => \slv_reg46[0]_i_1_n_0\
    );
\slv_reg46[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs11_irq_mask\(1),
      O => \slv_reg46[1]_i_1_n_0\
    );
\slv_reg46_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg46[0]_i_1_n_0\,
      Q => \^phs11_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg46_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg46[1]_i_1_n_0\,
      Q => \^phs11_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg47[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs11_irq0_clr\,
      O => \slv_reg47[0]_i_1_n_0\
    );
\slv_reg47[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs11_irq1_clr\,
      O => \slv_reg47[1]_i_1_n_0\
    );
\slv_reg47_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg47[0]_i_1_n_0\,
      Q => \^phs11_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg47_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg47[1]_i_1_n_0\,
      Q => \^phs11_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg48[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg16[9]_i_2_n_0\,
      O => slv_reg48
    );
\slv_reg48_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(0),
      Q => \^phs12_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg48_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(1),
      Q => \^phs12_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg48_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(2),
      Q => \^phs12_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg48_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(3),
      Q => \^phs12_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg48_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(4),
      Q => \^phs12_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg48_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(5),
      Q => \^phs12_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg48_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(6),
      Q => \^phs12_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg48_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(7),
      Q => \^phs12_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg48_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(8),
      Q => \^phs12_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg48_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg48,
      D => s00_axi_wdata(9),
      Q => \^phs12_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg49_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg49_reg[0]_0\,
      Q => \^slv_reg49\,
      R => \p_0_in__0\
    );
\slv_reg4[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg4[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg4
    );
\slv_reg4[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \slv_reg4[9]_i_3_n_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => \^axi_awready_reg_0\,
      I5 => p_0_in(4),
      O => \slv_reg4[9]_i_2_n_0\
    );
\slv_reg4[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      O => \slv_reg4[9]_i_3_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(0),
      Q => \^phs1_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(1),
      Q => \^phs1_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(2),
      Q => \^phs1_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(3),
      Q => \^phs1_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(4),
      Q => \^phs1_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(5),
      Q => \^phs1_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(6),
      Q => \^phs1_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(7),
      Q => \^phs1_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(8),
      Q => \^phs1_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(9),
      Q => \^phs1_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg50[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs12_irq_mask\(0),
      O => \slv_reg50[0]_i_1_n_0\
    );
\slv_reg50[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs12_irq_mask\(1),
      O => \slv_reg50[1]_i_1_n_0\
    );
\slv_reg50_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg50[0]_i_1_n_0\,
      Q => \^phs12_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg50_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg50[1]_i_1_n_0\,
      Q => \^phs12_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg51[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs12_irq0_clr\,
      O => \slv_reg51[0]_i_1_n_0\
    );
\slv_reg51[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs12_irq1_clr\,
      O => \slv_reg51[1]_i_1_n_0\
    );
\slv_reg51_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg51[0]_i_1_n_0\,
      Q => \^phs12_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg51_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg51[1]_i_1_n_0\,
      Q => \^phs12_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg52[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg20[9]_i_2_n_0\,
      O => slv_reg52
    );
\slv_reg52_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(0),
      Q => \^phs13_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg52_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(1),
      Q => \^phs13_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg52_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(2),
      Q => \^phs13_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg52_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(3),
      Q => \^phs13_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg52_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(4),
      Q => \^phs13_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg52_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(5),
      Q => \^phs13_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg52_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(6),
      Q => \^phs13_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg52_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(7),
      Q => \^phs13_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg52_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(8),
      Q => \^phs13_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg52_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg52,
      D => s00_axi_wdata(9),
      Q => \^phs13_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg53_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg53_reg[0]_0\,
      Q => \^slv_reg53\,
      R => \p_0_in__0\
    );
\slv_reg54[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs13_irq_mask\(0),
      O => \slv_reg54[0]_i_1_n_0\
    );
\slv_reg54[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs13_irq_mask\(1),
      O => \slv_reg54[1]_i_1_n_0\
    );
\slv_reg54_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg54[0]_i_1_n_0\,
      Q => \^phs13_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg54_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg54[1]_i_1_n_0\,
      Q => \^phs13_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg55[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs13_irq0_clr\,
      O => \slv_reg55[0]_i_1_n_0\
    );
\slv_reg55[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs13_irq1_clr\,
      O => \slv_reg55[1]_i_1_n_0\
    );
\slv_reg55_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg55[0]_i_1_n_0\,
      Q => \^phs13_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg55_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg55[1]_i_1_n_0\,
      Q => \^phs13_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg56[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg24[9]_i_2_n_0\,
      O => slv_reg56
    );
\slv_reg56_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(0),
      Q => \^phs14_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg56_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(1),
      Q => \^phs14_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg56_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(2),
      Q => \^phs14_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg56_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(3),
      Q => \^phs14_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg56_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(4),
      Q => \^phs14_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg56_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(5),
      Q => \^phs14_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg56_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(6),
      Q => \^phs14_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg56_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(7),
      Q => \^phs14_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg56_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(8),
      Q => \^phs14_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg56_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg56,
      D => s00_axi_wdata(9),
      Q => \^phs14_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg57_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg57_reg[0]_0\,
      Q => \^slv_reg57\,
      R => \p_0_in__0\
    );
\slv_reg58[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs14_irq_mask\(0),
      O => \slv_reg58[0]_i_1_n_0\
    );
\slv_reg58[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs14_irq_mask\(1),
      O => \slv_reg58[1]_i_1_n_0\
    );
\slv_reg58_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg58[0]_i_1_n_0\,
      Q => \^phs14_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg58_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg58[1]_i_1_n_0\,
      Q => \^phs14_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg59[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs14_irq0_clr\,
      O => \slv_reg59[0]_i_1_n_0\
    );
\slv_reg59[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs14_irq1_clr\,
      O => \slv_reg59[1]_i_1_n_0\
    );
\slv_reg59_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg59[0]_i_1_n_0\,
      Q => \^phs14_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg59_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg59[1]_i_1_n_0\,
      Q => \^phs14_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5_reg[0]_0\,
      Q => \^slv_reg5\,
      R => \p_0_in__0\
    );
\slv_reg60[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(7),
      I3 => p_0_in(6),
      I4 => p_0_in(5),
      I5 => \slv_reg28[9]_i_2_n_0\,
      O => slv_reg60
    );
\slv_reg60_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(0),
      Q => \^phs15_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg60_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(1),
      Q => \^phs15_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg60_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(2),
      Q => \^phs15_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg60_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(3),
      Q => \^phs15_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg60_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(4),
      Q => \^phs15_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg60_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(5),
      Q => \^phs15_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg60_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(6),
      Q => \^phs15_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg60_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(7),
      Q => \^phs15_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg60_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(8),
      Q => \^phs15_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg60_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg60,
      D => s00_axi_wdata(9),
      Q => \^phs15_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg61_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg61_reg[0]_0\,
      Q => \^slv_reg61\,
      R => \p_0_in__0\
    );
\slv_reg62[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs15_irq_mask\(0),
      O => \slv_reg62[0]_i_1_n_0\
    );
\slv_reg62[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs15_irq_mask\(1),
      O => \slv_reg62[1]_i_1_n_0\
    );
\slv_reg62_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg62[0]_i_1_n_0\,
      Q => \^phs15_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg62_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg62[1]_i_1_n_0\,
      Q => \^phs15_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg63[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs15_irq0_clr\,
      O => \slv_reg63[0]_i_1_n_0\
    );
\slv_reg63[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg34[1]_i_2_n_0\,
      I5 => \^phs15_irq1_clr\,
      O => \slv_reg63[1]_i_1_n_0\
    );
\slv_reg63_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg63[0]_i_1_n_0\,
      Q => \^phs15_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg63_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg63[1]_i_1_n_0\,
      Q => \^phs15_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg64[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg64
    );
\slv_reg64_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(0),
      Q => \^phs16_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg64_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(1),
      Q => \^phs16_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg64_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(2),
      Q => \^phs16_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg64_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(3),
      Q => \^phs16_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg64_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(4),
      Q => \^phs16_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg64_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(5),
      Q => \^phs16_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg64_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(6),
      Q => \^phs16_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg64_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(7),
      Q => \^phs16_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg64_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(8),
      Q => \^phs16_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg64_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg64,
      D => s00_axi_wdata(9),
      Q => \^phs16_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg65_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg65_reg[0]_0\,
      Q => \^slv_reg65\,
      R => \p_0_in__0\
    );
\slv_reg66[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs16_irq_mask\(0),
      O => \slv_reg66[0]_i_1_n_0\
    );
\slv_reg66[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs16_irq_mask\(1),
      O => \slv_reg66[1]_i_1_n_0\
    );
\slv_reg66[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      O => \slv_reg66[1]_i_2_n_0\
    );
\slv_reg66_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg66[0]_i_1_n_0\,
      Q => \^phs16_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg66_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg66[1]_i_1_n_0\,
      Q => \^phs16_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg67[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs16_irq0_clr\,
      O => \slv_reg67[0]_i_1_n_0\
    );
\slv_reg67[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs16_irq1_clr\,
      O => \slv_reg67[1]_i_1_n_0\
    );
\slv_reg67_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg67[0]_i_1_n_0\,
      Q => \^phs16_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg67_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg67[1]_i_1_n_0\,
      Q => \^phs16_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg68[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg4[9]_i_2_n_0\,
      O => slv_reg68
    );
\slv_reg68_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(0),
      Q => \^phs17_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg68_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(1),
      Q => \^phs17_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg68_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(2),
      Q => \^phs17_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg68_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(3),
      Q => \^phs17_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg68_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(4),
      Q => \^phs17_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg68_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(5),
      Q => \^phs17_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg68_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(6),
      Q => \^phs17_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg68_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(7),
      Q => \^phs17_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg68_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(8),
      Q => \^phs17_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg68_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg68,
      D => s00_axi_wdata(9),
      Q => \^phs17_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg69_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg69_reg[0]_0\,
      Q => \^slv_reg69\,
      R => \p_0_in__0\
    );
\slv_reg6[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg4[9]_i_2_n_0\,
      I5 => \^phs1_irq_mask\(0),
      O => \slv_reg6[0]_i_1_n_0\
    );
\slv_reg6[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg4[9]_i_2_n_0\,
      I5 => \^phs1_irq_mask\(1),
      O => \slv_reg6[1]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg6[0]_i_1_n_0\,
      Q => \^phs1_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg6[1]_i_1_n_0\,
      Q => \^phs1_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg70[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs17_irq_mask\(0),
      O => \slv_reg70[0]_i_1_n_0\
    );
\slv_reg70[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs17_irq_mask\(1),
      O => \slv_reg70[1]_i_1_n_0\
    );
\slv_reg70_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg70[0]_i_1_n_0\,
      Q => \^phs17_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg70_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg70[1]_i_1_n_0\,
      Q => \^phs17_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg71[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs17_irq0_clr\,
      O => \slv_reg71[0]_i_1_n_0\
    );
\slv_reg71[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg4[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs17_irq1_clr\,
      O => \slv_reg71[1]_i_1_n_0\
    );
\slv_reg71_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg71[0]_i_1_n_0\,
      Q => \^phs17_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg71_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg71[1]_i_1_n_0\,
      Q => \^phs17_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg72[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg8[9]_i_2_n_0\,
      O => slv_reg72
    );
\slv_reg72_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(0),
      Q => \^phs18_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg72_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(1),
      Q => \^phs18_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg72_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(2),
      Q => \^phs18_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg72_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(3),
      Q => \^phs18_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg72_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(4),
      Q => \^phs18_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg72_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(5),
      Q => \^phs18_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg72_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(6),
      Q => \^phs18_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg72_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(7),
      Q => \^phs18_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg72_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(8),
      Q => \^phs18_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg72_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg72,
      D => s00_axi_wdata(9),
      Q => \^phs18_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg73_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg73_reg[0]_0\,
      Q => \^slv_reg73\,
      R => \p_0_in__0\
    );
\slv_reg74[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs18_irq_mask\(0),
      O => \slv_reg74[0]_i_1_n_0\
    );
\slv_reg74[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs18_irq_mask\(1),
      O => \slv_reg74[1]_i_1_n_0\
    );
\slv_reg74_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg74[0]_i_1_n_0\,
      Q => \^phs18_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg74_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg74[1]_i_1_n_0\,
      Q => \^phs18_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg75[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs18_irq0_clr\,
      O => \slv_reg75[0]_i_1_n_0\
    );
\slv_reg75[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg8[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs18_irq1_clr\,
      O => \slv_reg75[1]_i_1_n_0\
    );
\slv_reg75_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg75[0]_i_1_n_0\,
      Q => \^phs18_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg75_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg75[1]_i_1_n_0\,
      Q => \^phs18_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg76[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg12[9]_i_2_n_0\,
      O => slv_reg76
    );
\slv_reg76_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(0),
      Q => \^phs19_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg76_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(1),
      Q => \^phs19_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg76_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(2),
      Q => \^phs19_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg76_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(3),
      Q => \^phs19_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg76_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(4),
      Q => \^phs19_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg76_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(5),
      Q => \^phs19_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg76_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(6),
      Q => \^phs19_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg76_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(7),
      Q => \^phs19_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg76_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(8),
      Q => \^phs19_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg76_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg76,
      D => s00_axi_wdata(9),
      Q => \^phs19_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg77_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg77_reg[0]_0\,
      Q => \^slv_reg77\,
      R => \p_0_in__0\
    );
\slv_reg78[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs19_irq_mask\(0),
      O => \slv_reg78[0]_i_1_n_0\
    );
\slv_reg78[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs19_irq_mask\(1),
      O => \slv_reg78[1]_i_1_n_0\
    );
\slv_reg78_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg78[0]_i_1_n_0\,
      Q => \^phs19_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg78_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg78[1]_i_1_n_0\,
      Q => \^phs19_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg79[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs19_irq0_clr\,
      O => \slv_reg79[0]_i_1_n_0\
    );
\slv_reg79[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg12[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs19_irq1_clr\,
      O => \slv_reg79[1]_i_1_n_0\
    );
\slv_reg79_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg79[0]_i_1_n_0\,
      Q => \^phs19_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg79_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg79[1]_i_1_n_0\,
      Q => \^phs19_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg7[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg4[9]_i_2_n_0\,
      I5 => \^phs1_irq0_clr\,
      O => \slv_reg7[0]_i_1_n_0\
    );
\slv_reg7[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I2 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I3 => \slv_reg2[1]_i_2_n_0\,
      I4 => \slv_reg4[9]_i_2_n_0\,
      I5 => \^phs1_irq1_clr\,
      O => \slv_reg7[1]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg7[0]_i_1_n_0\,
      Q => \^phs1_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg7[1]_i_1_n_0\,
      Q => \^phs1_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg80[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg16[9]_i_2_n_0\,
      O => slv_reg80
    );
\slv_reg80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(0),
      Q => \^phs20_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(1),
      Q => \^phs20_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(2),
      Q => \^phs20_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(3),
      Q => \^phs20_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg80_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(4),
      Q => \^phs20_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg80_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(5),
      Q => \^phs20_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg80_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(6),
      Q => \^phs20_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg80_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(7),
      Q => \^phs20_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg80_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(8),
      Q => \^phs20_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg80_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg80,
      D => s00_axi_wdata(9),
      Q => \^phs20_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg81_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg81_reg[0]_0\,
      Q => \^slv_reg81\,
      R => \p_0_in__0\
    );
\slv_reg82[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs20_irq_mask\(0),
      O => \slv_reg82[0]_i_1_n_0\
    );
\slv_reg82[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs20_irq_mask\(1),
      O => \slv_reg82[1]_i_1_n_0\
    );
\slv_reg82_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg82[0]_i_1_n_0\,
      Q => \^phs20_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg82_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg82[1]_i_1_n_0\,
      Q => \^phs20_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg83[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs20_irq0_clr\,
      O => \slv_reg83[0]_i_1_n_0\
    );
\slv_reg83[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg16[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs20_irq1_clr\,
      O => \slv_reg83[1]_i_1_n_0\
    );
\slv_reg83_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg83[0]_i_1_n_0\,
      Q => \^phs20_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg83_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg83[1]_i_1_n_0\,
      Q => \^phs20_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg84[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg20[9]_i_2_n_0\,
      O => slv_reg84
    );
\slv_reg84_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(0),
      Q => \^phs21_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg84_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(1),
      Q => \^phs21_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg84_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(2),
      Q => \^phs21_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg84_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(3),
      Q => \^phs21_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg84_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(4),
      Q => \^phs21_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg84_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(5),
      Q => \^phs21_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg84_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(6),
      Q => \^phs21_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg84_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(7),
      Q => \^phs21_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg84_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(8),
      Q => \^phs21_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg84_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg84,
      D => s00_axi_wdata(9),
      Q => \^phs21_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg85_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg85_reg[0]_0\,
      Q => \^slv_reg85\,
      R => \p_0_in__0\
    );
\slv_reg86[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs21_irq_mask\(0),
      O => \slv_reg86[0]_i_1_n_0\
    );
\slv_reg86[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs21_irq_mask\(1),
      O => \slv_reg86[1]_i_1_n_0\
    );
\slv_reg86_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg86[0]_i_1_n_0\,
      Q => \^phs21_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg86_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg86[1]_i_1_n_0\,
      Q => \^phs21_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg87[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs21_irq0_clr\,
      O => \slv_reg87[0]_i_1_n_0\
    );
\slv_reg87[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg20[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs21_irq1_clr\,
      O => \slv_reg87[1]_i_1_n_0\
    );
\slv_reg87_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg87[0]_i_1_n_0\,
      Q => \^phs21_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg87_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg87[1]_i_1_n_0\,
      Q => \^phs21_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg88[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg24[9]_i_2_n_0\,
      O => slv_reg88
    );
\slv_reg88_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(0),
      Q => \^phs22_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg88_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(1),
      Q => \^phs22_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg88_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(2),
      Q => \^phs22_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg88_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(3),
      Q => \^phs22_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg88_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(4),
      Q => \^phs22_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg88_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(5),
      Q => \^phs22_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg88_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(6),
      Q => \^phs22_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg88_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(7),
      Q => \^phs22_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg88_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(8),
      Q => \^phs22_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg88_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg88,
      D => s00_axi_wdata(9),
      Q => \^phs22_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg89_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg89_reg[0]_0\,
      Q => \^slv_reg89\,
      R => \p_0_in__0\
    );
\slv_reg8[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => \slv_reg8[9]_i_2_n_0\,
      I3 => p_0_in(5),
      I4 => p_0_in(7),
      I5 => p_0_in(6),
      O => slv_reg8
    );
\slv_reg8[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \slv_reg8[9]_i_3_n_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => \^axi_awready_reg_0\,
      I5 => p_0_in(4),
      O => \slv_reg8[9]_i_2_n_0\
    );
\slv_reg8[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(3),
      O => \slv_reg8[9]_i_3_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(0),
      Q => \^phs2_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(1),
      Q => \^phs2_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(2),
      Q => \^phs2_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(3),
      Q => \^phs2_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(4),
      Q => \^phs2_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(5),
      Q => \^phs2_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(6),
      Q => \^phs2_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(7),
      Q => \^phs2_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg8_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(8),
      Q => \^phs2_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg8_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(9),
      Q => \^phs2_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg90[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs22_irq_mask\(0),
      O => \slv_reg90[0]_i_1_n_0\
    );
\slv_reg90[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs22_irq_mask\(1),
      O => \slv_reg90[1]_i_1_n_0\
    );
\slv_reg90_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg90[0]_i_1_n_0\,
      Q => \^phs22_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg90_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg90[1]_i_1_n_0\,
      Q => \^phs22_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg91[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs22_irq0_clr\,
      O => \slv_reg91[0]_i_1_n_0\
    );
\slv_reg91[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg24[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs22_irq1_clr\,
      O => \slv_reg91[1]_i_1_n_0\
    );
\slv_reg91_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg91[0]_i_1_n_0\,
      Q => \^phs22_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg91_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg91[1]_i_1_n_0\,
      Q => \^phs22_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg92[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep_n_0\,
      I1 => \axi_awaddr_reg[3]_rep_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => p_0_in(7),
      I5 => \slv_reg28[9]_i_2_n_0\,
      O => slv_reg92
    );
\slv_reg92_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(0),
      Q => \^phs23_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg92_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(1),
      Q => \^phs23_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg92_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(2),
      Q => \^phs23_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg92_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(3),
      Q => \^phs23_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg92_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(4),
      Q => \^phs23_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg92_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(5),
      Q => \^phs23_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg92_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(6),
      Q => \^phs23_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg92_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(7),
      Q => \^phs23_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg92_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(8),
      Q => \^phs23_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg92_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg92,
      D => s00_axi_wdata(9),
      Q => \^phs23_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg93_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg93_reg[0]_0\,
      Q => \^slv_reg93\,
      R => \p_0_in__0\
    );
\slv_reg94[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs23_irq_mask\(0),
      O => \slv_reg94[0]_i_1_n_0\
    );
\slv_reg94[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs23_irq_mask\(1),
      O => \slv_reg94[1]_i_1_n_0\
    );
\slv_reg94_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg94[0]_i_1_n_0\,
      Q => \^phs23_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg94_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg94[1]_i_1_n_0\,
      Q => \^phs23_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg95[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs23_irq0_clr\,
      O => \slv_reg95[0]_i_1_n_0\
    );
\slv_reg95[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg28[9]_i_2_n_0\,
      I4 => \slv_reg66[1]_i_2_n_0\,
      I5 => \^phs23_irq1_clr\,
      O => \slv_reg95[1]_i_1_n_0\
    );
\slv_reg95_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg95[0]_i_1_n_0\,
      Q => \^phs23_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg95_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg95[1]_i_1_n_0\,
      Q => \^phs23_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg96[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \axi_awaddr_reg[2]_rep__0_n_0\,
      I1 => \axi_awaddr_reg[3]_rep__0_n_0\,
      I2 => p_0_in(6),
      I3 => p_0_in(7),
      I4 => p_0_in(5),
      I5 => \slv_reg0[9]_i_3_n_0\,
      O => slv_reg96
    );
\slv_reg96_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(0),
      Q => \^phs24_pwm_val\(0),
      R => \p_0_in__0\
    );
\slv_reg96_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(1),
      Q => \^phs24_pwm_val\(1),
      R => \p_0_in__0\
    );
\slv_reg96_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(2),
      Q => \^phs24_pwm_val\(2),
      R => \p_0_in__0\
    );
\slv_reg96_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(3),
      Q => \^phs24_pwm_val\(3),
      R => \p_0_in__0\
    );
\slv_reg96_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(4),
      Q => \^phs24_pwm_val\(4),
      R => \p_0_in__0\
    );
\slv_reg96_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(5),
      Q => \^phs24_pwm_val\(5),
      R => \p_0_in__0\
    );
\slv_reg96_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(6),
      Q => \^phs24_pwm_val\(6),
      R => \p_0_in__0\
    );
\slv_reg96_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(7),
      Q => \^phs24_pwm_val\(7),
      R => \p_0_in__0\
    );
\slv_reg96_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(8),
      Q => \^phs24_pwm_val\(8),
      R => \p_0_in__0\
    );
\slv_reg96_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg96,
      D => s00_axi_wdata(9),
      Q => \^phs24_pwm_val\(9),
      R => \p_0_in__0\
    );
\slv_reg97_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg97_reg[0]_0\,
      Q => \^slv_reg97\,
      R => \p_0_in__0\
    );
\slv_reg98[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs24_irq_mask\(0),
      O => \slv_reg98[0]_i_1_n_0\
    );
\slv_reg98[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs24_irq_mask\(1),
      O => \slv_reg98[1]_i_1_n_0\
    );
\slv_reg98[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(7),
      I2 => p_0_in(5),
      O => \slv_reg98[1]_i_2_n_0\
    );
\slv_reg98_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg98[0]_i_1_n_0\,
      Q => \^phs24_irq_mask\(0),
      R => \p_0_in__0\
    );
\slv_reg98_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg98[1]_i_1_n_0\,
      Q => \^phs24_irq_mask\(1),
      R => \p_0_in__0\
    );
\slv_reg99[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs24_irq0_clr\,
      O => \slv_reg99[0]_i_1_n_0\
    );
\slv_reg99[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \axi_awaddr_reg[2]_rep_n_0\,
      I2 => \axi_awaddr_reg[3]_rep_n_0\,
      I3 => \slv_reg0[9]_i_3_n_0\,
      I4 => \slv_reg98[1]_i_2_n_0\,
      I5 => \^phs24_irq1_clr\,
      O => \slv_reg99[1]_i_1_n_0\
    );
\slv_reg99_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg99[0]_i_1_n_0\,
      Q => \^phs24_irq0_clr\,
      R => \p_0_in__0\
    );
\slv_reg99_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg99[1]_i_1_n_0\,
      Q => \^phs24_irq1_clr\,
      R => \p_0_in__0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg9_reg[0]_0\,
      Q => \^slv_reg9\,
      R => \p_0_in__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    PHS20_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS21_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS22_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS23_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS30_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS31_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS28_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS29_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS0_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS0_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS0_irq1_clr : out STD_LOGIC;
    PHS0_irq0_clr : out STD_LOGIC;
    PHS0_vld_out : out STD_LOGIC;
    PHS1_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS1_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS1_irq1_clr : out STD_LOGIC;
    PHS1_irq0_clr : out STD_LOGIC;
    PHS1_vld_out : out STD_LOGIC;
    PHS2_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS2_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS2_irq1_clr : out STD_LOGIC;
    PHS2_irq0_clr : out STD_LOGIC;
    PHS2_vld_out : out STD_LOGIC;
    PHS3_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS3_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS3_irq1_clr : out STD_LOGIC;
    PHS3_irq0_clr : out STD_LOGIC;
    PHS3_vld_out : out STD_LOGIC;
    PHS4_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS4_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS4_irq1_clr : out STD_LOGIC;
    PHS4_irq0_clr : out STD_LOGIC;
    PHS4_vld_out : out STD_LOGIC;
    PHS5_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS5_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS5_irq1_clr : out STD_LOGIC;
    PHS5_irq0_clr : out STD_LOGIC;
    PHS5_vld_out : out STD_LOGIC;
    PHS6_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS6_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS6_irq1_clr : out STD_LOGIC;
    PHS6_irq0_clr : out STD_LOGIC;
    PHS6_vld_out : out STD_LOGIC;
    PHS7_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS7_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS7_irq1_clr : out STD_LOGIC;
    PHS7_irq0_clr : out STD_LOGIC;
    PHS7_vld_out : out STD_LOGIC;
    PHS8_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS8_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS8_irq1_clr : out STD_LOGIC;
    PHS8_irq0_clr : out STD_LOGIC;
    PHS8_vld_out : out STD_LOGIC;
    PHS9_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS9_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS9_irq1_clr : out STD_LOGIC;
    PHS9_irq0_clr : out STD_LOGIC;
    PHS9_vld_out : out STD_LOGIC;
    PHS10_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS10_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS10_irq1_clr : out STD_LOGIC;
    PHS10_irq0_clr : out STD_LOGIC;
    PHS10_vld_out : out STD_LOGIC;
    PHS11_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS11_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS11_irq1_clr : out STD_LOGIC;
    PHS11_irq0_clr : out STD_LOGIC;
    PHS11_vld_out : out STD_LOGIC;
    PHS12_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS12_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS12_irq1_clr : out STD_LOGIC;
    PHS12_irq0_clr : out STD_LOGIC;
    PHS12_vld_out : out STD_LOGIC;
    PHS13_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS13_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS13_irq1_clr : out STD_LOGIC;
    PHS13_irq0_clr : out STD_LOGIC;
    PHS13_vld_out : out STD_LOGIC;
    PHS14_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS14_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS14_irq1_clr : out STD_LOGIC;
    PHS14_irq0_clr : out STD_LOGIC;
    PHS14_vld_out : out STD_LOGIC;
    PHS15_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS15_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS15_irq1_clr : out STD_LOGIC;
    PHS15_irq0_clr : out STD_LOGIC;
    PHS15_vld_out : out STD_LOGIC;
    PHS16_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS16_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS16_irq1_clr : out STD_LOGIC;
    PHS16_irq0_clr : out STD_LOGIC;
    PHS16_vld_out : out STD_LOGIC;
    PHS17_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS17_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS17_irq1_clr : out STD_LOGIC;
    PHS17_irq0_clr : out STD_LOGIC;
    PHS17_vld_out : out STD_LOGIC;
    PHS18_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS18_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS18_irq1_clr : out STD_LOGIC;
    PHS18_irq0_clr : out STD_LOGIC;
    PHS18_vld_out : out STD_LOGIC;
    PHS19_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS19_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS19_irq1_clr : out STD_LOGIC;
    PHS19_irq0_clr : out STD_LOGIC;
    PHS19_vld_out : out STD_LOGIC;
    PHS20_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS20_irq1_clr : out STD_LOGIC;
    PHS20_irq0_clr : out STD_LOGIC;
    PHS20_vld_out : out STD_LOGIC;
    PHS21_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS21_irq1_clr : out STD_LOGIC;
    PHS21_irq0_clr : out STD_LOGIC;
    PHS21_vld_out : out STD_LOGIC;
    PHS22_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS22_irq1_clr : out STD_LOGIC;
    PHS22_irq0_clr : out STD_LOGIC;
    PHS22_vld_out : out STD_LOGIC;
    PHS23_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS23_irq1_clr : out STD_LOGIC;
    PHS23_irq0_clr : out STD_LOGIC;
    PHS23_vld_out : out STD_LOGIC;
    PHS24_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS24_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS24_irq1_clr : out STD_LOGIC;
    PHS24_irq0_clr : out STD_LOGIC;
    PHS24_vld_out : out STD_LOGIC;
    PHS25_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS25_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS25_irq1_clr : out STD_LOGIC;
    PHS25_irq0_clr : out STD_LOGIC;
    PHS25_vld_out : out STD_LOGIC;
    PHS26_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS26_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS26_irq1_clr : out STD_LOGIC;
    PHS26_irq0_clr : out STD_LOGIC;
    PHS26_vld_out : out STD_LOGIC;
    PHS27_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS27_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS27_irq1_clr : out STD_LOGIC;
    PHS27_irq0_clr : out STD_LOGIC;
    PHS27_vld_out : out STD_LOGIC;
    PHS28_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS28_irq1_clr : out STD_LOGIC;
    PHS28_irq0_clr : out STD_LOGIC;
    PHS28_vld_out : out STD_LOGIC;
    PHS29_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS29_irq1_clr : out STD_LOGIC;
    PHS29_irq0_clr : out STD_LOGIC;
    PHS29_vld_out : out STD_LOGIC;
    PHS30_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS30_irq1_clr : out STD_LOGIC;
    PHS30_irq0_clr : out STD_LOGIC;
    PHS30_vld_out : out STD_LOGIC;
    PHS31_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS31_irq1_clr : out STD_LOGIC;
    PHS31_irq0_clr : out STD_LOGIC;
    PHS31_vld_out : out STD_LOGIC;
    PHS32_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS32_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS32_irq1_clr : out STD_LOGIC;
    PHS32_irq0_clr : out STD_LOGIC;
    PHS32_vld_out : out STD_LOGIC;
    PHS33_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS33_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS33_irq1_clr : out STD_LOGIC;
    PHS33_irq0_clr : out STD_LOGIC;
    PHS33_vld_out : out STD_LOGIC;
    PHS34_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS34_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS34_irq1_clr : out STD_LOGIC;
    PHS34_irq0_clr : out STD_LOGIC;
    PHS34_vld_out : out STD_LOGIC;
    PHS35_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS35_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS35_irq1_clr : out STD_LOGIC;
    PHS35_irq0_clr : out STD_LOGIC;
    PHS35_vld_out : out STD_LOGIC;
    PHS36_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS36_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS36_irq1_clr : out STD_LOGIC;
    PHS36_irq0_clr : out STD_LOGIC;
    PHS36_vld_out : out STD_LOGIC;
    PHS37_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS37_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS37_irq1_clr : out STD_LOGIC;
    PHS37_irq0_clr : out STD_LOGIC;
    PHS37_vld_out : out STD_LOGIC;
    PHS38_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS38_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS38_irq1_clr : out STD_LOGIC;
    PHS38_irq0_clr : out STD_LOGIC;
    PHS38_vld_out : out STD_LOGIC;
    PHS39_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS39_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS39_irq1_clr : out STD_LOGIC;
    PHS39_irq0_clr : out STD_LOGIC;
    PHS39_vld_out : out STD_LOGIC;
    PHS40_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS40_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS40_irq1_clr : out STD_LOGIC;
    PHS40_irq0_clr : out STD_LOGIC;
    PHS40_vld_out : out STD_LOGIC;
    PHS41_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS41_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS41_irq1_clr : out STD_LOGIC;
    PHS41_irq0_clr : out STD_LOGIC;
    PHS41_vld_out : out STD_LOGIC;
    PHS42_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS42_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS42_irq1_clr : out STD_LOGIC;
    PHS42_irq0_clr : out STD_LOGIC;
    PHS42_vld_out : out STD_LOGIC;
    PHS43_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS43_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS43_irq1_clr : out STD_LOGIC;
    PHS43_irq0_clr : out STD_LOGIC;
    PHS43_vld_out : out STD_LOGIC;
    PHS44_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS44_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS44_irq1_clr : out STD_LOGIC;
    PHS44_irq0_clr : out STD_LOGIC;
    PHS44_vld_out : out STD_LOGIC;
    PHS45_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS45_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS45_irq1_clr : out STD_LOGIC;
    PHS45_irq0_clr : out STD_LOGIC;
    PHS45_vld_out : out STD_LOGIC;
    PHS46_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS46_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS46_irq1_clr : out STD_LOGIC;
    PHS46_irq0_clr : out STD_LOGIC;
    PHS46_vld_out : out STD_LOGIC;
    PHS47_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS47_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS47_irq1_clr : out STD_LOGIC;
    PHS47_irq0_clr : out STD_LOGIC;
    PHS47_vld_out : out STD_LOGIC;
    PHS48_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS48_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS48_irq1_clr : out STD_LOGIC;
    PHS48_irq0_clr : out STD_LOGIC;
    PHS48_vld_out : out STD_LOGIC;
    PHS49_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS49_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS49_irq1_clr : out STD_LOGIC;
    PHS49_irq0_clr : out STD_LOGIC;
    PHS49_vld_out : out STD_LOGIC;
    PHS_irqs_L2S_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_L2S_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irq_L2S_0 : out STD_LOGIC;
    PHS_irq_L2S_1 : out STD_LOGIC;
    PHS_irqs_S2L_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irq_S2L_0 : out STD_LOGIC;
    PHS_irq_S2L_1 : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 24 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PHS2_irq0_L2S : in STD_LOGIC;
    PHS24_irq0_L2S : in STD_LOGIC;
    PHS11_irq0_L2S : in STD_LOGIC;
    PHS23_irq0_L2S : in STD_LOGIC;
    PHS0_irq0_L2S : in STD_LOGIC;
    PHS22_irq0_L2S : in STD_LOGIC;
    PHS4_irq0_L2S : in STD_LOGIC;
    PHS1_irq0_L2S : in STD_LOGIC;
    PHS21_irq0_L2S : in STD_LOGIC;
    PHS8_irq0_L2S : in STD_LOGIC;
    PHS17_irq0_L2S : in STD_LOGIC;
    PHS20_irq0_L2S : in STD_LOGIC;
    PHS15_irq0_L2S : in STD_LOGIC;
    PHS19_irq0_L2S : in STD_LOGIC;
    PHS14_irq0_L2S : in STD_LOGIC;
    PHS18_irq0_L2S : in STD_LOGIC;
    PHS9_irq0_L2S : in STD_LOGIC;
    PHS7_irq0_L2S : in STD_LOGIC;
    PHS13_irq0_L2S : in STD_LOGIC;
    PHS16_irq0_L2S : in STD_LOGIC;
    PHS6_irq0_L2S : in STD_LOGIC;
    PHS12_irq0_L2S : in STD_LOGIC;
    PHS3_irq0_L2S : in STD_LOGIC;
    PHS10_irq0_L2S : in STD_LOGIC;
    PHS5_irq0_L2S : in STD_LOGIC;
    PHS27_irq0_L2S : in STD_LOGIC;
    PHS49_irq0_L2S : in STD_LOGIC;
    PHS36_irq0_L2S : in STD_LOGIC;
    PHS48_irq0_L2S : in STD_LOGIC;
    PHS25_irq0_L2S : in STD_LOGIC;
    PHS47_irq0_L2S : in STD_LOGIC;
    PHS29_irq0_L2S : in STD_LOGIC;
    PHS26_irq0_L2S : in STD_LOGIC;
    PHS46_irq0_L2S : in STD_LOGIC;
    PHS33_irq0_L2S : in STD_LOGIC;
    PHS42_irq0_L2S : in STD_LOGIC;
    PHS45_irq0_L2S : in STD_LOGIC;
    PHS40_irq0_L2S : in STD_LOGIC;
    PHS44_irq0_L2S : in STD_LOGIC;
    PHS39_irq0_L2S : in STD_LOGIC;
    PHS43_irq0_L2S : in STD_LOGIC;
    PHS34_irq0_L2S : in STD_LOGIC;
    PHS32_irq0_L2S : in STD_LOGIC;
    PHS38_irq0_L2S : in STD_LOGIC;
    PHS41_irq0_L2S : in STD_LOGIC;
    PHS31_irq0_L2S : in STD_LOGIC;
    PHS37_irq0_L2S : in STD_LOGIC;
    PHS28_irq0_L2S : in STD_LOGIC;
    PHS35_irq0_L2S : in STD_LOGIC;
    PHS30_irq0_L2S : in STD_LOGIC;
    PHS2_irq1_S2L : in STD_LOGIC;
    PHS24_irq1_S2L : in STD_LOGIC;
    PHS11_irq1_S2L : in STD_LOGIC;
    PHS23_irq1_S2L : in STD_LOGIC;
    PHS0_irq1_S2L : in STD_LOGIC;
    PHS22_irq1_S2L : in STD_LOGIC;
    PHS4_irq1_S2L : in STD_LOGIC;
    PHS1_irq1_S2L : in STD_LOGIC;
    PHS21_irq1_S2L : in STD_LOGIC;
    PHS8_irq1_S2L : in STD_LOGIC;
    PHS17_irq1_S2L : in STD_LOGIC;
    PHS20_irq1_S2L : in STD_LOGIC;
    PHS15_irq1_S2L : in STD_LOGIC;
    PHS19_irq1_S2L : in STD_LOGIC;
    PHS14_irq1_S2L : in STD_LOGIC;
    PHS18_irq1_S2L : in STD_LOGIC;
    PHS9_irq1_S2L : in STD_LOGIC;
    PHS7_irq1_S2L : in STD_LOGIC;
    PHS13_irq1_S2L : in STD_LOGIC;
    PHS16_irq1_S2L : in STD_LOGIC;
    PHS6_irq1_S2L : in STD_LOGIC;
    PHS12_irq1_S2L : in STD_LOGIC;
    PHS3_irq1_S2L : in STD_LOGIC;
    PHS10_irq1_S2L : in STD_LOGIC;
    PHS5_irq1_S2L : in STD_LOGIC;
    PHS27_irq1_S2L : in STD_LOGIC;
    PHS49_irq1_S2L : in STD_LOGIC;
    PHS36_irq1_S2L : in STD_LOGIC;
    PHS48_irq1_S2L : in STD_LOGIC;
    PHS25_irq1_S2L : in STD_LOGIC;
    PHS47_irq1_S2L : in STD_LOGIC;
    PHS29_irq1_S2L : in STD_LOGIC;
    PHS26_irq1_S2L : in STD_LOGIC;
    PHS46_irq1_S2L : in STD_LOGIC;
    PHS33_irq1_S2L : in STD_LOGIC;
    PHS42_irq1_S2L : in STD_LOGIC;
    PHS45_irq1_S2L : in STD_LOGIC;
    PHS40_irq1_S2L : in STD_LOGIC;
    PHS44_irq1_S2L : in STD_LOGIC;
    PHS39_irq1_S2L : in STD_LOGIC;
    PHS43_irq1_S2L : in STD_LOGIC;
    PHS34_irq1_S2L : in STD_LOGIC;
    PHS32_irq1_S2L : in STD_LOGIC;
    PHS38_irq1_S2L : in STD_LOGIC;
    PHS41_irq1_S2L : in STD_LOGIC;
    PHS31_irq1_S2L : in STD_LOGIC;
    PHS37_irq1_S2L : in STD_LOGIC;
    PHS28_irq1_S2L : in STD_LOGIC;
    PHS35_irq1_S2L : in STD_LOGIC;
    PHS30_irq1_S2L : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    PHS0_status : in STD_LOGIC;
    PHS0_vld_in : in STD_LOGIC;
    PHS1_status : in STD_LOGIC;
    PHS1_vld_in : in STD_LOGIC;
    PHS2_status : in STD_LOGIC;
    PHS2_vld_in : in STD_LOGIC;
    PHS3_status : in STD_LOGIC;
    PHS3_vld_in : in STD_LOGIC;
    PHS4_status : in STD_LOGIC;
    PHS4_vld_in : in STD_LOGIC;
    PHS5_status : in STD_LOGIC;
    PHS5_vld_in : in STD_LOGIC;
    PHS6_status : in STD_LOGIC;
    PHS6_vld_in : in STD_LOGIC;
    PHS7_status : in STD_LOGIC;
    PHS7_vld_in : in STD_LOGIC;
    PHS8_status : in STD_LOGIC;
    PHS8_vld_in : in STD_LOGIC;
    PHS9_status : in STD_LOGIC;
    PHS9_vld_in : in STD_LOGIC;
    PHS10_status : in STD_LOGIC;
    PHS10_vld_in : in STD_LOGIC;
    PHS11_status : in STD_LOGIC;
    PHS11_vld_in : in STD_LOGIC;
    PHS12_status : in STD_LOGIC;
    PHS12_vld_in : in STD_LOGIC;
    PHS13_status : in STD_LOGIC;
    PHS13_vld_in : in STD_LOGIC;
    PHS14_status : in STD_LOGIC;
    PHS14_vld_in : in STD_LOGIC;
    PHS15_status : in STD_LOGIC;
    PHS15_vld_in : in STD_LOGIC;
    PHS16_status : in STD_LOGIC;
    PHS16_vld_in : in STD_LOGIC;
    PHS17_status : in STD_LOGIC;
    PHS17_vld_in : in STD_LOGIC;
    PHS18_status : in STD_LOGIC;
    PHS18_vld_in : in STD_LOGIC;
    PHS19_status : in STD_LOGIC;
    PHS19_vld_in : in STD_LOGIC;
    PHS20_status : in STD_LOGIC;
    PHS20_vld_in : in STD_LOGIC;
    PHS21_status : in STD_LOGIC;
    PHS21_vld_in : in STD_LOGIC;
    PHS22_status : in STD_LOGIC;
    PHS22_vld_in : in STD_LOGIC;
    PHS23_status : in STD_LOGIC;
    PHS23_vld_in : in STD_LOGIC;
    PHS24_status : in STD_LOGIC;
    PHS24_vld_in : in STD_LOGIC;
    PHS25_status : in STD_LOGIC;
    PHS25_vld_in : in STD_LOGIC;
    PHS26_status : in STD_LOGIC;
    PHS26_vld_in : in STD_LOGIC;
    PHS27_status : in STD_LOGIC;
    PHS27_vld_in : in STD_LOGIC;
    PHS28_status : in STD_LOGIC;
    PHS28_vld_in : in STD_LOGIC;
    PHS29_status : in STD_LOGIC;
    PHS29_vld_in : in STD_LOGIC;
    PHS30_status : in STD_LOGIC;
    PHS30_vld_in : in STD_LOGIC;
    PHS31_status : in STD_LOGIC;
    PHS31_vld_in : in STD_LOGIC;
    PHS32_status : in STD_LOGIC;
    PHS32_vld_in : in STD_LOGIC;
    PHS33_status : in STD_LOGIC;
    PHS33_vld_in : in STD_LOGIC;
    PHS34_status : in STD_LOGIC;
    PHS34_vld_in : in STD_LOGIC;
    PHS35_status : in STD_LOGIC;
    PHS35_vld_in : in STD_LOGIC;
    PHS36_status : in STD_LOGIC;
    PHS36_vld_in : in STD_LOGIC;
    PHS37_status : in STD_LOGIC;
    PHS37_vld_in : in STD_LOGIC;
    PHS38_status : in STD_LOGIC;
    PHS38_vld_in : in STD_LOGIC;
    PHS39_status : in STD_LOGIC;
    PHS39_vld_in : in STD_LOGIC;
    PHS40_status : in STD_LOGIC;
    PHS40_vld_in : in STD_LOGIC;
    PHS41_status : in STD_LOGIC;
    PHS41_vld_in : in STD_LOGIC;
    PHS42_status : in STD_LOGIC;
    PHS42_vld_in : in STD_LOGIC;
    PHS43_status : in STD_LOGIC;
    PHS43_vld_in : in STD_LOGIC;
    PHS44_status : in STD_LOGIC;
    PHS44_vld_in : in STD_LOGIC;
    PHS45_status : in STD_LOGIC;
    PHS45_vld_in : in STD_LOGIC;
    PHS46_status : in STD_LOGIC;
    PHS46_vld_in : in STD_LOGIC;
    PHS47_status : in STD_LOGIC;
    PHS47_vld_in : in STD_LOGIC;
    PHS48_status : in STD_LOGIC;
    PHS48_vld_in : in STD_LOGIC;
    PHS49_status : in STD_LOGIC;
    PHS49_vld_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0 is
  signal PHS_regs_v1_0_S00_AXI_inst_n_58 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC;
  signal slv_reg101 : STD_LOGIC;
  signal \slv_reg101[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg105 : STD_LOGIC;
  signal \slv_reg105[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg109 : STD_LOGIC;
  signal \slv_reg109[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg113 : STD_LOGIC;
  signal \slv_reg113[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg117 : STD_LOGIC;
  signal \slv_reg117[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg121 : STD_LOGIC;
  signal \slv_reg121[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg125 : STD_LOGIC;
  signal \slv_reg125[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg129 : STD_LOGIC;
  signal \slv_reg129[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg13 : STD_LOGIC;
  signal slv_reg133 : STD_LOGIC;
  signal \slv_reg133[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg137 : STD_LOGIC;
  signal \slv_reg137[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg141 : STD_LOGIC;
  signal \slv_reg141[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg145 : STD_LOGIC;
  signal \slv_reg145[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg149 : STD_LOGIC;
  signal \slv_reg149[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg153 : STD_LOGIC;
  signal \slv_reg153[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg157 : STD_LOGIC;
  signal \slv_reg157[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg161 : STD_LOGIC;
  signal \slv_reg161[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg165 : STD_LOGIC;
  signal \slv_reg165[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg169 : STD_LOGIC;
  signal \slv_reg169[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg17 : STD_LOGIC;
  signal slv_reg173 : STD_LOGIC;
  signal \slv_reg173[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg177 : STD_LOGIC;
  signal \slv_reg177[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg17[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg181 : STD_LOGIC;
  signal \slv_reg181[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg185 : STD_LOGIC;
  signal \slv_reg185[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg189 : STD_LOGIC;
  signal \slv_reg189[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg193 : STD_LOGIC;
  signal \slv_reg193[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg197 : STD_LOGIC;
  signal \slv_reg197[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg21 : STD_LOGIC;
  signal \slv_reg21[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg25 : STD_LOGIC;
  signal \slv_reg25[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg29 : STD_LOGIC;
  signal \slv_reg29[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg33 : STD_LOGIC;
  signal \slv_reg33[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg37 : STD_LOGIC;
  signal \slv_reg37[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg41 : STD_LOGIC;
  signal \slv_reg41[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg45 : STD_LOGIC;
  signal \slv_reg45[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg49 : STD_LOGIC;
  signal \slv_reg49[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC;
  signal slv_reg53 : STD_LOGIC;
  signal \slv_reg53[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg57 : STD_LOGIC;
  signal \slv_reg57[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg61 : STD_LOGIC;
  signal \slv_reg61[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg65 : STD_LOGIC;
  signal \slv_reg65[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg69 : STD_LOGIC;
  signal \slv_reg69[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg73 : STD_LOGIC;
  signal \slv_reg73[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg77 : STD_LOGIC;
  signal \slv_reg77[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg81 : STD_LOGIC;
  signal \slv_reg81[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg85 : STD_LOGIC;
  signal \slv_reg85[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg89 : STD_LOGIC;
  signal \slv_reg89[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg9 : STD_LOGIC;
  signal slv_reg93 : STD_LOGIC;
  signal \slv_reg93[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg97 : STD_LOGIC;
  signal \slv_reg97[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[0]_i_1_n_0\ : STD_LOGIC;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
PHS_regs_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0_S00_AXI
     port map (
      PHS0_irq0_L2S => PHS0_irq0_L2S,
      PHS0_irq0_clr => PHS0_irq0_clr,
      PHS0_irq1_S2L => PHS0_irq1_S2L,
      PHS0_irq1_clr => PHS0_irq1_clr,
      PHS0_irq_mask(1 downto 0) => PHS0_irq_mask(1 downto 0),
      PHS0_pwm_val(9 downto 0) => PHS0_pwm_val(9 downto 0),
      PHS0_vld_out => PHS0_vld_out,
      PHS10_irq0_L2S => PHS10_irq0_L2S,
      PHS10_irq0_clr => PHS10_irq0_clr,
      PHS10_irq1_S2L => PHS10_irq1_S2L,
      PHS10_irq1_clr => PHS10_irq1_clr,
      PHS10_irq_mask(1 downto 0) => PHS10_irq_mask(1 downto 0),
      PHS10_pwm_val(9 downto 0) => PHS10_pwm_val(9 downto 0),
      PHS10_vld_out => PHS10_vld_out,
      PHS11_irq0_L2S => PHS11_irq0_L2S,
      PHS11_irq0_clr => PHS11_irq0_clr,
      PHS11_irq1_S2L => PHS11_irq1_S2L,
      PHS11_irq1_clr => PHS11_irq1_clr,
      PHS11_irq_mask(1 downto 0) => PHS11_irq_mask(1 downto 0),
      PHS11_pwm_val(9 downto 0) => PHS11_pwm_val(9 downto 0),
      PHS11_vld_out => PHS11_vld_out,
      PHS12_irq0_L2S => PHS12_irq0_L2S,
      PHS12_irq0_clr => PHS12_irq0_clr,
      PHS12_irq1_S2L => PHS12_irq1_S2L,
      PHS12_irq1_clr => PHS12_irq1_clr,
      PHS12_irq_mask(1 downto 0) => PHS12_irq_mask(1 downto 0),
      PHS12_pwm_val(9 downto 0) => PHS12_pwm_val(9 downto 0),
      PHS12_vld_out => PHS12_vld_out,
      PHS13_irq0_L2S => PHS13_irq0_L2S,
      PHS13_irq0_clr => PHS13_irq0_clr,
      PHS13_irq1_S2L => PHS13_irq1_S2L,
      PHS13_irq1_clr => PHS13_irq1_clr,
      PHS13_irq_mask(1 downto 0) => PHS13_irq_mask(1 downto 0),
      PHS13_pwm_val(9 downto 0) => PHS13_pwm_val(9 downto 0),
      PHS13_vld_out => PHS13_vld_out,
      PHS14_irq0_L2S => PHS14_irq0_L2S,
      PHS14_irq0_clr => PHS14_irq0_clr,
      PHS14_irq1_S2L => PHS14_irq1_S2L,
      PHS14_irq1_clr => PHS14_irq1_clr,
      PHS14_irq_mask(1 downto 0) => PHS14_irq_mask(1 downto 0),
      PHS14_pwm_val(9 downto 0) => PHS14_pwm_val(9 downto 0),
      PHS14_vld_out => PHS14_vld_out,
      PHS15_irq0_L2S => PHS15_irq0_L2S,
      PHS15_irq0_clr => PHS15_irq0_clr,
      PHS15_irq1_S2L => PHS15_irq1_S2L,
      PHS15_irq1_clr => PHS15_irq1_clr,
      PHS15_irq_mask(1 downto 0) => PHS15_irq_mask(1 downto 0),
      PHS15_pwm_val(9 downto 0) => PHS15_pwm_val(9 downto 0),
      PHS15_vld_out => PHS15_vld_out,
      PHS16_irq0_L2S => PHS16_irq0_L2S,
      PHS16_irq0_clr => PHS16_irq0_clr,
      PHS16_irq1_S2L => PHS16_irq1_S2L,
      PHS16_irq1_clr => PHS16_irq1_clr,
      PHS16_irq_mask(1 downto 0) => PHS16_irq_mask(1 downto 0),
      PHS16_pwm_val(9 downto 0) => PHS16_pwm_val(9 downto 0),
      PHS16_vld_out => PHS16_vld_out,
      PHS17_irq0_L2S => PHS17_irq0_L2S,
      PHS17_irq0_clr => PHS17_irq0_clr,
      PHS17_irq1_S2L => PHS17_irq1_S2L,
      PHS17_irq1_clr => PHS17_irq1_clr,
      PHS17_irq_mask(1 downto 0) => PHS17_irq_mask(1 downto 0),
      PHS17_pwm_val(9 downto 0) => PHS17_pwm_val(9 downto 0),
      PHS17_vld_out => PHS17_vld_out,
      PHS18_irq0_L2S => PHS18_irq0_L2S,
      PHS18_irq0_clr => PHS18_irq0_clr,
      PHS18_irq1_S2L => PHS18_irq1_S2L,
      PHS18_irq1_clr => PHS18_irq1_clr,
      PHS18_irq_mask(1 downto 0) => PHS18_irq_mask(1 downto 0),
      PHS18_pwm_val(9 downto 0) => PHS18_pwm_val(9 downto 0),
      PHS18_vld_out => PHS18_vld_out,
      PHS19_irq0_L2S => PHS19_irq0_L2S,
      PHS19_irq0_clr => PHS19_irq0_clr,
      PHS19_irq1_S2L => PHS19_irq1_S2L,
      PHS19_irq1_clr => PHS19_irq1_clr,
      PHS19_irq_mask(1 downto 0) => PHS19_irq_mask(1 downto 0),
      PHS19_pwm_val(9 downto 0) => PHS19_pwm_val(9 downto 0),
      PHS19_vld_out => PHS19_vld_out,
      PHS1_irq0_L2S => PHS1_irq0_L2S,
      PHS1_irq0_clr => PHS1_irq0_clr,
      PHS1_irq1_S2L => PHS1_irq1_S2L,
      PHS1_irq1_clr => PHS1_irq1_clr,
      PHS1_irq_mask(1 downto 0) => PHS1_irq_mask(1 downto 0),
      PHS1_pwm_val(9 downto 0) => PHS1_pwm_val(9 downto 0),
      PHS1_vld_out => PHS1_vld_out,
      PHS20_irq0_L2S => PHS20_irq0_L2S,
      PHS20_irq0_clr => PHS20_irq0_clr,
      PHS20_irq1_S2L => PHS20_irq1_S2L,
      PHS20_irq1_clr => PHS20_irq1_clr,
      PHS20_irq_mask(1 downto 0) => PHS20_irq_mask(1 downto 0),
      PHS20_pwm_val(9 downto 0) => PHS20_pwm_val(9 downto 0),
      PHS20_vld_out => PHS20_vld_out,
      PHS21_irq0_L2S => PHS21_irq0_L2S,
      PHS21_irq0_clr => PHS21_irq0_clr,
      PHS21_irq1_S2L => PHS21_irq1_S2L,
      PHS21_irq1_clr => PHS21_irq1_clr,
      PHS21_irq_mask(1 downto 0) => PHS21_irq_mask(1 downto 0),
      PHS21_pwm_val(9 downto 0) => PHS21_pwm_val(9 downto 0),
      PHS21_vld_out => PHS21_vld_out,
      PHS22_irq0_L2S => PHS22_irq0_L2S,
      PHS22_irq0_clr => PHS22_irq0_clr,
      PHS22_irq1_S2L => PHS22_irq1_S2L,
      PHS22_irq1_clr => PHS22_irq1_clr,
      PHS22_irq_mask(1 downto 0) => PHS22_irq_mask(1 downto 0),
      PHS22_pwm_val(9 downto 0) => PHS22_pwm_val(9 downto 0),
      PHS22_vld_out => PHS22_vld_out,
      PHS23_irq0_L2S => PHS23_irq0_L2S,
      PHS23_irq0_clr => PHS23_irq0_clr,
      PHS23_irq1_S2L => PHS23_irq1_S2L,
      PHS23_irq1_clr => PHS23_irq1_clr,
      PHS23_irq_mask(1 downto 0) => PHS23_irq_mask(1 downto 0),
      PHS23_pwm_val(9 downto 0) => PHS23_pwm_val(9 downto 0),
      PHS23_vld_out => PHS23_vld_out,
      PHS24_irq0_L2S => PHS24_irq0_L2S,
      PHS24_irq0_clr => PHS24_irq0_clr,
      PHS24_irq1_S2L => PHS24_irq1_S2L,
      PHS24_irq1_clr => PHS24_irq1_clr,
      PHS24_irq_mask(1 downto 0) => PHS24_irq_mask(1 downto 0),
      PHS24_pwm_val(9 downto 0) => PHS24_pwm_val(9 downto 0),
      PHS24_vld_out => PHS24_vld_out,
      PHS25_irq0_L2S => PHS25_irq0_L2S,
      PHS25_irq0_clr => PHS25_irq0_clr,
      PHS25_irq1_S2L => PHS25_irq1_S2L,
      PHS25_irq1_clr => PHS25_irq1_clr,
      PHS25_irq_mask(1 downto 0) => PHS25_irq_mask(1 downto 0),
      PHS25_pwm_val(9 downto 0) => PHS25_pwm_val(9 downto 0),
      PHS25_vld_out => PHS25_vld_out,
      PHS26_irq0_L2S => PHS26_irq0_L2S,
      PHS26_irq0_clr => PHS26_irq0_clr,
      PHS26_irq1_S2L => PHS26_irq1_S2L,
      PHS26_irq1_clr => PHS26_irq1_clr,
      PHS26_irq_mask(1 downto 0) => PHS26_irq_mask(1 downto 0),
      PHS26_pwm_val(9 downto 0) => PHS26_pwm_val(9 downto 0),
      PHS26_vld_out => PHS26_vld_out,
      PHS27_irq0_L2S => PHS27_irq0_L2S,
      PHS27_irq0_clr => PHS27_irq0_clr,
      PHS27_irq1_S2L => PHS27_irq1_S2L,
      PHS27_irq1_clr => PHS27_irq1_clr,
      PHS27_irq_mask(1 downto 0) => PHS27_irq_mask(1 downto 0),
      PHS27_pwm_val(9 downto 0) => PHS27_pwm_val(9 downto 0),
      PHS27_vld_out => PHS27_vld_out,
      PHS28_irq0_L2S => PHS28_irq0_L2S,
      PHS28_irq0_clr => PHS28_irq0_clr,
      PHS28_irq1_S2L => PHS28_irq1_S2L,
      PHS28_irq1_clr => PHS28_irq1_clr,
      PHS28_irq_mask(1 downto 0) => PHS28_irq_mask(1 downto 0),
      PHS28_pwm_val(9 downto 0) => PHS28_pwm_val(9 downto 0),
      PHS28_vld_out => PHS28_vld_out,
      PHS29_irq0_L2S => PHS29_irq0_L2S,
      PHS29_irq0_clr => PHS29_irq0_clr,
      PHS29_irq1_S2L => PHS29_irq1_S2L,
      PHS29_irq1_clr => PHS29_irq1_clr,
      PHS29_irq_mask(1 downto 0) => PHS29_irq_mask(1 downto 0),
      PHS29_pwm_val(9 downto 0) => PHS29_pwm_val(9 downto 0),
      PHS29_vld_out => PHS29_vld_out,
      PHS2_irq0_L2S => PHS2_irq0_L2S,
      PHS2_irq0_clr => PHS2_irq0_clr,
      PHS2_irq1_S2L => PHS2_irq1_S2L,
      PHS2_irq1_clr => PHS2_irq1_clr,
      PHS2_irq_mask(1 downto 0) => PHS2_irq_mask(1 downto 0),
      PHS2_pwm_val(9 downto 0) => PHS2_pwm_val(9 downto 0),
      PHS2_vld_out => PHS2_vld_out,
      PHS30_irq0_L2S => PHS30_irq0_L2S,
      PHS30_irq0_clr => PHS30_irq0_clr,
      PHS30_irq1_S2L => PHS30_irq1_S2L,
      PHS30_irq1_clr => PHS30_irq1_clr,
      PHS30_irq_mask(1 downto 0) => PHS30_irq_mask(1 downto 0),
      PHS30_pwm_val(9 downto 0) => PHS30_pwm_val(9 downto 0),
      PHS30_vld_out => PHS30_vld_out,
      PHS31_irq0_L2S => PHS31_irq0_L2S,
      PHS31_irq0_clr => PHS31_irq0_clr,
      PHS31_irq1_S2L => PHS31_irq1_S2L,
      PHS31_irq1_clr => PHS31_irq1_clr,
      PHS31_irq_mask(1 downto 0) => PHS31_irq_mask(1 downto 0),
      PHS31_pwm_val(9 downto 0) => PHS31_pwm_val(9 downto 0),
      PHS31_vld_out => PHS31_vld_out,
      PHS32_irq0_L2S => PHS32_irq0_L2S,
      PHS32_irq0_clr => PHS32_irq0_clr,
      PHS32_irq1_S2L => PHS32_irq1_S2L,
      PHS32_irq1_clr => PHS32_irq1_clr,
      PHS32_irq_mask(1 downto 0) => PHS32_irq_mask(1 downto 0),
      PHS32_pwm_val(9 downto 0) => PHS32_pwm_val(9 downto 0),
      PHS32_vld_out => PHS32_vld_out,
      PHS33_irq0_L2S => PHS33_irq0_L2S,
      PHS33_irq0_clr => PHS33_irq0_clr,
      PHS33_irq1_S2L => PHS33_irq1_S2L,
      PHS33_irq1_clr => PHS33_irq1_clr,
      PHS33_irq_mask(1 downto 0) => PHS33_irq_mask(1 downto 0),
      PHS33_pwm_val(9 downto 0) => PHS33_pwm_val(9 downto 0),
      PHS33_vld_out => PHS33_vld_out,
      PHS34_irq0_L2S => PHS34_irq0_L2S,
      PHS34_irq0_clr => PHS34_irq0_clr,
      PHS34_irq1_S2L => PHS34_irq1_S2L,
      PHS34_irq1_clr => PHS34_irq1_clr,
      PHS34_irq_mask(1 downto 0) => PHS34_irq_mask(1 downto 0),
      PHS34_pwm_val(9 downto 0) => PHS34_pwm_val(9 downto 0),
      PHS34_vld_out => PHS34_vld_out,
      PHS35_irq0_L2S => PHS35_irq0_L2S,
      PHS35_irq0_clr => PHS35_irq0_clr,
      PHS35_irq1_S2L => PHS35_irq1_S2L,
      PHS35_irq1_clr => PHS35_irq1_clr,
      PHS35_irq_mask(1 downto 0) => PHS35_irq_mask(1 downto 0),
      PHS35_pwm_val(9 downto 0) => PHS35_pwm_val(9 downto 0),
      PHS35_vld_out => PHS35_vld_out,
      PHS36_irq0_L2S => PHS36_irq0_L2S,
      PHS36_irq0_clr => PHS36_irq0_clr,
      PHS36_irq1_S2L => PHS36_irq1_S2L,
      PHS36_irq1_clr => PHS36_irq1_clr,
      PHS36_irq_mask(1 downto 0) => PHS36_irq_mask(1 downto 0),
      PHS36_pwm_val(9 downto 0) => PHS36_pwm_val(9 downto 0),
      PHS36_vld_out => PHS36_vld_out,
      PHS37_irq0_L2S => PHS37_irq0_L2S,
      PHS37_irq0_clr => PHS37_irq0_clr,
      PHS37_irq1_S2L => PHS37_irq1_S2L,
      PHS37_irq1_clr => PHS37_irq1_clr,
      PHS37_irq_mask(1 downto 0) => PHS37_irq_mask(1 downto 0),
      PHS37_pwm_val(9 downto 0) => PHS37_pwm_val(9 downto 0),
      PHS37_vld_out => PHS37_vld_out,
      PHS38_irq0_L2S => PHS38_irq0_L2S,
      PHS38_irq0_clr => PHS38_irq0_clr,
      PHS38_irq1_S2L => PHS38_irq1_S2L,
      PHS38_irq1_clr => PHS38_irq1_clr,
      PHS38_irq_mask(1 downto 0) => PHS38_irq_mask(1 downto 0),
      PHS38_pwm_val(9 downto 0) => PHS38_pwm_val(9 downto 0),
      PHS38_vld_out => PHS38_vld_out,
      PHS39_irq0_L2S => PHS39_irq0_L2S,
      PHS39_irq0_clr => PHS39_irq0_clr,
      PHS39_irq1_S2L => PHS39_irq1_S2L,
      PHS39_irq1_clr => PHS39_irq1_clr,
      PHS39_irq_mask(1 downto 0) => PHS39_irq_mask(1 downto 0),
      PHS39_pwm_val(9 downto 0) => PHS39_pwm_val(9 downto 0),
      PHS39_vld_out => PHS39_vld_out,
      PHS3_irq0_L2S => PHS3_irq0_L2S,
      PHS3_irq0_clr => PHS3_irq0_clr,
      PHS3_irq1_S2L => PHS3_irq1_S2L,
      PHS3_irq1_clr => PHS3_irq1_clr,
      PHS3_irq_mask(1 downto 0) => PHS3_irq_mask(1 downto 0),
      PHS3_pwm_val(9 downto 0) => PHS3_pwm_val(9 downto 0),
      PHS3_vld_out => PHS3_vld_out,
      PHS40_irq0_L2S => PHS40_irq0_L2S,
      PHS40_irq0_clr => PHS40_irq0_clr,
      PHS40_irq1_S2L => PHS40_irq1_S2L,
      PHS40_irq1_clr => PHS40_irq1_clr,
      PHS40_irq_mask(1 downto 0) => PHS40_irq_mask(1 downto 0),
      PHS40_pwm_val(9 downto 0) => PHS40_pwm_val(9 downto 0),
      PHS40_vld_out => PHS40_vld_out,
      PHS41_irq0_L2S => PHS41_irq0_L2S,
      PHS41_irq0_clr => PHS41_irq0_clr,
      PHS41_irq1_S2L => PHS41_irq1_S2L,
      PHS41_irq1_clr => PHS41_irq1_clr,
      PHS41_irq_mask(1 downto 0) => PHS41_irq_mask(1 downto 0),
      PHS41_pwm_val(9 downto 0) => PHS41_pwm_val(9 downto 0),
      PHS41_vld_out => PHS41_vld_out,
      PHS42_irq0_L2S => PHS42_irq0_L2S,
      PHS42_irq0_clr => PHS42_irq0_clr,
      PHS42_irq1_S2L => PHS42_irq1_S2L,
      PHS42_irq1_clr => PHS42_irq1_clr,
      PHS42_irq_mask(1 downto 0) => PHS42_irq_mask(1 downto 0),
      PHS42_pwm_val(9 downto 0) => PHS42_pwm_val(9 downto 0),
      PHS42_vld_out => PHS42_vld_out,
      PHS43_irq0_L2S => PHS43_irq0_L2S,
      PHS43_irq0_clr => PHS43_irq0_clr,
      PHS43_irq1_S2L => PHS43_irq1_S2L,
      PHS43_irq1_clr => PHS43_irq1_clr,
      PHS43_irq_mask(1 downto 0) => PHS43_irq_mask(1 downto 0),
      PHS43_pwm_val(9 downto 0) => PHS43_pwm_val(9 downto 0),
      PHS43_vld_out => PHS43_vld_out,
      PHS44_irq0_L2S => PHS44_irq0_L2S,
      PHS44_irq0_clr => PHS44_irq0_clr,
      PHS44_irq1_S2L => PHS44_irq1_S2L,
      PHS44_irq1_clr => PHS44_irq1_clr,
      PHS44_irq_mask(1 downto 0) => PHS44_irq_mask(1 downto 0),
      PHS44_pwm_val(9 downto 0) => PHS44_pwm_val(9 downto 0),
      PHS44_vld_out => PHS44_vld_out,
      PHS45_irq0_L2S => PHS45_irq0_L2S,
      PHS45_irq0_clr => PHS45_irq0_clr,
      PHS45_irq1_S2L => PHS45_irq1_S2L,
      PHS45_irq1_clr => PHS45_irq1_clr,
      PHS45_irq_mask(1 downto 0) => PHS45_irq_mask(1 downto 0),
      PHS45_pwm_val(9 downto 0) => PHS45_pwm_val(9 downto 0),
      PHS45_vld_out => PHS45_vld_out,
      PHS46_irq0_L2S => PHS46_irq0_L2S,
      PHS46_irq0_clr => PHS46_irq0_clr,
      PHS46_irq1_S2L => PHS46_irq1_S2L,
      PHS46_irq1_clr => PHS46_irq1_clr,
      PHS46_irq_mask(1 downto 0) => PHS46_irq_mask(1 downto 0),
      PHS46_pwm_val(9 downto 0) => PHS46_pwm_val(9 downto 0),
      PHS46_vld_out => PHS46_vld_out,
      PHS47_irq0_L2S => PHS47_irq0_L2S,
      PHS47_irq0_clr => PHS47_irq0_clr,
      PHS47_irq1_S2L => PHS47_irq1_S2L,
      PHS47_irq1_clr => PHS47_irq1_clr,
      PHS47_irq_mask(1 downto 0) => PHS47_irq_mask(1 downto 0),
      PHS47_pwm_val(9 downto 0) => PHS47_pwm_val(9 downto 0),
      PHS47_vld_out => PHS47_vld_out,
      PHS48_irq0_L2S => PHS48_irq0_L2S,
      PHS48_irq0_clr => PHS48_irq0_clr,
      PHS48_irq1_S2L => PHS48_irq1_S2L,
      PHS48_irq1_clr => PHS48_irq1_clr,
      PHS48_irq_mask(1 downto 0) => PHS48_irq_mask(1 downto 0),
      PHS48_pwm_val(9 downto 0) => PHS48_pwm_val(9 downto 0),
      PHS48_vld_out => PHS48_vld_out,
      PHS49_irq0_L2S => PHS49_irq0_L2S,
      PHS49_irq0_clr => PHS49_irq0_clr,
      PHS49_irq1_S2L => PHS49_irq1_S2L,
      PHS49_irq1_clr => PHS49_irq1_clr,
      PHS49_irq_mask(1 downto 0) => PHS49_irq_mask(1 downto 0),
      PHS49_pwm_val(9 downto 0) => PHS49_pwm_val(9 downto 0),
      PHS49_vld_out => PHS49_vld_out,
      PHS4_irq0_L2S => PHS4_irq0_L2S,
      PHS4_irq0_clr => PHS4_irq0_clr,
      PHS4_irq1_S2L => PHS4_irq1_S2L,
      PHS4_irq1_clr => PHS4_irq1_clr,
      PHS4_irq_mask(1 downto 0) => PHS4_irq_mask(1 downto 0),
      PHS4_pwm_val(9 downto 0) => PHS4_pwm_val(9 downto 0),
      PHS4_vld_out => PHS4_vld_out,
      PHS5_irq0_L2S => PHS5_irq0_L2S,
      PHS5_irq0_clr => PHS5_irq0_clr,
      PHS5_irq1_S2L => PHS5_irq1_S2L,
      PHS5_irq1_clr => PHS5_irq1_clr,
      PHS5_irq_mask(1 downto 0) => PHS5_irq_mask(1 downto 0),
      PHS5_pwm_val(9 downto 0) => PHS5_pwm_val(9 downto 0),
      PHS5_vld_out => PHS5_vld_out,
      PHS6_irq0_L2S => PHS6_irq0_L2S,
      PHS6_irq0_clr => PHS6_irq0_clr,
      PHS6_irq1_S2L => PHS6_irq1_S2L,
      PHS6_irq1_clr => PHS6_irq1_clr,
      PHS6_irq_mask(1 downto 0) => PHS6_irq_mask(1 downto 0),
      PHS6_pwm_val(9 downto 0) => PHS6_pwm_val(9 downto 0),
      PHS6_vld_out => PHS6_vld_out,
      PHS7_irq0_L2S => PHS7_irq0_L2S,
      PHS7_irq0_clr => PHS7_irq0_clr,
      PHS7_irq1_S2L => PHS7_irq1_S2L,
      PHS7_irq1_clr => PHS7_irq1_clr,
      PHS7_irq_mask(1 downto 0) => PHS7_irq_mask(1 downto 0),
      PHS7_pwm_val(9 downto 0) => PHS7_pwm_val(9 downto 0),
      PHS7_vld_out => PHS7_vld_out,
      PHS8_irq0_L2S => PHS8_irq0_L2S,
      PHS8_irq0_clr => PHS8_irq0_clr,
      PHS8_irq1_S2L => PHS8_irq1_S2L,
      PHS8_irq1_clr => PHS8_irq1_clr,
      PHS8_irq_mask(1 downto 0) => PHS8_irq_mask(1 downto 0),
      PHS8_pwm_val(9 downto 0) => PHS8_pwm_val(9 downto 0),
      PHS8_vld_out => PHS8_vld_out,
      PHS9_irq0_L2S => PHS9_irq0_L2S,
      PHS9_irq0_clr => PHS9_irq0_clr,
      PHS9_irq1_S2L => PHS9_irq1_S2L,
      PHS9_irq1_clr => PHS9_irq1_clr,
      PHS9_irq_mask(1 downto 0) => PHS9_irq_mask(1 downto 0),
      PHS9_pwm_val(9 downto 0) => PHS9_pwm_val(9 downto 0),
      PHS9_vld_out => PHS9_vld_out,
      PHS_irq_L2S_0 => PHS_irq_L2S_0,
      PHS_irq_L2S_1 => PHS_irq_L2S_1,
      PHS_irq_S2L_0 => PHS_irq_S2L_0,
      PHS_irq_S2L_1 => PHS_irq_S2L_1,
      PHS_irqs_L2S_0(24 downto 0) => PHS_irqs_L2S_0(24 downto 0),
      PHS_irqs_L2S_1(24 downto 0) => PHS_irqs_L2S_1(24 downto 0),
      PHS_irqs_S2L_0(24 downto 0) => PHS_irqs_S2L_0(24 downto 0),
      PHS_irqs_S2L_1(24 downto 0) => PHS_irqs_S2L_1(24 downto 0),
      aw_en_reg_0 => PHS_regs_v1_0_S00_AXI_inst_n_58,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_arready_reg_0 => \^s_axi_arready\,
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => \^s_axi_wready\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(7 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(24 downto 0) => s00_axi_rdata(24 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(24 downto 0) => s00_axi_wdata(24 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      slv_reg1 => slv_reg1,
      slv_reg101 => slv_reg101,
      \slv_reg101_reg[0]_0\ => \slv_reg101[0]_i_1_n_0\,
      slv_reg105 => slv_reg105,
      \slv_reg105_reg[0]_0\ => \slv_reg105[0]_i_1_n_0\,
      slv_reg109 => slv_reg109,
      \slv_reg109_reg[0]_0\ => \slv_reg109[0]_i_1_n_0\,
      slv_reg113 => slv_reg113,
      \slv_reg113_reg[0]_0\ => \slv_reg113[0]_i_1_n_0\,
      slv_reg117 => slv_reg117,
      \slv_reg117_reg[0]_0\ => \slv_reg117[0]_i_1_n_0\,
      slv_reg121 => slv_reg121,
      \slv_reg121_reg[0]_0\ => \slv_reg121[0]_i_1_n_0\,
      slv_reg125 => slv_reg125,
      \slv_reg125_reg[0]_0\ => \slv_reg125[0]_i_1_n_0\,
      slv_reg129 => slv_reg129,
      \slv_reg129_reg[0]_0\ => \slv_reg129[0]_i_1_n_0\,
      slv_reg13 => slv_reg13,
      slv_reg133 => slv_reg133,
      \slv_reg133_reg[0]_0\ => \slv_reg133[0]_i_1_n_0\,
      slv_reg137 => slv_reg137,
      \slv_reg137_reg[0]_0\ => \slv_reg137[0]_i_1_n_0\,
      \slv_reg13_reg[0]_0\ => \slv_reg13[0]_i_1_n_0\,
      slv_reg141 => slv_reg141,
      \slv_reg141_reg[0]_0\ => \slv_reg141[0]_i_1_n_0\,
      slv_reg145 => slv_reg145,
      \slv_reg145_reg[0]_0\ => \slv_reg145[0]_i_1_n_0\,
      slv_reg149 => slv_reg149,
      \slv_reg149_reg[0]_0\ => \slv_reg149[0]_i_1_n_0\,
      slv_reg153 => slv_reg153,
      \slv_reg153_reg[0]_0\ => \slv_reg153[0]_i_1_n_0\,
      slv_reg157 => slv_reg157,
      \slv_reg157_reg[0]_0\ => \slv_reg157[0]_i_1_n_0\,
      slv_reg161 => slv_reg161,
      \slv_reg161_reg[0]_0\ => \slv_reg161[0]_i_1_n_0\,
      slv_reg165 => slv_reg165,
      \slv_reg165_reg[0]_0\ => \slv_reg165[0]_i_1_n_0\,
      slv_reg169 => slv_reg169,
      \slv_reg169_reg[0]_0\ => \slv_reg169[0]_i_1_n_0\,
      slv_reg17 => slv_reg17,
      slv_reg173 => slv_reg173,
      \slv_reg173_reg[0]_0\ => \slv_reg173[0]_i_1_n_0\,
      slv_reg177 => slv_reg177,
      \slv_reg177_reg[0]_0\ => \slv_reg177[0]_i_1_n_0\,
      \slv_reg17_reg[0]_0\ => \slv_reg17[0]_i_1_n_0\,
      slv_reg181 => slv_reg181,
      \slv_reg181_reg[0]_0\ => \slv_reg181[0]_i_1_n_0\,
      slv_reg185 => slv_reg185,
      \slv_reg185_reg[0]_0\ => \slv_reg185[0]_i_1_n_0\,
      slv_reg189 => slv_reg189,
      \slv_reg189_reg[0]_0\ => \slv_reg189[0]_i_1_n_0\,
      slv_reg193 => slv_reg193,
      \slv_reg193_reg[0]_0\ => \slv_reg193[0]_i_1_n_0\,
      slv_reg197 => slv_reg197,
      \slv_reg197_reg[0]_0\ => \slv_reg197[0]_i_1_n_0\,
      \slv_reg1_reg[0]_0\ => \slv_reg1[0]_i_1_n_0\,
      slv_reg21 => slv_reg21,
      \slv_reg21_reg[0]_0\ => \slv_reg21[0]_i_1_n_0\,
      slv_reg25 => slv_reg25,
      \slv_reg25_reg[0]_0\ => \slv_reg25[0]_i_1_n_0\,
      slv_reg29 => slv_reg29,
      \slv_reg29_reg[0]_0\ => \slv_reg29[0]_i_1_n_0\,
      slv_reg33 => slv_reg33,
      \slv_reg33_reg[0]_0\ => \slv_reg33[0]_i_1_n_0\,
      slv_reg37 => slv_reg37,
      \slv_reg37_reg[0]_0\ => \slv_reg37[0]_i_1_n_0\,
      slv_reg41 => slv_reg41,
      \slv_reg41_reg[0]_0\ => \slv_reg41[0]_i_1_n_0\,
      slv_reg45 => slv_reg45,
      \slv_reg45_reg[0]_0\ => \slv_reg45[0]_i_1_n_0\,
      slv_reg49 => slv_reg49,
      \slv_reg49_reg[0]_0\ => \slv_reg49[0]_i_1_n_0\,
      slv_reg5 => slv_reg5,
      slv_reg53 => slv_reg53,
      \slv_reg53_reg[0]_0\ => \slv_reg53[0]_i_1_n_0\,
      slv_reg57 => slv_reg57,
      \slv_reg57_reg[0]_0\ => \slv_reg57[0]_i_1_n_0\,
      \slv_reg5_reg[0]_0\ => \slv_reg5[0]_i_1_n_0\,
      slv_reg61 => slv_reg61,
      \slv_reg61_reg[0]_0\ => \slv_reg61[0]_i_1_n_0\,
      slv_reg65 => slv_reg65,
      \slv_reg65_reg[0]_0\ => \slv_reg65[0]_i_1_n_0\,
      slv_reg69 => slv_reg69,
      \slv_reg69_reg[0]_0\ => \slv_reg69[0]_i_1_n_0\,
      slv_reg73 => slv_reg73,
      \slv_reg73_reg[0]_0\ => \slv_reg73[0]_i_1_n_0\,
      slv_reg77 => slv_reg77,
      \slv_reg77_reg[0]_0\ => \slv_reg77[0]_i_1_n_0\,
      slv_reg81 => slv_reg81,
      \slv_reg81_reg[0]_0\ => \slv_reg81[0]_i_1_n_0\,
      slv_reg85 => slv_reg85,
      \slv_reg85_reg[0]_0\ => \slv_reg85[0]_i_1_n_0\,
      slv_reg89 => slv_reg89,
      \slv_reg89_reg[0]_0\ => \slv_reg89[0]_i_1_n_0\,
      slv_reg9 => slv_reg9,
      slv_reg93 => slv_reg93,
      \slv_reg93_reg[0]_0\ => \slv_reg93[0]_i_1_n_0\,
      slv_reg97 => slv_reg97,
      \slv_reg97_reg[0]_0\ => \slv_reg97[0]_i_1_n_0\,
      \slv_reg9_reg[0]_0\ => \slv_reg9[0]_i_1_n_0\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FF070F070F070"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => PHS_regs_v1_0_S00_AXI_inst_n_58,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
\slv_reg101[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS25_status,
      I1 => PHS25_vld_in,
      I2 => slv_reg101,
      O => \slv_reg101[0]_i_1_n_0\
    );
\slv_reg105[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS26_status,
      I1 => PHS26_vld_in,
      I2 => slv_reg105,
      O => \slv_reg105[0]_i_1_n_0\
    );
\slv_reg109[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS27_status,
      I1 => PHS27_vld_in,
      I2 => slv_reg109,
      O => \slv_reg109[0]_i_1_n_0\
    );
\slv_reg113[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS28_status,
      I1 => PHS28_vld_in,
      I2 => slv_reg113,
      O => \slv_reg113[0]_i_1_n_0\
    );
\slv_reg117[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS29_status,
      I1 => PHS29_vld_in,
      I2 => slv_reg117,
      O => \slv_reg117[0]_i_1_n_0\
    );
\slv_reg121[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS30_status,
      I1 => PHS30_vld_in,
      I2 => slv_reg121,
      O => \slv_reg121[0]_i_1_n_0\
    );
\slv_reg125[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS31_status,
      I1 => PHS31_vld_in,
      I2 => slv_reg125,
      O => \slv_reg125[0]_i_1_n_0\
    );
\slv_reg129[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS32_status,
      I1 => PHS32_vld_in,
      I2 => slv_reg129,
      O => \slv_reg129[0]_i_1_n_0\
    );
\slv_reg133[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS33_status,
      I1 => PHS33_vld_in,
      I2 => slv_reg133,
      O => \slv_reg133[0]_i_1_n_0\
    );
\slv_reg137[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS34_status,
      I1 => PHS34_vld_in,
      I2 => slv_reg137,
      O => \slv_reg137[0]_i_1_n_0\
    );
\slv_reg13[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS3_status,
      I1 => PHS3_vld_in,
      I2 => slv_reg13,
      O => \slv_reg13[0]_i_1_n_0\
    );
\slv_reg141[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS35_status,
      I1 => PHS35_vld_in,
      I2 => slv_reg141,
      O => \slv_reg141[0]_i_1_n_0\
    );
\slv_reg145[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS36_status,
      I1 => PHS36_vld_in,
      I2 => slv_reg145,
      O => \slv_reg145[0]_i_1_n_0\
    );
\slv_reg149[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS37_status,
      I1 => PHS37_vld_in,
      I2 => slv_reg149,
      O => \slv_reg149[0]_i_1_n_0\
    );
\slv_reg153[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS38_status,
      I1 => PHS38_vld_in,
      I2 => slv_reg153,
      O => \slv_reg153[0]_i_1_n_0\
    );
\slv_reg157[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS39_status,
      I1 => PHS39_vld_in,
      I2 => slv_reg157,
      O => \slv_reg157[0]_i_1_n_0\
    );
\slv_reg161[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS40_status,
      I1 => PHS40_vld_in,
      I2 => slv_reg161,
      O => \slv_reg161[0]_i_1_n_0\
    );
\slv_reg165[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS41_status,
      I1 => PHS41_vld_in,
      I2 => slv_reg165,
      O => \slv_reg165[0]_i_1_n_0\
    );
\slv_reg169[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS42_status,
      I1 => PHS42_vld_in,
      I2 => slv_reg169,
      O => \slv_reg169[0]_i_1_n_0\
    );
\slv_reg173[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS43_status,
      I1 => PHS43_vld_in,
      I2 => slv_reg173,
      O => \slv_reg173[0]_i_1_n_0\
    );
\slv_reg177[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS44_status,
      I1 => PHS44_vld_in,
      I2 => slv_reg177,
      O => \slv_reg177[0]_i_1_n_0\
    );
\slv_reg17[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS4_status,
      I1 => PHS4_vld_in,
      I2 => slv_reg17,
      O => \slv_reg17[0]_i_1_n_0\
    );
\slv_reg181[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS45_status,
      I1 => PHS45_vld_in,
      I2 => slv_reg181,
      O => \slv_reg181[0]_i_1_n_0\
    );
\slv_reg185[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS46_status,
      I1 => PHS46_vld_in,
      I2 => slv_reg185,
      O => \slv_reg185[0]_i_1_n_0\
    );
\slv_reg189[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS47_status,
      I1 => PHS47_vld_in,
      I2 => slv_reg189,
      O => \slv_reg189[0]_i_1_n_0\
    );
\slv_reg193[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS48_status,
      I1 => PHS48_vld_in,
      I2 => slv_reg193,
      O => \slv_reg193[0]_i_1_n_0\
    );
\slv_reg197[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS49_status,
      I1 => PHS49_vld_in,
      I2 => slv_reg197,
      O => \slv_reg197[0]_i_1_n_0\
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS0_status,
      I1 => PHS0_vld_in,
      I2 => slv_reg1,
      O => \slv_reg1[0]_i_1_n_0\
    );
\slv_reg21[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS5_status,
      I1 => PHS5_vld_in,
      I2 => slv_reg21,
      O => \slv_reg21[0]_i_1_n_0\
    );
\slv_reg25[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS6_status,
      I1 => PHS6_vld_in,
      I2 => slv_reg25,
      O => \slv_reg25[0]_i_1_n_0\
    );
\slv_reg29[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS7_status,
      I1 => PHS7_vld_in,
      I2 => slv_reg29,
      O => \slv_reg29[0]_i_1_n_0\
    );
\slv_reg33[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS8_status,
      I1 => PHS8_vld_in,
      I2 => slv_reg33,
      O => \slv_reg33[0]_i_1_n_0\
    );
\slv_reg37[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS9_status,
      I1 => PHS9_vld_in,
      I2 => slv_reg37,
      O => \slv_reg37[0]_i_1_n_0\
    );
\slv_reg41[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS10_status,
      I1 => PHS10_vld_in,
      I2 => slv_reg41,
      O => \slv_reg41[0]_i_1_n_0\
    );
\slv_reg45[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS11_status,
      I1 => PHS11_vld_in,
      I2 => slv_reg45,
      O => \slv_reg45[0]_i_1_n_0\
    );
\slv_reg49[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS12_status,
      I1 => PHS12_vld_in,
      I2 => slv_reg49,
      O => \slv_reg49[0]_i_1_n_0\
    );
\slv_reg53[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS13_status,
      I1 => PHS13_vld_in,
      I2 => slv_reg53,
      O => \slv_reg53[0]_i_1_n_0\
    );
\slv_reg57[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS14_status,
      I1 => PHS14_vld_in,
      I2 => slv_reg57,
      O => \slv_reg57[0]_i_1_n_0\
    );
\slv_reg5[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS1_status,
      I1 => PHS1_vld_in,
      I2 => slv_reg5,
      O => \slv_reg5[0]_i_1_n_0\
    );
\slv_reg61[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS15_status,
      I1 => PHS15_vld_in,
      I2 => slv_reg61,
      O => \slv_reg61[0]_i_1_n_0\
    );
\slv_reg65[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS16_status,
      I1 => PHS16_vld_in,
      I2 => slv_reg65,
      O => \slv_reg65[0]_i_1_n_0\
    );
\slv_reg69[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS17_status,
      I1 => PHS17_vld_in,
      I2 => slv_reg69,
      O => \slv_reg69[0]_i_1_n_0\
    );
\slv_reg73[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS18_status,
      I1 => PHS18_vld_in,
      I2 => slv_reg73,
      O => \slv_reg73[0]_i_1_n_0\
    );
\slv_reg77[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS19_status,
      I1 => PHS19_vld_in,
      I2 => slv_reg77,
      O => \slv_reg77[0]_i_1_n_0\
    );
\slv_reg81[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS20_status,
      I1 => PHS20_vld_in,
      I2 => slv_reg81,
      O => \slv_reg81[0]_i_1_n_0\
    );
\slv_reg85[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS21_status,
      I1 => PHS21_vld_in,
      I2 => slv_reg85,
      O => \slv_reg85[0]_i_1_n_0\
    );
\slv_reg89[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS22_status,
      I1 => PHS22_vld_in,
      I2 => slv_reg89,
      O => \slv_reg89[0]_i_1_n_0\
    );
\slv_reg93[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS23_status,
      I1 => PHS23_vld_in,
      I2 => slv_reg93,
      O => \slv_reg93[0]_i_1_n_0\
    );
\slv_reg97[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS24_status,
      I1 => PHS24_vld_in,
      I2 => slv_reg97,
      O => \slv_reg97[0]_i_1_n_0\
    );
\slv_reg9[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => PHS2_status,
      I1 => PHS2_vld_in,
      I2 => slv_reg9,
      O => \slv_reg9[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_PHS_regs_0_0,PHS_regs_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PHS_regs_v1_0,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of PHS0_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq0_L2S";
  attribute x_interface_info of PHS0_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq0_L2S_clr";
  attribute x_interface_info of PHS0_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq1_S2L";
  attribute x_interface_info of PHS0_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq1_S2L_clr";
  attribute x_interface_info of PHS0_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs status";
  attribute x_interface_info of PHS0_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs valid_in";
  attribute x_interface_info of PHS0_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs vld_out";
  attribute x_interface_info of PHS10_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq0_L2S";
  attribute x_interface_info of PHS10_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq0_L2S_clr";
  attribute x_interface_info of PHS10_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq1_S2L";
  attribute x_interface_info of PHS10_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq1_S2L_clr";
  attribute x_interface_info of PHS10_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs status";
  attribute x_interface_info of PHS10_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs valid_in";
  attribute x_interface_info of PHS10_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs vld_out";
  attribute x_interface_info of PHS11_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq0_L2S";
  attribute x_interface_info of PHS11_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq0_L2S_clr";
  attribute x_interface_info of PHS11_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq1_S2L";
  attribute x_interface_info of PHS11_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq1_S2L_clr";
  attribute x_interface_info of PHS11_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs status";
  attribute x_interface_info of PHS11_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs valid_in";
  attribute x_interface_info of PHS11_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs vld_out";
  attribute x_interface_info of PHS12_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq0_L2S";
  attribute x_interface_info of PHS12_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq0_L2S_clr";
  attribute x_interface_info of PHS12_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq1_S2L";
  attribute x_interface_info of PHS12_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq1_S2L_clr";
  attribute x_interface_info of PHS12_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs status";
  attribute x_interface_info of PHS12_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs valid_in";
  attribute x_interface_info of PHS12_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs vld_out";
  attribute x_interface_info of PHS13_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq0_L2S";
  attribute x_interface_info of PHS13_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq0_L2S_clr";
  attribute x_interface_info of PHS13_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq1_S2L";
  attribute x_interface_info of PHS13_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq1_S2L_clr";
  attribute x_interface_info of PHS13_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs status";
  attribute x_interface_info of PHS13_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs valid_in";
  attribute x_interface_info of PHS13_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs vld_out";
  attribute x_interface_info of PHS14_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq0_L2S";
  attribute x_interface_info of PHS14_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq0_L2S_clr";
  attribute x_interface_info of PHS14_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq1_S2L";
  attribute x_interface_info of PHS14_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq1_S2L_clr";
  attribute x_interface_info of PHS14_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs status";
  attribute x_interface_info of PHS14_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs valid_in";
  attribute x_interface_info of PHS14_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs vld_out";
  attribute x_interface_info of PHS15_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq0_L2S";
  attribute x_interface_info of PHS15_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq0_L2S_clr";
  attribute x_interface_info of PHS15_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq1_S2L";
  attribute x_interface_info of PHS15_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq1_S2L_clr";
  attribute x_interface_info of PHS15_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs status";
  attribute x_interface_info of PHS15_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs valid_in";
  attribute x_interface_info of PHS15_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs vld_out";
  attribute x_interface_info of PHS16_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq0_L2S";
  attribute x_interface_info of PHS16_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq0_L2S_clr";
  attribute x_interface_info of PHS16_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq1_S2L";
  attribute x_interface_info of PHS16_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq1_S2L_clr";
  attribute x_interface_info of PHS16_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs status";
  attribute x_interface_info of PHS16_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs valid_in";
  attribute x_interface_info of PHS16_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs vld_out";
  attribute x_interface_info of PHS17_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq0_L2S";
  attribute x_interface_info of PHS17_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq0_L2S_clr";
  attribute x_interface_info of PHS17_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq1_S2L";
  attribute x_interface_info of PHS17_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq1_S2L_clr";
  attribute x_interface_info of PHS17_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs status";
  attribute x_interface_info of PHS17_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs valid_in";
  attribute x_interface_info of PHS17_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs vld_out";
  attribute x_interface_info of PHS18_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq0_L2S";
  attribute x_interface_info of PHS18_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq0_L2S_clr";
  attribute x_interface_info of PHS18_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq1_S2L";
  attribute x_interface_info of PHS18_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq1_S2L_clr";
  attribute x_interface_info of PHS18_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs status";
  attribute x_interface_info of PHS18_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs valid_in";
  attribute x_interface_info of PHS18_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs vld_out";
  attribute x_interface_info of PHS19_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq0_L2S";
  attribute x_interface_info of PHS19_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq0_L2S_clr";
  attribute x_interface_info of PHS19_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq1_S2L";
  attribute x_interface_info of PHS19_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq1_S2L_clr";
  attribute x_interface_info of PHS19_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs status";
  attribute x_interface_info of PHS19_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs valid_in";
  attribute x_interface_info of PHS19_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs vld_out";
  attribute x_interface_info of PHS1_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq0_L2S";
  attribute x_interface_info of PHS1_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq0_L2S_clr";
  attribute x_interface_info of PHS1_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq1_S2L";
  attribute x_interface_info of PHS1_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq1_S2L_clr";
  attribute x_interface_info of PHS1_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs status";
  attribute x_interface_info of PHS1_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs valid_in";
  attribute x_interface_info of PHS1_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs vld_out";
  attribute x_interface_info of PHS20_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq0_L2S";
  attribute x_interface_info of PHS20_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq0_L2S_clr";
  attribute x_interface_info of PHS20_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq1_S2L";
  attribute x_interface_info of PHS20_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq1_S2L_clr";
  attribute x_interface_info of PHS20_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs status";
  attribute x_interface_info of PHS20_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs valid_in";
  attribute x_interface_info of PHS20_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs vld_out";
  attribute x_interface_info of PHS21_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq0_L2S";
  attribute x_interface_info of PHS21_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq0_L2S_clr";
  attribute x_interface_info of PHS21_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq1_S2L";
  attribute x_interface_info of PHS21_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq1_S2L_clr";
  attribute x_interface_info of PHS21_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs status";
  attribute x_interface_info of PHS21_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs valid_in";
  attribute x_interface_info of PHS21_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs vld_out";
  attribute x_interface_info of PHS22_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq0_L2S";
  attribute x_interface_info of PHS22_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq0_L2S_clr";
  attribute x_interface_info of PHS22_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq1_S2L";
  attribute x_interface_info of PHS22_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq1_S2L_clr";
  attribute x_interface_info of PHS22_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs status";
  attribute x_interface_info of PHS22_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs valid_in";
  attribute x_interface_info of PHS22_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs vld_out";
  attribute x_interface_info of PHS23_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq0_L2S";
  attribute x_interface_info of PHS23_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq0_L2S_clr";
  attribute x_interface_info of PHS23_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq1_S2L";
  attribute x_interface_info of PHS23_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq1_S2L_clr";
  attribute x_interface_info of PHS23_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs status";
  attribute x_interface_info of PHS23_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs valid_in";
  attribute x_interface_info of PHS23_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs vld_out";
  attribute x_interface_info of PHS24_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq0_L2S";
  attribute x_interface_info of PHS24_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq0_L2S_clr";
  attribute x_interface_info of PHS24_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq1_S2L";
  attribute x_interface_info of PHS24_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq1_S2L_clr";
  attribute x_interface_info of PHS24_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs status";
  attribute x_interface_info of PHS24_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs valid_in";
  attribute x_interface_info of PHS24_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs vld_out";
  attribute x_interface_info of PHS25_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq0_L2S";
  attribute x_interface_info of PHS25_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq0_L2S_clr";
  attribute x_interface_info of PHS25_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq1_S2L";
  attribute x_interface_info of PHS25_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq1_S2L_clr";
  attribute x_interface_info of PHS25_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs status";
  attribute x_interface_info of PHS25_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs valid_in";
  attribute x_interface_info of PHS25_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs vld_out";
  attribute x_interface_info of PHS26_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq0_L2S";
  attribute x_interface_info of PHS26_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq0_L2S_clr";
  attribute x_interface_info of PHS26_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq1_S2L";
  attribute x_interface_info of PHS26_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq1_S2L_clr";
  attribute x_interface_info of PHS26_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs status";
  attribute x_interface_info of PHS26_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs valid_in";
  attribute x_interface_info of PHS26_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs vld_out";
  attribute x_interface_info of PHS27_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq0_L2S";
  attribute x_interface_info of PHS27_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq0_L2S_clr";
  attribute x_interface_info of PHS27_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq1_S2L";
  attribute x_interface_info of PHS27_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq1_S2L_clr";
  attribute x_interface_info of PHS27_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs status";
  attribute x_interface_info of PHS27_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs valid_in";
  attribute x_interface_info of PHS27_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs vld_out";
  attribute x_interface_info of PHS28_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq0_L2S";
  attribute x_interface_info of PHS28_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq0_L2S_clr";
  attribute x_interface_info of PHS28_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq1_S2L";
  attribute x_interface_info of PHS28_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq1_S2L_clr";
  attribute x_interface_info of PHS28_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs status";
  attribute x_interface_info of PHS28_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs valid_in";
  attribute x_interface_info of PHS28_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs vld_out";
  attribute x_interface_info of PHS29_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq0_L2S";
  attribute x_interface_info of PHS29_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq0_L2S_clr";
  attribute x_interface_info of PHS29_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq1_S2L";
  attribute x_interface_info of PHS29_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq1_S2L_clr";
  attribute x_interface_info of PHS29_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs status";
  attribute x_interface_info of PHS29_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs valid_in";
  attribute x_interface_info of PHS29_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs vld_out";
  attribute x_interface_info of PHS2_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq0_L2S";
  attribute x_interface_info of PHS2_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq0_L2S_clr";
  attribute x_interface_info of PHS2_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq1_S2L";
  attribute x_interface_info of PHS2_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq1_S2L_clr";
  attribute x_interface_info of PHS2_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs status";
  attribute x_interface_info of PHS2_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs valid_in";
  attribute x_interface_info of PHS2_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs vld_out";
  attribute x_interface_info of PHS30_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq0_L2S";
  attribute x_interface_info of PHS30_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq0_L2S_clr";
  attribute x_interface_info of PHS30_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq1_S2L";
  attribute x_interface_info of PHS30_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq1_S2L_clr";
  attribute x_interface_info of PHS30_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs status";
  attribute x_interface_info of PHS30_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs valid_in";
  attribute x_interface_info of PHS30_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs vld_out";
  attribute x_interface_info of PHS31_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq0_L2S";
  attribute x_interface_info of PHS31_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq0_L2S_clr";
  attribute x_interface_info of PHS31_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq1_S2L";
  attribute x_interface_info of PHS31_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq1_S2L_clr";
  attribute x_interface_info of PHS31_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs status";
  attribute x_interface_info of PHS31_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs valid_in";
  attribute x_interface_info of PHS31_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs vld_out";
  attribute x_interface_info of PHS32_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq0_L2S";
  attribute x_interface_info of PHS32_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq0_L2S_clr";
  attribute x_interface_info of PHS32_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq1_S2L";
  attribute x_interface_info of PHS32_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq1_S2L_clr";
  attribute x_interface_info of PHS32_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs status";
  attribute x_interface_info of PHS32_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs valid_in";
  attribute x_interface_info of PHS32_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs vld_out";
  attribute x_interface_info of PHS33_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq0_L2S";
  attribute x_interface_info of PHS33_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq0_L2S_clr";
  attribute x_interface_info of PHS33_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq1_S2L";
  attribute x_interface_info of PHS33_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq1_S2L_clr";
  attribute x_interface_info of PHS33_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs status";
  attribute x_interface_info of PHS33_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs valid_in";
  attribute x_interface_info of PHS33_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs vld_out";
  attribute x_interface_info of PHS34_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq0_L2S";
  attribute x_interface_info of PHS34_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq0_L2S_clr";
  attribute x_interface_info of PHS34_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq1_S2L";
  attribute x_interface_info of PHS34_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq1_S2L_clr";
  attribute x_interface_info of PHS34_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs status";
  attribute x_interface_info of PHS34_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs valid_in";
  attribute x_interface_info of PHS34_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs vld_out";
  attribute x_interface_info of PHS35_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq0_L2S";
  attribute x_interface_info of PHS35_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq0_L2S_clr";
  attribute x_interface_info of PHS35_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq1_S2L";
  attribute x_interface_info of PHS35_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq1_S2L_clr";
  attribute x_interface_info of PHS35_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs status";
  attribute x_interface_info of PHS35_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs valid_in";
  attribute x_interface_info of PHS35_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs vld_out";
  attribute x_interface_info of PHS36_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq0_L2S";
  attribute x_interface_info of PHS36_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq0_L2S_clr";
  attribute x_interface_info of PHS36_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq1_S2L";
  attribute x_interface_info of PHS36_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq1_S2L_clr";
  attribute x_interface_info of PHS36_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs status";
  attribute x_interface_info of PHS36_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs valid_in";
  attribute x_interface_info of PHS36_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs vld_out";
  attribute x_interface_info of PHS37_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq0_L2S";
  attribute x_interface_info of PHS37_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq0_L2S_clr";
  attribute x_interface_info of PHS37_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq1_S2L";
  attribute x_interface_info of PHS37_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq1_S2L_clr";
  attribute x_interface_info of PHS37_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs status";
  attribute x_interface_info of PHS37_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs valid_in";
  attribute x_interface_info of PHS37_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs vld_out";
  attribute x_interface_info of PHS38_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq0_L2S";
  attribute x_interface_info of PHS38_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq0_L2S_clr";
  attribute x_interface_info of PHS38_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq1_S2L";
  attribute x_interface_info of PHS38_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq1_S2L_clr";
  attribute x_interface_info of PHS38_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs status";
  attribute x_interface_info of PHS38_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs valid_in";
  attribute x_interface_info of PHS38_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs vld_out";
  attribute x_interface_info of PHS39_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq0_L2S";
  attribute x_interface_info of PHS39_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq0_L2S_clr";
  attribute x_interface_info of PHS39_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq1_S2L";
  attribute x_interface_info of PHS39_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq1_S2L_clr";
  attribute x_interface_info of PHS39_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs status";
  attribute x_interface_info of PHS39_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs valid_in";
  attribute x_interface_info of PHS39_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs vld_out";
  attribute x_interface_info of PHS3_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq0_L2S";
  attribute x_interface_info of PHS3_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq0_L2S_clr";
  attribute x_interface_info of PHS3_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq1_S2L";
  attribute x_interface_info of PHS3_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq1_S2L_clr";
  attribute x_interface_info of PHS3_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs status";
  attribute x_interface_info of PHS3_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs valid_in";
  attribute x_interface_info of PHS3_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs vld_out";
  attribute x_interface_info of PHS40_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq0_L2S";
  attribute x_interface_info of PHS40_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq0_L2S_clr";
  attribute x_interface_info of PHS40_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq1_S2L";
  attribute x_interface_info of PHS40_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq1_S2L_clr";
  attribute x_interface_info of PHS40_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs status";
  attribute x_interface_info of PHS40_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs valid_in";
  attribute x_interface_info of PHS40_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs vld_out";
  attribute x_interface_info of PHS41_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq0_L2S";
  attribute x_interface_info of PHS41_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq0_L2S_clr";
  attribute x_interface_info of PHS41_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq1_S2L";
  attribute x_interface_info of PHS41_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq1_S2L_clr";
  attribute x_interface_info of PHS41_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs status";
  attribute x_interface_info of PHS41_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs valid_in";
  attribute x_interface_info of PHS41_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs vld_out";
  attribute x_interface_info of PHS42_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq0_L2S";
  attribute x_interface_info of PHS42_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq0_L2S_clr";
  attribute x_interface_info of PHS42_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq1_S2L";
  attribute x_interface_info of PHS42_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq1_S2L_clr";
  attribute x_interface_info of PHS42_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs status";
  attribute x_interface_info of PHS42_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs valid_in";
  attribute x_interface_info of PHS42_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs vld_out";
  attribute x_interface_info of PHS43_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq0_L2S";
  attribute x_interface_info of PHS43_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq0_L2S_clr";
  attribute x_interface_info of PHS43_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq1_S2L";
  attribute x_interface_info of PHS43_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq1_S2L_clr";
  attribute x_interface_info of PHS43_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs status";
  attribute x_interface_info of PHS43_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs valid_in";
  attribute x_interface_info of PHS43_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs vld_out";
  attribute x_interface_info of PHS44_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq0_L2S";
  attribute x_interface_info of PHS44_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq0_L2S_clr";
  attribute x_interface_info of PHS44_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq1_S2L";
  attribute x_interface_info of PHS44_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq1_S2L_clr";
  attribute x_interface_info of PHS44_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs status";
  attribute x_interface_info of PHS44_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs valid_in";
  attribute x_interface_info of PHS44_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs vld_out";
  attribute x_interface_info of PHS45_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq0_L2S";
  attribute x_interface_info of PHS45_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq0_L2S_clr";
  attribute x_interface_info of PHS45_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq1_S2L";
  attribute x_interface_info of PHS45_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq1_S2L_clr";
  attribute x_interface_info of PHS45_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs status";
  attribute x_interface_info of PHS45_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs valid_in";
  attribute x_interface_info of PHS45_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs vld_out";
  attribute x_interface_info of PHS46_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq0_L2S";
  attribute x_interface_info of PHS46_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq0_L2S_clr";
  attribute x_interface_info of PHS46_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq1_S2L";
  attribute x_interface_info of PHS46_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq1_S2L_clr";
  attribute x_interface_info of PHS46_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs status";
  attribute x_interface_info of PHS46_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs valid_in";
  attribute x_interface_info of PHS46_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs vld_out";
  attribute x_interface_info of PHS47_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq0_L2S";
  attribute x_interface_info of PHS47_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq0_L2S_clr";
  attribute x_interface_info of PHS47_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq1_S2L";
  attribute x_interface_info of PHS47_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq1_S2L_clr";
  attribute x_interface_info of PHS47_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs status";
  attribute x_interface_info of PHS47_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs valid_in";
  attribute x_interface_info of PHS47_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs vld_out";
  attribute x_interface_info of PHS48_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq0_L2S";
  attribute x_interface_info of PHS48_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq0_L2S_clr";
  attribute x_interface_info of PHS48_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq1_S2L";
  attribute x_interface_info of PHS48_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq1_S2L_clr";
  attribute x_interface_info of PHS48_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs status";
  attribute x_interface_info of PHS48_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs valid_in";
  attribute x_interface_info of PHS48_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs vld_out";
  attribute x_interface_info of PHS49_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq0_L2S";
  attribute x_interface_info of PHS49_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq0_L2S_clr";
  attribute x_interface_info of PHS49_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq1_S2L";
  attribute x_interface_info of PHS49_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq1_S2L_clr";
  attribute x_interface_info of PHS49_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs status";
  attribute x_interface_info of PHS49_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs valid_in";
  attribute x_interface_info of PHS49_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs vld_out";
  attribute x_interface_info of PHS4_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq0_L2S";
  attribute x_interface_info of PHS4_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq0_L2S_clr";
  attribute x_interface_info of PHS4_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq1_S2L";
  attribute x_interface_info of PHS4_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq1_S2L_clr";
  attribute x_interface_info of PHS4_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs status";
  attribute x_interface_info of PHS4_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs valid_in";
  attribute x_interface_info of PHS4_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs vld_out";
  attribute x_interface_info of PHS5_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq0_L2S";
  attribute x_interface_info of PHS5_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq0_L2S_clr";
  attribute x_interface_info of PHS5_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq1_S2L";
  attribute x_interface_info of PHS5_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq1_S2L_clr";
  attribute x_interface_info of PHS5_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs status";
  attribute x_interface_info of PHS5_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs valid_in";
  attribute x_interface_info of PHS5_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs vld_out";
  attribute x_interface_info of PHS6_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq0_L2S";
  attribute x_interface_info of PHS6_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq0_L2S_clr";
  attribute x_interface_info of PHS6_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq1_S2L";
  attribute x_interface_info of PHS6_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq1_S2L_clr";
  attribute x_interface_info of PHS6_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs status";
  attribute x_interface_info of PHS6_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs valid_in";
  attribute x_interface_info of PHS6_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs vld_out";
  attribute x_interface_info of PHS7_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq0_L2S";
  attribute x_interface_info of PHS7_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq0_L2S_clr";
  attribute x_interface_info of PHS7_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq1_S2L";
  attribute x_interface_info of PHS7_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq1_S2L_clr";
  attribute x_interface_info of PHS7_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs status";
  attribute x_interface_info of PHS7_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs valid_in";
  attribute x_interface_info of PHS7_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs vld_out";
  attribute x_interface_info of PHS8_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq0_L2S";
  attribute x_interface_info of PHS8_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq0_L2S_clr";
  attribute x_interface_info of PHS8_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq1_S2L";
  attribute x_interface_info of PHS8_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq1_S2L_clr";
  attribute x_interface_info of PHS8_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs status";
  attribute x_interface_info of PHS8_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs valid_in";
  attribute x_interface_info of PHS8_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs vld_out";
  attribute x_interface_info of PHS9_irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq0_L2S";
  attribute x_interface_info of PHS9_irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq0_L2S_clr";
  attribute x_interface_info of PHS9_irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq1_S2L";
  attribute x_interface_info of PHS9_irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq1_S2L_clr";
  attribute x_interface_info of PHS9_status : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs status";
  attribute x_interface_info of PHS9_vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs valid_in";
  attribute x_interface_info of PHS9_vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs vld_out";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of PHS0_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq_mask";
  attribute x_interface_info of PHS0_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS0_regs pwm_val";
  attribute x_interface_info of PHS10_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq_mask";
  attribute x_interface_info of PHS10_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS10_regs pwm_val";
  attribute x_interface_info of PHS11_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq_mask";
  attribute x_interface_info of PHS11_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS11_regs pwm_val";
  attribute x_interface_info of PHS12_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq_mask";
  attribute x_interface_info of PHS12_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS12_regs pwm_val";
  attribute x_interface_info of PHS13_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq_mask";
  attribute x_interface_info of PHS13_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS13_regs pwm_val";
  attribute x_interface_info of PHS14_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq_mask";
  attribute x_interface_info of PHS14_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS14_regs pwm_val";
  attribute x_interface_info of PHS15_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq_mask";
  attribute x_interface_info of PHS15_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS15_regs pwm_val";
  attribute x_interface_info of PHS16_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq_mask";
  attribute x_interface_info of PHS16_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS16_regs pwm_val";
  attribute x_interface_info of PHS17_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq_mask";
  attribute x_interface_info of PHS17_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS17_regs pwm_val";
  attribute x_interface_info of PHS18_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq_mask";
  attribute x_interface_info of PHS18_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS18_regs pwm_val";
  attribute x_interface_info of PHS19_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq_mask";
  attribute x_interface_info of PHS19_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS19_regs pwm_val";
  attribute x_interface_info of PHS1_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq_mask";
  attribute x_interface_info of PHS1_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS1_regs pwm_val";
  attribute x_interface_info of PHS20_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq_mask";
  attribute x_interface_info of PHS20_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS20_regs pwm_val";
  attribute x_interface_info of PHS21_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq_mask";
  attribute x_interface_info of PHS21_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS21_regs pwm_val";
  attribute x_interface_info of PHS22_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq_mask";
  attribute x_interface_info of PHS22_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS22_regs pwm_val";
  attribute x_interface_info of PHS23_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq_mask";
  attribute x_interface_info of PHS23_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS23_regs pwm_val";
  attribute x_interface_info of PHS24_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq_mask";
  attribute x_interface_info of PHS24_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS24_regs pwm_val";
  attribute x_interface_info of PHS25_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq_mask";
  attribute x_interface_info of PHS25_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS25_regs pwm_val";
  attribute x_interface_info of PHS26_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq_mask";
  attribute x_interface_info of PHS26_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS26_regs pwm_val";
  attribute x_interface_info of PHS27_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq_mask";
  attribute x_interface_info of PHS27_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS27_regs pwm_val";
  attribute x_interface_info of PHS28_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq_mask";
  attribute x_interface_info of PHS28_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS28_regs pwm_val";
  attribute x_interface_info of PHS29_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq_mask";
  attribute x_interface_info of PHS29_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS29_regs pwm_val";
  attribute x_interface_info of PHS2_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq_mask";
  attribute x_interface_info of PHS2_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS2_regs pwm_val";
  attribute x_interface_info of PHS30_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq_mask";
  attribute x_interface_info of PHS30_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS30_regs pwm_val";
  attribute x_interface_info of PHS31_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq_mask";
  attribute x_interface_info of PHS31_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS31_regs pwm_val";
  attribute x_interface_info of PHS32_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq_mask";
  attribute x_interface_info of PHS32_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS32_regs pwm_val";
  attribute x_interface_info of PHS33_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq_mask";
  attribute x_interface_info of PHS33_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS33_regs pwm_val";
  attribute x_interface_info of PHS34_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq_mask";
  attribute x_interface_info of PHS34_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS34_regs pwm_val";
  attribute x_interface_info of PHS35_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq_mask";
  attribute x_interface_info of PHS35_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS35_regs pwm_val";
  attribute x_interface_info of PHS36_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq_mask";
  attribute x_interface_info of PHS36_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS36_regs pwm_val";
  attribute x_interface_info of PHS37_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq_mask";
  attribute x_interface_info of PHS37_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS37_regs pwm_val";
  attribute x_interface_info of PHS38_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq_mask";
  attribute x_interface_info of PHS38_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS38_regs pwm_val";
  attribute x_interface_info of PHS39_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq_mask";
  attribute x_interface_info of PHS39_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS39_regs pwm_val";
  attribute x_interface_info of PHS3_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq_mask";
  attribute x_interface_info of PHS3_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS3_regs pwm_val";
  attribute x_interface_info of PHS40_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq_mask";
  attribute x_interface_info of PHS40_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS40_regs pwm_val";
  attribute x_interface_info of PHS41_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq_mask";
  attribute x_interface_info of PHS41_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS41_regs pwm_val";
  attribute x_interface_info of PHS42_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq_mask";
  attribute x_interface_info of PHS42_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS42_regs pwm_val";
  attribute x_interface_info of PHS43_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq_mask";
  attribute x_interface_info of PHS43_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS43_regs pwm_val";
  attribute x_interface_info of PHS44_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq_mask";
  attribute x_interface_info of PHS44_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS44_regs pwm_val";
  attribute x_interface_info of PHS45_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq_mask";
  attribute x_interface_info of PHS45_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS45_regs pwm_val";
  attribute x_interface_info of PHS46_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq_mask";
  attribute x_interface_info of PHS46_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS46_regs pwm_val";
  attribute x_interface_info of PHS47_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq_mask";
  attribute x_interface_info of PHS47_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS47_regs pwm_val";
  attribute x_interface_info of PHS48_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq_mask";
  attribute x_interface_info of PHS48_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS48_regs pwm_val";
  attribute x_interface_info of PHS49_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq_mask";
  attribute x_interface_info of PHS49_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS49_regs pwm_val";
  attribute x_interface_info of PHS4_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq_mask";
  attribute x_interface_info of PHS4_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS4_regs pwm_val";
  attribute x_interface_info of PHS5_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq_mask";
  attribute x_interface_info of PHS5_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS5_regs pwm_val";
  attribute x_interface_info of PHS6_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq_mask";
  attribute x_interface_info of PHS6_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS6_regs pwm_val";
  attribute x_interface_info of PHS7_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq_mask";
  attribute x_interface_info of PHS7_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS7_regs pwm_val";
  attribute x_interface_info of PHS8_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq_mask";
  attribute x_interface_info of PHS8_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS8_regs pwm_val";
  attribute x_interface_info of PHS9_irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq_mask";
  attribute x_interface_info of PHS9_pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS9_regs pwm_val";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 208, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24 downto 0) <= \^s00_axi_rdata\(24 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0
     port map (
      PHS0_irq0_L2S => PHS0_irq0_L2S,
      PHS0_irq0_clr => PHS0_irq0_clr,
      PHS0_irq1_S2L => PHS0_irq1_S2L,
      PHS0_irq1_clr => PHS0_irq1_clr,
      PHS0_irq_mask(1 downto 0) => PHS0_irq_mask(1 downto 0),
      PHS0_pwm_val(9 downto 0) => PHS0_pwm_val(9 downto 0),
      PHS0_status => PHS0_status,
      PHS0_vld_in => PHS0_vld_in,
      PHS0_vld_out => PHS0_vld_out,
      PHS10_irq0_L2S => PHS10_irq0_L2S,
      PHS10_irq0_clr => PHS10_irq0_clr,
      PHS10_irq1_S2L => PHS10_irq1_S2L,
      PHS10_irq1_clr => PHS10_irq1_clr,
      PHS10_irq_mask(1 downto 0) => PHS10_irq_mask(1 downto 0),
      PHS10_pwm_val(9 downto 0) => PHS10_pwm_val(9 downto 0),
      PHS10_status => PHS10_status,
      PHS10_vld_in => PHS10_vld_in,
      PHS10_vld_out => PHS10_vld_out,
      PHS11_irq0_L2S => PHS11_irq0_L2S,
      PHS11_irq0_clr => PHS11_irq0_clr,
      PHS11_irq1_S2L => PHS11_irq1_S2L,
      PHS11_irq1_clr => PHS11_irq1_clr,
      PHS11_irq_mask(1 downto 0) => PHS11_irq_mask(1 downto 0),
      PHS11_pwm_val(9 downto 0) => PHS11_pwm_val(9 downto 0),
      PHS11_status => PHS11_status,
      PHS11_vld_in => PHS11_vld_in,
      PHS11_vld_out => PHS11_vld_out,
      PHS12_irq0_L2S => PHS12_irq0_L2S,
      PHS12_irq0_clr => PHS12_irq0_clr,
      PHS12_irq1_S2L => PHS12_irq1_S2L,
      PHS12_irq1_clr => PHS12_irq1_clr,
      PHS12_irq_mask(1 downto 0) => PHS12_irq_mask(1 downto 0),
      PHS12_pwm_val(9 downto 0) => PHS12_pwm_val(9 downto 0),
      PHS12_status => PHS12_status,
      PHS12_vld_in => PHS12_vld_in,
      PHS12_vld_out => PHS12_vld_out,
      PHS13_irq0_L2S => PHS13_irq0_L2S,
      PHS13_irq0_clr => PHS13_irq0_clr,
      PHS13_irq1_S2L => PHS13_irq1_S2L,
      PHS13_irq1_clr => PHS13_irq1_clr,
      PHS13_irq_mask(1 downto 0) => PHS13_irq_mask(1 downto 0),
      PHS13_pwm_val(9 downto 0) => PHS13_pwm_val(9 downto 0),
      PHS13_status => PHS13_status,
      PHS13_vld_in => PHS13_vld_in,
      PHS13_vld_out => PHS13_vld_out,
      PHS14_irq0_L2S => PHS14_irq0_L2S,
      PHS14_irq0_clr => PHS14_irq0_clr,
      PHS14_irq1_S2L => PHS14_irq1_S2L,
      PHS14_irq1_clr => PHS14_irq1_clr,
      PHS14_irq_mask(1 downto 0) => PHS14_irq_mask(1 downto 0),
      PHS14_pwm_val(9 downto 0) => PHS14_pwm_val(9 downto 0),
      PHS14_status => PHS14_status,
      PHS14_vld_in => PHS14_vld_in,
      PHS14_vld_out => PHS14_vld_out,
      PHS15_irq0_L2S => PHS15_irq0_L2S,
      PHS15_irq0_clr => PHS15_irq0_clr,
      PHS15_irq1_S2L => PHS15_irq1_S2L,
      PHS15_irq1_clr => PHS15_irq1_clr,
      PHS15_irq_mask(1 downto 0) => PHS15_irq_mask(1 downto 0),
      PHS15_pwm_val(9 downto 0) => PHS15_pwm_val(9 downto 0),
      PHS15_status => PHS15_status,
      PHS15_vld_in => PHS15_vld_in,
      PHS15_vld_out => PHS15_vld_out,
      PHS16_irq0_L2S => PHS16_irq0_L2S,
      PHS16_irq0_clr => PHS16_irq0_clr,
      PHS16_irq1_S2L => PHS16_irq1_S2L,
      PHS16_irq1_clr => PHS16_irq1_clr,
      PHS16_irq_mask(1 downto 0) => PHS16_irq_mask(1 downto 0),
      PHS16_pwm_val(9 downto 0) => PHS16_pwm_val(9 downto 0),
      PHS16_status => PHS16_status,
      PHS16_vld_in => PHS16_vld_in,
      PHS16_vld_out => PHS16_vld_out,
      PHS17_irq0_L2S => PHS17_irq0_L2S,
      PHS17_irq0_clr => PHS17_irq0_clr,
      PHS17_irq1_S2L => PHS17_irq1_S2L,
      PHS17_irq1_clr => PHS17_irq1_clr,
      PHS17_irq_mask(1 downto 0) => PHS17_irq_mask(1 downto 0),
      PHS17_pwm_val(9 downto 0) => PHS17_pwm_val(9 downto 0),
      PHS17_status => PHS17_status,
      PHS17_vld_in => PHS17_vld_in,
      PHS17_vld_out => PHS17_vld_out,
      PHS18_irq0_L2S => PHS18_irq0_L2S,
      PHS18_irq0_clr => PHS18_irq0_clr,
      PHS18_irq1_S2L => PHS18_irq1_S2L,
      PHS18_irq1_clr => PHS18_irq1_clr,
      PHS18_irq_mask(1 downto 0) => PHS18_irq_mask(1 downto 0),
      PHS18_pwm_val(9 downto 0) => PHS18_pwm_val(9 downto 0),
      PHS18_status => PHS18_status,
      PHS18_vld_in => PHS18_vld_in,
      PHS18_vld_out => PHS18_vld_out,
      PHS19_irq0_L2S => PHS19_irq0_L2S,
      PHS19_irq0_clr => PHS19_irq0_clr,
      PHS19_irq1_S2L => PHS19_irq1_S2L,
      PHS19_irq1_clr => PHS19_irq1_clr,
      PHS19_irq_mask(1 downto 0) => PHS19_irq_mask(1 downto 0),
      PHS19_pwm_val(9 downto 0) => PHS19_pwm_val(9 downto 0),
      PHS19_status => PHS19_status,
      PHS19_vld_in => PHS19_vld_in,
      PHS19_vld_out => PHS19_vld_out,
      PHS1_irq0_L2S => PHS1_irq0_L2S,
      PHS1_irq0_clr => PHS1_irq0_clr,
      PHS1_irq1_S2L => PHS1_irq1_S2L,
      PHS1_irq1_clr => PHS1_irq1_clr,
      PHS1_irq_mask(1 downto 0) => PHS1_irq_mask(1 downto 0),
      PHS1_pwm_val(9 downto 0) => PHS1_pwm_val(9 downto 0),
      PHS1_status => PHS1_status,
      PHS1_vld_in => PHS1_vld_in,
      PHS1_vld_out => PHS1_vld_out,
      PHS20_irq0_L2S => PHS20_irq0_L2S,
      PHS20_irq0_clr => PHS20_irq0_clr,
      PHS20_irq1_S2L => PHS20_irq1_S2L,
      PHS20_irq1_clr => PHS20_irq1_clr,
      PHS20_irq_mask(1 downto 0) => PHS20_irq_mask(1 downto 0),
      PHS20_pwm_val(9 downto 0) => PHS20_pwm_val(9 downto 0),
      PHS20_status => PHS20_status,
      PHS20_vld_in => PHS20_vld_in,
      PHS20_vld_out => PHS20_vld_out,
      PHS21_irq0_L2S => PHS21_irq0_L2S,
      PHS21_irq0_clr => PHS21_irq0_clr,
      PHS21_irq1_S2L => PHS21_irq1_S2L,
      PHS21_irq1_clr => PHS21_irq1_clr,
      PHS21_irq_mask(1 downto 0) => PHS21_irq_mask(1 downto 0),
      PHS21_pwm_val(9 downto 0) => PHS21_pwm_val(9 downto 0),
      PHS21_status => PHS21_status,
      PHS21_vld_in => PHS21_vld_in,
      PHS21_vld_out => PHS21_vld_out,
      PHS22_irq0_L2S => PHS22_irq0_L2S,
      PHS22_irq0_clr => PHS22_irq0_clr,
      PHS22_irq1_S2L => PHS22_irq1_S2L,
      PHS22_irq1_clr => PHS22_irq1_clr,
      PHS22_irq_mask(1 downto 0) => PHS22_irq_mask(1 downto 0),
      PHS22_pwm_val(9 downto 0) => PHS22_pwm_val(9 downto 0),
      PHS22_status => PHS22_status,
      PHS22_vld_in => PHS22_vld_in,
      PHS22_vld_out => PHS22_vld_out,
      PHS23_irq0_L2S => PHS23_irq0_L2S,
      PHS23_irq0_clr => PHS23_irq0_clr,
      PHS23_irq1_S2L => PHS23_irq1_S2L,
      PHS23_irq1_clr => PHS23_irq1_clr,
      PHS23_irq_mask(1 downto 0) => PHS23_irq_mask(1 downto 0),
      PHS23_pwm_val(9 downto 0) => PHS23_pwm_val(9 downto 0),
      PHS23_status => PHS23_status,
      PHS23_vld_in => PHS23_vld_in,
      PHS23_vld_out => PHS23_vld_out,
      PHS24_irq0_L2S => PHS24_irq0_L2S,
      PHS24_irq0_clr => PHS24_irq0_clr,
      PHS24_irq1_S2L => PHS24_irq1_S2L,
      PHS24_irq1_clr => PHS24_irq1_clr,
      PHS24_irq_mask(1 downto 0) => PHS24_irq_mask(1 downto 0),
      PHS24_pwm_val(9 downto 0) => PHS24_pwm_val(9 downto 0),
      PHS24_status => PHS24_status,
      PHS24_vld_in => PHS24_vld_in,
      PHS24_vld_out => PHS24_vld_out,
      PHS25_irq0_L2S => PHS25_irq0_L2S,
      PHS25_irq0_clr => PHS25_irq0_clr,
      PHS25_irq1_S2L => PHS25_irq1_S2L,
      PHS25_irq1_clr => PHS25_irq1_clr,
      PHS25_irq_mask(1 downto 0) => PHS25_irq_mask(1 downto 0),
      PHS25_pwm_val(9 downto 0) => PHS25_pwm_val(9 downto 0),
      PHS25_status => PHS25_status,
      PHS25_vld_in => PHS25_vld_in,
      PHS25_vld_out => PHS25_vld_out,
      PHS26_irq0_L2S => PHS26_irq0_L2S,
      PHS26_irq0_clr => PHS26_irq0_clr,
      PHS26_irq1_S2L => PHS26_irq1_S2L,
      PHS26_irq1_clr => PHS26_irq1_clr,
      PHS26_irq_mask(1 downto 0) => PHS26_irq_mask(1 downto 0),
      PHS26_pwm_val(9 downto 0) => PHS26_pwm_val(9 downto 0),
      PHS26_status => PHS26_status,
      PHS26_vld_in => PHS26_vld_in,
      PHS26_vld_out => PHS26_vld_out,
      PHS27_irq0_L2S => PHS27_irq0_L2S,
      PHS27_irq0_clr => PHS27_irq0_clr,
      PHS27_irq1_S2L => PHS27_irq1_S2L,
      PHS27_irq1_clr => PHS27_irq1_clr,
      PHS27_irq_mask(1 downto 0) => PHS27_irq_mask(1 downto 0),
      PHS27_pwm_val(9 downto 0) => PHS27_pwm_val(9 downto 0),
      PHS27_status => PHS27_status,
      PHS27_vld_in => PHS27_vld_in,
      PHS27_vld_out => PHS27_vld_out,
      PHS28_irq0_L2S => PHS28_irq0_L2S,
      PHS28_irq0_clr => PHS28_irq0_clr,
      PHS28_irq1_S2L => PHS28_irq1_S2L,
      PHS28_irq1_clr => PHS28_irq1_clr,
      PHS28_irq_mask(1 downto 0) => PHS28_irq_mask(1 downto 0),
      PHS28_pwm_val(9 downto 0) => PHS28_pwm_val(9 downto 0),
      PHS28_status => PHS28_status,
      PHS28_vld_in => PHS28_vld_in,
      PHS28_vld_out => PHS28_vld_out,
      PHS29_irq0_L2S => PHS29_irq0_L2S,
      PHS29_irq0_clr => PHS29_irq0_clr,
      PHS29_irq1_S2L => PHS29_irq1_S2L,
      PHS29_irq1_clr => PHS29_irq1_clr,
      PHS29_irq_mask(1 downto 0) => PHS29_irq_mask(1 downto 0),
      PHS29_pwm_val(9 downto 0) => PHS29_pwm_val(9 downto 0),
      PHS29_status => PHS29_status,
      PHS29_vld_in => PHS29_vld_in,
      PHS29_vld_out => PHS29_vld_out,
      PHS2_irq0_L2S => PHS2_irq0_L2S,
      PHS2_irq0_clr => PHS2_irq0_clr,
      PHS2_irq1_S2L => PHS2_irq1_S2L,
      PHS2_irq1_clr => PHS2_irq1_clr,
      PHS2_irq_mask(1 downto 0) => PHS2_irq_mask(1 downto 0),
      PHS2_pwm_val(9 downto 0) => PHS2_pwm_val(9 downto 0),
      PHS2_status => PHS2_status,
      PHS2_vld_in => PHS2_vld_in,
      PHS2_vld_out => PHS2_vld_out,
      PHS30_irq0_L2S => PHS30_irq0_L2S,
      PHS30_irq0_clr => PHS30_irq0_clr,
      PHS30_irq1_S2L => PHS30_irq1_S2L,
      PHS30_irq1_clr => PHS30_irq1_clr,
      PHS30_irq_mask(1 downto 0) => PHS30_irq_mask(1 downto 0),
      PHS30_pwm_val(9 downto 0) => PHS30_pwm_val(9 downto 0),
      PHS30_status => PHS30_status,
      PHS30_vld_in => PHS30_vld_in,
      PHS30_vld_out => PHS30_vld_out,
      PHS31_irq0_L2S => PHS31_irq0_L2S,
      PHS31_irq0_clr => PHS31_irq0_clr,
      PHS31_irq1_S2L => PHS31_irq1_S2L,
      PHS31_irq1_clr => PHS31_irq1_clr,
      PHS31_irq_mask(1 downto 0) => PHS31_irq_mask(1 downto 0),
      PHS31_pwm_val(9 downto 0) => PHS31_pwm_val(9 downto 0),
      PHS31_status => PHS31_status,
      PHS31_vld_in => PHS31_vld_in,
      PHS31_vld_out => PHS31_vld_out,
      PHS32_irq0_L2S => PHS32_irq0_L2S,
      PHS32_irq0_clr => PHS32_irq0_clr,
      PHS32_irq1_S2L => PHS32_irq1_S2L,
      PHS32_irq1_clr => PHS32_irq1_clr,
      PHS32_irq_mask(1 downto 0) => PHS32_irq_mask(1 downto 0),
      PHS32_pwm_val(9 downto 0) => PHS32_pwm_val(9 downto 0),
      PHS32_status => PHS32_status,
      PHS32_vld_in => PHS32_vld_in,
      PHS32_vld_out => PHS32_vld_out,
      PHS33_irq0_L2S => PHS33_irq0_L2S,
      PHS33_irq0_clr => PHS33_irq0_clr,
      PHS33_irq1_S2L => PHS33_irq1_S2L,
      PHS33_irq1_clr => PHS33_irq1_clr,
      PHS33_irq_mask(1 downto 0) => PHS33_irq_mask(1 downto 0),
      PHS33_pwm_val(9 downto 0) => PHS33_pwm_val(9 downto 0),
      PHS33_status => PHS33_status,
      PHS33_vld_in => PHS33_vld_in,
      PHS33_vld_out => PHS33_vld_out,
      PHS34_irq0_L2S => PHS34_irq0_L2S,
      PHS34_irq0_clr => PHS34_irq0_clr,
      PHS34_irq1_S2L => PHS34_irq1_S2L,
      PHS34_irq1_clr => PHS34_irq1_clr,
      PHS34_irq_mask(1 downto 0) => PHS34_irq_mask(1 downto 0),
      PHS34_pwm_val(9 downto 0) => PHS34_pwm_val(9 downto 0),
      PHS34_status => PHS34_status,
      PHS34_vld_in => PHS34_vld_in,
      PHS34_vld_out => PHS34_vld_out,
      PHS35_irq0_L2S => PHS35_irq0_L2S,
      PHS35_irq0_clr => PHS35_irq0_clr,
      PHS35_irq1_S2L => PHS35_irq1_S2L,
      PHS35_irq1_clr => PHS35_irq1_clr,
      PHS35_irq_mask(1 downto 0) => PHS35_irq_mask(1 downto 0),
      PHS35_pwm_val(9 downto 0) => PHS35_pwm_val(9 downto 0),
      PHS35_status => PHS35_status,
      PHS35_vld_in => PHS35_vld_in,
      PHS35_vld_out => PHS35_vld_out,
      PHS36_irq0_L2S => PHS36_irq0_L2S,
      PHS36_irq0_clr => PHS36_irq0_clr,
      PHS36_irq1_S2L => PHS36_irq1_S2L,
      PHS36_irq1_clr => PHS36_irq1_clr,
      PHS36_irq_mask(1 downto 0) => PHS36_irq_mask(1 downto 0),
      PHS36_pwm_val(9 downto 0) => PHS36_pwm_val(9 downto 0),
      PHS36_status => PHS36_status,
      PHS36_vld_in => PHS36_vld_in,
      PHS36_vld_out => PHS36_vld_out,
      PHS37_irq0_L2S => PHS37_irq0_L2S,
      PHS37_irq0_clr => PHS37_irq0_clr,
      PHS37_irq1_S2L => PHS37_irq1_S2L,
      PHS37_irq1_clr => PHS37_irq1_clr,
      PHS37_irq_mask(1 downto 0) => PHS37_irq_mask(1 downto 0),
      PHS37_pwm_val(9 downto 0) => PHS37_pwm_val(9 downto 0),
      PHS37_status => PHS37_status,
      PHS37_vld_in => PHS37_vld_in,
      PHS37_vld_out => PHS37_vld_out,
      PHS38_irq0_L2S => PHS38_irq0_L2S,
      PHS38_irq0_clr => PHS38_irq0_clr,
      PHS38_irq1_S2L => PHS38_irq1_S2L,
      PHS38_irq1_clr => PHS38_irq1_clr,
      PHS38_irq_mask(1 downto 0) => PHS38_irq_mask(1 downto 0),
      PHS38_pwm_val(9 downto 0) => PHS38_pwm_val(9 downto 0),
      PHS38_status => PHS38_status,
      PHS38_vld_in => PHS38_vld_in,
      PHS38_vld_out => PHS38_vld_out,
      PHS39_irq0_L2S => PHS39_irq0_L2S,
      PHS39_irq0_clr => PHS39_irq0_clr,
      PHS39_irq1_S2L => PHS39_irq1_S2L,
      PHS39_irq1_clr => PHS39_irq1_clr,
      PHS39_irq_mask(1 downto 0) => PHS39_irq_mask(1 downto 0),
      PHS39_pwm_val(9 downto 0) => PHS39_pwm_val(9 downto 0),
      PHS39_status => PHS39_status,
      PHS39_vld_in => PHS39_vld_in,
      PHS39_vld_out => PHS39_vld_out,
      PHS3_irq0_L2S => PHS3_irq0_L2S,
      PHS3_irq0_clr => PHS3_irq0_clr,
      PHS3_irq1_S2L => PHS3_irq1_S2L,
      PHS3_irq1_clr => PHS3_irq1_clr,
      PHS3_irq_mask(1 downto 0) => PHS3_irq_mask(1 downto 0),
      PHS3_pwm_val(9 downto 0) => PHS3_pwm_val(9 downto 0),
      PHS3_status => PHS3_status,
      PHS3_vld_in => PHS3_vld_in,
      PHS3_vld_out => PHS3_vld_out,
      PHS40_irq0_L2S => PHS40_irq0_L2S,
      PHS40_irq0_clr => PHS40_irq0_clr,
      PHS40_irq1_S2L => PHS40_irq1_S2L,
      PHS40_irq1_clr => PHS40_irq1_clr,
      PHS40_irq_mask(1 downto 0) => PHS40_irq_mask(1 downto 0),
      PHS40_pwm_val(9 downto 0) => PHS40_pwm_val(9 downto 0),
      PHS40_status => PHS40_status,
      PHS40_vld_in => PHS40_vld_in,
      PHS40_vld_out => PHS40_vld_out,
      PHS41_irq0_L2S => PHS41_irq0_L2S,
      PHS41_irq0_clr => PHS41_irq0_clr,
      PHS41_irq1_S2L => PHS41_irq1_S2L,
      PHS41_irq1_clr => PHS41_irq1_clr,
      PHS41_irq_mask(1 downto 0) => PHS41_irq_mask(1 downto 0),
      PHS41_pwm_val(9 downto 0) => PHS41_pwm_val(9 downto 0),
      PHS41_status => PHS41_status,
      PHS41_vld_in => PHS41_vld_in,
      PHS41_vld_out => PHS41_vld_out,
      PHS42_irq0_L2S => PHS42_irq0_L2S,
      PHS42_irq0_clr => PHS42_irq0_clr,
      PHS42_irq1_S2L => PHS42_irq1_S2L,
      PHS42_irq1_clr => PHS42_irq1_clr,
      PHS42_irq_mask(1 downto 0) => PHS42_irq_mask(1 downto 0),
      PHS42_pwm_val(9 downto 0) => PHS42_pwm_val(9 downto 0),
      PHS42_status => PHS42_status,
      PHS42_vld_in => PHS42_vld_in,
      PHS42_vld_out => PHS42_vld_out,
      PHS43_irq0_L2S => PHS43_irq0_L2S,
      PHS43_irq0_clr => PHS43_irq0_clr,
      PHS43_irq1_S2L => PHS43_irq1_S2L,
      PHS43_irq1_clr => PHS43_irq1_clr,
      PHS43_irq_mask(1 downto 0) => PHS43_irq_mask(1 downto 0),
      PHS43_pwm_val(9 downto 0) => PHS43_pwm_val(9 downto 0),
      PHS43_status => PHS43_status,
      PHS43_vld_in => PHS43_vld_in,
      PHS43_vld_out => PHS43_vld_out,
      PHS44_irq0_L2S => PHS44_irq0_L2S,
      PHS44_irq0_clr => PHS44_irq0_clr,
      PHS44_irq1_S2L => PHS44_irq1_S2L,
      PHS44_irq1_clr => PHS44_irq1_clr,
      PHS44_irq_mask(1 downto 0) => PHS44_irq_mask(1 downto 0),
      PHS44_pwm_val(9 downto 0) => PHS44_pwm_val(9 downto 0),
      PHS44_status => PHS44_status,
      PHS44_vld_in => PHS44_vld_in,
      PHS44_vld_out => PHS44_vld_out,
      PHS45_irq0_L2S => PHS45_irq0_L2S,
      PHS45_irq0_clr => PHS45_irq0_clr,
      PHS45_irq1_S2L => PHS45_irq1_S2L,
      PHS45_irq1_clr => PHS45_irq1_clr,
      PHS45_irq_mask(1 downto 0) => PHS45_irq_mask(1 downto 0),
      PHS45_pwm_val(9 downto 0) => PHS45_pwm_val(9 downto 0),
      PHS45_status => PHS45_status,
      PHS45_vld_in => PHS45_vld_in,
      PHS45_vld_out => PHS45_vld_out,
      PHS46_irq0_L2S => PHS46_irq0_L2S,
      PHS46_irq0_clr => PHS46_irq0_clr,
      PHS46_irq1_S2L => PHS46_irq1_S2L,
      PHS46_irq1_clr => PHS46_irq1_clr,
      PHS46_irq_mask(1 downto 0) => PHS46_irq_mask(1 downto 0),
      PHS46_pwm_val(9 downto 0) => PHS46_pwm_val(9 downto 0),
      PHS46_status => PHS46_status,
      PHS46_vld_in => PHS46_vld_in,
      PHS46_vld_out => PHS46_vld_out,
      PHS47_irq0_L2S => PHS47_irq0_L2S,
      PHS47_irq0_clr => PHS47_irq0_clr,
      PHS47_irq1_S2L => PHS47_irq1_S2L,
      PHS47_irq1_clr => PHS47_irq1_clr,
      PHS47_irq_mask(1 downto 0) => PHS47_irq_mask(1 downto 0),
      PHS47_pwm_val(9 downto 0) => PHS47_pwm_val(9 downto 0),
      PHS47_status => PHS47_status,
      PHS47_vld_in => PHS47_vld_in,
      PHS47_vld_out => PHS47_vld_out,
      PHS48_irq0_L2S => PHS48_irq0_L2S,
      PHS48_irq0_clr => PHS48_irq0_clr,
      PHS48_irq1_S2L => PHS48_irq1_S2L,
      PHS48_irq1_clr => PHS48_irq1_clr,
      PHS48_irq_mask(1 downto 0) => PHS48_irq_mask(1 downto 0),
      PHS48_pwm_val(9 downto 0) => PHS48_pwm_val(9 downto 0),
      PHS48_status => PHS48_status,
      PHS48_vld_in => PHS48_vld_in,
      PHS48_vld_out => PHS48_vld_out,
      PHS49_irq0_L2S => PHS49_irq0_L2S,
      PHS49_irq0_clr => PHS49_irq0_clr,
      PHS49_irq1_S2L => PHS49_irq1_S2L,
      PHS49_irq1_clr => PHS49_irq1_clr,
      PHS49_irq_mask(1 downto 0) => PHS49_irq_mask(1 downto 0),
      PHS49_pwm_val(9 downto 0) => PHS49_pwm_val(9 downto 0),
      PHS49_status => PHS49_status,
      PHS49_vld_in => PHS49_vld_in,
      PHS49_vld_out => PHS49_vld_out,
      PHS4_irq0_L2S => PHS4_irq0_L2S,
      PHS4_irq0_clr => PHS4_irq0_clr,
      PHS4_irq1_S2L => PHS4_irq1_S2L,
      PHS4_irq1_clr => PHS4_irq1_clr,
      PHS4_irq_mask(1 downto 0) => PHS4_irq_mask(1 downto 0),
      PHS4_pwm_val(9 downto 0) => PHS4_pwm_val(9 downto 0),
      PHS4_status => PHS4_status,
      PHS4_vld_in => PHS4_vld_in,
      PHS4_vld_out => PHS4_vld_out,
      PHS5_irq0_L2S => PHS5_irq0_L2S,
      PHS5_irq0_clr => PHS5_irq0_clr,
      PHS5_irq1_S2L => PHS5_irq1_S2L,
      PHS5_irq1_clr => PHS5_irq1_clr,
      PHS5_irq_mask(1 downto 0) => PHS5_irq_mask(1 downto 0),
      PHS5_pwm_val(9 downto 0) => PHS5_pwm_val(9 downto 0),
      PHS5_status => PHS5_status,
      PHS5_vld_in => PHS5_vld_in,
      PHS5_vld_out => PHS5_vld_out,
      PHS6_irq0_L2S => PHS6_irq0_L2S,
      PHS6_irq0_clr => PHS6_irq0_clr,
      PHS6_irq1_S2L => PHS6_irq1_S2L,
      PHS6_irq1_clr => PHS6_irq1_clr,
      PHS6_irq_mask(1 downto 0) => PHS6_irq_mask(1 downto 0),
      PHS6_pwm_val(9 downto 0) => PHS6_pwm_val(9 downto 0),
      PHS6_status => PHS6_status,
      PHS6_vld_in => PHS6_vld_in,
      PHS6_vld_out => PHS6_vld_out,
      PHS7_irq0_L2S => PHS7_irq0_L2S,
      PHS7_irq0_clr => PHS7_irq0_clr,
      PHS7_irq1_S2L => PHS7_irq1_S2L,
      PHS7_irq1_clr => PHS7_irq1_clr,
      PHS7_irq_mask(1 downto 0) => PHS7_irq_mask(1 downto 0),
      PHS7_pwm_val(9 downto 0) => PHS7_pwm_val(9 downto 0),
      PHS7_status => PHS7_status,
      PHS7_vld_in => PHS7_vld_in,
      PHS7_vld_out => PHS7_vld_out,
      PHS8_irq0_L2S => PHS8_irq0_L2S,
      PHS8_irq0_clr => PHS8_irq0_clr,
      PHS8_irq1_S2L => PHS8_irq1_S2L,
      PHS8_irq1_clr => PHS8_irq1_clr,
      PHS8_irq_mask(1 downto 0) => PHS8_irq_mask(1 downto 0),
      PHS8_pwm_val(9 downto 0) => PHS8_pwm_val(9 downto 0),
      PHS8_status => PHS8_status,
      PHS8_vld_in => PHS8_vld_in,
      PHS8_vld_out => PHS8_vld_out,
      PHS9_irq0_L2S => PHS9_irq0_L2S,
      PHS9_irq0_clr => PHS9_irq0_clr,
      PHS9_irq1_S2L => PHS9_irq1_S2L,
      PHS9_irq1_clr => PHS9_irq1_clr,
      PHS9_irq_mask(1 downto 0) => PHS9_irq_mask(1 downto 0),
      PHS9_pwm_val(9 downto 0) => PHS9_pwm_val(9 downto 0),
      PHS9_status => PHS9_status,
      PHS9_vld_in => PHS9_vld_in,
      PHS9_vld_out => PHS9_vld_out,
      PHS_irq_L2S_0 => PHS_irq_L2S_0,
      PHS_irq_L2S_1 => PHS_irq_L2S_1,
      PHS_irq_S2L_0 => PHS_irq_S2L_0,
      PHS_irq_S2L_1 => PHS_irq_S2L_1,
      PHS_irqs_L2S_0(24 downto 0) => PHS_irqs_L2S_0(24 downto 0),
      PHS_irqs_L2S_1(24 downto 0) => PHS_irqs_L2S_1(24 downto 0),
      PHS_irqs_S2L_0(24 downto 0) => PHS_irqs_S2L_0(24 downto 0),
      PHS_irqs_S2L_1(24 downto 0) => PHS_irqs_S2L_1(24 downto 0),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(9 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(9 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(24 downto 0) => \^s00_axi_rdata\(24 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(24 downto 0) => s00_axi_wdata(24 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
