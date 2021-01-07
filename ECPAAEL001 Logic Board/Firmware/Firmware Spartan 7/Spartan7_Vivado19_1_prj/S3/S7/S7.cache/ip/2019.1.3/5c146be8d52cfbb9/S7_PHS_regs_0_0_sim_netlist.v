// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue May  5 10:14:03 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_PHS_regs_0_0_sim_netlist.v
// Design      : S7_PHS_regs_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    PHS0_pwm_val,
    PHS0_irq_mask,
    PHS0_irq1_clr,
    PHS0_irq0_clr,
    S_AXI_ARREADY,
    PHS1_pwm_val,
    PHS1_irq_mask,
    PHS1_irq1_clr,
    PHS1_irq0_clr,
    PHS2_pwm_val,
    PHS2_irq_mask,
    PHS2_irq1_clr,
    PHS2_irq0_clr,
    PHS3_pwm_val,
    PHS3_irq_mask,
    PHS3_irq1_clr,
    PHS3_irq0_clr,
    PHS4_pwm_val,
    PHS4_irq_mask,
    PHS4_irq1_clr,
    PHS4_irq0_clr,
    PHS5_pwm_val,
    PHS5_irq_mask,
    PHS5_irq1_clr,
    PHS5_irq0_clr,
    PHS6_pwm_val,
    PHS6_irq_mask,
    PHS6_irq1_clr,
    PHS6_irq0_clr,
    PHS7_pwm_val,
    PHS7_irq_mask,
    PHS7_irq1_clr,
    PHS7_irq0_clr,
    PHS8_pwm_val,
    PHS8_irq_mask,
    PHS8_irq1_clr,
    PHS8_irq0_clr,
    PHS9_pwm_val,
    PHS9_irq_mask,
    PHS9_irq1_clr,
    PHS9_irq0_clr,
    PHS10_pwm_val,
    PHS10_irq_mask,
    PHS10_irq1_clr,
    PHS10_irq0_clr,
    PHS11_pwm_val,
    PHS11_irq_mask,
    PHS11_irq1_clr,
    PHS11_irq0_clr,
    PHS12_pwm_val,
    PHS12_irq_mask,
    PHS12_irq1_clr,
    PHS12_irq0_clr,
    PHS13_pwm_val,
    PHS13_irq_mask,
    PHS13_irq1_clr,
    PHS13_irq0_clr,
    PHS14_pwm_val,
    PHS14_irq_mask,
    PHS14_irq1_clr,
    PHS14_irq0_clr,
    PHS15_pwm_val,
    PHS15_irq_mask,
    PHS15_irq1_clr,
    PHS15_irq0_clr,
    PHS16_pwm_val,
    PHS16_irq_mask,
    PHS16_irq1_clr,
    PHS16_irq0_clr,
    PHS17_pwm_val,
    PHS17_irq_mask,
    PHS17_irq1_clr,
    PHS17_irq0_clr,
    PHS18_pwm_val,
    PHS18_irq_mask,
    PHS18_irq1_clr,
    PHS18_irq0_clr,
    PHS19_pwm_val,
    PHS19_irq_mask,
    PHS19_irq1_clr,
    PHS19_irq0_clr,
    PHS20_pwm_val,
    PHS20_irq_mask,
    PHS20_irq1_clr,
    PHS20_irq0_clr,
    PHS21_pwm_val,
    PHS21_irq_mask,
    PHS21_irq1_clr,
    PHS21_irq0_clr,
    PHS22_pwm_val,
    PHS22_irq_mask,
    PHS22_irq1_clr,
    PHS22_irq0_clr,
    PHS23_pwm_val,
    PHS23_irq_mask,
    PHS23_irq1_clr,
    PHS23_irq0_clr,
    PHS24_pwm_val,
    PHS24_irq_mask,
    PHS24_irq1_clr,
    PHS24_irq0_clr,
    PHS25_pwm_val,
    PHS25_irq_mask,
    PHS25_irq1_clr,
    PHS25_irq0_clr,
    PHS26_pwm_val,
    PHS26_irq_mask,
    PHS26_irq1_clr,
    PHS26_irq0_clr,
    PHS27_pwm_val,
    PHS27_irq_mask,
    PHS27_irq1_clr,
    PHS27_irq0_clr,
    PHS28_pwm_val,
    PHS28_irq_mask,
    PHS28_irq1_clr,
    PHS28_irq0_clr,
    PHS29_pwm_val,
    PHS29_irq_mask,
    PHS29_irq1_clr,
    PHS29_irq0_clr,
    PHS30_pwm_val,
    PHS30_irq_mask,
    PHS30_irq1_clr,
    PHS30_irq0_clr,
    PHS31_pwm_val,
    PHS31_irq_mask,
    PHS31_irq1_clr,
    PHS31_irq0_clr,
    PHS32_pwm_val,
    PHS32_irq_mask,
    PHS32_irq1_clr,
    PHS32_irq0_clr,
    PHS33_pwm_val,
    PHS33_irq_mask,
    PHS33_irq1_clr,
    PHS33_irq0_clr,
    PHS34_pwm_val,
    PHS34_irq_mask,
    PHS34_irq1_clr,
    PHS34_irq0_clr,
    PHS35_pwm_val,
    PHS35_irq_mask,
    PHS35_irq1_clr,
    PHS35_irq0_clr,
    PHS36_pwm_val,
    PHS36_irq_mask,
    PHS36_irq1_clr,
    PHS36_irq0_clr,
    PHS37_pwm_val,
    PHS37_irq_mask,
    PHS37_irq1_clr,
    PHS37_irq0_clr,
    PHS38_pwm_val,
    PHS38_irq_mask,
    PHS38_irq1_clr,
    PHS38_irq0_clr,
    PHS39_pwm_val,
    PHS39_irq_mask,
    PHS39_irq1_clr,
    PHS39_irq0_clr,
    PHS40_pwm_val,
    PHS40_irq_mask,
    PHS40_irq1_clr,
    PHS40_irq0_clr,
    PHS41_pwm_val,
    PHS41_irq_mask,
    PHS41_irq1_clr,
    PHS41_irq0_clr,
    PHS42_pwm_val,
    PHS42_irq_mask,
    PHS42_irq1_clr,
    PHS42_irq0_clr,
    PHS43_pwm_val,
    PHS43_irq_mask,
    PHS43_irq1_clr,
    PHS43_irq0_clr,
    PHS44_pwm_val,
    PHS44_irq_mask,
    PHS44_irq1_clr,
    PHS44_irq0_clr,
    PHS45_pwm_val,
    PHS45_irq_mask,
    PHS45_irq1_clr,
    PHS45_irq0_clr,
    PHS46_pwm_val,
    PHS46_irq_mask,
    PHS46_irq1_clr,
    PHS46_irq0_clr,
    PHS47_pwm_val,
    PHS47_irq_mask,
    PHS47_irq1_clr,
    PHS47_irq0_clr,
    PHS48_pwm_val,
    PHS48_irq_mask,
    PHS48_irq1_clr,
    PHS48_irq0_clr,
    PHS49_pwm_val,
    PHS49_irq_mask,
    PHS49_irq1_clr,
    PHS49_irq0_clr,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    PHS0_vld_out,
    PHS1_vld_out,
    PHS2_vld_out,
    PHS3_vld_out,
    PHS4_vld_out,
    PHS5_vld_out,
    PHS6_vld_out,
    PHS7_vld_out,
    PHS8_vld_out,
    PHS9_vld_out,
    PHS10_vld_out,
    PHS11_vld_out,
    PHS12_vld_out,
    PHS13_vld_out,
    PHS14_vld_out,
    PHS15_vld_out,
    PHS16_vld_out,
    PHS17_vld_out,
    PHS18_vld_out,
    PHS19_vld_out,
    PHS20_vld_out,
    PHS21_vld_out,
    PHS22_vld_out,
    PHS23_vld_out,
    PHS24_vld_out,
    PHS25_vld_out,
    PHS26_vld_out,
    PHS27_vld_out,
    PHS28_vld_out,
    PHS29_vld_out,
    PHS30_vld_out,
    PHS31_vld_out,
    PHS32_vld_out,
    PHS33_vld_out,
    PHS34_vld_out,
    PHS35_vld_out,
    PHS36_vld_out,
    PHS37_vld_out,
    PHS38_vld_out,
    PHS39_vld_out,
    PHS40_vld_out,
    PHS41_vld_out,
    PHS42_vld_out,
    PHS43_vld_out,
    PHS44_vld_out,
    PHS45_vld_out,
    PHS46_vld_out,
    PHS47_vld_out,
    PHS48_vld_out,
    PHS49_vld_out,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready,
    PHS0_status,
    PHS0_vld_in,
    PHS1_status,
    PHS1_vld_in,
    PHS2_status,
    PHS2_vld_in,
    PHS3_status,
    PHS3_vld_in,
    PHS4_status,
    PHS4_vld_in,
    PHS5_status,
    PHS5_vld_in,
    PHS6_status,
    PHS6_vld_in,
    PHS7_status,
    PHS7_vld_in,
    PHS8_status,
    PHS8_vld_in,
    PHS9_status,
    PHS9_vld_in,
    PHS10_status,
    PHS10_vld_in,
    PHS11_status,
    PHS11_vld_in,
    PHS12_status,
    PHS12_vld_in,
    PHS13_status,
    PHS13_vld_in,
    PHS14_status,
    PHS14_vld_in,
    PHS15_status,
    PHS15_vld_in,
    PHS16_status,
    PHS16_vld_in,
    PHS17_status,
    PHS17_vld_in,
    PHS18_status,
    PHS18_vld_in,
    PHS19_status,
    PHS19_vld_in,
    PHS20_status,
    PHS20_vld_in,
    PHS21_status,
    PHS21_vld_in,
    PHS22_status,
    PHS22_vld_in,
    PHS23_status,
    PHS23_vld_in,
    PHS24_status,
    PHS24_vld_in,
    PHS25_status,
    PHS25_vld_in,
    PHS26_status,
    PHS26_vld_in,
    PHS27_status,
    PHS27_vld_in,
    PHS28_status,
    PHS28_vld_in,
    PHS29_status,
    PHS29_vld_in,
    PHS30_status,
    PHS30_vld_in,
    PHS31_status,
    PHS31_vld_in,
    PHS32_status,
    PHS32_vld_in,
    PHS33_status,
    PHS33_vld_in,
    PHS34_status,
    PHS34_vld_in,
    PHS35_status,
    PHS35_vld_in,
    PHS36_status,
    PHS36_vld_in,
    PHS37_status,
    PHS37_vld_in,
    PHS38_status,
    PHS38_vld_in,
    PHS39_status,
    PHS39_vld_in,
    PHS40_status,
    PHS40_vld_in,
    PHS41_status,
    PHS41_vld_in,
    PHS42_status,
    PHS42_vld_in,
    PHS43_status,
    PHS43_vld_in,
    PHS44_status,
    PHS44_vld_in,
    PHS45_status,
    PHS45_vld_in,
    PHS46_status,
    PHS46_vld_in,
    PHS47_status,
    PHS47_vld_in,
    PHS48_status,
    PHS48_vld_in,
    PHS49_status,
    PHS49_vld_in);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [9:0]PHS0_pwm_val;
  output [1:0]PHS0_irq_mask;
  output PHS0_irq1_clr;
  output PHS0_irq0_clr;
  output S_AXI_ARREADY;
  output [9:0]PHS1_pwm_val;
  output [1:0]PHS1_irq_mask;
  output PHS1_irq1_clr;
  output PHS1_irq0_clr;
  output [9:0]PHS2_pwm_val;
  output [1:0]PHS2_irq_mask;
  output PHS2_irq1_clr;
  output PHS2_irq0_clr;
  output [9:0]PHS3_pwm_val;
  output [1:0]PHS3_irq_mask;
  output PHS3_irq1_clr;
  output PHS3_irq0_clr;
  output [9:0]PHS4_pwm_val;
  output [1:0]PHS4_irq_mask;
  output PHS4_irq1_clr;
  output PHS4_irq0_clr;
  output [9:0]PHS5_pwm_val;
  output [1:0]PHS5_irq_mask;
  output PHS5_irq1_clr;
  output PHS5_irq0_clr;
  output [9:0]PHS6_pwm_val;
  output [1:0]PHS6_irq_mask;
  output PHS6_irq1_clr;
  output PHS6_irq0_clr;
  output [9:0]PHS7_pwm_val;
  output [1:0]PHS7_irq_mask;
  output PHS7_irq1_clr;
  output PHS7_irq0_clr;
  output [9:0]PHS8_pwm_val;
  output [1:0]PHS8_irq_mask;
  output PHS8_irq1_clr;
  output PHS8_irq0_clr;
  output [9:0]PHS9_pwm_val;
  output [1:0]PHS9_irq_mask;
  output PHS9_irq1_clr;
  output PHS9_irq0_clr;
  output [9:0]PHS10_pwm_val;
  output [1:0]PHS10_irq_mask;
  output PHS10_irq1_clr;
  output PHS10_irq0_clr;
  output [9:0]PHS11_pwm_val;
  output [1:0]PHS11_irq_mask;
  output PHS11_irq1_clr;
  output PHS11_irq0_clr;
  output [9:0]PHS12_pwm_val;
  output [1:0]PHS12_irq_mask;
  output PHS12_irq1_clr;
  output PHS12_irq0_clr;
  output [9:0]PHS13_pwm_val;
  output [1:0]PHS13_irq_mask;
  output PHS13_irq1_clr;
  output PHS13_irq0_clr;
  output [9:0]PHS14_pwm_val;
  output [1:0]PHS14_irq_mask;
  output PHS14_irq1_clr;
  output PHS14_irq0_clr;
  output [9:0]PHS15_pwm_val;
  output [1:0]PHS15_irq_mask;
  output PHS15_irq1_clr;
  output PHS15_irq0_clr;
  output [9:0]PHS16_pwm_val;
  output [1:0]PHS16_irq_mask;
  output PHS16_irq1_clr;
  output PHS16_irq0_clr;
  output [9:0]PHS17_pwm_val;
  output [1:0]PHS17_irq_mask;
  output PHS17_irq1_clr;
  output PHS17_irq0_clr;
  output [9:0]PHS18_pwm_val;
  output [1:0]PHS18_irq_mask;
  output PHS18_irq1_clr;
  output PHS18_irq0_clr;
  output [9:0]PHS19_pwm_val;
  output [1:0]PHS19_irq_mask;
  output PHS19_irq1_clr;
  output PHS19_irq0_clr;
  output [9:0]PHS20_pwm_val;
  output [1:0]PHS20_irq_mask;
  output PHS20_irq1_clr;
  output PHS20_irq0_clr;
  output [9:0]PHS21_pwm_val;
  output [1:0]PHS21_irq_mask;
  output PHS21_irq1_clr;
  output PHS21_irq0_clr;
  output [9:0]PHS22_pwm_val;
  output [1:0]PHS22_irq_mask;
  output PHS22_irq1_clr;
  output PHS22_irq0_clr;
  output [9:0]PHS23_pwm_val;
  output [1:0]PHS23_irq_mask;
  output PHS23_irq1_clr;
  output PHS23_irq0_clr;
  output [9:0]PHS24_pwm_val;
  output [1:0]PHS24_irq_mask;
  output PHS24_irq1_clr;
  output PHS24_irq0_clr;
  output [9:0]PHS25_pwm_val;
  output [1:0]PHS25_irq_mask;
  output PHS25_irq1_clr;
  output PHS25_irq0_clr;
  output [9:0]PHS26_pwm_val;
  output [1:0]PHS26_irq_mask;
  output PHS26_irq1_clr;
  output PHS26_irq0_clr;
  output [9:0]PHS27_pwm_val;
  output [1:0]PHS27_irq_mask;
  output PHS27_irq1_clr;
  output PHS27_irq0_clr;
  output [9:0]PHS28_pwm_val;
  output [1:0]PHS28_irq_mask;
  output PHS28_irq1_clr;
  output PHS28_irq0_clr;
  output [9:0]PHS29_pwm_val;
  output [1:0]PHS29_irq_mask;
  output PHS29_irq1_clr;
  output PHS29_irq0_clr;
  output [9:0]PHS30_pwm_val;
  output [1:0]PHS30_irq_mask;
  output PHS30_irq1_clr;
  output PHS30_irq0_clr;
  output [9:0]PHS31_pwm_val;
  output [1:0]PHS31_irq_mask;
  output PHS31_irq1_clr;
  output PHS31_irq0_clr;
  output [9:0]PHS32_pwm_val;
  output [1:0]PHS32_irq_mask;
  output PHS32_irq1_clr;
  output PHS32_irq0_clr;
  output [9:0]PHS33_pwm_val;
  output [1:0]PHS33_irq_mask;
  output PHS33_irq1_clr;
  output PHS33_irq0_clr;
  output [9:0]PHS34_pwm_val;
  output [1:0]PHS34_irq_mask;
  output PHS34_irq1_clr;
  output PHS34_irq0_clr;
  output [9:0]PHS35_pwm_val;
  output [1:0]PHS35_irq_mask;
  output PHS35_irq1_clr;
  output PHS35_irq0_clr;
  output [9:0]PHS36_pwm_val;
  output [1:0]PHS36_irq_mask;
  output PHS36_irq1_clr;
  output PHS36_irq0_clr;
  output [9:0]PHS37_pwm_val;
  output [1:0]PHS37_irq_mask;
  output PHS37_irq1_clr;
  output PHS37_irq0_clr;
  output [9:0]PHS38_pwm_val;
  output [1:0]PHS38_irq_mask;
  output PHS38_irq1_clr;
  output PHS38_irq0_clr;
  output [9:0]PHS39_pwm_val;
  output [1:0]PHS39_irq_mask;
  output PHS39_irq1_clr;
  output PHS39_irq0_clr;
  output [9:0]PHS40_pwm_val;
  output [1:0]PHS40_irq_mask;
  output PHS40_irq1_clr;
  output PHS40_irq0_clr;
  output [9:0]PHS41_pwm_val;
  output [1:0]PHS41_irq_mask;
  output PHS41_irq1_clr;
  output PHS41_irq0_clr;
  output [9:0]PHS42_pwm_val;
  output [1:0]PHS42_irq_mask;
  output PHS42_irq1_clr;
  output PHS42_irq0_clr;
  output [9:0]PHS43_pwm_val;
  output [1:0]PHS43_irq_mask;
  output PHS43_irq1_clr;
  output PHS43_irq0_clr;
  output [9:0]PHS44_pwm_val;
  output [1:0]PHS44_irq_mask;
  output PHS44_irq1_clr;
  output PHS44_irq0_clr;
  output [9:0]PHS45_pwm_val;
  output [1:0]PHS45_irq_mask;
  output PHS45_irq1_clr;
  output PHS45_irq0_clr;
  output [9:0]PHS46_pwm_val;
  output [1:0]PHS46_irq_mask;
  output PHS46_irq1_clr;
  output PHS46_irq0_clr;
  output [9:0]PHS47_pwm_val;
  output [1:0]PHS47_irq_mask;
  output PHS47_irq1_clr;
  output PHS47_irq0_clr;
  output [9:0]PHS48_pwm_val;
  output [1:0]PHS48_irq_mask;
  output PHS48_irq1_clr;
  output PHS48_irq0_clr;
  output [9:0]PHS49_pwm_val;
  output [1:0]PHS49_irq_mask;
  output PHS49_irq1_clr;
  output PHS49_irq0_clr;
  output [24:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output PHS0_vld_out;
  output PHS1_vld_out;
  output PHS2_vld_out;
  output PHS3_vld_out;
  output PHS4_vld_out;
  output PHS5_vld_out;
  output PHS6_vld_out;
  output PHS7_vld_out;
  output PHS8_vld_out;
  output PHS9_vld_out;
  output PHS10_vld_out;
  output PHS11_vld_out;
  output PHS12_vld_out;
  output PHS13_vld_out;
  output PHS14_vld_out;
  output PHS15_vld_out;
  output PHS16_vld_out;
  output PHS17_vld_out;
  output PHS18_vld_out;
  output PHS19_vld_out;
  output PHS20_vld_out;
  output PHS21_vld_out;
  output PHS22_vld_out;
  output PHS23_vld_out;
  output PHS24_vld_out;
  output PHS25_vld_out;
  output PHS26_vld_out;
  output PHS27_vld_out;
  output PHS28_vld_out;
  output PHS29_vld_out;
  output PHS30_vld_out;
  output PHS31_vld_out;
  output PHS32_vld_out;
  output PHS33_vld_out;
  output PHS34_vld_out;
  output PHS35_vld_out;
  output PHS36_vld_out;
  output PHS37_vld_out;
  output PHS38_vld_out;
  output PHS39_vld_out;
  output PHS40_vld_out;
  output PHS41_vld_out;
  output PHS42_vld_out;
  output PHS43_vld_out;
  output PHS44_vld_out;
  output PHS45_vld_out;
  output PHS46_vld_out;
  output PHS47_vld_out;
  output PHS48_vld_out;
  output PHS49_vld_out;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [7:0]s00_axi_awaddr;
  input [24:0]s00_axi_wdata;
  input [7:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input PHS0_status;
  input PHS0_vld_in;
  input PHS1_status;
  input PHS1_vld_in;
  input PHS2_status;
  input PHS2_vld_in;
  input PHS3_status;
  input PHS3_vld_in;
  input PHS4_status;
  input PHS4_vld_in;
  input PHS5_status;
  input PHS5_vld_in;
  input PHS6_status;
  input PHS6_vld_in;
  input PHS7_status;
  input PHS7_vld_in;
  input PHS8_status;
  input PHS8_vld_in;
  input PHS9_status;
  input PHS9_vld_in;
  input PHS10_status;
  input PHS10_vld_in;
  input PHS11_status;
  input PHS11_vld_in;
  input PHS12_status;
  input PHS12_vld_in;
  input PHS13_status;
  input PHS13_vld_in;
  input PHS14_status;
  input PHS14_vld_in;
  input PHS15_status;
  input PHS15_vld_in;
  input PHS16_status;
  input PHS16_vld_in;
  input PHS17_status;
  input PHS17_vld_in;
  input PHS18_status;
  input PHS18_vld_in;
  input PHS19_status;
  input PHS19_vld_in;
  input PHS20_status;
  input PHS20_vld_in;
  input PHS21_status;
  input PHS21_vld_in;
  input PHS22_status;
  input PHS22_vld_in;
  input PHS23_status;
  input PHS23_vld_in;
  input PHS24_status;
  input PHS24_vld_in;
  input PHS25_status;
  input PHS25_vld_in;
  input PHS26_status;
  input PHS26_vld_in;
  input PHS27_status;
  input PHS27_vld_in;
  input PHS28_status;
  input PHS28_vld_in;
  input PHS29_status;
  input PHS29_vld_in;
  input PHS30_status;
  input PHS30_vld_in;
  input PHS31_status;
  input PHS31_vld_in;
  input PHS32_status;
  input PHS32_vld_in;
  input PHS33_status;
  input PHS33_vld_in;
  input PHS34_status;
  input PHS34_vld_in;
  input PHS35_status;
  input PHS35_vld_in;
  input PHS36_status;
  input PHS36_vld_in;
  input PHS37_status;
  input PHS37_vld_in;
  input PHS38_status;
  input PHS38_vld_in;
  input PHS39_status;
  input PHS39_vld_in;
  input PHS40_status;
  input PHS40_vld_in;
  input PHS41_status;
  input PHS41_vld_in;
  input PHS42_status;
  input PHS42_vld_in;
  input PHS43_status;
  input PHS43_vld_in;
  input PHS44_status;
  input PHS44_vld_in;
  input PHS45_status;
  input PHS45_vld_in;
  input PHS46_status;
  input PHS46_vld_in;
  input PHS47_status;
  input PHS47_vld_in;
  input PHS48_status;
  input PHS48_vld_in;
  input PHS49_status;
  input PHS49_vld_in;

  wire PHS0_irq0_clr;
  wire PHS0_irq1_clr;
  wire [1:0]PHS0_irq_mask;
  wire [9:0]PHS0_pwm_val;
  wire PHS0_status;
  wire PHS0_vld_in;
  wire PHS0_vld_out;
  wire PHS0_vld_out_i_2_n_0;
  wire PHS10_irq0_clr;
  wire PHS10_irq1_clr;
  wire [1:0]PHS10_irq_mask;
  wire [9:0]PHS10_pwm_val;
  wire PHS10_status;
  wire PHS10_vld_in;
  wire PHS10_vld_out;
  wire PHS10_vld_out_i_1_n_0;
  wire PHS11_irq0_clr;
  wire PHS11_irq1_clr;
  wire [1:0]PHS11_irq_mask;
  wire [9:0]PHS11_pwm_val;
  wire PHS11_status;
  wire PHS11_vld_in;
  wire PHS11_vld_out;
  wire PHS11_vld_out_i_1_n_0;
  wire PHS12_irq0_clr;
  wire PHS12_irq1_clr;
  wire [1:0]PHS12_irq_mask;
  wire [9:0]PHS12_pwm_val;
  wire PHS12_status;
  wire PHS12_vld_in;
  wire PHS12_vld_out;
  wire PHS12_vld_out_i_1_n_0;
  wire PHS13_irq0_clr;
  wire PHS13_irq1_clr;
  wire [1:0]PHS13_irq_mask;
  wire [9:0]PHS13_pwm_val;
  wire PHS13_status;
  wire PHS13_vld_in;
  wire PHS13_vld_out;
  wire PHS13_vld_out_i_1_n_0;
  wire PHS14_irq0_clr;
  wire PHS14_irq1_clr;
  wire [1:0]PHS14_irq_mask;
  wire [9:0]PHS14_pwm_val;
  wire PHS14_status;
  wire PHS14_vld_in;
  wire PHS14_vld_out;
  wire PHS14_vld_out_i_1_n_0;
  wire PHS15_irq0_clr;
  wire PHS15_irq1_clr;
  wire [1:0]PHS15_irq_mask;
  wire [9:0]PHS15_pwm_val;
  wire PHS15_status;
  wire PHS15_vld_in;
  wire PHS15_vld_out;
  wire PHS15_vld_out_i_1_n_0;
  wire PHS16_irq0_clr;
  wire PHS16_irq1_clr;
  wire [1:0]PHS16_irq_mask;
  wire [9:0]PHS16_pwm_val;
  wire PHS16_status;
  wire PHS16_vld_in;
  wire PHS16_vld_out;
  wire PHS16_vld_out_i_1_n_0;
  wire PHS17_irq0_clr;
  wire PHS17_irq1_clr;
  wire [1:0]PHS17_irq_mask;
  wire [9:0]PHS17_pwm_val;
  wire PHS17_status;
  wire PHS17_vld_in;
  wire PHS17_vld_out;
  wire PHS17_vld_out_i_1_n_0;
  wire PHS18_irq0_clr;
  wire PHS18_irq1_clr;
  wire [1:0]PHS18_irq_mask;
  wire [9:0]PHS18_pwm_val;
  wire PHS18_status;
  wire PHS18_vld_in;
  wire PHS18_vld_out;
  wire PHS18_vld_out_i_1_n_0;
  wire PHS19_irq0_clr;
  wire PHS19_irq1_clr;
  wire [1:0]PHS19_irq_mask;
  wire [9:0]PHS19_pwm_val;
  wire PHS19_status;
  wire PHS19_vld_in;
  wire PHS19_vld_out;
  wire PHS19_vld_out_i_1_n_0;
  wire PHS1_irq0_clr;
  wire PHS1_irq1_clr;
  wire [1:0]PHS1_irq_mask;
  wire [9:0]PHS1_pwm_val;
  wire PHS1_status;
  wire PHS1_vld_in;
  wire PHS1_vld_out;
  wire PHS1_vld_out_i_1_n_0;
  wire PHS20_irq0_clr;
  wire PHS20_irq1_clr;
  wire [1:0]PHS20_irq_mask;
  wire [9:0]PHS20_pwm_val;
  wire PHS20_status;
  wire PHS20_vld_in;
  wire PHS20_vld_out;
  wire PHS20_vld_out_i_1_n_0;
  wire PHS21_irq0_clr;
  wire PHS21_irq1_clr;
  wire [1:0]PHS21_irq_mask;
  wire [9:0]PHS21_pwm_val;
  wire PHS21_status;
  wire PHS21_vld_in;
  wire PHS21_vld_out;
  wire PHS21_vld_out_i_1_n_0;
  wire PHS22_irq0_clr;
  wire PHS22_irq1_clr;
  wire [1:0]PHS22_irq_mask;
  wire [9:0]PHS22_pwm_val;
  wire PHS22_status;
  wire PHS22_vld_in;
  wire PHS22_vld_out;
  wire PHS22_vld_out_i_1_n_0;
  wire PHS23_irq0_clr;
  wire PHS23_irq1_clr;
  wire [1:0]PHS23_irq_mask;
  wire [9:0]PHS23_pwm_val;
  wire PHS23_status;
  wire PHS23_vld_in;
  wire PHS23_vld_out;
  wire PHS23_vld_out_i_1_n_0;
  wire PHS24_irq0_clr;
  wire PHS24_irq1_clr;
  wire [1:0]PHS24_irq_mask;
  wire [9:0]PHS24_pwm_val;
  wire PHS24_status;
  wire PHS24_vld_in;
  wire PHS24_vld_out;
  wire PHS24_vld_out_i_1_n_0;
  wire PHS25_irq0_clr;
  wire PHS25_irq1_clr;
  wire [1:0]PHS25_irq_mask;
  wire [9:0]PHS25_pwm_val;
  wire PHS25_status;
  wire PHS25_vld_in;
  wire PHS25_vld_out;
  wire PHS25_vld_out_i_1_n_0;
  wire PHS26_irq0_clr;
  wire PHS26_irq1_clr;
  wire [1:0]PHS26_irq_mask;
  wire [9:0]PHS26_pwm_val;
  wire PHS26_status;
  wire PHS26_vld_in;
  wire PHS26_vld_out;
  wire PHS26_vld_out_i_1_n_0;
  wire PHS27_irq0_clr;
  wire PHS27_irq1_clr;
  wire [1:0]PHS27_irq_mask;
  wire [9:0]PHS27_pwm_val;
  wire PHS27_status;
  wire PHS27_vld_in;
  wire PHS27_vld_out;
  wire PHS27_vld_out_i_1_n_0;
  wire PHS28_irq0_clr;
  wire PHS28_irq1_clr;
  wire [1:0]PHS28_irq_mask;
  wire [9:0]PHS28_pwm_val;
  wire PHS28_status;
  wire PHS28_vld_in;
  wire PHS28_vld_out;
  wire PHS28_vld_out_i_1_n_0;
  wire PHS29_irq0_clr;
  wire PHS29_irq1_clr;
  wire [1:0]PHS29_irq_mask;
  wire [9:0]PHS29_pwm_val;
  wire PHS29_status;
  wire PHS29_vld_in;
  wire PHS29_vld_out;
  wire PHS29_vld_out_i_1_n_0;
  wire PHS2_irq0_clr;
  wire PHS2_irq1_clr;
  wire [1:0]PHS2_irq_mask;
  wire [9:0]PHS2_pwm_val;
  wire PHS2_status;
  wire PHS2_vld_in;
  wire PHS2_vld_out;
  wire PHS2_vld_out_i_1_n_0;
  wire PHS30_irq0_clr;
  wire PHS30_irq1_clr;
  wire [1:0]PHS30_irq_mask;
  wire [9:0]PHS30_pwm_val;
  wire PHS30_status;
  wire PHS30_vld_in;
  wire PHS30_vld_out;
  wire PHS30_vld_out_i_1_n_0;
  wire PHS31_irq0_clr;
  wire PHS31_irq1_clr;
  wire [1:0]PHS31_irq_mask;
  wire [9:0]PHS31_pwm_val;
  wire PHS31_status;
  wire PHS31_vld_in;
  wire PHS31_vld_out;
  wire PHS31_vld_out_i_1_n_0;
  wire PHS32_irq0_clr;
  wire PHS32_irq1_clr;
  wire [1:0]PHS32_irq_mask;
  wire [9:0]PHS32_pwm_val;
  wire PHS32_status;
  wire PHS32_vld_in;
  wire PHS32_vld_out;
  wire PHS32_vld_out_i_1_n_0;
  wire PHS33_irq0_clr;
  wire PHS33_irq1_clr;
  wire [1:0]PHS33_irq_mask;
  wire [9:0]PHS33_pwm_val;
  wire PHS33_status;
  wire PHS33_vld_in;
  wire PHS33_vld_out;
  wire PHS33_vld_out_i_1_n_0;
  wire PHS34_irq0_clr;
  wire PHS34_irq1_clr;
  wire [1:0]PHS34_irq_mask;
  wire [9:0]PHS34_pwm_val;
  wire PHS34_status;
  wire PHS34_vld_in;
  wire PHS34_vld_out;
  wire PHS34_vld_out_i_1_n_0;
  wire PHS35_irq0_clr;
  wire PHS35_irq1_clr;
  wire [1:0]PHS35_irq_mask;
  wire [9:0]PHS35_pwm_val;
  wire PHS35_status;
  wire PHS35_vld_in;
  wire PHS35_vld_out;
  wire PHS35_vld_out_i_1_n_0;
  wire PHS36_irq0_clr;
  wire PHS36_irq1_clr;
  wire [1:0]PHS36_irq_mask;
  wire [9:0]PHS36_pwm_val;
  wire PHS36_status;
  wire PHS36_vld_in;
  wire PHS36_vld_out;
  wire PHS36_vld_out_i_1_n_0;
  wire PHS37_irq0_clr;
  wire PHS37_irq1_clr;
  wire [1:0]PHS37_irq_mask;
  wire [9:0]PHS37_pwm_val;
  wire PHS37_status;
  wire PHS37_vld_in;
  wire PHS37_vld_out;
  wire PHS37_vld_out_i_1_n_0;
  wire PHS38_irq0_clr;
  wire PHS38_irq1_clr;
  wire [1:0]PHS38_irq_mask;
  wire [9:0]PHS38_pwm_val;
  wire PHS38_status;
  wire PHS38_vld_in;
  wire PHS38_vld_out;
  wire PHS38_vld_out_i_1_n_0;
  wire PHS39_irq0_clr;
  wire PHS39_irq1_clr;
  wire [1:0]PHS39_irq_mask;
  wire [9:0]PHS39_pwm_val;
  wire PHS39_status;
  wire PHS39_vld_in;
  wire PHS39_vld_out;
  wire PHS39_vld_out_i_1_n_0;
  wire PHS3_irq0_clr;
  wire PHS3_irq1_clr;
  wire [1:0]PHS3_irq_mask;
  wire [9:0]PHS3_pwm_val;
  wire PHS3_status;
  wire PHS3_vld_in;
  wire PHS3_vld_out;
  wire PHS3_vld_out_i_1_n_0;
  wire PHS40_irq0_clr;
  wire PHS40_irq1_clr;
  wire [1:0]PHS40_irq_mask;
  wire [9:0]PHS40_pwm_val;
  wire PHS40_status;
  wire PHS40_vld_in;
  wire PHS40_vld_out;
  wire PHS40_vld_out_i_1_n_0;
  wire PHS41_irq0_clr;
  wire PHS41_irq1_clr;
  wire [1:0]PHS41_irq_mask;
  wire [9:0]PHS41_pwm_val;
  wire PHS41_status;
  wire PHS41_vld_in;
  wire PHS41_vld_out;
  wire PHS41_vld_out_i_1_n_0;
  wire PHS42_irq0_clr;
  wire PHS42_irq1_clr;
  wire [1:0]PHS42_irq_mask;
  wire [9:0]PHS42_pwm_val;
  wire PHS42_status;
  wire PHS42_vld_in;
  wire PHS42_vld_out;
  wire PHS42_vld_out_i_1_n_0;
  wire PHS43_irq0_clr;
  wire PHS43_irq1_clr;
  wire [1:0]PHS43_irq_mask;
  wire [9:0]PHS43_pwm_val;
  wire PHS43_status;
  wire PHS43_vld_in;
  wire PHS43_vld_out;
  wire PHS43_vld_out_i_1_n_0;
  wire PHS44_irq0_clr;
  wire PHS44_irq1_clr;
  wire [1:0]PHS44_irq_mask;
  wire [9:0]PHS44_pwm_val;
  wire PHS44_status;
  wire PHS44_vld_in;
  wire PHS44_vld_out;
  wire PHS44_vld_out_i_1_n_0;
  wire PHS45_irq0_clr;
  wire PHS45_irq1_clr;
  wire [1:0]PHS45_irq_mask;
  wire [9:0]PHS45_pwm_val;
  wire PHS45_status;
  wire PHS45_vld_in;
  wire PHS45_vld_out;
  wire PHS45_vld_out_i_1_n_0;
  wire PHS46_irq0_clr;
  wire PHS46_irq1_clr;
  wire [1:0]PHS46_irq_mask;
  wire [9:0]PHS46_pwm_val;
  wire PHS46_status;
  wire PHS46_vld_in;
  wire PHS46_vld_out;
  wire PHS46_vld_out_i_1_n_0;
  wire PHS47_irq0_clr;
  wire PHS47_irq1_clr;
  wire [1:0]PHS47_irq_mask;
  wire [9:0]PHS47_pwm_val;
  wire PHS47_status;
  wire PHS47_vld_in;
  wire PHS47_vld_out;
  wire PHS47_vld_out_i_1_n_0;
  wire PHS48_irq0_clr;
  wire PHS48_irq1_clr;
  wire [1:0]PHS48_irq_mask;
  wire [9:0]PHS48_pwm_val;
  wire PHS48_status;
  wire PHS48_vld_in;
  wire PHS48_vld_out;
  wire PHS48_vld_out_i_1_n_0;
  wire PHS49_irq0_clr;
  wire PHS49_irq1_clr;
  wire [1:0]PHS49_irq_mask;
  wire [9:0]PHS49_pwm_val;
  wire PHS49_status;
  wire PHS49_vld_in;
  wire PHS49_vld_out;
  wire PHS49_vld_out_i_1_n_0;
  wire PHS4_irq0_clr;
  wire PHS4_irq1_clr;
  wire [1:0]PHS4_irq_mask;
  wire [9:0]PHS4_pwm_val;
  wire PHS4_status;
  wire PHS4_vld_in;
  wire PHS4_vld_out;
  wire PHS4_vld_out_i_1_n_0;
  wire PHS5_irq0_clr;
  wire PHS5_irq1_clr;
  wire [1:0]PHS5_irq_mask;
  wire [9:0]PHS5_pwm_val;
  wire PHS5_status;
  wire PHS5_vld_in;
  wire PHS5_vld_out;
  wire PHS5_vld_out_i_1_n_0;
  wire PHS6_irq0_clr;
  wire PHS6_irq1_clr;
  wire [1:0]PHS6_irq_mask;
  wire [9:0]PHS6_pwm_val;
  wire PHS6_status;
  wire PHS6_vld_in;
  wire PHS6_vld_out;
  wire PHS6_vld_out_i_1_n_0;
  wire PHS7_irq0_clr;
  wire PHS7_irq1_clr;
  wire [1:0]PHS7_irq_mask;
  wire [9:0]PHS7_pwm_val;
  wire PHS7_status;
  wire PHS7_vld_in;
  wire PHS7_vld_out;
  wire PHS7_vld_out_i_1_n_0;
  wire PHS8_irq0_clr;
  wire PHS8_irq1_clr;
  wire [1:0]PHS8_irq_mask;
  wire [9:0]PHS8_pwm_val;
  wire PHS8_status;
  wire PHS8_vld_in;
  wire PHS8_vld_out;
  wire PHS8_vld_out_i_1_n_0;
  wire PHS9_irq0_clr;
  wire PHS9_irq1_clr;
  wire [1:0]PHS9_irq_mask;
  wire [9:0]PHS9_pwm_val;
  wire PHS9_status;
  wire PHS9_vld_in;
  wire PHS9_vld_out;
  wire PHS9_vld_out_i_1_n_0;
  wire PHS_regs_v1_0_S00_AXI_inst_n_100;
  wire PHS_regs_v1_0_S00_AXI_inst_n_101;
  wire PHS_regs_v1_0_S00_AXI_inst_n_102;
  wire PHS_regs_v1_0_S00_AXI_inst_n_103;
  wire PHS_regs_v1_0_S00_AXI_inst_n_104;
  wire PHS_regs_v1_0_S00_AXI_inst_n_105;
  wire PHS_regs_v1_0_S00_AXI_inst_n_106;
  wire PHS_regs_v1_0_S00_AXI_inst_n_113;
  wire PHS_regs_v1_0_S00_AXI_inst_n_114;
  wire PHS_regs_v1_0_S00_AXI_inst_n_115;
  wire PHS_regs_v1_0_S00_AXI_inst_n_116;
  wire PHS_regs_v1_0_S00_AXI_inst_n_117;
  wire PHS_regs_v1_0_S00_AXI_inst_n_118;
  wire PHS_regs_v1_0_S00_AXI_inst_n_119;
  wire PHS_regs_v1_0_S00_AXI_inst_n_132;
  wire PHS_regs_v1_0_S00_AXI_inst_n_189;
  wire PHS_regs_v1_0_S00_AXI_inst_n_246;
  wire PHS_regs_v1_0_S00_AXI_inst_n_303;
  wire PHS_regs_v1_0_S00_AXI_inst_n_4;
  wire PHS_regs_v1_0_S00_AXI_inst_n_56;
  wire PHS_regs_v1_0_S00_AXI_inst_n_57;
  wire PHS_regs_v1_0_S00_AXI_inst_n_58;
  wire PHS_regs_v1_0_S00_AXI_inst_n_584;
  wire PHS_regs_v1_0_S00_AXI_inst_n_59;
  wire PHS_regs_v1_0_S00_AXI_inst_n_60;
  wire PHS_regs_v1_0_S00_AXI_inst_n_61;
  wire PHS_regs_v1_0_S00_AXI_inst_n_62;
  wire PHS_regs_v1_0_S00_AXI_inst_n_63;
  wire PHS_regs_v1_0_S00_AXI_inst_n_64;
  wire PHS_regs_v1_0_S00_AXI_inst_n_641;
  wire PHS_regs_v1_0_S00_AXI_inst_n_65;
  wire PHS_regs_v1_0_S00_AXI_inst_n_66;
  wire PHS_regs_v1_0_S00_AXI_inst_n_67;
  wire PHS_regs_v1_0_S00_AXI_inst_n_68;
  wire PHS_regs_v1_0_S00_AXI_inst_n_69;
  wire PHS_regs_v1_0_S00_AXI_inst_n_698;
  wire PHS_regs_v1_0_S00_AXI_inst_n_70;
  wire PHS_regs_v1_0_S00_AXI_inst_n_71;
  wire PHS_regs_v1_0_S00_AXI_inst_n_72;
  wire PHS_regs_v1_0_S00_AXI_inst_n_73;
  wire PHS_regs_v1_0_S00_AXI_inst_n_74;
  wire PHS_regs_v1_0_S00_AXI_inst_n_75;
  wire PHS_regs_v1_0_S00_AXI_inst_n_755;
  wire PHS_regs_v1_0_S00_AXI_inst_n_76;
  wire PHS_regs_v1_0_S00_AXI_inst_n_77;
  wire PHS_regs_v1_0_S00_AXI_inst_n_78;
  wire PHS_regs_v1_0_S00_AXI_inst_n_79;
  wire PHS_regs_v1_0_S00_AXI_inst_n_80;
  wire PHS_regs_v1_0_S00_AXI_inst_n_81;
  wire PHS_regs_v1_0_S00_AXI_inst_n_82;
  wire PHS_regs_v1_0_S00_AXI_inst_n_83;
  wire PHS_regs_v1_0_S00_AXI_inst_n_84;
  wire PHS_regs_v1_0_S00_AXI_inst_n_85;
  wire PHS_regs_v1_0_S00_AXI_inst_n_853;
  wire PHS_regs_v1_0_S00_AXI_inst_n_854;
  wire PHS_regs_v1_0_S00_AXI_inst_n_855;
  wire PHS_regs_v1_0_S00_AXI_inst_n_856;
  wire PHS_regs_v1_0_S00_AXI_inst_n_857;
  wire PHS_regs_v1_0_S00_AXI_inst_n_858;
  wire PHS_regs_v1_0_S00_AXI_inst_n_859;
  wire PHS_regs_v1_0_S00_AXI_inst_n_86;
  wire PHS_regs_v1_0_S00_AXI_inst_n_860;
  wire PHS_regs_v1_0_S00_AXI_inst_n_861;
  wire PHS_regs_v1_0_S00_AXI_inst_n_862;
  wire PHS_regs_v1_0_S00_AXI_inst_n_863;
  wire PHS_regs_v1_0_S00_AXI_inst_n_864;
  wire PHS_regs_v1_0_S00_AXI_inst_n_865;
  wire PHS_regs_v1_0_S00_AXI_inst_n_866;
  wire PHS_regs_v1_0_S00_AXI_inst_n_867;
  wire PHS_regs_v1_0_S00_AXI_inst_n_868;
  wire PHS_regs_v1_0_S00_AXI_inst_n_869;
  wire PHS_regs_v1_0_S00_AXI_inst_n_87;
  wire PHS_regs_v1_0_S00_AXI_inst_n_870;
  wire PHS_regs_v1_0_S00_AXI_inst_n_871;
  wire PHS_regs_v1_0_S00_AXI_inst_n_872;
  wire PHS_regs_v1_0_S00_AXI_inst_n_873;
  wire PHS_regs_v1_0_S00_AXI_inst_n_874;
  wire PHS_regs_v1_0_S00_AXI_inst_n_875;
  wire PHS_regs_v1_0_S00_AXI_inst_n_876;
  wire PHS_regs_v1_0_S00_AXI_inst_n_877;
  wire PHS_regs_v1_0_S00_AXI_inst_n_878;
  wire PHS_regs_v1_0_S00_AXI_inst_n_879;
  wire PHS_regs_v1_0_S00_AXI_inst_n_88;
  wire PHS_regs_v1_0_S00_AXI_inst_n_880;
  wire PHS_regs_v1_0_S00_AXI_inst_n_881;
  wire PHS_regs_v1_0_S00_AXI_inst_n_882;
  wire PHS_regs_v1_0_S00_AXI_inst_n_883;
  wire PHS_regs_v1_0_S00_AXI_inst_n_884;
  wire PHS_regs_v1_0_S00_AXI_inst_n_885;
  wire PHS_regs_v1_0_S00_AXI_inst_n_886;
  wire PHS_regs_v1_0_S00_AXI_inst_n_887;
  wire PHS_regs_v1_0_S00_AXI_inst_n_888;
  wire PHS_regs_v1_0_S00_AXI_inst_n_889;
  wire PHS_regs_v1_0_S00_AXI_inst_n_89;
  wire PHS_regs_v1_0_S00_AXI_inst_n_890;
  wire PHS_regs_v1_0_S00_AXI_inst_n_891;
  wire PHS_regs_v1_0_S00_AXI_inst_n_90;
  wire PHS_regs_v1_0_S00_AXI_inst_n_91;
  wire PHS_regs_v1_0_S00_AXI_inst_n_92;
  wire PHS_regs_v1_0_S00_AXI_inst_n_93;
  wire PHS_regs_v1_0_S00_AXI_inst_n_94;
  wire PHS_regs_v1_0_S00_AXI_inst_n_95;
  wire PHS_regs_v1_0_S00_AXI_inst_n_96;
  wire PHS_regs_v1_0_S00_AXI_inst_n_97;
  wire PHS_regs_v1_0_S00_AXI_inst_n_98;
  wire PHS_regs_v1_0_S00_AXI_inst_n_99;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire [9:2]axi_araddr;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire p_0_in;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [24:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [24:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire \slv_reg101[0]_i_1_n_0 ;
  wire \slv_reg105[0]_i_1_n_0 ;
  wire \slv_reg109[0]_i_1_n_0 ;
  wire \slv_reg113[0]_i_1_n_0 ;
  wire \slv_reg117[0]_i_1_n_0 ;
  wire \slv_reg121[0]_i_1_n_0 ;
  wire \slv_reg125[0]_i_1_n_0 ;
  wire \slv_reg129[0]_i_1_n_0 ;
  wire \slv_reg133[0]_i_1_n_0 ;
  wire \slv_reg137[0]_i_1_n_0 ;
  wire \slv_reg13[0]_i_1_n_0 ;
  wire \slv_reg141[0]_i_1_n_0 ;
  wire \slv_reg145[0]_i_1_n_0 ;
  wire \slv_reg149[0]_i_1_n_0 ;
  wire \slv_reg153[0]_i_1_n_0 ;
  wire \slv_reg157[0]_i_1_n_0 ;
  wire \slv_reg161[0]_i_1_n_0 ;
  wire \slv_reg165[0]_i_1_n_0 ;
  wire \slv_reg169[0]_i_1_n_0 ;
  wire \slv_reg173[0]_i_1_n_0 ;
  wire \slv_reg177[0]_i_1_n_0 ;
  wire \slv_reg17[0]_i_1_n_0 ;
  wire \slv_reg181[0]_i_1_n_0 ;
  wire \slv_reg185[0]_i_1_n_0 ;
  wire \slv_reg189[0]_i_1_n_0 ;
  wire \slv_reg193[0]_i_1_n_0 ;
  wire \slv_reg197[0]_i_1_n_0 ;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg21[0]_i_1_n_0 ;
  wire \slv_reg25[0]_i_1_n_0 ;
  wire \slv_reg29[0]_i_1_n_0 ;
  wire \slv_reg33[0]_i_1_n_0 ;
  wire \slv_reg37[0]_i_1_n_0 ;
  wire \slv_reg41[0]_i_1_n_0 ;
  wire \slv_reg45[0]_i_1_n_0 ;
  wire \slv_reg49[0]_i_1_n_0 ;
  wire \slv_reg53[0]_i_1_n_0 ;
  wire \slv_reg57[0]_i_1_n_0 ;
  wire \slv_reg5[0]_i_1_n_0 ;
  wire \slv_reg61[0]_i_1_n_0 ;
  wire \slv_reg65[0]_i_1_n_0 ;
  wire \slv_reg69[0]_i_1_n_0 ;
  wire \slv_reg73[0]_i_1_n_0 ;
  wire \slv_reg77[0]_i_1_n_0 ;
  wire \slv_reg81[0]_i_1_n_0 ;
  wire \slv_reg85[0]_i_1_n_0 ;
  wire \slv_reg89[0]_i_1_n_0 ;
  wire \slv_reg93[0]_i_1_n_0 ;
  wire \slv_reg97[0]_i_1_n_0 ;
  wire \slv_reg9[0]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hBFFFBFFE80008002)) 
    PHS0_vld_out_i_2
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I2(axi_araddr[9]),
        .I3(axi_araddr[8]),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_119),
        .I5(PHS0_vld_out),
        .O(PHS0_vld_out_i_2_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS10_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_873),
        .I4(PHS10_vld_out),
        .O(PHS10_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS11_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_867),
        .I4(PHS11_vld_out),
        .O(PHS11_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS12_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_874),
        .I4(PHS12_vld_out),
        .O(PHS12_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS13_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_866),
        .I4(PHS13_vld_out),
        .O(PHS13_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS14_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_875),
        .I4(PHS14_vld_out),
        .O(PHS14_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS15_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_865),
        .I4(PHS15_vld_out),
        .O(PHS15_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS16_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_864),
        .I4(PHS16_vld_out),
        .O(PHS16_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS17_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_878),
        .I4(PHS17_vld_out),
        .O(PHS17_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS18_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_863),
        .I4(PHS18_vld_out),
        .O(PHS18_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBFFFFFB88000008)) 
    PHS19_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_885),
        .I3(axi_araddr[9]),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS19_vld_out),
        .O(PHS19_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFBFFE80008002)) 
    PHS1_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I2(axi_araddr[9]),
        .I3(axi_araddr[8]),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_118),
        .I5(PHS1_vld_out),
        .O(PHS1_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS20_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_886),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS20_vld_out),
        .O(PHS20_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS21_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_887),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS21_vld_out),
        .O(PHS21_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS22_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_106),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS22_vld_out),
        .O(PHS22_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS23_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_882),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS23_vld_out),
        .O(PHS23_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS24_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_888),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS24_vld_out),
        .O(PHS24_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS25_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_114),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS25_vld_out),
        .O(PHS25_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS26_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_113),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS26_vld_out),
        .O(PHS26_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS27_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_883),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS27_vld_out),
        .O(PHS27_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS28_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_889),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS28_vld_out),
        .O(PHS28_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS29_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_890),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS29_vld_out),
        .O(PHS29_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS2_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_877),
        .I4(PHS2_vld_out),
        .O(PHS2_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS30_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_891),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS30_vld_out),
        .O(PHS30_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS31_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(axi_araddr[8]),
        .I2(axi_araddr[9]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_884),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS31_vld_out),
        .O(PHS31_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS32_vld_out_i_1
       (.I0(axi_araddr[8]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_862),
        .I4(PHS32_vld_out),
        .O(PHS32_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS33_vld_out_i_1
       (.I0(axi_araddr[8]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_879),
        .I4(PHS33_vld_out),
        .O(PHS33_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS34_vld_out_i_1
       (.I0(axi_araddr[8]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_861),
        .I4(PHS34_vld_out),
        .O(PHS34_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBFFFFFB88000008)) 
    PHS35_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_885),
        .I3(axi_araddr[8]),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS35_vld_out),
        .O(PHS35_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS36_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_886),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS36_vld_out),
        .O(PHS36_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS37_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_887),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS37_vld_out),
        .O(PHS37_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS38_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_106),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS38_vld_out),
        .O(PHS38_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS39_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_882),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS39_vld_out),
        .O(PHS39_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFBFFE80008002)) 
    PHS3_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_116),
        .I1(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I2(axi_araddr[9]),
        .I3(axi_araddr[8]),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_885),
        .I5(PHS3_vld_out),
        .O(PHS3_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS40_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_888),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS40_vld_out),
        .O(PHS40_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS41_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_114),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS41_vld_out),
        .O(PHS41_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS42_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_113),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS42_vld_out),
        .O(PHS42_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS43_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_883),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS43_vld_out),
        .O(PHS43_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS44_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_889),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS44_vld_out),
        .O(PHS44_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS45_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_890),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS45_vld_out),
        .O(PHS45_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS46_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_891),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS46_vld_out),
        .O(PHS46_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBFFFFF88800000)) 
    PHS47_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_115),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[8]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_884),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_880),
        .I5(PHS47_vld_out),
        .O(PHS47_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h33333F3700000004)) 
    PHS48_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_117),
        .I1(PHS_regs_v1_0_S00_AXI_inst_n_881),
        .I2(axi_araddr[6]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_119),
        .I4(axi_araddr[7]),
        .I5(PHS48_vld_out),
        .O(PHS48_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h33333F3700000004)) 
    PHS49_vld_out_i_1
       (.I0(PHS_regs_v1_0_S00_AXI_inst_n_117),
        .I1(PHS_regs_v1_0_S00_AXI_inst_n_881),
        .I2(axi_araddr[6]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_118),
        .I4(axi_araddr[7]),
        .I5(PHS49_vld_out),
        .O(PHS49_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS4_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_876),
        .I4(PHS4_vld_out),
        .O(PHS4_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS5_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_870),
        .I4(PHS5_vld_out),
        .O(PHS5_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS6_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_871),
        .I4(PHS6_vld_out),
        .O(PHS6_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS7_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_869),
        .I4(PHS7_vld_out),
        .O(PHS7_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS8_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_872),
        .I4(PHS8_vld_out),
        .O(PHS8_vld_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    PHS9_vld_out_i_1
       (.I0(axi_araddr[9]),
        .I1(axi_araddr[3]),
        .I2(axi_araddr[2]),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_868),
        .I4(PHS9_vld_out),
        .O(PHS9_vld_out_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0_S00_AXI PHS_regs_v1_0_S00_AXI_inst
       (.PHS0_irq0_clr(PHS0_irq0_clr),
        .PHS0_irq1_clr(PHS0_irq1_clr),
        .PHS0_irq_mask(PHS0_irq_mask),
        .PHS0_pwm_val(PHS0_pwm_val),
        .PHS0_vld_out(PHS0_vld_out),
        .PHS0_vld_out_reg_0(PHS0_vld_out_i_2_n_0),
        .PHS10_irq0_clr(PHS10_irq0_clr),
        .PHS10_irq1_clr(PHS10_irq1_clr),
        .PHS10_irq_mask(PHS10_irq_mask),
        .PHS10_pwm_val(PHS10_pwm_val),
        .PHS10_vld_out(PHS10_vld_out),
        .PHS10_vld_out_reg_0(PHS10_vld_out_i_1_n_0),
        .PHS11_irq0_clr(PHS11_irq0_clr),
        .PHS11_irq1_clr(PHS11_irq1_clr),
        .PHS11_irq_mask(PHS11_irq_mask),
        .PHS11_pwm_val(PHS11_pwm_val),
        .PHS11_vld_out(PHS11_vld_out),
        .PHS11_vld_out_reg_0(PHS11_vld_out_i_1_n_0),
        .PHS12_irq0_clr(PHS12_irq0_clr),
        .PHS12_irq1_clr(PHS12_irq1_clr),
        .PHS12_irq_mask(PHS12_irq_mask),
        .PHS12_pwm_val(PHS12_pwm_val),
        .PHS12_vld_out(PHS12_vld_out),
        .PHS12_vld_out_reg_0(PHS12_vld_out_i_1_n_0),
        .PHS13_irq0_clr(PHS13_irq0_clr),
        .PHS13_irq1_clr(PHS13_irq1_clr),
        .PHS13_irq_mask(PHS13_irq_mask),
        .PHS13_pwm_val(PHS13_pwm_val),
        .PHS13_vld_out(PHS13_vld_out),
        .PHS13_vld_out_reg_0(PHS13_vld_out_i_1_n_0),
        .PHS14_irq0_clr(PHS14_irq0_clr),
        .PHS14_irq1_clr(PHS14_irq1_clr),
        .PHS14_irq_mask(PHS14_irq_mask),
        .PHS14_pwm_val(PHS14_pwm_val),
        .PHS14_vld_out(PHS14_vld_out),
        .PHS14_vld_out_reg_0(PHS14_vld_out_i_1_n_0),
        .PHS15_irq0_clr(PHS15_irq0_clr),
        .PHS15_irq1_clr(PHS15_irq1_clr),
        .PHS15_irq_mask(PHS15_irq_mask),
        .PHS15_pwm_val(PHS15_pwm_val),
        .PHS15_vld_out(PHS15_vld_out),
        .PHS15_vld_out_reg_0(PHS15_vld_out_i_1_n_0),
        .PHS16_irq0_clr(PHS16_irq0_clr),
        .PHS16_irq1_clr(PHS16_irq1_clr),
        .PHS16_irq_mask(PHS16_irq_mask),
        .PHS16_pwm_val(PHS16_pwm_val),
        .PHS16_vld_out(PHS16_vld_out),
        .PHS16_vld_out_reg_0(PHS16_vld_out_i_1_n_0),
        .PHS17_irq0_clr(PHS17_irq0_clr),
        .PHS17_irq1_clr(PHS17_irq1_clr),
        .PHS17_irq_mask(PHS17_irq_mask),
        .PHS17_pwm_val(PHS17_pwm_val),
        .PHS17_vld_out(PHS17_vld_out),
        .PHS17_vld_out_reg_0(PHS17_vld_out_i_1_n_0),
        .PHS18_irq0_clr(PHS18_irq0_clr),
        .PHS18_irq1_clr(PHS18_irq1_clr),
        .PHS18_irq_mask(PHS18_irq_mask),
        .PHS18_pwm_val(PHS18_pwm_val),
        .PHS18_vld_out(PHS18_vld_out),
        .PHS18_vld_out_reg_0(PHS18_vld_out_i_1_n_0),
        .PHS19_irq0_clr(PHS19_irq0_clr),
        .PHS19_irq1_clr(PHS19_irq1_clr),
        .PHS19_irq_mask(PHS19_irq_mask),
        .PHS19_pwm_val(PHS19_pwm_val),
        .PHS19_vld_out(PHS19_vld_out),
        .PHS19_vld_out_reg_0(PHS19_vld_out_i_1_n_0),
        .PHS1_irq0_clr(PHS1_irq0_clr),
        .PHS1_irq1_clr(PHS1_irq1_clr),
        .PHS1_irq_mask(PHS1_irq_mask),
        .PHS1_pwm_val(PHS1_pwm_val),
        .PHS1_vld_out(PHS1_vld_out),
        .PHS1_vld_out_reg_0(PHS1_vld_out_i_1_n_0),
        .PHS20_irq0_clr(PHS20_irq0_clr),
        .PHS20_irq1_clr(PHS20_irq1_clr),
        .PHS20_irq_mask(PHS20_irq_mask),
        .PHS20_pwm_val(PHS20_pwm_val),
        .PHS20_vld_out(PHS20_vld_out),
        .PHS20_vld_out_reg_0(PHS20_vld_out_i_1_n_0),
        .PHS21_irq0_clr(PHS21_irq0_clr),
        .PHS21_irq1_clr(PHS21_irq1_clr),
        .PHS21_irq_mask(PHS21_irq_mask),
        .PHS21_pwm_val(PHS21_pwm_val),
        .PHS21_vld_out(PHS21_vld_out),
        .PHS21_vld_out_reg_0(PHS21_vld_out_i_1_n_0),
        .PHS22_irq0_clr(PHS22_irq0_clr),
        .PHS22_irq1_clr(PHS22_irq1_clr),
        .PHS22_irq_mask(PHS22_irq_mask),
        .PHS22_pwm_val(PHS22_pwm_val),
        .PHS22_vld_out(PHS22_vld_out),
        .PHS22_vld_out_reg_0(PHS22_vld_out_i_1_n_0),
        .PHS23_irq0_clr(PHS23_irq0_clr),
        .PHS23_irq1_clr(PHS23_irq1_clr),
        .PHS23_irq_mask(PHS23_irq_mask),
        .PHS23_pwm_val(PHS23_pwm_val),
        .PHS23_vld_out(PHS23_vld_out),
        .PHS23_vld_out_reg_0(PHS23_vld_out_i_1_n_0),
        .PHS24_irq0_clr(PHS24_irq0_clr),
        .PHS24_irq1_clr(PHS24_irq1_clr),
        .PHS24_irq_mask(PHS24_irq_mask),
        .PHS24_pwm_val(PHS24_pwm_val),
        .PHS24_vld_out(PHS24_vld_out),
        .PHS24_vld_out_reg_0(PHS24_vld_out_i_1_n_0),
        .PHS25_irq0_clr(PHS25_irq0_clr),
        .PHS25_irq1_clr(PHS25_irq1_clr),
        .PHS25_irq_mask(PHS25_irq_mask),
        .PHS25_pwm_val(PHS25_pwm_val),
        .PHS25_vld_out(PHS25_vld_out),
        .PHS25_vld_out_reg_0(PHS25_vld_out_i_1_n_0),
        .PHS26_irq0_clr(PHS26_irq0_clr),
        .PHS26_irq1_clr(PHS26_irq1_clr),
        .PHS26_irq_mask(PHS26_irq_mask),
        .PHS26_pwm_val(PHS26_pwm_val),
        .PHS26_vld_out(PHS26_vld_out),
        .PHS26_vld_out_reg_0(PHS26_vld_out_i_1_n_0),
        .PHS27_irq0_clr(PHS27_irq0_clr),
        .PHS27_irq1_clr(PHS27_irq1_clr),
        .PHS27_irq_mask(PHS27_irq_mask),
        .PHS27_pwm_val(PHS27_pwm_val),
        .PHS27_vld_out(PHS27_vld_out),
        .PHS27_vld_out_reg_0(PHS27_vld_out_i_1_n_0),
        .PHS28_irq0_clr(PHS28_irq0_clr),
        .PHS28_irq1_clr(PHS28_irq1_clr),
        .PHS28_irq_mask(PHS28_irq_mask),
        .PHS28_pwm_val(PHS28_pwm_val),
        .PHS28_vld_out(PHS28_vld_out),
        .PHS28_vld_out_reg_0(PHS28_vld_out_i_1_n_0),
        .PHS29_irq0_clr(PHS29_irq0_clr),
        .PHS29_irq1_clr(PHS29_irq1_clr),
        .PHS29_irq_mask(PHS29_irq_mask),
        .PHS29_pwm_val(PHS29_pwm_val),
        .PHS29_vld_out(PHS29_vld_out),
        .PHS29_vld_out_reg_0(PHS29_vld_out_i_1_n_0),
        .PHS2_irq0_clr(PHS2_irq0_clr),
        .PHS2_irq1_clr(PHS2_irq1_clr),
        .PHS2_irq_mask(PHS2_irq_mask),
        .PHS2_pwm_val(PHS2_pwm_val),
        .PHS2_vld_out(PHS2_vld_out),
        .PHS2_vld_out_reg_0(PHS2_vld_out_i_1_n_0),
        .PHS30_irq0_clr(PHS30_irq0_clr),
        .PHS30_irq1_clr(PHS30_irq1_clr),
        .PHS30_irq_mask(PHS30_irq_mask),
        .PHS30_pwm_val(PHS30_pwm_val),
        .PHS30_vld_out(PHS30_vld_out),
        .PHS30_vld_out_reg_0(PHS30_vld_out_i_1_n_0),
        .PHS31_irq0_clr(PHS31_irq0_clr),
        .PHS31_irq1_clr(PHS31_irq1_clr),
        .PHS31_irq_mask(PHS31_irq_mask),
        .PHS31_pwm_val(PHS31_pwm_val),
        .PHS31_vld_out(PHS31_vld_out),
        .PHS31_vld_out_reg_0(PHS31_vld_out_i_1_n_0),
        .PHS32_irq0_clr(PHS32_irq0_clr),
        .PHS32_irq1_clr(PHS32_irq1_clr),
        .PHS32_irq_mask(PHS32_irq_mask),
        .PHS32_pwm_val(PHS32_pwm_val),
        .PHS32_vld_out(PHS32_vld_out),
        .PHS32_vld_out_reg_0(PHS32_vld_out_i_1_n_0),
        .PHS33_irq0_clr(PHS33_irq0_clr),
        .PHS33_irq1_clr(PHS33_irq1_clr),
        .PHS33_irq_mask(PHS33_irq_mask),
        .PHS33_pwm_val(PHS33_pwm_val),
        .PHS33_vld_out(PHS33_vld_out),
        .PHS33_vld_out_reg_0(PHS33_vld_out_i_1_n_0),
        .PHS34_irq0_clr(PHS34_irq0_clr),
        .PHS34_irq1_clr(PHS34_irq1_clr),
        .PHS34_irq_mask(PHS34_irq_mask),
        .PHS34_pwm_val(PHS34_pwm_val),
        .PHS34_vld_out(PHS34_vld_out),
        .PHS34_vld_out_reg_0(PHS34_vld_out_i_1_n_0),
        .PHS35_irq0_clr(PHS35_irq0_clr),
        .PHS35_irq1_clr(PHS35_irq1_clr),
        .PHS35_irq_mask(PHS35_irq_mask),
        .PHS35_pwm_val(PHS35_pwm_val),
        .PHS35_vld_out(PHS35_vld_out),
        .PHS35_vld_out_reg_0(PHS35_vld_out_i_1_n_0),
        .PHS36_irq0_clr(PHS36_irq0_clr),
        .PHS36_irq1_clr(PHS36_irq1_clr),
        .PHS36_irq_mask(PHS36_irq_mask),
        .PHS36_pwm_val(PHS36_pwm_val),
        .PHS36_vld_out(PHS36_vld_out),
        .PHS36_vld_out_reg_0(PHS36_vld_out_i_1_n_0),
        .PHS37_irq0_clr(PHS37_irq0_clr),
        .PHS37_irq1_clr(PHS37_irq1_clr),
        .PHS37_irq_mask(PHS37_irq_mask),
        .PHS37_pwm_val(PHS37_pwm_val),
        .PHS37_vld_out(PHS37_vld_out),
        .PHS37_vld_out_reg_0(PHS37_vld_out_i_1_n_0),
        .PHS38_irq0_clr(PHS38_irq0_clr),
        .PHS38_irq1_clr(PHS38_irq1_clr),
        .PHS38_irq_mask(PHS38_irq_mask),
        .PHS38_pwm_val(PHS38_pwm_val),
        .PHS38_vld_out(PHS38_vld_out),
        .PHS38_vld_out_reg_0(PHS38_vld_out_i_1_n_0),
        .PHS39_irq0_clr(PHS39_irq0_clr),
        .PHS39_irq1_clr(PHS39_irq1_clr),
        .PHS39_irq_mask(PHS39_irq_mask),
        .PHS39_pwm_val(PHS39_pwm_val),
        .PHS39_vld_out(PHS39_vld_out),
        .PHS39_vld_out_reg_0(PHS39_vld_out_i_1_n_0),
        .PHS3_irq0_clr(PHS3_irq0_clr),
        .PHS3_irq1_clr(PHS3_irq1_clr),
        .PHS3_irq_mask(PHS3_irq_mask),
        .PHS3_pwm_val(PHS3_pwm_val),
        .PHS3_vld_out(PHS3_vld_out),
        .PHS3_vld_out_reg_0(PHS3_vld_out_i_1_n_0),
        .PHS40_irq0_clr(PHS40_irq0_clr),
        .PHS40_irq1_clr(PHS40_irq1_clr),
        .PHS40_irq_mask(PHS40_irq_mask),
        .PHS40_pwm_val(PHS40_pwm_val),
        .PHS40_vld_out(PHS40_vld_out),
        .PHS40_vld_out_reg_0(PHS40_vld_out_i_1_n_0),
        .PHS41_irq0_clr(PHS41_irq0_clr),
        .PHS41_irq1_clr(PHS41_irq1_clr),
        .PHS41_irq_mask(PHS41_irq_mask),
        .PHS41_pwm_val(PHS41_pwm_val),
        .PHS41_vld_out(PHS41_vld_out),
        .PHS41_vld_out_reg_0(PHS41_vld_out_i_1_n_0),
        .PHS42_irq0_clr(PHS42_irq0_clr),
        .PHS42_irq1_clr(PHS42_irq1_clr),
        .PHS42_irq_mask(PHS42_irq_mask),
        .PHS42_pwm_val(PHS42_pwm_val),
        .PHS42_vld_out(PHS42_vld_out),
        .PHS42_vld_out_reg_0(PHS42_vld_out_i_1_n_0),
        .PHS43_irq0_clr(PHS43_irq0_clr),
        .PHS43_irq1_clr(PHS43_irq1_clr),
        .PHS43_irq_mask(PHS43_irq_mask),
        .PHS43_pwm_val(PHS43_pwm_val),
        .PHS43_vld_out(PHS43_vld_out),
        .PHS43_vld_out_reg_0(PHS43_vld_out_i_1_n_0),
        .PHS44_irq0_clr(PHS44_irq0_clr),
        .PHS44_irq1_clr(PHS44_irq1_clr),
        .PHS44_irq_mask(PHS44_irq_mask),
        .PHS44_pwm_val(PHS44_pwm_val),
        .PHS44_vld_out(PHS44_vld_out),
        .PHS44_vld_out_reg_0(PHS44_vld_out_i_1_n_0),
        .PHS45_irq0_clr(PHS45_irq0_clr),
        .PHS45_irq1_clr(PHS45_irq1_clr),
        .PHS45_irq_mask(PHS45_irq_mask),
        .PHS45_pwm_val(PHS45_pwm_val),
        .PHS45_vld_out(PHS45_vld_out),
        .PHS45_vld_out_reg_0(PHS45_vld_out_i_1_n_0),
        .PHS46_irq0_clr(PHS46_irq0_clr),
        .PHS46_irq1_clr(PHS46_irq1_clr),
        .PHS46_irq_mask(PHS46_irq_mask),
        .PHS46_pwm_val(PHS46_pwm_val),
        .PHS46_vld_out(PHS46_vld_out),
        .PHS46_vld_out_reg_0(PHS46_vld_out_i_1_n_0),
        .PHS47_irq0_clr(PHS47_irq0_clr),
        .PHS47_irq1_clr(PHS47_irq1_clr),
        .PHS47_irq_mask(PHS47_irq_mask),
        .PHS47_pwm_val(PHS47_pwm_val),
        .PHS47_vld_out(PHS47_vld_out),
        .PHS47_vld_out_reg_0(PHS47_vld_out_i_1_n_0),
        .PHS48_irq0_clr(PHS48_irq0_clr),
        .PHS48_irq1_clr(PHS48_irq1_clr),
        .PHS48_irq_mask(PHS48_irq_mask),
        .PHS48_pwm_val(PHS48_pwm_val),
        .PHS48_vld_out(PHS48_vld_out),
        .PHS48_vld_out_reg_0(PHS48_vld_out_i_1_n_0),
        .PHS49_irq0_clr(PHS49_irq0_clr),
        .PHS49_irq1_clr(PHS49_irq1_clr),
        .PHS49_irq_mask(PHS49_irq_mask),
        .PHS49_pwm_val(PHS49_pwm_val),
        .PHS49_vld_out(PHS49_vld_out),
        .PHS49_vld_out_reg_0(PHS49_vld_out_i_1_n_0),
        .PHS4_irq0_clr(PHS4_irq0_clr),
        .PHS4_irq1_clr(PHS4_irq1_clr),
        .PHS4_irq_mask(PHS4_irq_mask),
        .PHS4_pwm_val(PHS4_pwm_val),
        .PHS4_vld_out(PHS4_vld_out),
        .PHS4_vld_out_reg_0(PHS4_vld_out_i_1_n_0),
        .PHS5_irq0_clr(PHS5_irq0_clr),
        .PHS5_irq1_clr(PHS5_irq1_clr),
        .PHS5_irq_mask(PHS5_irq_mask),
        .PHS5_pwm_val(PHS5_pwm_val),
        .PHS5_vld_out(PHS5_vld_out),
        .PHS5_vld_out_reg_0(PHS5_vld_out_i_1_n_0),
        .PHS6_irq0_clr(PHS6_irq0_clr),
        .PHS6_irq1_clr(PHS6_irq1_clr),
        .PHS6_irq_mask(PHS6_irq_mask),
        .PHS6_pwm_val(PHS6_pwm_val),
        .PHS6_vld_out(PHS6_vld_out),
        .PHS6_vld_out_reg_0(PHS6_vld_out_i_1_n_0),
        .PHS7_irq0_clr(PHS7_irq0_clr),
        .PHS7_irq1_clr(PHS7_irq1_clr),
        .PHS7_irq_mask(PHS7_irq_mask),
        .PHS7_pwm_val(PHS7_pwm_val),
        .PHS7_vld_out(PHS7_vld_out),
        .PHS7_vld_out_reg_0(PHS7_vld_out_i_1_n_0),
        .PHS8_irq0_clr(PHS8_irq0_clr),
        .PHS8_irq1_clr(PHS8_irq1_clr),
        .PHS8_irq_mask(PHS8_irq_mask),
        .PHS8_pwm_val(PHS8_pwm_val),
        .PHS8_vld_out(PHS8_vld_out),
        .PHS8_vld_out_reg_0(PHS8_vld_out_i_1_n_0),
        .PHS9_irq0_clr(PHS9_irq0_clr),
        .PHS9_irq1_clr(PHS9_irq1_clr),
        .PHS9_irq_mask(PHS9_irq_mask),
        .PHS9_pwm_val(PHS9_pwm_val),
        .PHS9_vld_out(PHS9_vld_out),
        .PHS9_vld_out_reg_0(PHS9_vld_out_i_1_n_0),
        .Q({axi_araddr[9:6],axi_araddr[3:2]}),
        .aw_en_reg_0(PHS_regs_v1_0_S00_AXI_inst_n_4),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .\axi_araddr_reg[2]_0 (PHS_regs_v1_0_S00_AXI_inst_n_117),
        .\axi_araddr_reg[4]_0 (PHS_regs_v1_0_S00_AXI_inst_n_114),
        .\axi_araddr_reg[4]_1 (PHS_regs_v1_0_S00_AXI_inst_n_887),
        .\axi_araddr_reg[4]_2 (PHS_regs_v1_0_S00_AXI_inst_n_889),
        .\axi_araddr_reg[5]_0 (PHS_regs_v1_0_S00_AXI_inst_n_106),
        .\axi_araddr_reg[5]_1 (PHS_regs_v1_0_S00_AXI_inst_n_113),
        .\axi_araddr_reg[5]_2 (PHS_regs_v1_0_S00_AXI_inst_n_118),
        .\axi_araddr_reg[5]_3 (PHS_regs_v1_0_S00_AXI_inst_n_119),
        .\axi_araddr_reg[5]_4 (PHS_regs_v1_0_S00_AXI_inst_n_885),
        .\axi_araddr_reg[5]_5 (PHS_regs_v1_0_S00_AXI_inst_n_886),
        .\axi_araddr_reg[5]_6 (PHS_regs_v1_0_S00_AXI_inst_n_888),
        .\axi_araddr_reg[6]_0 (PHS_regs_v1_0_S00_AXI_inst_n_877),
        .\axi_araddr_reg[6]_1 (PHS_regs_v1_0_S00_AXI_inst_n_880),
        .\axi_araddr_reg[6]_2 (PHS_regs_v1_0_S00_AXI_inst_n_883),
        .\axi_araddr_reg[6]_3 (PHS_regs_v1_0_S00_AXI_inst_n_890),
        .\axi_araddr_reg[6]_4 (PHS_regs_v1_0_S00_AXI_inst_n_891),
        .\axi_araddr_reg[7]_0 (PHS_regs_v1_0_S00_AXI_inst_n_882),
        .\axi_araddr_reg[7]_1 (PHS_regs_v1_0_S00_AXI_inst_n_884),
        .\axi_araddr_reg[8]_0 (PHS_regs_v1_0_S00_AXI_inst_n_115),
        .\axi_araddr_reg[8]_1 (PHS_regs_v1_0_S00_AXI_inst_n_863),
        .\axi_araddr_reg[8]_10 (PHS_regs_v1_0_S00_AXI_inst_n_872),
        .\axi_araddr_reg[8]_11 (PHS_regs_v1_0_S00_AXI_inst_n_873),
        .\axi_araddr_reg[8]_12 (PHS_regs_v1_0_S00_AXI_inst_n_874),
        .\axi_araddr_reg[8]_13 (PHS_regs_v1_0_S00_AXI_inst_n_875),
        .\axi_araddr_reg[8]_14 (PHS_regs_v1_0_S00_AXI_inst_n_876),
        .\axi_araddr_reg[8]_15 (PHS_regs_v1_0_S00_AXI_inst_n_878),
        .\axi_araddr_reg[8]_16 (PHS_regs_v1_0_S00_AXI_inst_n_881),
        .\axi_araddr_reg[8]_2 (PHS_regs_v1_0_S00_AXI_inst_n_864),
        .\axi_araddr_reg[8]_3 (PHS_regs_v1_0_S00_AXI_inst_n_865),
        .\axi_araddr_reg[8]_4 (PHS_regs_v1_0_S00_AXI_inst_n_866),
        .\axi_araddr_reg[8]_5 (PHS_regs_v1_0_S00_AXI_inst_n_867),
        .\axi_araddr_reg[8]_6 (PHS_regs_v1_0_S00_AXI_inst_n_868),
        .\axi_araddr_reg[8]_7 (PHS_regs_v1_0_S00_AXI_inst_n_869),
        .\axi_araddr_reg[8]_8 (PHS_regs_v1_0_S00_AXI_inst_n_870),
        .\axi_araddr_reg[8]_9 (PHS_regs_v1_0_S00_AXI_inst_n_871),
        .\axi_araddr_reg[9]_0 (PHS_regs_v1_0_S00_AXI_inst_n_116),
        .\axi_araddr_reg[9]_1 (PHS_regs_v1_0_S00_AXI_inst_n_861),
        .\axi_araddr_reg[9]_2 (PHS_regs_v1_0_S00_AXI_inst_n_862),
        .\axi_araddr_reg[9]_3 (PHS_regs_v1_0_S00_AXI_inst_n_879),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .\axi_awaddr_reg[3]_0 (PHS_regs_v1_0_S00_AXI_inst_n_857),
        .\axi_awaddr_reg[3]_1 (PHS_regs_v1_0_S00_AXI_inst_n_858),
        .\axi_awaddr_reg[3]_2 (PHS_regs_v1_0_S00_AXI_inst_n_859),
        .\axi_awaddr_reg[3]_3 (PHS_regs_v1_0_S00_AXI_inst_n_860),
        .\axi_awaddr_reg[4]_0 (PHS_regs_v1_0_S00_AXI_inst_n_854),
        .\axi_awaddr_reg[5]_0 (PHS_regs_v1_0_S00_AXI_inst_n_853),
        .\axi_awaddr_reg[5]_1 (PHS_regs_v1_0_S00_AXI_inst_n_855),
        .\axi_awaddr_reg[5]_2 (PHS_regs_v1_0_S00_AXI_inst_n_856),
        .\axi_awaddr_reg[6]_0 (PHS_regs_v1_0_S00_AXI_inst_n_246),
        .\axi_awaddr_reg[7]_0 (PHS_regs_v1_0_S00_AXI_inst_n_189),
        .\axi_awaddr_reg[7]_1 (PHS_regs_v1_0_S00_AXI_inst_n_303),
        .\axi_awaddr_reg[9]_0 (PHS_regs_v1_0_S00_AXI_inst_n_132),
        .\axi_awaddr_reg[9]_1 (PHS_regs_v1_0_S00_AXI_inst_n_584),
        .\axi_awaddr_reg[9]_2 (PHS_regs_v1_0_S00_AXI_inst_n_641),
        .\axi_awaddr_reg[9]_3 (PHS_regs_v1_0_S00_AXI_inst_n_698),
        .\axi_awaddr_reg[9]_4 (PHS_regs_v1_0_S00_AXI_inst_n_755),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg101_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_81),
        .\slv_reg101_reg[0]_1 (\slv_reg101[0]_i_1_n_0 ),
        .\slv_reg105_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_82),
        .\slv_reg105_reg[0]_1 (\slv_reg105[0]_i_1_n_0 ),
        .\slv_reg109_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_83),
        .\slv_reg109_reg[0]_1 (\slv_reg109[0]_i_1_n_0 ),
        .\slv_reg113_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_84),
        .\slv_reg113_reg[0]_1 (\slv_reg113[0]_i_1_n_0 ),
        .\slv_reg117_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_85),
        .\slv_reg117_reg[0]_1 (\slv_reg117[0]_i_1_n_0 ),
        .\slv_reg121_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_86),
        .\slv_reg121_reg[0]_1 (\slv_reg121[0]_i_1_n_0 ),
        .\slv_reg125_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_87),
        .\slv_reg125_reg[0]_1 (\slv_reg125[0]_i_1_n_0 ),
        .\slv_reg129_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_88),
        .\slv_reg129_reg[0]_1 (\slv_reg129[0]_i_1_n_0 ),
        .\slv_reg133_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_89),
        .\slv_reg133_reg[0]_1 (\slv_reg133[0]_i_1_n_0 ),
        .\slv_reg137_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_90),
        .\slv_reg137_reg[0]_1 (\slv_reg137[0]_i_1_n_0 ),
        .\slv_reg13_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_59),
        .\slv_reg13_reg[0]_1 (\slv_reg13[0]_i_1_n_0 ),
        .\slv_reg141_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_91),
        .\slv_reg141_reg[0]_1 (\slv_reg141[0]_i_1_n_0 ),
        .\slv_reg145_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_92),
        .\slv_reg145_reg[0]_1 (\slv_reg145[0]_i_1_n_0 ),
        .\slv_reg149_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_93),
        .\slv_reg149_reg[0]_1 (\slv_reg149[0]_i_1_n_0 ),
        .\slv_reg153_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_94),
        .\slv_reg153_reg[0]_1 (\slv_reg153[0]_i_1_n_0 ),
        .\slv_reg157_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_95),
        .\slv_reg157_reg[0]_1 (\slv_reg157[0]_i_1_n_0 ),
        .\slv_reg161_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_96),
        .\slv_reg161_reg[0]_1 (\slv_reg161[0]_i_1_n_0 ),
        .\slv_reg165_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_97),
        .\slv_reg165_reg[0]_1 (\slv_reg165[0]_i_1_n_0 ),
        .\slv_reg169_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_98),
        .\slv_reg169_reg[0]_1 (\slv_reg169[0]_i_1_n_0 ),
        .\slv_reg173_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_99),
        .\slv_reg173_reg[0]_1 (\slv_reg173[0]_i_1_n_0 ),
        .\slv_reg177_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_100),
        .\slv_reg177_reg[0]_1 (\slv_reg177[0]_i_1_n_0 ),
        .\slv_reg17_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_60),
        .\slv_reg17_reg[0]_1 (\slv_reg17[0]_i_1_n_0 ),
        .\slv_reg181_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_101),
        .\slv_reg181_reg[0]_1 (\slv_reg181[0]_i_1_n_0 ),
        .\slv_reg185_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_102),
        .\slv_reg185_reg[0]_1 (\slv_reg185[0]_i_1_n_0 ),
        .\slv_reg189_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_103),
        .\slv_reg189_reg[0]_1 (\slv_reg189[0]_i_1_n_0 ),
        .\slv_reg193_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_104),
        .\slv_reg193_reg[0]_1 (\slv_reg193[0]_i_1_n_0 ),
        .\slv_reg197_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_105),
        .\slv_reg197_reg[0]_1 (\slv_reg197[0]_i_1_n_0 ),
        .\slv_reg1_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_56),
        .\slv_reg1_reg[0]_1 (\slv_reg1[0]_i_1_n_0 ),
        .\slv_reg21_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_61),
        .\slv_reg21_reg[0]_1 (\slv_reg21[0]_i_1_n_0 ),
        .\slv_reg25_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_62),
        .\slv_reg25_reg[0]_1 (\slv_reg25[0]_i_1_n_0 ),
        .\slv_reg29_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_63),
        .\slv_reg29_reg[0]_1 (\slv_reg29[0]_i_1_n_0 ),
        .\slv_reg33_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_64),
        .\slv_reg33_reg[0]_1 (\slv_reg33[0]_i_1_n_0 ),
        .\slv_reg37_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_65),
        .\slv_reg37_reg[0]_1 (\slv_reg37[0]_i_1_n_0 ),
        .\slv_reg41_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_66),
        .\slv_reg41_reg[0]_1 (\slv_reg41[0]_i_1_n_0 ),
        .\slv_reg45_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_67),
        .\slv_reg45_reg[0]_1 (\slv_reg45[0]_i_1_n_0 ),
        .\slv_reg49_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_68),
        .\slv_reg49_reg[0]_1 (\slv_reg49[0]_i_1_n_0 ),
        .\slv_reg53_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_69),
        .\slv_reg53_reg[0]_1 (\slv_reg53[0]_i_1_n_0 ),
        .\slv_reg57_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_70),
        .\slv_reg57_reg[0]_1 (\slv_reg57[0]_i_1_n_0 ),
        .\slv_reg5_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_57),
        .\slv_reg5_reg[0]_1 (\slv_reg5[0]_i_1_n_0 ),
        .\slv_reg61_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_71),
        .\slv_reg61_reg[0]_1 (\slv_reg61[0]_i_1_n_0 ),
        .\slv_reg65_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_72),
        .\slv_reg65_reg[0]_1 (\slv_reg65[0]_i_1_n_0 ),
        .\slv_reg69_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_73),
        .\slv_reg69_reg[0]_1 (\slv_reg69[0]_i_1_n_0 ),
        .\slv_reg73_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_74),
        .\slv_reg73_reg[0]_1 (\slv_reg73[0]_i_1_n_0 ),
        .\slv_reg77_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_75),
        .\slv_reg77_reg[0]_1 (\slv_reg77[0]_i_1_n_0 ),
        .\slv_reg81_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_76),
        .\slv_reg81_reg[0]_1 (\slv_reg81[0]_i_1_n_0 ),
        .\slv_reg85_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_77),
        .\slv_reg85_reg[0]_1 (\slv_reg85[0]_i_1_n_0 ),
        .\slv_reg89_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_78),
        .\slv_reg89_reg[0]_1 (\slv_reg89[0]_i_1_n_0 ),
        .\slv_reg93_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_79),
        .\slv_reg93_reg[0]_1 (\slv_reg93[0]_i_1_n_0 ),
        .\slv_reg97_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_80),
        .\slv_reg97_reg[0]_1 (\slv_reg97[0]_i_1_n_0 ),
        .\slv_reg9_reg[0]_0 (PHS_regs_v1_0_S00_AXI_inst_n_58),
        .\slv_reg9_reg[0]_1 (\slv_reg9[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(PHS_regs_v1_0_S00_AXI_inst_n_4),
        .O(aw_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_awvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[9]_i_1 
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg101[0]_i_1 
       (.I0(PHS25_status),
        .I1(PHS25_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_859),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_81),
        .O(\slv_reg101[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg105[0]_i_1 
       (.I0(PHS26_status),
        .I1(PHS26_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_858),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_82),
        .O(\slv_reg105[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg109[0]_i_1 
       (.I0(PHS27_status),
        .I1(PHS27_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_857),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_83),
        .O(\slv_reg109[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg113[0]_i_1 
       (.I0(PHS28_status),
        .I1(PHS28_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_860),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_84),
        .O(\slv_reg113[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg117[0]_i_1 
       (.I0(PHS29_status),
        .I1(PHS29_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_859),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_85),
        .O(\slv_reg117[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg121[0]_i_1 
       (.I0(PHS30_status),
        .I1(PHS30_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_858),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_86),
        .O(\slv_reg121[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg125[0]_i_1 
       (.I0(PHS31_status),
        .I1(PHS31_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_857),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_87),
        .O(\slv_reg125[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg129[0]_i_1 
       (.I0(PHS32_status),
        .I1(PHS32_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_584),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_88),
        .O(\slv_reg129[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg133[0]_i_1 
       (.I0(PHS33_status),
        .I1(PHS33_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_584),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_89),
        .O(\slv_reg133[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg137[0]_i_1 
       (.I0(PHS34_status),
        .I1(PHS34_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_584),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_90),
        .O(\slv_reg137[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg13[0]_i_1 
       (.I0(PHS3_status),
        .I1(PHS3_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_59),
        .O(\slv_reg13[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg141[0]_i_1 
       (.I0(PHS35_status),
        .I1(PHS35_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_584),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_91),
        .O(\slv_reg141[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg145[0]_i_1 
       (.I0(PHS36_status),
        .I1(PHS36_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_641),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_92),
        .O(\slv_reg145[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg149[0]_i_1 
       (.I0(PHS37_status),
        .I1(PHS37_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_641),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_93),
        .O(\slv_reg149[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg153[0]_i_1 
       (.I0(PHS38_status),
        .I1(PHS38_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_641),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_94),
        .O(\slv_reg153[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg157[0]_i_1 
       (.I0(PHS39_status),
        .I1(PHS39_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_641),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_95),
        .O(\slv_reg157[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg161[0]_i_1 
       (.I0(PHS40_status),
        .I1(PHS40_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_698),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_96),
        .O(\slv_reg161[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg165[0]_i_1 
       (.I0(PHS41_status),
        .I1(PHS41_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_698),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_97),
        .O(\slv_reg165[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg169[0]_i_1 
       (.I0(PHS42_status),
        .I1(PHS42_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_698),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_98),
        .O(\slv_reg169[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg173[0]_i_1 
       (.I0(PHS43_status),
        .I1(PHS43_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_698),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_99),
        .O(\slv_reg173[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg177[0]_i_1 
       (.I0(PHS44_status),
        .I1(PHS44_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_755),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_100),
        .O(\slv_reg177[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg17[0]_i_1 
       (.I0(PHS4_status),
        .I1(PHS4_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_60),
        .O(\slv_reg17[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg181[0]_i_1 
       (.I0(PHS45_status),
        .I1(PHS45_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_755),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_101),
        .O(\slv_reg181[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg185[0]_i_1 
       (.I0(PHS46_status),
        .I1(PHS46_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_755),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_102),
        .O(\slv_reg185[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg189[0]_i_1 
       (.I0(PHS47_status),
        .I1(PHS47_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_755),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_103),
        .O(\slv_reg189[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg193[0]_i_1 
       (.I0(PHS48_status),
        .I1(PHS48_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_584),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_860),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_104),
        .O(\slv_reg193[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg197[0]_i_1 
       (.I0(PHS49_status),
        .I1(PHS49_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_584),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_859),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_105),
        .O(\slv_reg197[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg1[0]_i_1 
       (.I0(PHS0_status),
        .I1(PHS0_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_56),
        .O(\slv_reg1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg21[0]_i_1 
       (.I0(PHS5_status),
        .I1(PHS5_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_61),
        .O(\slv_reg21[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg25[0]_i_1 
       (.I0(PHS6_status),
        .I1(PHS6_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_62),
        .O(\slv_reg25[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg29[0]_i_1 
       (.I0(PHS7_status),
        .I1(PHS7_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_63),
        .O(\slv_reg29[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg33[0]_i_1 
       (.I0(PHS8_status),
        .I1(PHS8_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_64),
        .O(\slv_reg33[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg37[0]_i_1 
       (.I0(PHS9_status),
        .I1(PHS9_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_65),
        .O(\slv_reg37[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg41[0]_i_1 
       (.I0(PHS10_status),
        .I1(PHS10_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_66),
        .O(\slv_reg41[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg45[0]_i_1 
       (.I0(PHS11_status),
        .I1(PHS11_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_67),
        .O(\slv_reg45[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg49[0]_i_1 
       (.I0(PHS12_status),
        .I1(PHS12_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_856),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_68),
        .O(\slv_reg49[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg53[0]_i_1 
       (.I0(PHS13_status),
        .I1(PHS13_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_69),
        .O(\slv_reg53[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg57[0]_i_1 
       (.I0(PHS14_status),
        .I1(PHS14_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_70),
        .O(\slv_reg57[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg5[0]_i_1 
       (.I0(PHS1_status),
        .I1(PHS1_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_855),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_57),
        .O(\slv_reg5[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg61[0]_i_1 
       (.I0(PHS15_status),
        .I1(PHS15_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_303),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_853),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_71),
        .O(\slv_reg61[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg65[0]_i_1 
       (.I0(PHS16_status),
        .I1(PHS16_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_860),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_72),
        .O(\slv_reg65[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg69[0]_i_1 
       (.I0(PHS17_status),
        .I1(PHS17_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_859),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_73),
        .O(\slv_reg69[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg73[0]_i_1 
       (.I0(PHS18_status),
        .I1(PHS18_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_858),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_74),
        .O(\slv_reg73[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg77[0]_i_1 
       (.I0(PHS19_status),
        .I1(PHS19_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_857),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_75),
        .O(\slv_reg77[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg81[0]_i_1 
       (.I0(PHS20_status),
        .I1(PHS20_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_860),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_76),
        .O(\slv_reg81[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg85[0]_i_1 
       (.I0(PHS21_status),
        .I1(PHS21_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_859),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_77),
        .O(\slv_reg85[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg89[0]_i_1 
       (.I0(PHS22_status),
        .I1(PHS22_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_858),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_78),
        .O(\slv_reg89[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg93[0]_i_1 
       (.I0(PHS23_status),
        .I1(PHS23_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_189),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_857),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_79),
        .O(\slv_reg93[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg97[0]_i_1 
       (.I0(PHS24_status),
        .I1(PHS24_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_246),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_860),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_80),
        .O(\slv_reg97[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg9[0]_i_1 
       (.I0(PHS2_status),
        .I1(PHS2_vld_in),
        .I2(PHS_regs_v1_0_S00_AXI_inst_n_132),
        .I3(PHS_regs_v1_0_S00_AXI_inst_n_854),
        .I4(PHS_regs_v1_0_S00_AXI_inst_n_58),
        .O(\slv_reg9[0]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    aw_en_reg_0,
    PHS0_vld_out,
    PHS1_vld_out,
    PHS2_vld_out,
    PHS3_vld_out,
    PHS4_vld_out,
    PHS5_vld_out,
    PHS6_vld_out,
    PHS7_vld_out,
    PHS8_vld_out,
    PHS9_vld_out,
    PHS10_vld_out,
    PHS11_vld_out,
    PHS12_vld_out,
    PHS13_vld_out,
    PHS14_vld_out,
    PHS15_vld_out,
    PHS16_vld_out,
    PHS17_vld_out,
    PHS18_vld_out,
    PHS19_vld_out,
    PHS20_vld_out,
    PHS21_vld_out,
    PHS22_vld_out,
    PHS23_vld_out,
    PHS24_vld_out,
    PHS25_vld_out,
    PHS26_vld_out,
    PHS27_vld_out,
    PHS28_vld_out,
    PHS29_vld_out,
    PHS30_vld_out,
    PHS31_vld_out,
    PHS32_vld_out,
    PHS33_vld_out,
    PHS34_vld_out,
    PHS35_vld_out,
    PHS36_vld_out,
    PHS37_vld_out,
    PHS38_vld_out,
    PHS39_vld_out,
    PHS40_vld_out,
    PHS41_vld_out,
    PHS42_vld_out,
    PHS43_vld_out,
    PHS44_vld_out,
    PHS45_vld_out,
    PHS46_vld_out,
    PHS47_vld_out,
    PHS48_vld_out,
    PHS49_vld_out,
    s00_axi_rvalid,
    \slv_reg1_reg[0]_0 ,
    \slv_reg5_reg[0]_0 ,
    \slv_reg9_reg[0]_0 ,
    \slv_reg13_reg[0]_0 ,
    \slv_reg17_reg[0]_0 ,
    \slv_reg21_reg[0]_0 ,
    \slv_reg25_reg[0]_0 ,
    \slv_reg29_reg[0]_0 ,
    \slv_reg33_reg[0]_0 ,
    \slv_reg37_reg[0]_0 ,
    \slv_reg41_reg[0]_0 ,
    \slv_reg45_reg[0]_0 ,
    \slv_reg49_reg[0]_0 ,
    \slv_reg53_reg[0]_0 ,
    \slv_reg57_reg[0]_0 ,
    \slv_reg61_reg[0]_0 ,
    \slv_reg65_reg[0]_0 ,
    \slv_reg69_reg[0]_0 ,
    \slv_reg73_reg[0]_0 ,
    \slv_reg77_reg[0]_0 ,
    \slv_reg81_reg[0]_0 ,
    \slv_reg85_reg[0]_0 ,
    \slv_reg89_reg[0]_0 ,
    \slv_reg93_reg[0]_0 ,
    \slv_reg97_reg[0]_0 ,
    \slv_reg101_reg[0]_0 ,
    \slv_reg105_reg[0]_0 ,
    \slv_reg109_reg[0]_0 ,
    \slv_reg113_reg[0]_0 ,
    \slv_reg117_reg[0]_0 ,
    \slv_reg121_reg[0]_0 ,
    \slv_reg125_reg[0]_0 ,
    \slv_reg129_reg[0]_0 ,
    \slv_reg133_reg[0]_0 ,
    \slv_reg137_reg[0]_0 ,
    \slv_reg141_reg[0]_0 ,
    \slv_reg145_reg[0]_0 ,
    \slv_reg149_reg[0]_0 ,
    \slv_reg153_reg[0]_0 ,
    \slv_reg157_reg[0]_0 ,
    \slv_reg161_reg[0]_0 ,
    \slv_reg165_reg[0]_0 ,
    \slv_reg169_reg[0]_0 ,
    \slv_reg173_reg[0]_0 ,
    \slv_reg177_reg[0]_0 ,
    \slv_reg181_reg[0]_0 ,
    \slv_reg185_reg[0]_0 ,
    \slv_reg189_reg[0]_0 ,
    \slv_reg193_reg[0]_0 ,
    \slv_reg197_reg[0]_0 ,
    \axi_araddr_reg[5]_0 ,
    Q,
    \axi_araddr_reg[5]_1 ,
    \axi_araddr_reg[4]_0 ,
    \axi_araddr_reg[8]_0 ,
    \axi_araddr_reg[9]_0 ,
    \axi_araddr_reg[2]_0 ,
    \axi_araddr_reg[5]_2 ,
    \axi_araddr_reg[5]_3 ,
    PHS0_pwm_val,
    PHS0_irq_mask,
    \axi_awaddr_reg[9]_0 ,
    PHS0_irq1_clr,
    PHS0_irq0_clr,
    PHS1_pwm_val,
    PHS1_irq_mask,
    PHS1_irq1_clr,
    PHS1_irq0_clr,
    PHS2_pwm_val,
    PHS2_irq_mask,
    PHS2_irq1_clr,
    PHS2_irq0_clr,
    PHS3_pwm_val,
    PHS3_irq_mask,
    PHS3_irq1_clr,
    PHS3_irq0_clr,
    PHS4_pwm_val,
    PHS4_irq_mask,
    \axi_awaddr_reg[7]_0 ,
    PHS4_irq1_clr,
    PHS4_irq0_clr,
    PHS5_pwm_val,
    PHS5_irq_mask,
    PHS5_irq1_clr,
    PHS5_irq0_clr,
    PHS6_pwm_val,
    PHS6_irq_mask,
    PHS6_irq1_clr,
    PHS6_irq0_clr,
    PHS7_pwm_val,
    PHS7_irq_mask,
    PHS7_irq1_clr,
    PHS7_irq0_clr,
    PHS8_pwm_val,
    PHS8_irq_mask,
    \axi_awaddr_reg[6]_0 ,
    PHS8_irq1_clr,
    PHS8_irq0_clr,
    PHS9_pwm_val,
    PHS9_irq_mask,
    PHS9_irq1_clr,
    PHS9_irq0_clr,
    PHS10_pwm_val,
    PHS10_irq_mask,
    PHS10_irq1_clr,
    PHS10_irq0_clr,
    PHS11_pwm_val,
    PHS11_irq_mask,
    PHS11_irq1_clr,
    PHS11_irq0_clr,
    PHS12_pwm_val,
    PHS12_irq_mask,
    \axi_awaddr_reg[7]_1 ,
    PHS12_irq1_clr,
    PHS12_irq0_clr,
    PHS13_pwm_val,
    PHS13_irq_mask,
    PHS13_irq1_clr,
    PHS13_irq0_clr,
    PHS14_pwm_val,
    PHS14_irq_mask,
    PHS14_irq1_clr,
    PHS14_irq0_clr,
    PHS15_pwm_val,
    PHS15_irq_mask,
    PHS15_irq1_clr,
    PHS15_irq0_clr,
    PHS16_pwm_val,
    PHS16_irq_mask,
    PHS16_irq1_clr,
    PHS16_irq0_clr,
    PHS17_pwm_val,
    PHS17_irq_mask,
    PHS17_irq1_clr,
    PHS17_irq0_clr,
    PHS18_pwm_val,
    PHS18_irq_mask,
    PHS18_irq1_clr,
    PHS18_irq0_clr,
    PHS19_pwm_val,
    PHS19_irq_mask,
    PHS19_irq1_clr,
    PHS19_irq0_clr,
    PHS20_pwm_val,
    PHS20_irq_mask,
    PHS20_irq1_clr,
    PHS20_irq0_clr,
    PHS21_pwm_val,
    PHS21_irq_mask,
    PHS21_irq1_clr,
    PHS21_irq0_clr,
    PHS22_pwm_val,
    PHS22_irq_mask,
    PHS22_irq1_clr,
    PHS22_irq0_clr,
    PHS23_pwm_val,
    PHS23_irq_mask,
    PHS23_irq1_clr,
    PHS23_irq0_clr,
    PHS24_pwm_val,
    PHS24_irq_mask,
    PHS24_irq1_clr,
    PHS24_irq0_clr,
    PHS25_pwm_val,
    PHS25_irq_mask,
    PHS25_irq1_clr,
    PHS25_irq0_clr,
    PHS26_pwm_val,
    PHS26_irq_mask,
    PHS26_irq1_clr,
    PHS26_irq0_clr,
    PHS27_pwm_val,
    PHS27_irq_mask,
    PHS27_irq1_clr,
    PHS27_irq0_clr,
    PHS28_pwm_val,
    PHS28_irq_mask,
    PHS28_irq1_clr,
    PHS28_irq0_clr,
    PHS29_pwm_val,
    PHS29_irq_mask,
    PHS29_irq1_clr,
    PHS29_irq0_clr,
    PHS30_pwm_val,
    PHS30_irq_mask,
    PHS30_irq1_clr,
    PHS30_irq0_clr,
    PHS31_pwm_val,
    PHS31_irq_mask,
    PHS31_irq1_clr,
    PHS31_irq0_clr,
    PHS32_pwm_val,
    PHS32_irq_mask,
    \axi_awaddr_reg[9]_1 ,
    PHS32_irq1_clr,
    PHS32_irq0_clr,
    PHS33_pwm_val,
    PHS33_irq_mask,
    PHS33_irq1_clr,
    PHS33_irq0_clr,
    PHS34_pwm_val,
    PHS34_irq_mask,
    PHS34_irq1_clr,
    PHS34_irq0_clr,
    PHS35_pwm_val,
    PHS35_irq_mask,
    PHS35_irq1_clr,
    PHS35_irq0_clr,
    PHS36_pwm_val,
    PHS36_irq_mask,
    \axi_awaddr_reg[9]_2 ,
    PHS36_irq1_clr,
    PHS36_irq0_clr,
    PHS37_pwm_val,
    PHS37_irq_mask,
    PHS37_irq1_clr,
    PHS37_irq0_clr,
    PHS38_pwm_val,
    PHS38_irq_mask,
    PHS38_irq1_clr,
    PHS38_irq0_clr,
    PHS39_pwm_val,
    PHS39_irq_mask,
    PHS39_irq1_clr,
    PHS39_irq0_clr,
    PHS40_pwm_val,
    PHS40_irq_mask,
    \axi_awaddr_reg[9]_3 ,
    PHS40_irq1_clr,
    PHS40_irq0_clr,
    PHS41_pwm_val,
    PHS41_irq_mask,
    PHS41_irq1_clr,
    PHS41_irq0_clr,
    PHS42_pwm_val,
    PHS42_irq_mask,
    PHS42_irq1_clr,
    PHS42_irq0_clr,
    PHS43_pwm_val,
    PHS43_irq_mask,
    PHS43_irq1_clr,
    PHS43_irq0_clr,
    PHS44_pwm_val,
    PHS44_irq_mask,
    \axi_awaddr_reg[9]_4 ,
    PHS44_irq1_clr,
    PHS44_irq0_clr,
    PHS45_pwm_val,
    PHS45_irq_mask,
    PHS45_irq1_clr,
    PHS45_irq0_clr,
    PHS46_pwm_val,
    PHS46_irq_mask,
    PHS46_irq1_clr,
    PHS46_irq0_clr,
    PHS47_pwm_val,
    PHS47_irq_mask,
    PHS47_irq1_clr,
    PHS47_irq0_clr,
    PHS48_pwm_val,
    PHS48_irq_mask,
    PHS48_irq1_clr,
    PHS48_irq0_clr,
    PHS49_pwm_val,
    PHS49_irq_mask,
    PHS49_irq1_clr,
    PHS49_irq0_clr,
    s00_axi_rdata,
    \axi_awaddr_reg[5]_0 ,
    \axi_awaddr_reg[4]_0 ,
    \axi_awaddr_reg[5]_1 ,
    \axi_awaddr_reg[5]_2 ,
    \axi_awaddr_reg[3]_0 ,
    \axi_awaddr_reg[3]_1 ,
    \axi_awaddr_reg[3]_2 ,
    \axi_awaddr_reg[3]_3 ,
    \axi_araddr_reg[9]_1 ,
    \axi_araddr_reg[9]_2 ,
    \axi_araddr_reg[8]_1 ,
    \axi_araddr_reg[8]_2 ,
    \axi_araddr_reg[8]_3 ,
    \axi_araddr_reg[8]_4 ,
    \axi_araddr_reg[8]_5 ,
    \axi_araddr_reg[8]_6 ,
    \axi_araddr_reg[8]_7 ,
    \axi_araddr_reg[8]_8 ,
    \axi_araddr_reg[8]_9 ,
    \axi_araddr_reg[8]_10 ,
    \axi_araddr_reg[8]_11 ,
    \axi_araddr_reg[8]_12 ,
    \axi_araddr_reg[8]_13 ,
    \axi_araddr_reg[8]_14 ,
    \axi_araddr_reg[6]_0 ,
    \axi_araddr_reg[8]_15 ,
    \axi_araddr_reg[9]_3 ,
    \axi_araddr_reg[6]_1 ,
    \axi_araddr_reg[8]_16 ,
    \axi_araddr_reg[7]_0 ,
    \axi_araddr_reg[6]_2 ,
    \axi_araddr_reg[7]_1 ,
    \axi_araddr_reg[5]_4 ,
    \axi_araddr_reg[5]_5 ,
    \axi_araddr_reg[4]_1 ,
    \axi_araddr_reg[5]_6 ,
    \axi_araddr_reg[4]_2 ,
    \axi_araddr_reg[6]_3 ,
    \axi_araddr_reg[6]_4 ,
    p_0_in,
    s00_axi_aclk,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    PHS0_vld_out_reg_0,
    PHS1_vld_out_reg_0,
    PHS2_vld_out_reg_0,
    PHS3_vld_out_reg_0,
    PHS4_vld_out_reg_0,
    PHS5_vld_out_reg_0,
    PHS6_vld_out_reg_0,
    PHS7_vld_out_reg_0,
    PHS8_vld_out_reg_0,
    PHS9_vld_out_reg_0,
    PHS10_vld_out_reg_0,
    PHS11_vld_out_reg_0,
    PHS12_vld_out_reg_0,
    PHS13_vld_out_reg_0,
    PHS14_vld_out_reg_0,
    PHS15_vld_out_reg_0,
    PHS16_vld_out_reg_0,
    PHS17_vld_out_reg_0,
    PHS18_vld_out_reg_0,
    PHS19_vld_out_reg_0,
    PHS20_vld_out_reg_0,
    PHS21_vld_out_reg_0,
    PHS22_vld_out_reg_0,
    PHS23_vld_out_reg_0,
    PHS24_vld_out_reg_0,
    PHS25_vld_out_reg_0,
    PHS26_vld_out_reg_0,
    PHS27_vld_out_reg_0,
    PHS28_vld_out_reg_0,
    PHS29_vld_out_reg_0,
    PHS30_vld_out_reg_0,
    PHS31_vld_out_reg_0,
    PHS32_vld_out_reg_0,
    PHS33_vld_out_reg_0,
    PHS34_vld_out_reg_0,
    PHS35_vld_out_reg_0,
    PHS36_vld_out_reg_0,
    PHS37_vld_out_reg_0,
    PHS38_vld_out_reg_0,
    PHS39_vld_out_reg_0,
    PHS40_vld_out_reg_0,
    PHS41_vld_out_reg_0,
    PHS42_vld_out_reg_0,
    PHS43_vld_out_reg_0,
    PHS44_vld_out_reg_0,
    PHS45_vld_out_reg_0,
    PHS46_vld_out_reg_0,
    PHS47_vld_out_reg_0,
    PHS48_vld_out_reg_0,
    PHS49_vld_out_reg_0,
    axi_rvalid_reg_0,
    \slv_reg1_reg[0]_1 ,
    \slv_reg5_reg[0]_1 ,
    \slv_reg9_reg[0]_1 ,
    \slv_reg13_reg[0]_1 ,
    \slv_reg17_reg[0]_1 ,
    \slv_reg21_reg[0]_1 ,
    \slv_reg25_reg[0]_1 ,
    \slv_reg29_reg[0]_1 ,
    \slv_reg33_reg[0]_1 ,
    \slv_reg37_reg[0]_1 ,
    \slv_reg41_reg[0]_1 ,
    \slv_reg45_reg[0]_1 ,
    \slv_reg49_reg[0]_1 ,
    \slv_reg53_reg[0]_1 ,
    \slv_reg57_reg[0]_1 ,
    \slv_reg61_reg[0]_1 ,
    \slv_reg65_reg[0]_1 ,
    \slv_reg69_reg[0]_1 ,
    \slv_reg73_reg[0]_1 ,
    \slv_reg77_reg[0]_1 ,
    \slv_reg81_reg[0]_1 ,
    \slv_reg85_reg[0]_1 ,
    \slv_reg89_reg[0]_1 ,
    \slv_reg93_reg[0]_1 ,
    \slv_reg97_reg[0]_1 ,
    \slv_reg101_reg[0]_1 ,
    \slv_reg105_reg[0]_1 ,
    \slv_reg109_reg[0]_1 ,
    \slv_reg113_reg[0]_1 ,
    \slv_reg117_reg[0]_1 ,
    \slv_reg121_reg[0]_1 ,
    \slv_reg125_reg[0]_1 ,
    \slv_reg129_reg[0]_1 ,
    \slv_reg133_reg[0]_1 ,
    \slv_reg137_reg[0]_1 ,
    \slv_reg141_reg[0]_1 ,
    \slv_reg145_reg[0]_1 ,
    \slv_reg149_reg[0]_1 ,
    \slv_reg153_reg[0]_1 ,
    \slv_reg157_reg[0]_1 ,
    \slv_reg161_reg[0]_1 ,
    \slv_reg165_reg[0]_1 ,
    \slv_reg169_reg[0]_1 ,
    \slv_reg173_reg[0]_1 ,
    \slv_reg177_reg[0]_1 ,
    \slv_reg181_reg[0]_1 ,
    \slv_reg185_reg[0]_1 ,
    \slv_reg189_reg[0]_1 ,
    \slv_reg193_reg[0]_1 ,
    \slv_reg197_reg[0]_1 ,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output aw_en_reg_0;
  output PHS0_vld_out;
  output PHS1_vld_out;
  output PHS2_vld_out;
  output PHS3_vld_out;
  output PHS4_vld_out;
  output PHS5_vld_out;
  output PHS6_vld_out;
  output PHS7_vld_out;
  output PHS8_vld_out;
  output PHS9_vld_out;
  output PHS10_vld_out;
  output PHS11_vld_out;
  output PHS12_vld_out;
  output PHS13_vld_out;
  output PHS14_vld_out;
  output PHS15_vld_out;
  output PHS16_vld_out;
  output PHS17_vld_out;
  output PHS18_vld_out;
  output PHS19_vld_out;
  output PHS20_vld_out;
  output PHS21_vld_out;
  output PHS22_vld_out;
  output PHS23_vld_out;
  output PHS24_vld_out;
  output PHS25_vld_out;
  output PHS26_vld_out;
  output PHS27_vld_out;
  output PHS28_vld_out;
  output PHS29_vld_out;
  output PHS30_vld_out;
  output PHS31_vld_out;
  output PHS32_vld_out;
  output PHS33_vld_out;
  output PHS34_vld_out;
  output PHS35_vld_out;
  output PHS36_vld_out;
  output PHS37_vld_out;
  output PHS38_vld_out;
  output PHS39_vld_out;
  output PHS40_vld_out;
  output PHS41_vld_out;
  output PHS42_vld_out;
  output PHS43_vld_out;
  output PHS44_vld_out;
  output PHS45_vld_out;
  output PHS46_vld_out;
  output PHS47_vld_out;
  output PHS48_vld_out;
  output PHS49_vld_out;
  output s00_axi_rvalid;
  output \slv_reg1_reg[0]_0 ;
  output \slv_reg5_reg[0]_0 ;
  output \slv_reg9_reg[0]_0 ;
  output \slv_reg13_reg[0]_0 ;
  output \slv_reg17_reg[0]_0 ;
  output \slv_reg21_reg[0]_0 ;
  output \slv_reg25_reg[0]_0 ;
  output \slv_reg29_reg[0]_0 ;
  output \slv_reg33_reg[0]_0 ;
  output \slv_reg37_reg[0]_0 ;
  output \slv_reg41_reg[0]_0 ;
  output \slv_reg45_reg[0]_0 ;
  output \slv_reg49_reg[0]_0 ;
  output \slv_reg53_reg[0]_0 ;
  output \slv_reg57_reg[0]_0 ;
  output \slv_reg61_reg[0]_0 ;
  output \slv_reg65_reg[0]_0 ;
  output \slv_reg69_reg[0]_0 ;
  output \slv_reg73_reg[0]_0 ;
  output \slv_reg77_reg[0]_0 ;
  output \slv_reg81_reg[0]_0 ;
  output \slv_reg85_reg[0]_0 ;
  output \slv_reg89_reg[0]_0 ;
  output \slv_reg93_reg[0]_0 ;
  output \slv_reg97_reg[0]_0 ;
  output \slv_reg101_reg[0]_0 ;
  output \slv_reg105_reg[0]_0 ;
  output \slv_reg109_reg[0]_0 ;
  output \slv_reg113_reg[0]_0 ;
  output \slv_reg117_reg[0]_0 ;
  output \slv_reg121_reg[0]_0 ;
  output \slv_reg125_reg[0]_0 ;
  output \slv_reg129_reg[0]_0 ;
  output \slv_reg133_reg[0]_0 ;
  output \slv_reg137_reg[0]_0 ;
  output \slv_reg141_reg[0]_0 ;
  output \slv_reg145_reg[0]_0 ;
  output \slv_reg149_reg[0]_0 ;
  output \slv_reg153_reg[0]_0 ;
  output \slv_reg157_reg[0]_0 ;
  output \slv_reg161_reg[0]_0 ;
  output \slv_reg165_reg[0]_0 ;
  output \slv_reg169_reg[0]_0 ;
  output \slv_reg173_reg[0]_0 ;
  output \slv_reg177_reg[0]_0 ;
  output \slv_reg181_reg[0]_0 ;
  output \slv_reg185_reg[0]_0 ;
  output \slv_reg189_reg[0]_0 ;
  output \slv_reg193_reg[0]_0 ;
  output \slv_reg197_reg[0]_0 ;
  output \axi_araddr_reg[5]_0 ;
  output [5:0]Q;
  output \axi_araddr_reg[5]_1 ;
  output \axi_araddr_reg[4]_0 ;
  output \axi_araddr_reg[8]_0 ;
  output \axi_araddr_reg[9]_0 ;
  output \axi_araddr_reg[2]_0 ;
  output \axi_araddr_reg[5]_2 ;
  output \axi_araddr_reg[5]_3 ;
  output [9:0]PHS0_pwm_val;
  output [1:0]PHS0_irq_mask;
  output \axi_awaddr_reg[9]_0 ;
  output PHS0_irq1_clr;
  output PHS0_irq0_clr;
  output [9:0]PHS1_pwm_val;
  output [1:0]PHS1_irq_mask;
  output PHS1_irq1_clr;
  output PHS1_irq0_clr;
  output [9:0]PHS2_pwm_val;
  output [1:0]PHS2_irq_mask;
  output PHS2_irq1_clr;
  output PHS2_irq0_clr;
  output [9:0]PHS3_pwm_val;
  output [1:0]PHS3_irq_mask;
  output PHS3_irq1_clr;
  output PHS3_irq0_clr;
  output [9:0]PHS4_pwm_val;
  output [1:0]PHS4_irq_mask;
  output \axi_awaddr_reg[7]_0 ;
  output PHS4_irq1_clr;
  output PHS4_irq0_clr;
  output [9:0]PHS5_pwm_val;
  output [1:0]PHS5_irq_mask;
  output PHS5_irq1_clr;
  output PHS5_irq0_clr;
  output [9:0]PHS6_pwm_val;
  output [1:0]PHS6_irq_mask;
  output PHS6_irq1_clr;
  output PHS6_irq0_clr;
  output [9:0]PHS7_pwm_val;
  output [1:0]PHS7_irq_mask;
  output PHS7_irq1_clr;
  output PHS7_irq0_clr;
  output [9:0]PHS8_pwm_val;
  output [1:0]PHS8_irq_mask;
  output \axi_awaddr_reg[6]_0 ;
  output PHS8_irq1_clr;
  output PHS8_irq0_clr;
  output [9:0]PHS9_pwm_val;
  output [1:0]PHS9_irq_mask;
  output PHS9_irq1_clr;
  output PHS9_irq0_clr;
  output [9:0]PHS10_pwm_val;
  output [1:0]PHS10_irq_mask;
  output PHS10_irq1_clr;
  output PHS10_irq0_clr;
  output [9:0]PHS11_pwm_val;
  output [1:0]PHS11_irq_mask;
  output PHS11_irq1_clr;
  output PHS11_irq0_clr;
  output [9:0]PHS12_pwm_val;
  output [1:0]PHS12_irq_mask;
  output \axi_awaddr_reg[7]_1 ;
  output PHS12_irq1_clr;
  output PHS12_irq0_clr;
  output [9:0]PHS13_pwm_val;
  output [1:0]PHS13_irq_mask;
  output PHS13_irq1_clr;
  output PHS13_irq0_clr;
  output [9:0]PHS14_pwm_val;
  output [1:0]PHS14_irq_mask;
  output PHS14_irq1_clr;
  output PHS14_irq0_clr;
  output [9:0]PHS15_pwm_val;
  output [1:0]PHS15_irq_mask;
  output PHS15_irq1_clr;
  output PHS15_irq0_clr;
  output [9:0]PHS16_pwm_val;
  output [1:0]PHS16_irq_mask;
  output PHS16_irq1_clr;
  output PHS16_irq0_clr;
  output [9:0]PHS17_pwm_val;
  output [1:0]PHS17_irq_mask;
  output PHS17_irq1_clr;
  output PHS17_irq0_clr;
  output [9:0]PHS18_pwm_val;
  output [1:0]PHS18_irq_mask;
  output PHS18_irq1_clr;
  output PHS18_irq0_clr;
  output [9:0]PHS19_pwm_val;
  output [1:0]PHS19_irq_mask;
  output PHS19_irq1_clr;
  output PHS19_irq0_clr;
  output [9:0]PHS20_pwm_val;
  output [1:0]PHS20_irq_mask;
  output PHS20_irq1_clr;
  output PHS20_irq0_clr;
  output [9:0]PHS21_pwm_val;
  output [1:0]PHS21_irq_mask;
  output PHS21_irq1_clr;
  output PHS21_irq0_clr;
  output [9:0]PHS22_pwm_val;
  output [1:0]PHS22_irq_mask;
  output PHS22_irq1_clr;
  output PHS22_irq0_clr;
  output [9:0]PHS23_pwm_val;
  output [1:0]PHS23_irq_mask;
  output PHS23_irq1_clr;
  output PHS23_irq0_clr;
  output [9:0]PHS24_pwm_val;
  output [1:0]PHS24_irq_mask;
  output PHS24_irq1_clr;
  output PHS24_irq0_clr;
  output [9:0]PHS25_pwm_val;
  output [1:0]PHS25_irq_mask;
  output PHS25_irq1_clr;
  output PHS25_irq0_clr;
  output [9:0]PHS26_pwm_val;
  output [1:0]PHS26_irq_mask;
  output PHS26_irq1_clr;
  output PHS26_irq0_clr;
  output [9:0]PHS27_pwm_val;
  output [1:0]PHS27_irq_mask;
  output PHS27_irq1_clr;
  output PHS27_irq0_clr;
  output [9:0]PHS28_pwm_val;
  output [1:0]PHS28_irq_mask;
  output PHS28_irq1_clr;
  output PHS28_irq0_clr;
  output [9:0]PHS29_pwm_val;
  output [1:0]PHS29_irq_mask;
  output PHS29_irq1_clr;
  output PHS29_irq0_clr;
  output [9:0]PHS30_pwm_val;
  output [1:0]PHS30_irq_mask;
  output PHS30_irq1_clr;
  output PHS30_irq0_clr;
  output [9:0]PHS31_pwm_val;
  output [1:0]PHS31_irq_mask;
  output PHS31_irq1_clr;
  output PHS31_irq0_clr;
  output [9:0]PHS32_pwm_val;
  output [1:0]PHS32_irq_mask;
  output \axi_awaddr_reg[9]_1 ;
  output PHS32_irq1_clr;
  output PHS32_irq0_clr;
  output [9:0]PHS33_pwm_val;
  output [1:0]PHS33_irq_mask;
  output PHS33_irq1_clr;
  output PHS33_irq0_clr;
  output [9:0]PHS34_pwm_val;
  output [1:0]PHS34_irq_mask;
  output PHS34_irq1_clr;
  output PHS34_irq0_clr;
  output [9:0]PHS35_pwm_val;
  output [1:0]PHS35_irq_mask;
  output PHS35_irq1_clr;
  output PHS35_irq0_clr;
  output [9:0]PHS36_pwm_val;
  output [1:0]PHS36_irq_mask;
  output \axi_awaddr_reg[9]_2 ;
  output PHS36_irq1_clr;
  output PHS36_irq0_clr;
  output [9:0]PHS37_pwm_val;
  output [1:0]PHS37_irq_mask;
  output PHS37_irq1_clr;
  output PHS37_irq0_clr;
  output [9:0]PHS38_pwm_val;
  output [1:0]PHS38_irq_mask;
  output PHS38_irq1_clr;
  output PHS38_irq0_clr;
  output [9:0]PHS39_pwm_val;
  output [1:0]PHS39_irq_mask;
  output PHS39_irq1_clr;
  output PHS39_irq0_clr;
  output [9:0]PHS40_pwm_val;
  output [1:0]PHS40_irq_mask;
  output \axi_awaddr_reg[9]_3 ;
  output PHS40_irq1_clr;
  output PHS40_irq0_clr;
  output [9:0]PHS41_pwm_val;
  output [1:0]PHS41_irq_mask;
  output PHS41_irq1_clr;
  output PHS41_irq0_clr;
  output [9:0]PHS42_pwm_val;
  output [1:0]PHS42_irq_mask;
  output PHS42_irq1_clr;
  output PHS42_irq0_clr;
  output [9:0]PHS43_pwm_val;
  output [1:0]PHS43_irq_mask;
  output PHS43_irq1_clr;
  output PHS43_irq0_clr;
  output [9:0]PHS44_pwm_val;
  output [1:0]PHS44_irq_mask;
  output \axi_awaddr_reg[9]_4 ;
  output PHS44_irq1_clr;
  output PHS44_irq0_clr;
  output [9:0]PHS45_pwm_val;
  output [1:0]PHS45_irq_mask;
  output PHS45_irq1_clr;
  output PHS45_irq0_clr;
  output [9:0]PHS46_pwm_val;
  output [1:0]PHS46_irq_mask;
  output PHS46_irq1_clr;
  output PHS46_irq0_clr;
  output [9:0]PHS47_pwm_val;
  output [1:0]PHS47_irq_mask;
  output PHS47_irq1_clr;
  output PHS47_irq0_clr;
  output [9:0]PHS48_pwm_val;
  output [1:0]PHS48_irq_mask;
  output PHS48_irq1_clr;
  output PHS48_irq0_clr;
  output [9:0]PHS49_pwm_val;
  output [1:0]PHS49_irq_mask;
  output PHS49_irq1_clr;
  output PHS49_irq0_clr;
  output [24:0]s00_axi_rdata;
  output \axi_awaddr_reg[5]_0 ;
  output \axi_awaddr_reg[4]_0 ;
  output \axi_awaddr_reg[5]_1 ;
  output \axi_awaddr_reg[5]_2 ;
  output \axi_awaddr_reg[3]_0 ;
  output \axi_awaddr_reg[3]_1 ;
  output \axi_awaddr_reg[3]_2 ;
  output \axi_awaddr_reg[3]_3 ;
  output \axi_araddr_reg[9]_1 ;
  output \axi_araddr_reg[9]_2 ;
  output \axi_araddr_reg[8]_1 ;
  output \axi_araddr_reg[8]_2 ;
  output \axi_araddr_reg[8]_3 ;
  output \axi_araddr_reg[8]_4 ;
  output \axi_araddr_reg[8]_5 ;
  output \axi_araddr_reg[8]_6 ;
  output \axi_araddr_reg[8]_7 ;
  output \axi_araddr_reg[8]_8 ;
  output \axi_araddr_reg[8]_9 ;
  output \axi_araddr_reg[8]_10 ;
  output \axi_araddr_reg[8]_11 ;
  output \axi_araddr_reg[8]_12 ;
  output \axi_araddr_reg[8]_13 ;
  output \axi_araddr_reg[8]_14 ;
  output \axi_araddr_reg[6]_0 ;
  output \axi_araddr_reg[8]_15 ;
  output \axi_araddr_reg[9]_3 ;
  output \axi_araddr_reg[6]_1 ;
  output \axi_araddr_reg[8]_16 ;
  output \axi_araddr_reg[7]_0 ;
  output \axi_araddr_reg[6]_2 ;
  output \axi_araddr_reg[7]_1 ;
  output \axi_araddr_reg[5]_4 ;
  output \axi_araddr_reg[5]_5 ;
  output \axi_araddr_reg[4]_1 ;
  output \axi_araddr_reg[5]_6 ;
  output \axi_araddr_reg[4]_2 ;
  output \axi_araddr_reg[6]_3 ;
  output \axi_araddr_reg[6]_4 ;
  input p_0_in;
  input s00_axi_aclk;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input PHS0_vld_out_reg_0;
  input PHS1_vld_out_reg_0;
  input PHS2_vld_out_reg_0;
  input PHS3_vld_out_reg_0;
  input PHS4_vld_out_reg_0;
  input PHS5_vld_out_reg_0;
  input PHS6_vld_out_reg_0;
  input PHS7_vld_out_reg_0;
  input PHS8_vld_out_reg_0;
  input PHS9_vld_out_reg_0;
  input PHS10_vld_out_reg_0;
  input PHS11_vld_out_reg_0;
  input PHS12_vld_out_reg_0;
  input PHS13_vld_out_reg_0;
  input PHS14_vld_out_reg_0;
  input PHS15_vld_out_reg_0;
  input PHS16_vld_out_reg_0;
  input PHS17_vld_out_reg_0;
  input PHS18_vld_out_reg_0;
  input PHS19_vld_out_reg_0;
  input PHS20_vld_out_reg_0;
  input PHS21_vld_out_reg_0;
  input PHS22_vld_out_reg_0;
  input PHS23_vld_out_reg_0;
  input PHS24_vld_out_reg_0;
  input PHS25_vld_out_reg_0;
  input PHS26_vld_out_reg_0;
  input PHS27_vld_out_reg_0;
  input PHS28_vld_out_reg_0;
  input PHS29_vld_out_reg_0;
  input PHS30_vld_out_reg_0;
  input PHS31_vld_out_reg_0;
  input PHS32_vld_out_reg_0;
  input PHS33_vld_out_reg_0;
  input PHS34_vld_out_reg_0;
  input PHS35_vld_out_reg_0;
  input PHS36_vld_out_reg_0;
  input PHS37_vld_out_reg_0;
  input PHS38_vld_out_reg_0;
  input PHS39_vld_out_reg_0;
  input PHS40_vld_out_reg_0;
  input PHS41_vld_out_reg_0;
  input PHS42_vld_out_reg_0;
  input PHS43_vld_out_reg_0;
  input PHS44_vld_out_reg_0;
  input PHS45_vld_out_reg_0;
  input PHS46_vld_out_reg_0;
  input PHS47_vld_out_reg_0;
  input PHS48_vld_out_reg_0;
  input PHS49_vld_out_reg_0;
  input axi_rvalid_reg_0;
  input \slv_reg1_reg[0]_1 ;
  input \slv_reg5_reg[0]_1 ;
  input \slv_reg9_reg[0]_1 ;
  input \slv_reg13_reg[0]_1 ;
  input \slv_reg17_reg[0]_1 ;
  input \slv_reg21_reg[0]_1 ;
  input \slv_reg25_reg[0]_1 ;
  input \slv_reg29_reg[0]_1 ;
  input \slv_reg33_reg[0]_1 ;
  input \slv_reg37_reg[0]_1 ;
  input \slv_reg41_reg[0]_1 ;
  input \slv_reg45_reg[0]_1 ;
  input \slv_reg49_reg[0]_1 ;
  input \slv_reg53_reg[0]_1 ;
  input \slv_reg57_reg[0]_1 ;
  input \slv_reg61_reg[0]_1 ;
  input \slv_reg65_reg[0]_1 ;
  input \slv_reg69_reg[0]_1 ;
  input \slv_reg73_reg[0]_1 ;
  input \slv_reg77_reg[0]_1 ;
  input \slv_reg81_reg[0]_1 ;
  input \slv_reg85_reg[0]_1 ;
  input \slv_reg89_reg[0]_1 ;
  input \slv_reg93_reg[0]_1 ;
  input \slv_reg97_reg[0]_1 ;
  input \slv_reg101_reg[0]_1 ;
  input \slv_reg105_reg[0]_1 ;
  input \slv_reg109_reg[0]_1 ;
  input \slv_reg113_reg[0]_1 ;
  input \slv_reg117_reg[0]_1 ;
  input \slv_reg121_reg[0]_1 ;
  input \slv_reg125_reg[0]_1 ;
  input \slv_reg129_reg[0]_1 ;
  input \slv_reg133_reg[0]_1 ;
  input \slv_reg137_reg[0]_1 ;
  input \slv_reg141_reg[0]_1 ;
  input \slv_reg145_reg[0]_1 ;
  input \slv_reg149_reg[0]_1 ;
  input \slv_reg153_reg[0]_1 ;
  input \slv_reg157_reg[0]_1 ;
  input \slv_reg161_reg[0]_1 ;
  input \slv_reg165_reg[0]_1 ;
  input \slv_reg169_reg[0]_1 ;
  input \slv_reg173_reg[0]_1 ;
  input \slv_reg177_reg[0]_1 ;
  input \slv_reg181_reg[0]_1 ;
  input \slv_reg185_reg[0]_1 ;
  input \slv_reg189_reg[0]_1 ;
  input \slv_reg193_reg[0]_1 ;
  input \slv_reg197_reg[0]_1 ;
  input s00_axi_aresetn;
  input [7:0]s00_axi_awaddr;
  input [24:0]s00_axi_wdata;
  input [7:0]s00_axi_araddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;

  wire PHS0_irq0_clr;
  wire PHS0_irq1_clr;
  wire [1:0]PHS0_irq_mask;
  wire [9:0]PHS0_pwm_val;
  wire PHS0_vld_out;
  wire PHS0_vld_out_i_1_n_0;
  wire PHS0_vld_out_reg_0;
  wire PHS10_irq0_clr;
  wire PHS10_irq1_clr;
  wire [1:0]PHS10_irq_mask;
  wire [9:0]PHS10_pwm_val;
  wire PHS10_vld_out;
  wire PHS10_vld_out_reg_0;
  wire PHS11_irq0_clr;
  wire PHS11_irq1_clr;
  wire [1:0]PHS11_irq_mask;
  wire [9:0]PHS11_pwm_val;
  wire PHS11_vld_out;
  wire PHS11_vld_out_reg_0;
  wire PHS12_irq0_clr;
  wire PHS12_irq1_clr;
  wire [1:0]PHS12_irq_mask;
  wire [9:0]PHS12_pwm_val;
  wire PHS12_vld_out;
  wire PHS12_vld_out_reg_0;
  wire PHS13_irq0_clr;
  wire PHS13_irq1_clr;
  wire [1:0]PHS13_irq_mask;
  wire [9:0]PHS13_pwm_val;
  wire PHS13_vld_out;
  wire PHS13_vld_out_reg_0;
  wire PHS14_irq0_clr;
  wire PHS14_irq1_clr;
  wire [1:0]PHS14_irq_mask;
  wire [9:0]PHS14_pwm_val;
  wire PHS14_vld_out;
  wire PHS14_vld_out_reg_0;
  wire PHS15_irq0_clr;
  wire PHS15_irq1_clr;
  wire [1:0]PHS15_irq_mask;
  wire [9:0]PHS15_pwm_val;
  wire PHS15_vld_out;
  wire PHS15_vld_out_reg_0;
  wire PHS16_irq0_clr;
  wire PHS16_irq1_clr;
  wire [1:0]PHS16_irq_mask;
  wire [9:0]PHS16_pwm_val;
  wire PHS16_vld_out;
  wire PHS16_vld_out_reg_0;
  wire PHS17_irq0_clr;
  wire PHS17_irq1_clr;
  wire [1:0]PHS17_irq_mask;
  wire [9:0]PHS17_pwm_val;
  wire PHS17_vld_out;
  wire PHS17_vld_out_reg_0;
  wire PHS18_irq0_clr;
  wire PHS18_irq1_clr;
  wire [1:0]PHS18_irq_mask;
  wire [9:0]PHS18_pwm_val;
  wire PHS18_vld_out;
  wire PHS18_vld_out_reg_0;
  wire PHS19_irq0_clr;
  wire PHS19_irq1_clr;
  wire [1:0]PHS19_irq_mask;
  wire [9:0]PHS19_pwm_val;
  wire PHS19_vld_out;
  wire PHS19_vld_out_reg_0;
  wire PHS1_irq0_clr;
  wire PHS1_irq1_clr;
  wire [1:0]PHS1_irq_mask;
  wire [9:0]PHS1_pwm_val;
  wire PHS1_vld_out;
  wire PHS1_vld_out_reg_0;
  wire PHS20_irq0_clr;
  wire PHS20_irq1_clr;
  wire [1:0]PHS20_irq_mask;
  wire [9:0]PHS20_pwm_val;
  wire PHS20_vld_out;
  wire PHS20_vld_out_reg_0;
  wire PHS21_irq0_clr;
  wire PHS21_irq1_clr;
  wire [1:0]PHS21_irq_mask;
  wire [9:0]PHS21_pwm_val;
  wire PHS21_vld_out;
  wire PHS21_vld_out_reg_0;
  wire PHS22_irq0_clr;
  wire PHS22_irq1_clr;
  wire [1:0]PHS22_irq_mask;
  wire [9:0]PHS22_pwm_val;
  wire PHS22_vld_out;
  wire PHS22_vld_out_reg_0;
  wire PHS23_irq0_clr;
  wire PHS23_irq1_clr;
  wire [1:0]PHS23_irq_mask;
  wire [9:0]PHS23_pwm_val;
  wire PHS23_vld_out;
  wire PHS23_vld_out_reg_0;
  wire PHS24_irq0_clr;
  wire PHS24_irq1_clr;
  wire [1:0]PHS24_irq_mask;
  wire [9:0]PHS24_pwm_val;
  wire PHS24_vld_out;
  wire PHS24_vld_out_reg_0;
  wire PHS25_irq0_clr;
  wire PHS25_irq1_clr;
  wire [1:0]PHS25_irq_mask;
  wire [9:0]PHS25_pwm_val;
  wire PHS25_vld_out;
  wire PHS25_vld_out_reg_0;
  wire PHS26_irq0_clr;
  wire PHS26_irq1_clr;
  wire [1:0]PHS26_irq_mask;
  wire [9:0]PHS26_pwm_val;
  wire PHS26_vld_out;
  wire PHS26_vld_out_reg_0;
  wire PHS27_irq0_clr;
  wire PHS27_irq1_clr;
  wire [1:0]PHS27_irq_mask;
  wire [9:0]PHS27_pwm_val;
  wire PHS27_vld_out;
  wire PHS27_vld_out_reg_0;
  wire PHS28_irq0_clr;
  wire PHS28_irq1_clr;
  wire [1:0]PHS28_irq_mask;
  wire [9:0]PHS28_pwm_val;
  wire PHS28_vld_out;
  wire PHS28_vld_out_reg_0;
  wire PHS29_irq0_clr;
  wire PHS29_irq1_clr;
  wire [1:0]PHS29_irq_mask;
  wire [9:0]PHS29_pwm_val;
  wire PHS29_vld_out;
  wire PHS29_vld_out_reg_0;
  wire PHS2_irq0_clr;
  wire PHS2_irq1_clr;
  wire [1:0]PHS2_irq_mask;
  wire [9:0]PHS2_pwm_val;
  wire PHS2_vld_out;
  wire PHS2_vld_out_reg_0;
  wire PHS30_irq0_clr;
  wire PHS30_irq1_clr;
  wire [1:0]PHS30_irq_mask;
  wire [9:0]PHS30_pwm_val;
  wire PHS30_vld_out;
  wire PHS30_vld_out_reg_0;
  wire PHS31_irq0_clr;
  wire PHS31_irq1_clr;
  wire [1:0]PHS31_irq_mask;
  wire [9:0]PHS31_pwm_val;
  wire PHS31_vld_out;
  wire PHS31_vld_out_reg_0;
  wire PHS32_irq0_clr;
  wire PHS32_irq1_clr;
  wire [1:0]PHS32_irq_mask;
  wire [9:0]PHS32_pwm_val;
  wire PHS32_vld_out;
  wire PHS32_vld_out_reg_0;
  wire PHS33_irq0_clr;
  wire PHS33_irq1_clr;
  wire [1:0]PHS33_irq_mask;
  wire [9:0]PHS33_pwm_val;
  wire PHS33_vld_out;
  wire PHS33_vld_out_reg_0;
  wire PHS34_irq0_clr;
  wire PHS34_irq1_clr;
  wire [1:0]PHS34_irq_mask;
  wire [9:0]PHS34_pwm_val;
  wire PHS34_vld_out;
  wire PHS34_vld_out_reg_0;
  wire PHS35_irq0_clr;
  wire PHS35_irq1_clr;
  wire [1:0]PHS35_irq_mask;
  wire [9:0]PHS35_pwm_val;
  wire PHS35_vld_out;
  wire PHS35_vld_out_reg_0;
  wire PHS36_irq0_clr;
  wire PHS36_irq1_clr;
  wire [1:0]PHS36_irq_mask;
  wire [9:0]PHS36_pwm_val;
  wire PHS36_vld_out;
  wire PHS36_vld_out_reg_0;
  wire PHS37_irq0_clr;
  wire PHS37_irq1_clr;
  wire [1:0]PHS37_irq_mask;
  wire [9:0]PHS37_pwm_val;
  wire PHS37_vld_out;
  wire PHS37_vld_out_reg_0;
  wire PHS38_irq0_clr;
  wire PHS38_irq1_clr;
  wire [1:0]PHS38_irq_mask;
  wire [9:0]PHS38_pwm_val;
  wire PHS38_vld_out;
  wire PHS38_vld_out_reg_0;
  wire PHS39_irq0_clr;
  wire PHS39_irq1_clr;
  wire [1:0]PHS39_irq_mask;
  wire [9:0]PHS39_pwm_val;
  wire PHS39_vld_out;
  wire PHS39_vld_out_reg_0;
  wire PHS3_irq0_clr;
  wire PHS3_irq1_clr;
  wire [1:0]PHS3_irq_mask;
  wire [9:0]PHS3_pwm_val;
  wire PHS3_vld_out;
  wire PHS3_vld_out_reg_0;
  wire PHS40_irq0_clr;
  wire PHS40_irq1_clr;
  wire [1:0]PHS40_irq_mask;
  wire [9:0]PHS40_pwm_val;
  wire PHS40_vld_out;
  wire PHS40_vld_out_reg_0;
  wire PHS41_irq0_clr;
  wire PHS41_irq1_clr;
  wire [1:0]PHS41_irq_mask;
  wire [9:0]PHS41_pwm_val;
  wire PHS41_vld_out;
  wire PHS41_vld_out_reg_0;
  wire PHS42_irq0_clr;
  wire PHS42_irq1_clr;
  wire [1:0]PHS42_irq_mask;
  wire [9:0]PHS42_pwm_val;
  wire PHS42_vld_out;
  wire PHS42_vld_out_reg_0;
  wire PHS43_irq0_clr;
  wire PHS43_irq1_clr;
  wire [1:0]PHS43_irq_mask;
  wire [9:0]PHS43_pwm_val;
  wire PHS43_vld_out;
  wire PHS43_vld_out_reg_0;
  wire PHS44_irq0_clr;
  wire PHS44_irq1_clr;
  wire [1:0]PHS44_irq_mask;
  wire [9:0]PHS44_pwm_val;
  wire PHS44_vld_out;
  wire PHS44_vld_out_reg_0;
  wire PHS45_irq0_clr;
  wire PHS45_irq1_clr;
  wire [1:0]PHS45_irq_mask;
  wire [9:0]PHS45_pwm_val;
  wire PHS45_vld_out;
  wire PHS45_vld_out_reg_0;
  wire PHS46_irq0_clr;
  wire PHS46_irq1_clr;
  wire [1:0]PHS46_irq_mask;
  wire [9:0]PHS46_pwm_val;
  wire PHS46_vld_out;
  wire PHS46_vld_out_reg_0;
  wire PHS47_irq0_clr;
  wire PHS47_irq1_clr;
  wire [1:0]PHS47_irq_mask;
  wire [9:0]PHS47_pwm_val;
  wire PHS47_vld_out;
  wire PHS47_vld_out_reg_0;
  wire PHS48_irq0_clr;
  wire PHS48_irq1_clr;
  wire [1:0]PHS48_irq_mask;
  wire [9:0]PHS48_pwm_val;
  wire PHS48_vld_out;
  wire PHS48_vld_out_reg_0;
  wire PHS49_irq0_clr;
  wire PHS49_irq1_clr;
  wire [1:0]PHS49_irq_mask;
  wire [9:0]PHS49_pwm_val;
  wire PHS49_vld_out;
  wire PHS49_vld_out_reg_0;
  wire PHS4_irq0_clr;
  wire PHS4_irq1_clr;
  wire [1:0]PHS4_irq_mask;
  wire [9:0]PHS4_pwm_val;
  wire PHS4_vld_out;
  wire PHS4_vld_out_reg_0;
  wire PHS5_irq0_clr;
  wire PHS5_irq1_clr;
  wire [1:0]PHS5_irq_mask;
  wire [9:0]PHS5_pwm_val;
  wire PHS5_vld_out;
  wire PHS5_vld_out_reg_0;
  wire PHS6_irq0_clr;
  wire PHS6_irq1_clr;
  wire [1:0]PHS6_irq_mask;
  wire [9:0]PHS6_pwm_val;
  wire PHS6_vld_out;
  wire PHS6_vld_out_reg_0;
  wire PHS7_irq0_clr;
  wire PHS7_irq1_clr;
  wire [1:0]PHS7_irq_mask;
  wire [9:0]PHS7_pwm_val;
  wire PHS7_vld_out;
  wire PHS7_vld_out_reg_0;
  wire PHS8_irq0_clr;
  wire PHS8_irq1_clr;
  wire [1:0]PHS8_irq_mask;
  wire [9:0]PHS8_pwm_val;
  wire PHS8_vld_out;
  wire PHS8_vld_out_reg_0;
  wire PHS9_irq0_clr;
  wire PHS9_irq1_clr;
  wire [1:0]PHS9_irq_mask;
  wire [9:0]PHS9_pwm_val;
  wire PHS9_vld_out;
  wire PHS9_vld_out_reg_0;
  wire [5:0]Q;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire [5:4]axi_araddr;
  wire \axi_araddr_reg[2]_0 ;
  wire \axi_araddr_reg[2]_rep__0_n_0 ;
  wire \axi_araddr_reg[2]_rep_n_0 ;
  wire \axi_araddr_reg[3]_rep__0_n_0 ;
  wire \axi_araddr_reg[3]_rep_n_0 ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_araddr_reg[4]_1 ;
  wire \axi_araddr_reg[4]_2 ;
  wire \axi_araddr_reg[4]_rep__0_n_0 ;
  wire \axi_araddr_reg[4]_rep_n_0 ;
  wire \axi_araddr_reg[5]_0 ;
  wire \axi_araddr_reg[5]_1 ;
  wire \axi_araddr_reg[5]_2 ;
  wire \axi_araddr_reg[5]_3 ;
  wire \axi_araddr_reg[5]_4 ;
  wire \axi_araddr_reg[5]_5 ;
  wire \axi_araddr_reg[5]_6 ;
  wire \axi_araddr_reg[6]_0 ;
  wire \axi_araddr_reg[6]_1 ;
  wire \axi_araddr_reg[6]_2 ;
  wire \axi_araddr_reg[6]_3 ;
  wire \axi_araddr_reg[6]_4 ;
  wire \axi_araddr_reg[7]_0 ;
  wire \axi_araddr_reg[7]_1 ;
  wire \axi_araddr_reg[8]_0 ;
  wire \axi_araddr_reg[8]_1 ;
  wire \axi_araddr_reg[8]_10 ;
  wire \axi_araddr_reg[8]_11 ;
  wire \axi_araddr_reg[8]_12 ;
  wire \axi_araddr_reg[8]_13 ;
  wire \axi_araddr_reg[8]_14 ;
  wire \axi_araddr_reg[8]_15 ;
  wire \axi_araddr_reg[8]_16 ;
  wire \axi_araddr_reg[8]_2 ;
  wire \axi_araddr_reg[8]_3 ;
  wire \axi_araddr_reg[8]_4 ;
  wire \axi_araddr_reg[8]_5 ;
  wire \axi_araddr_reg[8]_6 ;
  wire \axi_araddr_reg[8]_7 ;
  wire \axi_araddr_reg[8]_8 ;
  wire \axi_araddr_reg[8]_9 ;
  wire \axi_araddr_reg[9]_0 ;
  wire \axi_araddr_reg[9]_1 ;
  wire \axi_araddr_reg[9]_2 ;
  wire \axi_araddr_reg[9]_3 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr_reg[3]_0 ;
  wire \axi_awaddr_reg[3]_1 ;
  wire \axi_awaddr_reg[3]_2 ;
  wire \axi_awaddr_reg[3]_3 ;
  wire \axi_awaddr_reg[4]_0 ;
  wire \axi_awaddr_reg[5]_0 ;
  wire \axi_awaddr_reg[5]_1 ;
  wire \axi_awaddr_reg[5]_2 ;
  wire \axi_awaddr_reg[6]_0 ;
  wire \axi_awaddr_reg[7]_0 ;
  wire \axi_awaddr_reg[7]_1 ;
  wire \axi_awaddr_reg[9]_0 ;
  wire \axi_awaddr_reg[9]_1 ;
  wire \axi_awaddr_reg[9]_2 ;
  wire \axi_awaddr_reg[9]_3 ;
  wire \axi_awaddr_reg[9]_4 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_11_n_0 ;
  wire \axi_rdata[0]_i_12_n_0 ;
  wire \axi_rdata[0]_i_21_n_0 ;
  wire \axi_rdata[0]_i_22_n_0 ;
  wire \axi_rdata[0]_i_23_n_0 ;
  wire \axi_rdata[0]_i_24_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_33_n_0 ;
  wire \axi_rdata[0]_i_34_n_0 ;
  wire \axi_rdata[0]_i_35_n_0 ;
  wire \axi_rdata[0]_i_36_n_0 ;
  wire \axi_rdata[0]_i_37_n_0 ;
  wire \axi_rdata[0]_i_38_n_0 ;
  wire \axi_rdata[0]_i_39_n_0 ;
  wire \axi_rdata[0]_i_40_n_0 ;
  wire \axi_rdata[0]_i_41_n_0 ;
  wire \axi_rdata[0]_i_42_n_0 ;
  wire \axi_rdata[0]_i_43_n_0 ;
  wire \axi_rdata[0]_i_44_n_0 ;
  wire \axi_rdata[0]_i_45_n_0 ;
  wire \axi_rdata[0]_i_46_n_0 ;
  wire \axi_rdata[0]_i_47_n_0 ;
  wire \axi_rdata[0]_i_48_n_0 ;
  wire \axi_rdata[0]_i_65_n_0 ;
  wire \axi_rdata[0]_i_66_n_0 ;
  wire \axi_rdata[0]_i_67_n_0 ;
  wire \axi_rdata[0]_i_68_n_0 ;
  wire \axi_rdata[0]_i_69_n_0 ;
  wire \axi_rdata[0]_i_70_n_0 ;
  wire \axi_rdata[0]_i_71_n_0 ;
  wire \axi_rdata[0]_i_72_n_0 ;
  wire \axi_rdata[0]_i_73_n_0 ;
  wire \axi_rdata[0]_i_74_n_0 ;
  wire \axi_rdata[0]_i_75_n_0 ;
  wire \axi_rdata[0]_i_76_n_0 ;
  wire \axi_rdata[0]_i_77_n_0 ;
  wire \axi_rdata[0]_i_78_n_0 ;
  wire \axi_rdata[0]_i_79_n_0 ;
  wire \axi_rdata[0]_i_80_n_0 ;
  wire \axi_rdata[0]_i_81_n_0 ;
  wire \axi_rdata[0]_i_82_n_0 ;
  wire \axi_rdata[0]_i_83_n_0 ;
  wire \axi_rdata[0]_i_84_n_0 ;
  wire \axi_rdata[0]_i_85_n_0 ;
  wire \axi_rdata[0]_i_86_n_0 ;
  wire \axi_rdata[0]_i_87_n_0 ;
  wire \axi_rdata[0]_i_88_n_0 ;
  wire \axi_rdata[0]_i_89_n_0 ;
  wire \axi_rdata[0]_i_90_n_0 ;
  wire \axi_rdata[0]_i_91_n_0 ;
  wire \axi_rdata[0]_i_92_n_0 ;
  wire \axi_rdata[0]_i_93_n_0 ;
  wire \axi_rdata[0]_i_94_n_0 ;
  wire \axi_rdata[0]_i_95_n_0 ;
  wire \axi_rdata[0]_i_96_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_13_n_0 ;
  wire \axi_rdata[1]_i_14_n_0 ;
  wire \axi_rdata[1]_i_23_n_0 ;
  wire \axi_rdata[1]_i_24_n_0 ;
  wire \axi_rdata[1]_i_25_n_0 ;
  wire \axi_rdata[1]_i_26_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_35_n_0 ;
  wire \axi_rdata[1]_i_36_n_0 ;
  wire \axi_rdata[1]_i_37_n_0 ;
  wire \axi_rdata[1]_i_38_n_0 ;
  wire \axi_rdata[1]_i_39_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_40_n_0 ;
  wire \axi_rdata[1]_i_41_n_0 ;
  wire \axi_rdata[1]_i_42_n_0 ;
  wire \axi_rdata[1]_i_43_n_0 ;
  wire \axi_rdata[1]_i_44_n_0 ;
  wire \axi_rdata[1]_i_45_n_0 ;
  wire \axi_rdata[1]_i_46_n_0 ;
  wire \axi_rdata[1]_i_47_n_0 ;
  wire \axi_rdata[1]_i_48_n_0 ;
  wire \axi_rdata[1]_i_49_n_0 ;
  wire \axi_rdata[1]_i_50_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_67_n_0 ;
  wire \axi_rdata[1]_i_68_n_0 ;
  wire \axi_rdata[1]_i_69_n_0 ;
  wire \axi_rdata[1]_i_70_n_0 ;
  wire \axi_rdata[1]_i_71_n_0 ;
  wire \axi_rdata[1]_i_72_n_0 ;
  wire \axi_rdata[1]_i_73_n_0 ;
  wire \axi_rdata[1]_i_74_n_0 ;
  wire \axi_rdata[1]_i_75_n_0 ;
  wire \axi_rdata[1]_i_76_n_0 ;
  wire \axi_rdata[1]_i_77_n_0 ;
  wire \axi_rdata[1]_i_78_n_0 ;
  wire \axi_rdata[1]_i_79_n_0 ;
  wire \axi_rdata[1]_i_80_n_0 ;
  wire \axi_rdata[1]_i_81_n_0 ;
  wire \axi_rdata[1]_i_82_n_0 ;
  wire \axi_rdata[1]_i_83_n_0 ;
  wire \axi_rdata[1]_i_84_n_0 ;
  wire \axi_rdata[1]_i_85_n_0 ;
  wire \axi_rdata[1]_i_86_n_0 ;
  wire \axi_rdata[1]_i_87_n_0 ;
  wire \axi_rdata[1]_i_88_n_0 ;
  wire \axi_rdata[1]_i_89_n_0 ;
  wire \axi_rdata[1]_i_90_n_0 ;
  wire \axi_rdata[1]_i_91_n_0 ;
  wire \axi_rdata[1]_i_92_n_0 ;
  wire \axi_rdata[1]_i_93_n_0 ;
  wire \axi_rdata[1]_i_94_n_0 ;
  wire \axi_rdata[1]_i_95_n_0 ;
  wire \axi_rdata[1]_i_96_n_0 ;
  wire \axi_rdata[1]_i_97_n_0 ;
  wire \axi_rdata[1]_i_98_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[2]_i_10_n_0 ;
  wire \axi_rdata[2]_i_23_n_0 ;
  wire \axi_rdata[2]_i_24_n_0 ;
  wire \axi_rdata[2]_i_25_n_0 ;
  wire \axi_rdata[2]_i_26_n_0 ;
  wire \axi_rdata[2]_i_27_n_0 ;
  wire \axi_rdata[2]_i_28_n_0 ;
  wire \axi_rdata[2]_i_29_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_30_n_0 ;
  wire \axi_rdata[2]_i_31_n_0 ;
  wire \axi_rdata[2]_i_32_n_0 ;
  wire \axi_rdata[2]_i_33_n_0 ;
  wire \axi_rdata[2]_i_34_n_0 ;
  wire \axi_rdata[2]_i_35_n_0 ;
  wire \axi_rdata[2]_i_36_n_0 ;
  wire \axi_rdata[2]_i_37_n_0 ;
  wire \axi_rdata[2]_i_38_n_0 ;
  wire \axi_rdata[2]_i_39_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_40_n_0 ;
  wire \axi_rdata[2]_i_41_n_0 ;
  wire \axi_rdata[2]_i_42_n_0 ;
  wire \axi_rdata[2]_i_43_n_0 ;
  wire \axi_rdata[2]_i_44_n_0 ;
  wire \axi_rdata[2]_i_45_n_0 ;
  wire \axi_rdata[2]_i_46_n_0 ;
  wire \axi_rdata[2]_i_47_n_0 ;
  wire \axi_rdata[2]_i_48_n_0 ;
  wire \axi_rdata[2]_i_49_n_0 ;
  wire \axi_rdata[3]_i_10_n_0 ;
  wire \axi_rdata[3]_i_23_n_0 ;
  wire \axi_rdata[3]_i_24_n_0 ;
  wire \axi_rdata[3]_i_25_n_0 ;
  wire \axi_rdata[3]_i_26_n_0 ;
  wire \axi_rdata[3]_i_27_n_0 ;
  wire \axi_rdata[3]_i_28_n_0 ;
  wire \axi_rdata[3]_i_29_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_30_n_0 ;
  wire \axi_rdata[3]_i_31_n_0 ;
  wire \axi_rdata[3]_i_32_n_0 ;
  wire \axi_rdata[3]_i_33_n_0 ;
  wire \axi_rdata[3]_i_34_n_0 ;
  wire \axi_rdata[3]_i_35_n_0 ;
  wire \axi_rdata[3]_i_36_n_0 ;
  wire \axi_rdata[3]_i_37_n_0 ;
  wire \axi_rdata[3]_i_38_n_0 ;
  wire \axi_rdata[3]_i_39_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_40_n_0 ;
  wire \axi_rdata[3]_i_41_n_0 ;
  wire \axi_rdata[3]_i_42_n_0 ;
  wire \axi_rdata[3]_i_43_n_0 ;
  wire \axi_rdata[3]_i_44_n_0 ;
  wire \axi_rdata[3]_i_45_n_0 ;
  wire \axi_rdata[3]_i_46_n_0 ;
  wire \axi_rdata[3]_i_47_n_0 ;
  wire \axi_rdata[3]_i_48_n_0 ;
  wire \axi_rdata[3]_i_49_n_0 ;
  wire \axi_rdata[4]_i_10_n_0 ;
  wire \axi_rdata[4]_i_23_n_0 ;
  wire \axi_rdata[4]_i_24_n_0 ;
  wire \axi_rdata[4]_i_25_n_0 ;
  wire \axi_rdata[4]_i_26_n_0 ;
  wire \axi_rdata[4]_i_27_n_0 ;
  wire \axi_rdata[4]_i_28_n_0 ;
  wire \axi_rdata[4]_i_29_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_30_n_0 ;
  wire \axi_rdata[4]_i_31_n_0 ;
  wire \axi_rdata[4]_i_32_n_0 ;
  wire \axi_rdata[4]_i_33_n_0 ;
  wire \axi_rdata[4]_i_34_n_0 ;
  wire \axi_rdata[4]_i_35_n_0 ;
  wire \axi_rdata[4]_i_36_n_0 ;
  wire \axi_rdata[4]_i_37_n_0 ;
  wire \axi_rdata[4]_i_38_n_0 ;
  wire \axi_rdata[4]_i_39_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_40_n_0 ;
  wire \axi_rdata[4]_i_41_n_0 ;
  wire \axi_rdata[4]_i_42_n_0 ;
  wire \axi_rdata[4]_i_43_n_0 ;
  wire \axi_rdata[4]_i_44_n_0 ;
  wire \axi_rdata[4]_i_45_n_0 ;
  wire \axi_rdata[4]_i_46_n_0 ;
  wire \axi_rdata[4]_i_47_n_0 ;
  wire \axi_rdata[4]_i_48_n_0 ;
  wire \axi_rdata[4]_i_49_n_0 ;
  wire \axi_rdata[5]_i_10_n_0 ;
  wire \axi_rdata[5]_i_23_n_0 ;
  wire \axi_rdata[5]_i_24_n_0 ;
  wire \axi_rdata[5]_i_25_n_0 ;
  wire \axi_rdata[5]_i_26_n_0 ;
  wire \axi_rdata[5]_i_27_n_0 ;
  wire \axi_rdata[5]_i_28_n_0 ;
  wire \axi_rdata[5]_i_29_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_30_n_0 ;
  wire \axi_rdata[5]_i_31_n_0 ;
  wire \axi_rdata[5]_i_32_n_0 ;
  wire \axi_rdata[5]_i_33_n_0 ;
  wire \axi_rdata[5]_i_34_n_0 ;
  wire \axi_rdata[5]_i_35_n_0 ;
  wire \axi_rdata[5]_i_36_n_0 ;
  wire \axi_rdata[5]_i_37_n_0 ;
  wire \axi_rdata[5]_i_38_n_0 ;
  wire \axi_rdata[5]_i_39_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_40_n_0 ;
  wire \axi_rdata[5]_i_41_n_0 ;
  wire \axi_rdata[5]_i_42_n_0 ;
  wire \axi_rdata[5]_i_43_n_0 ;
  wire \axi_rdata[5]_i_44_n_0 ;
  wire \axi_rdata[5]_i_45_n_0 ;
  wire \axi_rdata[5]_i_46_n_0 ;
  wire \axi_rdata[5]_i_47_n_0 ;
  wire \axi_rdata[5]_i_48_n_0 ;
  wire \axi_rdata[5]_i_49_n_0 ;
  wire \axi_rdata[6]_i_10_n_0 ;
  wire \axi_rdata[6]_i_23_n_0 ;
  wire \axi_rdata[6]_i_24_n_0 ;
  wire \axi_rdata[6]_i_25_n_0 ;
  wire \axi_rdata[6]_i_26_n_0 ;
  wire \axi_rdata[6]_i_27_n_0 ;
  wire \axi_rdata[6]_i_28_n_0 ;
  wire \axi_rdata[6]_i_29_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_30_n_0 ;
  wire \axi_rdata[6]_i_31_n_0 ;
  wire \axi_rdata[6]_i_32_n_0 ;
  wire \axi_rdata[6]_i_33_n_0 ;
  wire \axi_rdata[6]_i_34_n_0 ;
  wire \axi_rdata[6]_i_35_n_0 ;
  wire \axi_rdata[6]_i_36_n_0 ;
  wire \axi_rdata[6]_i_37_n_0 ;
  wire \axi_rdata[6]_i_38_n_0 ;
  wire \axi_rdata[6]_i_39_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_40_n_0 ;
  wire \axi_rdata[6]_i_41_n_0 ;
  wire \axi_rdata[6]_i_42_n_0 ;
  wire \axi_rdata[6]_i_43_n_0 ;
  wire \axi_rdata[6]_i_44_n_0 ;
  wire \axi_rdata[6]_i_45_n_0 ;
  wire \axi_rdata[6]_i_46_n_0 ;
  wire \axi_rdata[6]_i_47_n_0 ;
  wire \axi_rdata[6]_i_48_n_0 ;
  wire \axi_rdata[6]_i_49_n_0 ;
  wire \axi_rdata[7]_i_10_n_0 ;
  wire \axi_rdata[7]_i_23_n_0 ;
  wire \axi_rdata[7]_i_24_n_0 ;
  wire \axi_rdata[7]_i_25_n_0 ;
  wire \axi_rdata[7]_i_26_n_0 ;
  wire \axi_rdata[7]_i_27_n_0 ;
  wire \axi_rdata[7]_i_28_n_0 ;
  wire \axi_rdata[7]_i_29_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_30_n_0 ;
  wire \axi_rdata[7]_i_31_n_0 ;
  wire \axi_rdata[7]_i_32_n_0 ;
  wire \axi_rdata[7]_i_33_n_0 ;
  wire \axi_rdata[7]_i_34_n_0 ;
  wire \axi_rdata[7]_i_35_n_0 ;
  wire \axi_rdata[7]_i_36_n_0 ;
  wire \axi_rdata[7]_i_37_n_0 ;
  wire \axi_rdata[7]_i_38_n_0 ;
  wire \axi_rdata[7]_i_39_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_40_n_0 ;
  wire \axi_rdata[7]_i_41_n_0 ;
  wire \axi_rdata[7]_i_42_n_0 ;
  wire \axi_rdata[7]_i_43_n_0 ;
  wire \axi_rdata[7]_i_44_n_0 ;
  wire \axi_rdata[7]_i_45_n_0 ;
  wire \axi_rdata[7]_i_46_n_0 ;
  wire \axi_rdata[7]_i_47_n_0 ;
  wire \axi_rdata[7]_i_48_n_0 ;
  wire \axi_rdata[7]_i_49_n_0 ;
  wire \axi_rdata[8]_i_10_n_0 ;
  wire \axi_rdata[8]_i_23_n_0 ;
  wire \axi_rdata[8]_i_24_n_0 ;
  wire \axi_rdata[8]_i_25_n_0 ;
  wire \axi_rdata[8]_i_26_n_0 ;
  wire \axi_rdata[8]_i_27_n_0 ;
  wire \axi_rdata[8]_i_28_n_0 ;
  wire \axi_rdata[8]_i_29_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_30_n_0 ;
  wire \axi_rdata[8]_i_31_n_0 ;
  wire \axi_rdata[8]_i_32_n_0 ;
  wire \axi_rdata[8]_i_33_n_0 ;
  wire \axi_rdata[8]_i_34_n_0 ;
  wire \axi_rdata[8]_i_35_n_0 ;
  wire \axi_rdata[8]_i_36_n_0 ;
  wire \axi_rdata[8]_i_37_n_0 ;
  wire \axi_rdata[8]_i_38_n_0 ;
  wire \axi_rdata[8]_i_39_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_40_n_0 ;
  wire \axi_rdata[8]_i_41_n_0 ;
  wire \axi_rdata[8]_i_42_n_0 ;
  wire \axi_rdata[8]_i_43_n_0 ;
  wire \axi_rdata[8]_i_44_n_0 ;
  wire \axi_rdata[8]_i_45_n_0 ;
  wire \axi_rdata[8]_i_46_n_0 ;
  wire \axi_rdata[8]_i_47_n_0 ;
  wire \axi_rdata[8]_i_48_n_0 ;
  wire \axi_rdata[8]_i_49_n_0 ;
  wire \axi_rdata[9]_i_10_n_0 ;
  wire \axi_rdata[9]_i_23_n_0 ;
  wire \axi_rdata[9]_i_24_n_0 ;
  wire \axi_rdata[9]_i_25_n_0 ;
  wire \axi_rdata[9]_i_26_n_0 ;
  wire \axi_rdata[9]_i_27_n_0 ;
  wire \axi_rdata[9]_i_28_n_0 ;
  wire \axi_rdata[9]_i_29_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_30_n_0 ;
  wire \axi_rdata[9]_i_31_n_0 ;
  wire \axi_rdata[9]_i_32_n_0 ;
  wire \axi_rdata[9]_i_33_n_0 ;
  wire \axi_rdata[9]_i_34_n_0 ;
  wire \axi_rdata[9]_i_35_n_0 ;
  wire \axi_rdata[9]_i_36_n_0 ;
  wire \axi_rdata[9]_i_37_n_0 ;
  wire \axi_rdata[9]_i_38_n_0 ;
  wire \axi_rdata[9]_i_39_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_40_n_0 ;
  wire \axi_rdata[9]_i_41_n_0 ;
  wire \axi_rdata[9]_i_42_n_0 ;
  wire \axi_rdata[9]_i_43_n_0 ;
  wire \axi_rdata[9]_i_44_n_0 ;
  wire \axi_rdata[9]_i_45_n_0 ;
  wire \axi_rdata[9]_i_46_n_0 ;
  wire \axi_rdata[9]_i_47_n_0 ;
  wire \axi_rdata[9]_i_48_n_0 ;
  wire \axi_rdata[9]_i_49_n_0 ;
  wire \axi_rdata_reg[0]_i_10_n_0 ;
  wire \axi_rdata_reg[0]_i_13_n_0 ;
  wire \axi_rdata_reg[0]_i_14_n_0 ;
  wire \axi_rdata_reg[0]_i_15_n_0 ;
  wire \axi_rdata_reg[0]_i_16_n_0 ;
  wire \axi_rdata_reg[0]_i_17_n_0 ;
  wire \axi_rdata_reg[0]_i_18_n_0 ;
  wire \axi_rdata_reg[0]_i_19_n_0 ;
  wire \axi_rdata_reg[0]_i_20_n_0 ;
  wire \axi_rdata_reg[0]_i_25_n_0 ;
  wire \axi_rdata_reg[0]_i_26_n_0 ;
  wire \axi_rdata_reg[0]_i_27_n_0 ;
  wire \axi_rdata_reg[0]_i_28_n_0 ;
  wire \axi_rdata_reg[0]_i_29_n_0 ;
  wire \axi_rdata_reg[0]_i_30_n_0 ;
  wire \axi_rdata_reg[0]_i_31_n_0 ;
  wire \axi_rdata_reg[0]_i_32_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_i_49_n_0 ;
  wire \axi_rdata_reg[0]_i_4_n_0 ;
  wire \axi_rdata_reg[0]_i_50_n_0 ;
  wire \axi_rdata_reg[0]_i_51_n_0 ;
  wire \axi_rdata_reg[0]_i_52_n_0 ;
  wire \axi_rdata_reg[0]_i_53_n_0 ;
  wire \axi_rdata_reg[0]_i_54_n_0 ;
  wire \axi_rdata_reg[0]_i_55_n_0 ;
  wire \axi_rdata_reg[0]_i_56_n_0 ;
  wire \axi_rdata_reg[0]_i_57_n_0 ;
  wire \axi_rdata_reg[0]_i_58_n_0 ;
  wire \axi_rdata_reg[0]_i_59_n_0 ;
  wire \axi_rdata_reg[0]_i_5_n_0 ;
  wire \axi_rdata_reg[0]_i_60_n_0 ;
  wire \axi_rdata_reg[0]_i_61_n_0 ;
  wire \axi_rdata_reg[0]_i_62_n_0 ;
  wire \axi_rdata_reg[0]_i_63_n_0 ;
  wire \axi_rdata_reg[0]_i_64_n_0 ;
  wire \axi_rdata_reg[0]_i_6_n_0 ;
  wire \axi_rdata_reg[0]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_8_n_0 ;
  wire \axi_rdata_reg[0]_i_9_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_10_n_0 ;
  wire \axi_rdata_reg[1]_i_11_n_0 ;
  wire \axi_rdata_reg[1]_i_12_n_0 ;
  wire \axi_rdata_reg[1]_i_15_n_0 ;
  wire \axi_rdata_reg[1]_i_16_n_0 ;
  wire \axi_rdata_reg[1]_i_17_n_0 ;
  wire \axi_rdata_reg[1]_i_18_n_0 ;
  wire \axi_rdata_reg[1]_i_19_n_0 ;
  wire \axi_rdata_reg[1]_i_20_n_0 ;
  wire \axi_rdata_reg[1]_i_21_n_0 ;
  wire \axi_rdata_reg[1]_i_22_n_0 ;
  wire \axi_rdata_reg[1]_i_27_n_0 ;
  wire \axi_rdata_reg[1]_i_28_n_0 ;
  wire \axi_rdata_reg[1]_i_29_n_0 ;
  wire \axi_rdata_reg[1]_i_30_n_0 ;
  wire \axi_rdata_reg[1]_i_31_n_0 ;
  wire \axi_rdata_reg[1]_i_32_n_0 ;
  wire \axi_rdata_reg[1]_i_33_n_0 ;
  wire \axi_rdata_reg[1]_i_34_n_0 ;
  wire \axi_rdata_reg[1]_i_4_n_0 ;
  wire \axi_rdata_reg[1]_i_51_n_0 ;
  wire \axi_rdata_reg[1]_i_52_n_0 ;
  wire \axi_rdata_reg[1]_i_53_n_0 ;
  wire \axi_rdata_reg[1]_i_54_n_0 ;
  wire \axi_rdata_reg[1]_i_55_n_0 ;
  wire \axi_rdata_reg[1]_i_56_n_0 ;
  wire \axi_rdata_reg[1]_i_57_n_0 ;
  wire \axi_rdata_reg[1]_i_58_n_0 ;
  wire \axi_rdata_reg[1]_i_59_n_0 ;
  wire \axi_rdata_reg[1]_i_60_n_0 ;
  wire \axi_rdata_reg[1]_i_61_n_0 ;
  wire \axi_rdata_reg[1]_i_62_n_0 ;
  wire \axi_rdata_reg[1]_i_63_n_0 ;
  wire \axi_rdata_reg[1]_i_64_n_0 ;
  wire \axi_rdata_reg[1]_i_65_n_0 ;
  wire \axi_rdata_reg[1]_i_66_n_0 ;
  wire \axi_rdata_reg[1]_i_6_n_0 ;
  wire \axi_rdata_reg[1]_i_7_n_0 ;
  wire \axi_rdata_reg[1]_i_8_n_0 ;
  wire \axi_rdata_reg[1]_i_9_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_11_n_0 ;
  wire \axi_rdata_reg[2]_i_12_n_0 ;
  wire \axi_rdata_reg[2]_i_13_n_0 ;
  wire \axi_rdata_reg[2]_i_14_n_0 ;
  wire \axi_rdata_reg[2]_i_15_n_0 ;
  wire \axi_rdata_reg[2]_i_16_n_0 ;
  wire \axi_rdata_reg[2]_i_17_n_0 ;
  wire \axi_rdata_reg[2]_i_18_n_0 ;
  wire \axi_rdata_reg[2]_i_19_n_0 ;
  wire \axi_rdata_reg[2]_i_20_n_0 ;
  wire \axi_rdata_reg[2]_i_21_n_0 ;
  wire \axi_rdata_reg[2]_i_22_n_0 ;
  wire \axi_rdata_reg[2]_i_4_n_0 ;
  wire \axi_rdata_reg[2]_i_5_n_0 ;
  wire \axi_rdata_reg[2]_i_6_n_0 ;
  wire \axi_rdata_reg[2]_i_7_n_0 ;
  wire \axi_rdata_reg[2]_i_8_n_0 ;
  wire \axi_rdata_reg[2]_i_9_n_0 ;
  wire \axi_rdata_reg[3]_i_11_n_0 ;
  wire \axi_rdata_reg[3]_i_12_n_0 ;
  wire \axi_rdata_reg[3]_i_13_n_0 ;
  wire \axi_rdata_reg[3]_i_14_n_0 ;
  wire \axi_rdata_reg[3]_i_15_n_0 ;
  wire \axi_rdata_reg[3]_i_16_n_0 ;
  wire \axi_rdata_reg[3]_i_17_n_0 ;
  wire \axi_rdata_reg[3]_i_18_n_0 ;
  wire \axi_rdata_reg[3]_i_19_n_0 ;
  wire \axi_rdata_reg[3]_i_20_n_0 ;
  wire \axi_rdata_reg[3]_i_21_n_0 ;
  wire \axi_rdata_reg[3]_i_22_n_0 ;
  wire \axi_rdata_reg[3]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_i_5_n_0 ;
  wire \axi_rdata_reg[3]_i_6_n_0 ;
  wire \axi_rdata_reg[3]_i_7_n_0 ;
  wire \axi_rdata_reg[3]_i_8_n_0 ;
  wire \axi_rdata_reg[3]_i_9_n_0 ;
  wire \axi_rdata_reg[4]_i_11_n_0 ;
  wire \axi_rdata_reg[4]_i_12_n_0 ;
  wire \axi_rdata_reg[4]_i_13_n_0 ;
  wire \axi_rdata_reg[4]_i_14_n_0 ;
  wire \axi_rdata_reg[4]_i_15_n_0 ;
  wire \axi_rdata_reg[4]_i_16_n_0 ;
  wire \axi_rdata_reg[4]_i_17_n_0 ;
  wire \axi_rdata_reg[4]_i_18_n_0 ;
  wire \axi_rdata_reg[4]_i_19_n_0 ;
  wire \axi_rdata_reg[4]_i_20_n_0 ;
  wire \axi_rdata_reg[4]_i_21_n_0 ;
  wire \axi_rdata_reg[4]_i_22_n_0 ;
  wire \axi_rdata_reg[4]_i_4_n_0 ;
  wire \axi_rdata_reg[4]_i_5_n_0 ;
  wire \axi_rdata_reg[4]_i_6_n_0 ;
  wire \axi_rdata_reg[4]_i_7_n_0 ;
  wire \axi_rdata_reg[4]_i_8_n_0 ;
  wire \axi_rdata_reg[4]_i_9_n_0 ;
  wire \axi_rdata_reg[5]_i_11_n_0 ;
  wire \axi_rdata_reg[5]_i_12_n_0 ;
  wire \axi_rdata_reg[5]_i_13_n_0 ;
  wire \axi_rdata_reg[5]_i_14_n_0 ;
  wire \axi_rdata_reg[5]_i_15_n_0 ;
  wire \axi_rdata_reg[5]_i_16_n_0 ;
  wire \axi_rdata_reg[5]_i_17_n_0 ;
  wire \axi_rdata_reg[5]_i_18_n_0 ;
  wire \axi_rdata_reg[5]_i_19_n_0 ;
  wire \axi_rdata_reg[5]_i_20_n_0 ;
  wire \axi_rdata_reg[5]_i_21_n_0 ;
  wire \axi_rdata_reg[5]_i_22_n_0 ;
  wire \axi_rdata_reg[5]_i_4_n_0 ;
  wire \axi_rdata_reg[5]_i_5_n_0 ;
  wire \axi_rdata_reg[5]_i_6_n_0 ;
  wire \axi_rdata_reg[5]_i_7_n_0 ;
  wire \axi_rdata_reg[5]_i_8_n_0 ;
  wire \axi_rdata_reg[5]_i_9_n_0 ;
  wire \axi_rdata_reg[6]_i_11_n_0 ;
  wire \axi_rdata_reg[6]_i_12_n_0 ;
  wire \axi_rdata_reg[6]_i_13_n_0 ;
  wire \axi_rdata_reg[6]_i_14_n_0 ;
  wire \axi_rdata_reg[6]_i_15_n_0 ;
  wire \axi_rdata_reg[6]_i_16_n_0 ;
  wire \axi_rdata_reg[6]_i_17_n_0 ;
  wire \axi_rdata_reg[6]_i_18_n_0 ;
  wire \axi_rdata_reg[6]_i_19_n_0 ;
  wire \axi_rdata_reg[6]_i_20_n_0 ;
  wire \axi_rdata_reg[6]_i_21_n_0 ;
  wire \axi_rdata_reg[6]_i_22_n_0 ;
  wire \axi_rdata_reg[6]_i_4_n_0 ;
  wire \axi_rdata_reg[6]_i_5_n_0 ;
  wire \axi_rdata_reg[6]_i_6_n_0 ;
  wire \axi_rdata_reg[6]_i_7_n_0 ;
  wire \axi_rdata_reg[6]_i_8_n_0 ;
  wire \axi_rdata_reg[6]_i_9_n_0 ;
  wire \axi_rdata_reg[7]_i_11_n_0 ;
  wire \axi_rdata_reg[7]_i_12_n_0 ;
  wire \axi_rdata_reg[7]_i_13_n_0 ;
  wire \axi_rdata_reg[7]_i_14_n_0 ;
  wire \axi_rdata_reg[7]_i_15_n_0 ;
  wire \axi_rdata_reg[7]_i_16_n_0 ;
  wire \axi_rdata_reg[7]_i_17_n_0 ;
  wire \axi_rdata_reg[7]_i_18_n_0 ;
  wire \axi_rdata_reg[7]_i_19_n_0 ;
  wire \axi_rdata_reg[7]_i_20_n_0 ;
  wire \axi_rdata_reg[7]_i_21_n_0 ;
  wire \axi_rdata_reg[7]_i_22_n_0 ;
  wire \axi_rdata_reg[7]_i_4_n_0 ;
  wire \axi_rdata_reg[7]_i_5_n_0 ;
  wire \axi_rdata_reg[7]_i_6_n_0 ;
  wire \axi_rdata_reg[7]_i_7_n_0 ;
  wire \axi_rdata_reg[7]_i_8_n_0 ;
  wire \axi_rdata_reg[7]_i_9_n_0 ;
  wire \axi_rdata_reg[8]_i_11_n_0 ;
  wire \axi_rdata_reg[8]_i_12_n_0 ;
  wire \axi_rdata_reg[8]_i_13_n_0 ;
  wire \axi_rdata_reg[8]_i_14_n_0 ;
  wire \axi_rdata_reg[8]_i_15_n_0 ;
  wire \axi_rdata_reg[8]_i_16_n_0 ;
  wire \axi_rdata_reg[8]_i_17_n_0 ;
  wire \axi_rdata_reg[8]_i_18_n_0 ;
  wire \axi_rdata_reg[8]_i_19_n_0 ;
  wire \axi_rdata_reg[8]_i_20_n_0 ;
  wire \axi_rdata_reg[8]_i_21_n_0 ;
  wire \axi_rdata_reg[8]_i_22_n_0 ;
  wire \axi_rdata_reg[8]_i_4_n_0 ;
  wire \axi_rdata_reg[8]_i_5_n_0 ;
  wire \axi_rdata_reg[8]_i_6_n_0 ;
  wire \axi_rdata_reg[8]_i_7_n_0 ;
  wire \axi_rdata_reg[8]_i_8_n_0 ;
  wire \axi_rdata_reg[8]_i_9_n_0 ;
  wire \axi_rdata_reg[9]_i_11_n_0 ;
  wire \axi_rdata_reg[9]_i_12_n_0 ;
  wire \axi_rdata_reg[9]_i_13_n_0 ;
  wire \axi_rdata_reg[9]_i_14_n_0 ;
  wire \axi_rdata_reg[9]_i_15_n_0 ;
  wire \axi_rdata_reg[9]_i_16_n_0 ;
  wire \axi_rdata_reg[9]_i_17_n_0 ;
  wire \axi_rdata_reg[9]_i_18_n_0 ;
  wire \axi_rdata_reg[9]_i_19_n_0 ;
  wire \axi_rdata_reg[9]_i_20_n_0 ;
  wire \axi_rdata_reg[9]_i_21_n_0 ;
  wire \axi_rdata_reg[9]_i_22_n_0 ;
  wire \axi_rdata_reg[9]_i_4_n_0 ;
  wire \axi_rdata_reg[9]_i_5_n_0 ;
  wire \axi_rdata_reg[9]_i_6_n_0 ;
  wire \axi_rdata_reg[9]_i_7_n_0 ;
  wire \axi_rdata_reg[9]_i_8_n_0 ;
  wire \axi_rdata_reg[9]_i_9_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire p_0_in;
  wire [24:0]reg_data_out;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [24:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [24:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [7:0]sel0;
  wire \slv_reg0[9]_i_2_n_0 ;
  wire \slv_reg100[9]_i_1_n_0 ;
  wire \slv_reg101_reg[0]_0 ;
  wire \slv_reg101_reg[0]_1 ;
  wire \slv_reg102[0]_i_1_n_0 ;
  wire \slv_reg102[1]_i_1_n_0 ;
  wire \slv_reg103[0]_i_1_n_0 ;
  wire \slv_reg103[1]_i_1_n_0 ;
  wire \slv_reg104[9]_i_1_n_0 ;
  wire \slv_reg105_reg[0]_0 ;
  wire \slv_reg105_reg[0]_1 ;
  wire \slv_reg106[0]_i_1_n_0 ;
  wire \slv_reg106[1]_i_1_n_0 ;
  wire \slv_reg107[0]_i_1_n_0 ;
  wire \slv_reg107[1]_i_1_n_0 ;
  wire \slv_reg108[9]_i_1_n_0 ;
  wire \slv_reg109_reg[0]_0 ;
  wire \slv_reg109_reg[0]_1 ;
  wire \slv_reg10[0]_i_1_n_0 ;
  wire \slv_reg10[1]_i_1_n_0 ;
  wire \slv_reg10[1]_i_2_n_0 ;
  wire \slv_reg110[0]_i_1_n_0 ;
  wire \slv_reg110[1]_i_1_n_0 ;
  wire \slv_reg111[0]_i_1_n_0 ;
  wire \slv_reg111[1]_i_1_n_0 ;
  wire \slv_reg112[9]_i_1_n_0 ;
  wire \slv_reg113_reg[0]_0 ;
  wire \slv_reg113_reg[0]_1 ;
  wire \slv_reg114[0]_i_1_n_0 ;
  wire \slv_reg114[1]_i_1_n_0 ;
  wire \slv_reg115[0]_i_1_n_0 ;
  wire \slv_reg115[1]_i_1_n_0 ;
  wire \slv_reg116[9]_i_1_n_0 ;
  wire \slv_reg117_reg[0]_0 ;
  wire \slv_reg117_reg[0]_1 ;
  wire \slv_reg118[0]_i_1_n_0 ;
  wire \slv_reg118[1]_i_1_n_0 ;
  wire \slv_reg119[0]_i_1_n_0 ;
  wire \slv_reg119[1]_i_1_n_0 ;
  wire \slv_reg11[0]_i_1_n_0 ;
  wire \slv_reg11[1]_i_1_n_0 ;
  wire \slv_reg120[9]_i_1_n_0 ;
  wire \slv_reg121_reg[0]_0 ;
  wire \slv_reg121_reg[0]_1 ;
  wire \slv_reg122[0]_i_1_n_0 ;
  wire \slv_reg122[1]_i_1_n_0 ;
  wire \slv_reg123[0]_i_1_n_0 ;
  wire \slv_reg123[1]_i_1_n_0 ;
  wire \slv_reg124[9]_i_1_n_0 ;
  wire \slv_reg125_reg[0]_0 ;
  wire \slv_reg125_reg[0]_1 ;
  wire \slv_reg126[0]_i_1_n_0 ;
  wire \slv_reg126[1]_i_1_n_0 ;
  wire \slv_reg127[0]_i_1_n_0 ;
  wire \slv_reg127[1]_i_1_n_0 ;
  wire \slv_reg128[9]_i_1_n_0 ;
  wire \slv_reg129_reg[0]_0 ;
  wire \slv_reg129_reg[0]_1 ;
  wire \slv_reg12[9]_i_1_n_0 ;
  wire \slv_reg130[0]_i_1_n_0 ;
  wire \slv_reg130[1]_i_1_n_0 ;
  wire \slv_reg130[1]_i_2_n_0 ;
  wire \slv_reg131[0]_i_1_n_0 ;
  wire \slv_reg131[1]_i_1_n_0 ;
  wire \slv_reg132[9]_i_1_n_0 ;
  wire \slv_reg133_reg[0]_0 ;
  wire \slv_reg133_reg[0]_1 ;
  wire \slv_reg134[0]_i_1_n_0 ;
  wire \slv_reg134[1]_i_1_n_0 ;
  wire \slv_reg135[0]_i_1_n_0 ;
  wire \slv_reg135[1]_i_1_n_0 ;
  wire \slv_reg136[9]_i_1_n_0 ;
  wire \slv_reg137_reg[0]_0 ;
  wire \slv_reg137_reg[0]_1 ;
  wire \slv_reg138[0]_i_1_n_0 ;
  wire \slv_reg138[1]_i_1_n_0 ;
  wire \slv_reg139[0]_i_1_n_0 ;
  wire \slv_reg139[1]_i_1_n_0 ;
  wire \slv_reg13_reg[0]_0 ;
  wire \slv_reg13_reg[0]_1 ;
  wire \slv_reg140[9]_i_1_n_0 ;
  wire \slv_reg141_reg[0]_0 ;
  wire \slv_reg141_reg[0]_1 ;
  wire \slv_reg142[0]_i_1_n_0 ;
  wire \slv_reg142[1]_i_1_n_0 ;
  wire \slv_reg143[0]_i_1_n_0 ;
  wire \slv_reg143[1]_i_1_n_0 ;
  wire \slv_reg144[9]_i_1_n_0 ;
  wire \slv_reg145_reg[0]_0 ;
  wire \slv_reg145_reg[0]_1 ;
  wire \slv_reg146[0]_i_1_n_0 ;
  wire \slv_reg146[1]_i_1_n_0 ;
  wire \slv_reg146[1]_i_2_n_0 ;
  wire \slv_reg147[0]_i_1_n_0 ;
  wire \slv_reg147[1]_i_1_n_0 ;
  wire \slv_reg148[9]_i_1_n_0 ;
  wire \slv_reg149_reg[0]_0 ;
  wire \slv_reg149_reg[0]_1 ;
  wire \slv_reg14[0]_i_1_n_0 ;
  wire \slv_reg14[1]_i_1_n_0 ;
  wire \slv_reg14[1]_i_2_n_0 ;
  wire \slv_reg150[0]_i_1_n_0 ;
  wire \slv_reg150[1]_i_1_n_0 ;
  wire \slv_reg151[0]_i_1_n_0 ;
  wire \slv_reg151[1]_i_1_n_0 ;
  wire \slv_reg152[9]_i_1_n_0 ;
  wire \slv_reg153_reg[0]_0 ;
  wire \slv_reg153_reg[0]_1 ;
  wire \slv_reg154[0]_i_1_n_0 ;
  wire \slv_reg154[1]_i_1_n_0 ;
  wire \slv_reg155[0]_i_1_n_0 ;
  wire \slv_reg155[1]_i_1_n_0 ;
  wire \slv_reg156[9]_i_1_n_0 ;
  wire \slv_reg157_reg[0]_0 ;
  wire \slv_reg157_reg[0]_1 ;
  wire \slv_reg158[0]_i_1_n_0 ;
  wire \slv_reg158[1]_i_1_n_0 ;
  wire \slv_reg159[0]_i_1_n_0 ;
  wire \slv_reg159[1]_i_1_n_0 ;
  wire \slv_reg15[0]_i_1_n_0 ;
  wire \slv_reg15[1]_i_1_n_0 ;
  wire \slv_reg160[9]_i_1_n_0 ;
  wire \slv_reg161_reg[0]_0 ;
  wire \slv_reg161_reg[0]_1 ;
  wire \slv_reg162[0]_i_1_n_0 ;
  wire \slv_reg162[1]_i_1_n_0 ;
  wire \slv_reg162[1]_i_2_n_0 ;
  wire \slv_reg163[0]_i_1_n_0 ;
  wire \slv_reg163[1]_i_1_n_0 ;
  wire \slv_reg164[9]_i_1_n_0 ;
  wire \slv_reg165_reg[0]_0 ;
  wire \slv_reg165_reg[0]_1 ;
  wire \slv_reg166[0]_i_1_n_0 ;
  wire \slv_reg166[1]_i_1_n_0 ;
  wire \slv_reg167[0]_i_1_n_0 ;
  wire \slv_reg167[1]_i_1_n_0 ;
  wire \slv_reg168[9]_i_1_n_0 ;
  wire \slv_reg169_reg[0]_0 ;
  wire \slv_reg169_reg[0]_1 ;
  wire \slv_reg16[9]_i_1_n_0 ;
  wire \slv_reg170[0]_i_1_n_0 ;
  wire \slv_reg170[1]_i_1_n_0 ;
  wire \slv_reg171[0]_i_1_n_0 ;
  wire \slv_reg171[1]_i_1_n_0 ;
  wire \slv_reg172[9]_i_1_n_0 ;
  wire \slv_reg173_reg[0]_0 ;
  wire \slv_reg173_reg[0]_1 ;
  wire \slv_reg174[0]_i_1_n_0 ;
  wire \slv_reg174[1]_i_1_n_0 ;
  wire \slv_reg175[0]_i_1_n_0 ;
  wire \slv_reg175[1]_i_1_n_0 ;
  wire \slv_reg176[9]_i_1_n_0 ;
  wire \slv_reg177_reg[0]_0 ;
  wire \slv_reg177_reg[0]_1 ;
  wire \slv_reg178[0]_i_1_n_0 ;
  wire \slv_reg178[1]_i_1_n_0 ;
  wire \slv_reg178[1]_i_2_n_0 ;
  wire \slv_reg179[0]_i_1_n_0 ;
  wire \slv_reg179[1]_i_1_n_0 ;
  wire \slv_reg17_reg[0]_0 ;
  wire \slv_reg17_reg[0]_1 ;
  wire \slv_reg180[9]_i_1_n_0 ;
  wire \slv_reg181_reg[0]_0 ;
  wire \slv_reg181_reg[0]_1 ;
  wire \slv_reg182[0]_i_1_n_0 ;
  wire \slv_reg182[1]_i_1_n_0 ;
  wire \slv_reg183[0]_i_1_n_0 ;
  wire \slv_reg183[1]_i_1_n_0 ;
  wire \slv_reg184[9]_i_1_n_0 ;
  wire \slv_reg185_reg[0]_0 ;
  wire \slv_reg185_reg[0]_1 ;
  wire \slv_reg186[0]_i_1_n_0 ;
  wire \slv_reg186[1]_i_1_n_0 ;
  wire \slv_reg187[0]_i_1_n_0 ;
  wire \slv_reg187[1]_i_1_n_0 ;
  wire \slv_reg188[9]_i_1_n_0 ;
  wire \slv_reg189_reg[0]_0 ;
  wire \slv_reg189_reg[0]_1 ;
  wire \slv_reg18[0]_i_1_n_0 ;
  wire \slv_reg18[1]_i_1_n_0 ;
  wire \slv_reg18[1]_i_2_n_0 ;
  wire \slv_reg190[0]_i_1_n_0 ;
  wire \slv_reg190[1]_i_1_n_0 ;
  wire \slv_reg191[0]_i_1_n_0 ;
  wire \slv_reg191[1]_i_1_n_0 ;
  wire \slv_reg192[9]_i_1_n_0 ;
  wire \slv_reg193_reg[0]_0 ;
  wire \slv_reg193_reg[0]_1 ;
  wire \slv_reg194[0]_i_1_n_0 ;
  wire \slv_reg194[1]_i_1_n_0 ;
  wire \slv_reg195[0]_i_1_n_0 ;
  wire \slv_reg195[1]_i_1_n_0 ;
  wire \slv_reg196[9]_i_1_n_0 ;
  wire \slv_reg197_reg[0]_0 ;
  wire \slv_reg197_reg[0]_1 ;
  wire \slv_reg198[0]_i_1_n_0 ;
  wire \slv_reg198[1]_i_1_n_0 ;
  wire \slv_reg199[0]_i_1_n_0 ;
  wire \slv_reg199[1]_i_1_n_0 ;
  wire \slv_reg19[0]_i_1_n_0 ;
  wire \slv_reg19[1]_i_1_n_0 ;
  wire \slv_reg1_reg[0]_0 ;
  wire \slv_reg1_reg[0]_1 ;
  wire \slv_reg200[24]_i_1_n_0 ;
  wire \slv_reg200_reg_n_0_[0] ;
  wire \slv_reg200_reg_n_0_[10] ;
  wire \slv_reg200_reg_n_0_[11] ;
  wire \slv_reg200_reg_n_0_[12] ;
  wire \slv_reg200_reg_n_0_[13] ;
  wire \slv_reg200_reg_n_0_[14] ;
  wire \slv_reg200_reg_n_0_[15] ;
  wire \slv_reg200_reg_n_0_[16] ;
  wire \slv_reg200_reg_n_0_[17] ;
  wire \slv_reg200_reg_n_0_[18] ;
  wire \slv_reg200_reg_n_0_[19] ;
  wire \slv_reg200_reg_n_0_[1] ;
  wire \slv_reg200_reg_n_0_[20] ;
  wire \slv_reg200_reg_n_0_[21] ;
  wire \slv_reg200_reg_n_0_[22] ;
  wire \slv_reg200_reg_n_0_[23] ;
  wire \slv_reg200_reg_n_0_[24] ;
  wire \slv_reg200_reg_n_0_[2] ;
  wire \slv_reg200_reg_n_0_[3] ;
  wire \slv_reg200_reg_n_0_[4] ;
  wire \slv_reg200_reg_n_0_[5] ;
  wire \slv_reg200_reg_n_0_[6] ;
  wire \slv_reg200_reg_n_0_[7] ;
  wire \slv_reg200_reg_n_0_[8] ;
  wire \slv_reg200_reg_n_0_[9] ;
  wire \slv_reg201[24]_i_1_n_0 ;
  wire \slv_reg201_reg_n_0_[0] ;
  wire \slv_reg201_reg_n_0_[10] ;
  wire \slv_reg201_reg_n_0_[11] ;
  wire \slv_reg201_reg_n_0_[12] ;
  wire \slv_reg201_reg_n_0_[13] ;
  wire \slv_reg201_reg_n_0_[14] ;
  wire \slv_reg201_reg_n_0_[15] ;
  wire \slv_reg201_reg_n_0_[16] ;
  wire \slv_reg201_reg_n_0_[17] ;
  wire \slv_reg201_reg_n_0_[18] ;
  wire \slv_reg201_reg_n_0_[19] ;
  wire \slv_reg201_reg_n_0_[1] ;
  wire \slv_reg201_reg_n_0_[20] ;
  wire \slv_reg201_reg_n_0_[21] ;
  wire \slv_reg201_reg_n_0_[22] ;
  wire \slv_reg201_reg_n_0_[23] ;
  wire \slv_reg201_reg_n_0_[24] ;
  wire \slv_reg201_reg_n_0_[2] ;
  wire \slv_reg201_reg_n_0_[3] ;
  wire \slv_reg201_reg_n_0_[4] ;
  wire \slv_reg201_reg_n_0_[5] ;
  wire \slv_reg201_reg_n_0_[6] ;
  wire \slv_reg201_reg_n_0_[7] ;
  wire \slv_reg201_reg_n_0_[8] ;
  wire \slv_reg201_reg_n_0_[9] ;
  wire \slv_reg202[24]_i_1_n_0 ;
  wire \slv_reg202_reg_n_0_[0] ;
  wire \slv_reg202_reg_n_0_[10] ;
  wire \slv_reg202_reg_n_0_[11] ;
  wire \slv_reg202_reg_n_0_[12] ;
  wire \slv_reg202_reg_n_0_[13] ;
  wire \slv_reg202_reg_n_0_[14] ;
  wire \slv_reg202_reg_n_0_[15] ;
  wire \slv_reg202_reg_n_0_[16] ;
  wire \slv_reg202_reg_n_0_[17] ;
  wire \slv_reg202_reg_n_0_[18] ;
  wire \slv_reg202_reg_n_0_[19] ;
  wire \slv_reg202_reg_n_0_[1] ;
  wire \slv_reg202_reg_n_0_[20] ;
  wire \slv_reg202_reg_n_0_[21] ;
  wire \slv_reg202_reg_n_0_[22] ;
  wire \slv_reg202_reg_n_0_[23] ;
  wire \slv_reg202_reg_n_0_[24] ;
  wire \slv_reg202_reg_n_0_[2] ;
  wire \slv_reg202_reg_n_0_[3] ;
  wire \slv_reg202_reg_n_0_[4] ;
  wire \slv_reg202_reg_n_0_[5] ;
  wire \slv_reg202_reg_n_0_[6] ;
  wire \slv_reg202_reg_n_0_[7] ;
  wire \slv_reg202_reg_n_0_[8] ;
  wire \slv_reg202_reg_n_0_[9] ;
  wire \slv_reg203[24]_i_1_n_0 ;
  wire \slv_reg203_reg_n_0_[0] ;
  wire \slv_reg203_reg_n_0_[10] ;
  wire \slv_reg203_reg_n_0_[11] ;
  wire \slv_reg203_reg_n_0_[12] ;
  wire \slv_reg203_reg_n_0_[13] ;
  wire \slv_reg203_reg_n_0_[14] ;
  wire \slv_reg203_reg_n_0_[15] ;
  wire \slv_reg203_reg_n_0_[16] ;
  wire \slv_reg203_reg_n_0_[17] ;
  wire \slv_reg203_reg_n_0_[18] ;
  wire \slv_reg203_reg_n_0_[19] ;
  wire \slv_reg203_reg_n_0_[1] ;
  wire \slv_reg203_reg_n_0_[20] ;
  wire \slv_reg203_reg_n_0_[21] ;
  wire \slv_reg203_reg_n_0_[22] ;
  wire \slv_reg203_reg_n_0_[23] ;
  wire \slv_reg203_reg_n_0_[24] ;
  wire \slv_reg203_reg_n_0_[2] ;
  wire \slv_reg203_reg_n_0_[3] ;
  wire \slv_reg203_reg_n_0_[4] ;
  wire \slv_reg203_reg_n_0_[5] ;
  wire \slv_reg203_reg_n_0_[6] ;
  wire \slv_reg203_reg_n_0_[7] ;
  wire \slv_reg203_reg_n_0_[8] ;
  wire \slv_reg203_reg_n_0_[9] ;
  wire \slv_reg204[24]_i_1_n_0 ;
  wire \slv_reg204_reg_n_0_[0] ;
  wire \slv_reg204_reg_n_0_[10] ;
  wire \slv_reg204_reg_n_0_[11] ;
  wire \slv_reg204_reg_n_0_[12] ;
  wire \slv_reg204_reg_n_0_[13] ;
  wire \slv_reg204_reg_n_0_[14] ;
  wire \slv_reg204_reg_n_0_[15] ;
  wire \slv_reg204_reg_n_0_[16] ;
  wire \slv_reg204_reg_n_0_[17] ;
  wire \slv_reg204_reg_n_0_[18] ;
  wire \slv_reg204_reg_n_0_[19] ;
  wire \slv_reg204_reg_n_0_[1] ;
  wire \slv_reg204_reg_n_0_[20] ;
  wire \slv_reg204_reg_n_0_[21] ;
  wire \slv_reg204_reg_n_0_[22] ;
  wire \slv_reg204_reg_n_0_[23] ;
  wire \slv_reg204_reg_n_0_[24] ;
  wire \slv_reg204_reg_n_0_[2] ;
  wire \slv_reg204_reg_n_0_[3] ;
  wire \slv_reg204_reg_n_0_[4] ;
  wire \slv_reg204_reg_n_0_[5] ;
  wire \slv_reg204_reg_n_0_[6] ;
  wire \slv_reg204_reg_n_0_[7] ;
  wire \slv_reg204_reg_n_0_[8] ;
  wire \slv_reg204_reg_n_0_[9] ;
  wire \slv_reg205[24]_i_1_n_0 ;
  wire \slv_reg205_reg_n_0_[0] ;
  wire \slv_reg205_reg_n_0_[10] ;
  wire \slv_reg205_reg_n_0_[11] ;
  wire \slv_reg205_reg_n_0_[12] ;
  wire \slv_reg205_reg_n_0_[13] ;
  wire \slv_reg205_reg_n_0_[14] ;
  wire \slv_reg205_reg_n_0_[15] ;
  wire \slv_reg205_reg_n_0_[16] ;
  wire \slv_reg205_reg_n_0_[17] ;
  wire \slv_reg205_reg_n_0_[18] ;
  wire \slv_reg205_reg_n_0_[19] ;
  wire \slv_reg205_reg_n_0_[1] ;
  wire \slv_reg205_reg_n_0_[20] ;
  wire \slv_reg205_reg_n_0_[21] ;
  wire \slv_reg205_reg_n_0_[22] ;
  wire \slv_reg205_reg_n_0_[23] ;
  wire \slv_reg205_reg_n_0_[24] ;
  wire \slv_reg205_reg_n_0_[2] ;
  wire \slv_reg205_reg_n_0_[3] ;
  wire \slv_reg205_reg_n_0_[4] ;
  wire \slv_reg205_reg_n_0_[5] ;
  wire \slv_reg205_reg_n_0_[6] ;
  wire \slv_reg205_reg_n_0_[7] ;
  wire \slv_reg205_reg_n_0_[8] ;
  wire \slv_reg205_reg_n_0_[9] ;
  wire \slv_reg206[24]_i_1_n_0 ;
  wire \slv_reg206_reg_n_0_[0] ;
  wire \slv_reg206_reg_n_0_[10] ;
  wire \slv_reg206_reg_n_0_[11] ;
  wire \slv_reg206_reg_n_0_[12] ;
  wire \slv_reg206_reg_n_0_[13] ;
  wire \slv_reg206_reg_n_0_[14] ;
  wire \slv_reg206_reg_n_0_[15] ;
  wire \slv_reg206_reg_n_0_[16] ;
  wire \slv_reg206_reg_n_0_[17] ;
  wire \slv_reg206_reg_n_0_[18] ;
  wire \slv_reg206_reg_n_0_[19] ;
  wire \slv_reg206_reg_n_0_[1] ;
  wire \slv_reg206_reg_n_0_[20] ;
  wire \slv_reg206_reg_n_0_[21] ;
  wire \slv_reg206_reg_n_0_[22] ;
  wire \slv_reg206_reg_n_0_[23] ;
  wire \slv_reg206_reg_n_0_[24] ;
  wire \slv_reg206_reg_n_0_[2] ;
  wire \slv_reg206_reg_n_0_[3] ;
  wire \slv_reg206_reg_n_0_[4] ;
  wire \slv_reg206_reg_n_0_[5] ;
  wire \slv_reg206_reg_n_0_[6] ;
  wire \slv_reg206_reg_n_0_[7] ;
  wire \slv_reg206_reg_n_0_[8] ;
  wire \slv_reg206_reg_n_0_[9] ;
  wire \slv_reg207[24]_i_1_n_0 ;
  wire \slv_reg207_reg_n_0_[0] ;
  wire \slv_reg207_reg_n_0_[10] ;
  wire \slv_reg207_reg_n_0_[11] ;
  wire \slv_reg207_reg_n_0_[12] ;
  wire \slv_reg207_reg_n_0_[13] ;
  wire \slv_reg207_reg_n_0_[14] ;
  wire \slv_reg207_reg_n_0_[15] ;
  wire \slv_reg207_reg_n_0_[16] ;
  wire \slv_reg207_reg_n_0_[17] ;
  wire \slv_reg207_reg_n_0_[18] ;
  wire \slv_reg207_reg_n_0_[19] ;
  wire \slv_reg207_reg_n_0_[1] ;
  wire \slv_reg207_reg_n_0_[20] ;
  wire \slv_reg207_reg_n_0_[21] ;
  wire \slv_reg207_reg_n_0_[22] ;
  wire \slv_reg207_reg_n_0_[23] ;
  wire \slv_reg207_reg_n_0_[24] ;
  wire \slv_reg207_reg_n_0_[2] ;
  wire \slv_reg207_reg_n_0_[3] ;
  wire \slv_reg207_reg_n_0_[4] ;
  wire \slv_reg207_reg_n_0_[5] ;
  wire \slv_reg207_reg_n_0_[6] ;
  wire \slv_reg207_reg_n_0_[7] ;
  wire \slv_reg207_reg_n_0_[8] ;
  wire \slv_reg207_reg_n_0_[9] ;
  wire \slv_reg20[9]_i_1_n_0 ;
  wire \slv_reg21_reg[0]_0 ;
  wire \slv_reg21_reg[0]_1 ;
  wire \slv_reg22[0]_i_1_n_0 ;
  wire \slv_reg22[1]_i_1_n_0 ;
  wire \slv_reg23[0]_i_1_n_0 ;
  wire \slv_reg23[1]_i_1_n_0 ;
  wire \slv_reg24[9]_i_1_n_0 ;
  wire \slv_reg25_reg[0]_0 ;
  wire \slv_reg25_reg[0]_1 ;
  wire \slv_reg26[0]_i_1_n_0 ;
  wire \slv_reg26[1]_i_1_n_0 ;
  wire \slv_reg27[0]_i_1_n_0 ;
  wire \slv_reg27[1]_i_1_n_0 ;
  wire \slv_reg28[9]_i_1_n_0 ;
  wire \slv_reg29_reg[0]_0 ;
  wire \slv_reg29_reg[0]_1 ;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[1]_i_1_n_0 ;
  wire \slv_reg2[1]_i_2_n_0 ;
  wire \slv_reg2[1]_i_3_n_0 ;
  wire \slv_reg30[0]_i_1_n_0 ;
  wire \slv_reg30[1]_i_1_n_0 ;
  wire \slv_reg31[0]_i_1_n_0 ;
  wire \slv_reg31[1]_i_1_n_0 ;
  wire \slv_reg32[9]_i_1_n_0 ;
  wire \slv_reg33_reg[0]_0 ;
  wire \slv_reg33_reg[0]_1 ;
  wire \slv_reg34[0]_i_1_n_0 ;
  wire \slv_reg34[1]_i_1_n_0 ;
  wire \slv_reg34[1]_i_2_n_0 ;
  wire \slv_reg35[0]_i_1_n_0 ;
  wire \slv_reg35[1]_i_1_n_0 ;
  wire \slv_reg36[9]_i_1_n_0 ;
  wire \slv_reg37_reg[0]_0 ;
  wire \slv_reg37_reg[0]_1 ;
  wire \slv_reg38[0]_i_1_n_0 ;
  wire \slv_reg38[1]_i_1_n_0 ;
  wire \slv_reg39[0]_i_1_n_0 ;
  wire \slv_reg39[1]_i_1_n_0 ;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3[1]_i_1_n_0 ;
  wire \slv_reg40[9]_i_1_n_0 ;
  wire \slv_reg41_reg[0]_0 ;
  wire \slv_reg41_reg[0]_1 ;
  wire \slv_reg42[0]_i_1_n_0 ;
  wire \slv_reg42[1]_i_1_n_0 ;
  wire \slv_reg43[0]_i_1_n_0 ;
  wire \slv_reg43[1]_i_1_n_0 ;
  wire \slv_reg44[9]_i_1_n_0 ;
  wire \slv_reg45_reg[0]_0 ;
  wire \slv_reg45_reg[0]_1 ;
  wire \slv_reg46[0]_i_1_n_0 ;
  wire \slv_reg46[1]_i_1_n_0 ;
  wire \slv_reg47[0]_i_1_n_0 ;
  wire \slv_reg47[1]_i_1_n_0 ;
  wire \slv_reg48[9]_i_1_n_0 ;
  wire \slv_reg49_reg[0]_0 ;
  wire \slv_reg49_reg[0]_1 ;
  wire \slv_reg4[9]_i_1_n_0 ;
  wire \slv_reg50[0]_i_1_n_0 ;
  wire \slv_reg50[1]_i_1_n_0 ;
  wire \slv_reg50[1]_i_2_n_0 ;
  wire \slv_reg51[0]_i_1_n_0 ;
  wire \slv_reg51[1]_i_1_n_0 ;
  wire \slv_reg52[9]_i_1_n_0 ;
  wire \slv_reg53_reg[0]_0 ;
  wire \slv_reg53_reg[0]_1 ;
  wire \slv_reg54[0]_i_1_n_0 ;
  wire \slv_reg54[1]_i_1_n_0 ;
  wire \slv_reg55[0]_i_1_n_0 ;
  wire \slv_reg55[1]_i_1_n_0 ;
  wire \slv_reg56[9]_i_1_n_0 ;
  wire \slv_reg57_reg[0]_0 ;
  wire \slv_reg57_reg[0]_1 ;
  wire \slv_reg58[0]_i_1_n_0 ;
  wire \slv_reg58[1]_i_1_n_0 ;
  wire \slv_reg59[0]_i_1_n_0 ;
  wire \slv_reg59[1]_i_1_n_0 ;
  wire \slv_reg5_reg[0]_0 ;
  wire \slv_reg5_reg[0]_1 ;
  wire \slv_reg60[9]_i_1_n_0 ;
  wire \slv_reg61_reg[0]_0 ;
  wire \slv_reg61_reg[0]_1 ;
  wire \slv_reg62[0]_i_1_n_0 ;
  wire \slv_reg62[1]_i_1_n_0 ;
  wire \slv_reg63[0]_i_1_n_0 ;
  wire \slv_reg63[1]_i_1_n_0 ;
  wire \slv_reg64[9]_i_1_n_0 ;
  wire \slv_reg65_reg[0]_0 ;
  wire \slv_reg65_reg[0]_1 ;
  wire \slv_reg66[0]_i_1_n_0 ;
  wire \slv_reg66[1]_i_1_n_0 ;
  wire \slv_reg66[1]_i_2_n_0 ;
  wire \slv_reg67[0]_i_1_n_0 ;
  wire \slv_reg67[1]_i_1_n_0 ;
  wire \slv_reg68[9]_i_1_n_0 ;
  wire \slv_reg69_reg[0]_0 ;
  wire \slv_reg69_reg[0]_1 ;
  wire \slv_reg6[0]_i_1_n_0 ;
  wire \slv_reg6[1]_i_1_n_0 ;
  wire \slv_reg6[1]_i_2_n_0 ;
  wire \slv_reg70[0]_i_1_n_0 ;
  wire \slv_reg70[1]_i_1_n_0 ;
  wire \slv_reg70[1]_i_2_n_0 ;
  wire \slv_reg71[0]_i_1_n_0 ;
  wire \slv_reg71[1]_i_1_n_0 ;
  wire \slv_reg72[9]_i_1_n_0 ;
  wire \slv_reg73_reg[0]_0 ;
  wire \slv_reg73_reg[0]_1 ;
  wire \slv_reg74[0]_i_1_n_0 ;
  wire \slv_reg74[1]_i_1_n_0 ;
  wire \slv_reg74[1]_i_2_n_0 ;
  wire \slv_reg75[0]_i_1_n_0 ;
  wire \slv_reg75[1]_i_1_n_0 ;
  wire \slv_reg76[9]_i_1_n_0 ;
  wire \slv_reg77_reg[0]_0 ;
  wire \slv_reg77_reg[0]_1 ;
  wire \slv_reg78[0]_i_1_n_0 ;
  wire \slv_reg78[1]_i_1_n_0 ;
  wire \slv_reg78[1]_i_2_n_0 ;
  wire \slv_reg79[0]_i_1_n_0 ;
  wire \slv_reg79[1]_i_1_n_0 ;
  wire \slv_reg7[0]_i_1_n_0 ;
  wire \slv_reg7[1]_i_1_n_0 ;
  wire \slv_reg80[9]_i_1_n_0 ;
  wire \slv_reg81_reg[0]_0 ;
  wire \slv_reg81_reg[0]_1 ;
  wire \slv_reg82[0]_i_1_n_0 ;
  wire \slv_reg82[1]_i_1_n_0 ;
  wire \slv_reg83[0]_i_1_n_0 ;
  wire \slv_reg83[1]_i_1_n_0 ;
  wire \slv_reg84[9]_i_1_n_0 ;
  wire \slv_reg85_reg[0]_0 ;
  wire \slv_reg85_reg[0]_1 ;
  wire \slv_reg86[0]_i_1_n_0 ;
  wire \slv_reg86[1]_i_1_n_0 ;
  wire \slv_reg87[0]_i_1_n_0 ;
  wire \slv_reg87[1]_i_1_n_0 ;
  wire \slv_reg88[9]_i_1_n_0 ;
  wire \slv_reg89_reg[0]_0 ;
  wire \slv_reg89_reg[0]_1 ;
  wire \slv_reg8[9]_i_1_n_0 ;
  wire \slv_reg90[0]_i_1_n_0 ;
  wire \slv_reg90[1]_i_1_n_0 ;
  wire \slv_reg91[0]_i_1_n_0 ;
  wire \slv_reg91[1]_i_1_n_0 ;
  wire \slv_reg92[9]_i_1_n_0 ;
  wire \slv_reg93_reg[0]_0 ;
  wire \slv_reg93_reg[0]_1 ;
  wire \slv_reg94[0]_i_1_n_0 ;
  wire \slv_reg94[1]_i_1_n_0 ;
  wire \slv_reg95[0]_i_1_n_0 ;
  wire \slv_reg95[1]_i_1_n_0 ;
  wire \slv_reg96[9]_i_1_n_0 ;
  wire \slv_reg97_reg[0]_0 ;
  wire \slv_reg97_reg[0]_1 ;
  wire \slv_reg98[0]_i_1_n_0 ;
  wire \slv_reg98[1]_i_1_n_0 ;
  wire \slv_reg99[0]_i_1_n_0 ;
  wire \slv_reg99[1]_i_1_n_0 ;
  wire \slv_reg9_reg[0]_0 ;
  wire \slv_reg9_reg[0]_1 ;
  wire slv_reg_rden;
  wire slv_reg_wren;
  wire slv_reg_wren_d1;

  LUT2 #(
    .INIT(4'h7)) 
    PHS0_vld_out_i_1
       (.I0(s00_axi_aresetn),
        .I1(slv_reg_wren_d1),
        .O(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h45)) 
    PHS0_vld_out_i_3
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\axi_araddr_reg[9]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    PHS0_vld_out_i_4
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\axi_araddr_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    PHS0_vld_out_i_5
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .O(\axi_araddr_reg[5]_3 ));
  FDRE PHS0_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS0_vld_out_reg_0),
        .Q(PHS0_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA0AAA000000400)) 
    PHS10_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(axi_araddr[4]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_11 ));
  FDRE PHS10_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS10_vld_out_reg_0),
        .Q(PHS10_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA100088880000)) 
    PHS11_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\axi_araddr_reg[8]_5 ));
  FDRE PHS11_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS11_vld_out_reg_0),
        .Q(PHS11_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA88AA8800000400)) 
    PHS12_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(axi_araddr[4]),
        .I3(Q[3]),
        .I4(axi_araddr[5]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_12 ));
  FDRE PHS12_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS12_vld_out_reg_0),
        .Q(PHS12_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA1000A0A00000)) 
    PHS13_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[5]),
        .I2(Q[2]),
        .I3(axi_araddr[4]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\axi_araddr_reg[8]_4 ));
  FDRE PHS13_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS13_vld_out_reg_0),
        .Q(PHS13_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA1000AA000000)) 
    PHS14_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[5]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\axi_araddr_reg[8]_13 ));
  FDRE PHS14_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS14_vld_out_reg_0),
        .Q(PHS14_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h9888888888880000)) 
    PHS15_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[8]_3 ));
  FDRE PHS15_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS15_vld_out_reg_0),
        .Q(PHS15_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888888888880002)) 
    PHS16_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[8]_2 ));
  FDRE PHS16_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS16_vld_out_reg_0),
        .Q(PHS16_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A00200)) 
    PHS17_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[5]),
        .I2(Q[5]),
        .I3(axi_araddr[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[8]_15 ));
  FDRE PHS17_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS17_vld_out_reg_0),
        .Q(PHS17_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A00200)) 
    PHS18_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[4]),
        .I2(Q[5]),
        .I3(axi_araddr[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[8]_1 ));
  FDRE PHS18_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS18_vld_out_reg_0),
        .Q(PHS18_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS19_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS19_vld_out_reg_0),
        .Q(PHS19_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    PHS1_vld_out_i_2
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .O(\axi_araddr_reg[5]_2 ));
  FDRE PHS1_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS1_vld_out_reg_0),
        .Q(PHS1_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h01)) 
    PHS20_vld_out_i_2
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .I2(Q[3]),
        .O(\axi_araddr_reg[5]_5 ));
  FDRE PHS20_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS20_vld_out_reg_0),
        .Q(PHS20_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    PHS21_vld_out_i_2
       (.I0(axi_araddr[4]),
        .I1(Q[3]),
        .I2(axi_araddr[5]),
        .O(\axi_araddr_reg[4]_1 ));
  FDRE PHS21_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS21_vld_out_reg_0),
        .Q(PHS21_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    PHS22_vld_out_i_2
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .I2(Q[3]),
        .O(\axi_araddr_reg[5]_0 ));
  FDRE PHS22_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS22_vld_out_reg_0),
        .Q(PHS22_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    PHS23_vld_out_i_2
       (.I0(Q[3]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[5]),
        .O(\axi_araddr_reg[7]_0 ));
  FDRE PHS23_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS23_vld_out_reg_0),
        .Q(PHS23_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h01)) 
    PHS24_vld_out_i_2
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .I2(Q[2]),
        .O(\axi_araddr_reg[5]_6 ));
  FDRE PHS24_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS24_vld_out_reg_0),
        .Q(PHS24_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    PHS25_vld_out_i_2
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[5]),
        .I2(Q[2]),
        .O(\axi_araddr_reg[4]_0 ));
  FDRE PHS25_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS25_vld_out_reg_0),
        .Q(PHS25_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    PHS26_vld_out_i_2
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .I2(Q[2]),
        .O(\axi_araddr_reg[5]_1 ));
  FDRE PHS26_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS26_vld_out_reg_0),
        .Q(PHS26_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    PHS27_vld_out_i_2
       (.I0(Q[2]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[5]),
        .O(\axi_araddr_reg[6]_2 ));
  FDRE PHS27_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS27_vld_out_reg_0),
        .Q(PHS27_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    PHS28_vld_out_i_2
       (.I0(axi_araddr[4]),
        .I1(axi_araddr[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\axi_araddr_reg[4]_2 ));
  FDRE PHS28_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS28_vld_out_reg_0),
        .Q(PHS28_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    PHS29_vld_out_i_2
       (.I0(Q[2]),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[4]),
        .I3(Q[3]),
        .O(\axi_araddr_reg[6]_3 ));
  FDRE PHS29_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS29_vld_out_reg_0),
        .Q(PHS29_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hE000E000E001E000)) 
    PHS2_vld_out_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(axi_araddr[5]),
        .I5(axi_araddr[4]),
        .O(\axi_araddr_reg[6]_0 ));
  FDRE PHS2_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS2_vld_out_reg_0),
        .Q(PHS2_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    PHS30_vld_out_i_2
       (.I0(Q[2]),
        .I1(axi_araddr[4]),
        .I2(Q[3]),
        .I3(axi_araddr[5]),
        .O(\axi_araddr_reg[6]_4 ));
  FDRE PHS30_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS30_vld_out_reg_0),
        .Q(PHS30_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    PHS31_vld_out_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .O(\axi_araddr_reg[7]_1 ));
  FDRE PHS31_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS31_vld_out_reg_0),
        .Q(PHS31_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888888888880002)) 
    PHS32_vld_out_i_2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[9]_2 ));
  FDRE PHS32_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS32_vld_out_reg_0),
        .Q(PHS32_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A00200)) 
    PHS33_vld_out_i_2
       (.I0(Q[5]),
        .I1(axi_araddr[5]),
        .I2(Q[4]),
        .I3(axi_araddr[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[9]_3 ));
  FDRE PHS33_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS33_vld_out_reg_0),
        .Q(PHS33_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888888888880200)) 
    PHS34_vld_out_i_2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[9]_1 ));
  FDRE PHS34_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS34_vld_out_reg_0),
        .Q(PHS34_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h45)) 
    PHS35_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\axi_araddr_reg[8]_0 ));
  FDRE PHS35_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS35_vld_out_reg_0),
        .Q(PHS35_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS36_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS36_vld_out_reg_0),
        .Q(PHS36_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS37_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS37_vld_out_reg_0),
        .Q(PHS37_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS38_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS38_vld_out_reg_0),
        .Q(PHS38_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS39_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS39_vld_out_reg_0),
        .Q(PHS39_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    PHS3_vld_out_i_2
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[4]),
        .O(\axi_araddr_reg[5]_4 ));
  FDRE PHS3_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS3_vld_out_reg_0),
        .Q(PHS3_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS40_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS40_vld_out_reg_0),
        .Q(PHS40_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS41_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS41_vld_out_reg_0),
        .Q(PHS41_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS42_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS42_vld_out_reg_0),
        .Q(PHS42_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS43_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS43_vld_out_reg_0),
        .Q(PHS43_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS44_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS44_vld_out_reg_0),
        .Q(PHS44_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS45_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS45_vld_out_reg_0),
        .Q(PHS45_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS46_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS46_vld_out_reg_0),
        .Q(PHS46_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS47_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS47_vld_out_reg_0),
        .Q(PHS47_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    PHS48_vld_out_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\axi_araddr_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    PHS48_vld_out_i_3
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\axi_araddr_reg[8]_16 ));
  FDRE PHS48_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS48_vld_out_reg_0),
        .Q(PHS48_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDRE PHS49_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS49_vld_out_reg_0),
        .Q(PHS49_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA888800000004)) 
    PHS4_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_14 ));
  FDRE PHS4_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS4_vld_out_reg_0),
        .Q(PHS4_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA0000000400)) 
    PHS5_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_8 ));
  FDRE PHS5_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS5_vld_out_reg_0),
        .Q(PHS5_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA0000000400)) 
    PHS6_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_9 ));
  FDRE PHS6_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS6_vld_out_reg_0),
        .Q(PHS6_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA100088880000)) 
    PHS7_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(Q[5]),
        .I5(Q[2]),
        .O(\axi_araddr_reg[8]_7 ));
  FDRE PHS7_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS7_vld_out_reg_0),
        .Q(PHS7_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hA8A8A8A800000004)) 
    PHS8_vld_out_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[4]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_10 ));
  FDRE PHS8_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS8_vld_out_reg_0),
        .Q(PHS8_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA0AAA000000400)) 
    PHS9_vld_out_i_2
       (.I0(Q[4]),
        .I1(axi_araddr[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(axi_araddr[5]),
        .I5(Q[5]),
        .O(\axi_araddr_reg[8]_6 ));
  FDRE PHS9_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(PHS9_vld_out_reg_0),
        .Q(PHS9_vld_out),
        .R(PHS0_vld_out_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(Q[0]),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2]_rep 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(\axi_araddr_reg[2]_rep_n_0 ),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2]_rep__0 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(\axi_araddr_reg[2]_rep__0_n_0 ),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(Q[1]),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3]_rep 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(\axi_araddr_reg[3]_rep_n_0 ),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3]_rep__0 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(\axi_araddr_reg[3]_rep__0_n_0 ),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[4]" *) 
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(axi_araddr[4]),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[4]" *) 
  FDSE \axi_araddr_reg[4]_rep 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(\axi_araddr_reg[4]_rep_n_0 ),
        .S(p_0_in));
  (* ORIG_CELL_NAME = "axi_araddr_reg[4]" *) 
  FDSE \axi_araddr_reg[4]_rep__0 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(\axi_araddr_reg[4]_rep__0_n_0 ),
        .S(p_0_in));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(axi_araddr[5]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[4]),
        .Q(Q[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[5]),
        .Q(Q[3]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[6]),
        .Q(Q[4]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[7]),
        .Q(Q[5]),
        .S(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(sel0[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(sel0[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(sel0[5]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[6]),
        .Q(sel0[6]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[7]),
        .Q(sel0[7]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(\axi_rdata_reg[0]_i_3_n_0 ),
        .I3(\axi_rdata[1]_i_5_n_0 ),
        .I4(Q[5]),
        .I5(\axi_rdata_reg[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_11 
       (.I0(\axi_rdata_reg[0]_i_25_n_0 ),
        .I1(\axi_rdata_reg[0]_i_26_n_0 ),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[0]_i_27_n_0 ),
        .I4(Q[2]),
        .I5(\axi_rdata_reg[0]_i_28_n_0 ),
        .O(\axi_rdata[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_12 
       (.I0(\axi_rdata_reg[0]_i_29_n_0 ),
        .I1(\axi_rdata_reg[0]_i_30_n_0 ),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[0]_i_31_n_0 ),
        .I4(Q[2]),
        .I5(\axi_rdata_reg[0]_i_32_n_0 ),
        .O(\axi_rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata_reg[0]_i_5_n_0 ),
        .I1(\axi_rdata_reg[0]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[0]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(\axi_rdata_reg[0]_i_8_n_0 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_21 
       (.I0(PHS48_irq0_clr),
        .I1(PHS48_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg193_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS48_pwm_val[0]),
        .O(\axi_rdata[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_22 
       (.I0(PHS49_irq0_clr),
        .I1(PHS49_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg197_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS49_pwm_val[0]),
        .O(\axi_rdata[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_23 
       (.I0(\slv_reg203_reg_n_0_[0] ),
        .I1(\slv_reg202_reg_n_0_[0] ),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg201_reg_n_0_[0] ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(\slv_reg200_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_24 
       (.I0(\slv_reg207_reg_n_0_[0] ),
        .I1(\slv_reg206_reg_n_0_[0] ),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg205_reg_n_0_[0] ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(\slv_reg204_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_33 
       (.I0(PHS44_irq0_clr),
        .I1(PHS44_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg177_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS44_pwm_val[0]),
        .O(\axi_rdata[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_34 
       (.I0(PHS45_irq0_clr),
        .I1(PHS45_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg181_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS45_pwm_val[0]),
        .O(\axi_rdata[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_35 
       (.I0(PHS46_irq0_clr),
        .I1(PHS46_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg185_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS46_pwm_val[0]),
        .O(\axi_rdata[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_36 
       (.I0(PHS47_irq0_clr),
        .I1(PHS47_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg189_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS47_pwm_val[0]),
        .O(\axi_rdata[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_37 
       (.I0(PHS40_irq0_clr),
        .I1(PHS40_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg161_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS40_pwm_val[0]),
        .O(\axi_rdata[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_38 
       (.I0(PHS41_irq0_clr),
        .I1(PHS41_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg165_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS41_pwm_val[0]),
        .O(\axi_rdata[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_39 
       (.I0(PHS42_irq0_clr),
        .I1(PHS42_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg169_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS42_pwm_val[0]),
        .O(\axi_rdata[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_40 
       (.I0(PHS43_irq0_clr),
        .I1(PHS43_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg173_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS43_pwm_val[0]),
        .O(\axi_rdata[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_41 
       (.I0(PHS36_irq0_clr),
        .I1(PHS36_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg145_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS36_pwm_val[0]),
        .O(\axi_rdata[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_42 
       (.I0(PHS37_irq0_clr),
        .I1(PHS37_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg149_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS37_pwm_val[0]),
        .O(\axi_rdata[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_43 
       (.I0(PHS38_irq0_clr),
        .I1(PHS38_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg153_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS38_pwm_val[0]),
        .O(\axi_rdata[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_44 
       (.I0(PHS39_irq0_clr),
        .I1(PHS39_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg157_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS39_pwm_val[0]),
        .O(\axi_rdata[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_45 
       (.I0(PHS32_irq0_clr),
        .I1(PHS32_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg129_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS32_pwm_val[0]),
        .O(\axi_rdata[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_46 
       (.I0(PHS33_irq0_clr),
        .I1(PHS33_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg133_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS33_pwm_val[0]),
        .O(\axi_rdata[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_47 
       (.I0(PHS34_irq0_clr),
        .I1(PHS34_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg137_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS34_pwm_val[0]),
        .O(\axi_rdata[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_48 
       (.I0(PHS35_irq0_clr),
        .I1(PHS35_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg141_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS35_pwm_val[0]),
        .O(\axi_rdata[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_65 
       (.I0(PHS12_irq0_clr),
        .I1(PHS12_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg49_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS12_pwm_val[0]),
        .O(\axi_rdata[0]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_66 
       (.I0(PHS13_irq0_clr),
        .I1(PHS13_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg53_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS13_pwm_val[0]),
        .O(\axi_rdata[0]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_67 
       (.I0(PHS14_irq0_clr),
        .I1(PHS14_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg57_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS14_pwm_val[0]),
        .O(\axi_rdata[0]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_68 
       (.I0(PHS15_irq0_clr),
        .I1(PHS15_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg61_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS15_pwm_val[0]),
        .O(\axi_rdata[0]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_69 
       (.I0(PHS8_irq0_clr),
        .I1(PHS8_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg33_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS8_pwm_val[0]),
        .O(\axi_rdata[0]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_70 
       (.I0(PHS9_irq0_clr),
        .I1(PHS9_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg37_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS9_pwm_val[0]),
        .O(\axi_rdata[0]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_71 
       (.I0(PHS10_irq0_clr),
        .I1(PHS10_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg41_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS10_pwm_val[0]),
        .O(\axi_rdata[0]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_72 
       (.I0(PHS11_irq0_clr),
        .I1(PHS11_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg45_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS11_pwm_val[0]),
        .O(\axi_rdata[0]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_73 
       (.I0(PHS4_irq0_clr),
        .I1(PHS4_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg17_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS4_pwm_val[0]),
        .O(\axi_rdata[0]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_74 
       (.I0(PHS5_irq0_clr),
        .I1(PHS5_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg21_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS5_pwm_val[0]),
        .O(\axi_rdata[0]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_75 
       (.I0(PHS6_irq0_clr),
        .I1(PHS6_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg25_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS6_pwm_val[0]),
        .O(\axi_rdata[0]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_76 
       (.I0(PHS7_irq0_clr),
        .I1(PHS7_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg29_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS7_pwm_val[0]),
        .O(\axi_rdata[0]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_77 
       (.I0(PHS0_irq0_clr),
        .I1(PHS0_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg1_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS0_pwm_val[0]),
        .O(\axi_rdata[0]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_78 
       (.I0(PHS1_irq0_clr),
        .I1(PHS1_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg5_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS1_pwm_val[0]),
        .O(\axi_rdata[0]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_79 
       (.I0(PHS2_irq0_clr),
        .I1(PHS2_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg9_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS2_pwm_val[0]),
        .O(\axi_rdata[0]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_80 
       (.I0(PHS3_irq0_clr),
        .I1(PHS3_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg13_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS3_pwm_val[0]),
        .O(\axi_rdata[0]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_81 
       (.I0(PHS28_irq0_clr),
        .I1(PHS28_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg113_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS28_pwm_val[0]),
        .O(\axi_rdata[0]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_82 
       (.I0(PHS29_irq0_clr),
        .I1(PHS29_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg117_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS29_pwm_val[0]),
        .O(\axi_rdata[0]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_83 
       (.I0(PHS30_irq0_clr),
        .I1(PHS30_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg121_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS30_pwm_val[0]),
        .O(\axi_rdata[0]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_84 
       (.I0(PHS31_irq0_clr),
        .I1(PHS31_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg125_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS31_pwm_val[0]),
        .O(\axi_rdata[0]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_85 
       (.I0(PHS24_irq0_clr),
        .I1(PHS24_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg97_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS24_pwm_val[0]),
        .O(\axi_rdata[0]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_86 
       (.I0(PHS25_irq0_clr),
        .I1(PHS25_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg101_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS25_pwm_val[0]),
        .O(\axi_rdata[0]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_87 
       (.I0(PHS26_irq0_clr),
        .I1(PHS26_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg105_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS26_pwm_val[0]),
        .O(\axi_rdata[0]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_88 
       (.I0(PHS27_irq0_clr),
        .I1(PHS27_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg109_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS27_pwm_val[0]),
        .O(\axi_rdata[0]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_89 
       (.I0(PHS20_irq0_clr),
        .I1(PHS20_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg81_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS20_pwm_val[0]),
        .O(\axi_rdata[0]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_90 
       (.I0(PHS21_irq0_clr),
        .I1(PHS21_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg85_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS21_pwm_val[0]),
        .O(\axi_rdata[0]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_91 
       (.I0(PHS22_irq0_clr),
        .I1(PHS22_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg89_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS22_pwm_val[0]),
        .O(\axi_rdata[0]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_92 
       (.I0(PHS23_irq0_clr),
        .I1(PHS23_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg93_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS23_pwm_val[0]),
        .O(\axi_rdata[0]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_93 
       (.I0(PHS16_irq0_clr),
        .I1(PHS16_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg65_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS16_pwm_val[0]),
        .O(\axi_rdata[0]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_94 
       (.I0(PHS17_irq0_clr),
        .I1(PHS17_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg69_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS17_pwm_val[0]),
        .O(\axi_rdata[0]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_95 
       (.I0(PHS18_irq0_clr),
        .I1(PHS18_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg73_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS18_pwm_val[0]),
        .O(\axi_rdata[0]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_96 
       (.I0(PHS19_irq0_clr),
        .I1(PHS19_irq_mask[0]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg77_reg[0]_0 ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(PHS19_pwm_val[0]),
        .O(\axi_rdata[0]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[10]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(\slv_reg203_reg_n_0_[10] ),
        .I1(\slv_reg202_reg_n_0_[10] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[10] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(\slv_reg207_reg_n_0_[10] ),
        .I1(\slv_reg206_reg_n_0_[10] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[10] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[11]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[11]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(\slv_reg203_reg_n_0_[11] ),
        .I1(\slv_reg202_reg_n_0_[11] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[11] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(\slv_reg207_reg_n_0_[11] ),
        .I1(\slv_reg206_reg_n_0_[11] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[11] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[12]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[12]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(\slv_reg203_reg_n_0_[12] ),
        .I1(\slv_reg202_reg_n_0_[12] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[12] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(\slv_reg207_reg_n_0_[12] ),
        .I1(\slv_reg206_reg_n_0_[12] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[12] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[13]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[13]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(\slv_reg203_reg_n_0_[13] ),
        .I1(\slv_reg202_reg_n_0_[13] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[13] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\slv_reg207_reg_n_0_[13] ),
        .I1(\slv_reg206_reg_n_0_[13] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[13] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[14]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[14]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(\slv_reg203_reg_n_0_[14] ),
        .I1(\slv_reg202_reg_n_0_[14] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[14] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\slv_reg207_reg_n_0_[14] ),
        .I1(\slv_reg206_reg_n_0_[14] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[14] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[15]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[15]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(\slv_reg203_reg_n_0_[15] ),
        .I1(\slv_reg202_reg_n_0_[15] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[15] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\slv_reg207_reg_n_0_[15] ),
        .I1(\slv_reg206_reg_n_0_[15] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[15] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[16]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[16]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(\slv_reg203_reg_n_0_[16] ),
        .I1(\slv_reg202_reg_n_0_[16] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[16] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\slv_reg207_reg_n_0_[16] ),
        .I1(\slv_reg206_reg_n_0_[16] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[16] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[17]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[17]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(\slv_reg203_reg_n_0_[17] ),
        .I1(\slv_reg202_reg_n_0_[17] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[17] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\slv_reg207_reg_n_0_[17] ),
        .I1(\slv_reg206_reg_n_0_[17] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[17] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[18]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[18]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(\slv_reg203_reg_n_0_[18] ),
        .I1(\slv_reg202_reg_n_0_[18] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[18] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\slv_reg207_reg_n_0_[18] ),
        .I1(\slv_reg206_reg_n_0_[18] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[18] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[19]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[19]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(\slv_reg203_reg_n_0_[19] ),
        .I1(\slv_reg202_reg_n_0_[19] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[19] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\slv_reg207_reg_n_0_[19] ),
        .I1(\slv_reg206_reg_n_0_[19] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[19] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(\axi_rdata_reg[1]_i_4_n_0 ),
        .I3(\axi_rdata[1]_i_5_n_0 ),
        .I4(Q[5]),
        .I5(\axi_rdata_reg[1]_i_6_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_13 
       (.I0(\axi_rdata_reg[1]_i_27_n_0 ),
        .I1(\axi_rdata_reg[1]_i_28_n_0 ),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[1]_i_29_n_0 ),
        .I4(Q[2]),
        .I5(\axi_rdata_reg[1]_i_30_n_0 ),
        .O(\axi_rdata[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_14 
       (.I0(\axi_rdata_reg[1]_i_31_n_0 ),
        .I1(\axi_rdata_reg[1]_i_32_n_0 ),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[1]_i_33_n_0 ),
        .I4(Q[2]),
        .I5(\axi_rdata_reg[1]_i_34_n_0 ),
        .O(\axi_rdata[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata_reg[1]_i_7_n_0 ),
        .I1(\axi_rdata_reg[1]_i_8_n_0 ),
        .I2(Q[3]),
        .I3(\axi_rdata_reg[1]_i_9_n_0 ),
        .I4(Q[2]),
        .I5(\axi_rdata_reg[1]_i_10_n_0 ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_23 
       (.I0(PHS48_irq1_clr),
        .I1(PHS48_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS48_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_24 
       (.I0(PHS49_irq1_clr),
        .I1(PHS49_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS49_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_25 
       (.I0(\slv_reg203_reg_n_0_[1] ),
        .I1(\slv_reg202_reg_n_0_[1] ),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg201_reg_n_0_[1] ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(\slv_reg200_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_26 
       (.I0(\slv_reg207_reg_n_0_[1] ),
        .I1(\slv_reg206_reg_n_0_[1] ),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(\slv_reg205_reg_n_0_[1] ),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .I5(\slv_reg204_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \axi_rdata[1]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_35 
       (.I0(PHS44_irq1_clr),
        .I1(PHS44_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS44_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_36 
       (.I0(PHS45_irq1_clr),
        .I1(PHS45_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS45_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_37 
       (.I0(PHS46_irq1_clr),
        .I1(PHS46_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS46_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_38 
       (.I0(PHS47_irq1_clr),
        .I1(PHS47_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS47_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_39 
       (.I0(PHS40_irq1_clr),
        .I1(PHS40_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS40_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_40 
       (.I0(PHS41_irq1_clr),
        .I1(PHS41_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS41_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_41 
       (.I0(PHS42_irq1_clr),
        .I1(PHS42_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS42_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_42 
       (.I0(PHS43_irq1_clr),
        .I1(PHS43_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS43_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_43 
       (.I0(PHS36_irq1_clr),
        .I1(PHS36_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS36_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_44 
       (.I0(PHS37_irq1_clr),
        .I1(PHS37_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS37_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_45 
       (.I0(PHS38_irq1_clr),
        .I1(PHS38_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS38_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_46 
       (.I0(PHS39_irq1_clr),
        .I1(PHS39_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS39_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_47 
       (.I0(PHS32_irq1_clr),
        .I1(PHS32_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS32_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_48 
       (.I0(PHS33_irq1_clr),
        .I1(PHS33_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS33_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_49 
       (.I0(PHS34_irq1_clr),
        .I1(PHS34_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS34_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \axi_rdata[1]_i_5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_50 
       (.I0(PHS35_irq1_clr),
        .I1(PHS35_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS35_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_67 
       (.I0(PHS12_irq1_clr),
        .I1(PHS12_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS12_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_68 
       (.I0(PHS13_irq1_clr),
        .I1(PHS13_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS13_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_69 
       (.I0(PHS14_irq1_clr),
        .I1(PHS14_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS14_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_70 
       (.I0(PHS15_irq1_clr),
        .I1(PHS15_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS15_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_71 
       (.I0(PHS8_irq1_clr),
        .I1(PHS8_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS8_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_72 
       (.I0(PHS9_irq1_clr),
        .I1(PHS9_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS9_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_73 
       (.I0(PHS10_irq1_clr),
        .I1(PHS10_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS10_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_74 
       (.I0(PHS11_irq1_clr),
        .I1(PHS11_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS11_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_75 
       (.I0(PHS4_irq1_clr),
        .I1(PHS4_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS4_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_75_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_76 
       (.I0(PHS5_irq1_clr),
        .I1(PHS5_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS5_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_76_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_77 
       (.I0(PHS6_irq1_clr),
        .I1(PHS6_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS6_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_78 
       (.I0(PHS7_irq1_clr),
        .I1(PHS7_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS7_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_79 
       (.I0(PHS0_irq1_clr),
        .I1(PHS0_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS0_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_80 
       (.I0(PHS1_irq1_clr),
        .I1(PHS1_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS1_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_80_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_81 
       (.I0(PHS2_irq1_clr),
        .I1(PHS2_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS2_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_81_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_82 
       (.I0(PHS3_irq1_clr),
        .I1(PHS3_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS3_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_83 
       (.I0(PHS28_irq1_clr),
        .I1(PHS28_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS28_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_84 
       (.I0(PHS29_irq1_clr),
        .I1(PHS29_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS29_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_85 
       (.I0(PHS30_irq1_clr),
        .I1(PHS30_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS30_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_85_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_86 
       (.I0(PHS31_irq1_clr),
        .I1(PHS31_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS31_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_87 
       (.I0(PHS24_irq1_clr),
        .I1(PHS24_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS24_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_87_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_88 
       (.I0(PHS25_irq1_clr),
        .I1(PHS25_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS25_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_89 
       (.I0(PHS26_irq1_clr),
        .I1(PHS26_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS26_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_90 
       (.I0(PHS27_irq1_clr),
        .I1(PHS27_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS27_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_91 
       (.I0(PHS20_irq1_clr),
        .I1(PHS20_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS20_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_92 
       (.I0(PHS21_irq1_clr),
        .I1(PHS21_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS21_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_93 
       (.I0(PHS22_irq1_clr),
        .I1(PHS22_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS22_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_94 
       (.I0(PHS23_irq1_clr),
        .I1(PHS23_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS23_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_95 
       (.I0(PHS16_irq1_clr),
        .I1(PHS16_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS16_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_96 
       (.I0(PHS17_irq1_clr),
        .I1(PHS17_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS17_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_97 
       (.I0(PHS18_irq1_clr),
        .I1(PHS18_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS18_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_98 
       (.I0(PHS19_irq1_clr),
        .I1(PHS19_irq_mask[1]),
        .I2(\axi_araddr_reg[3]_rep__0_n_0 ),
        .I3(PHS19_pwm_val[1]),
        .I4(\axi_araddr_reg[2]_rep__0_n_0 ),
        .O(\axi_rdata[1]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[20]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[20]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(\slv_reg203_reg_n_0_[20] ),
        .I1(\slv_reg202_reg_n_0_[20] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[20] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\slv_reg207_reg_n_0_[20] ),
        .I1(\slv_reg206_reg_n_0_[20] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[20] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[21]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[21]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(\slv_reg203_reg_n_0_[21] ),
        .I1(\slv_reg202_reg_n_0_[21] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[21] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(\slv_reg207_reg_n_0_[21] ),
        .I1(\slv_reg206_reg_n_0_[21] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[21] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[22]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[22]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(\slv_reg203_reg_n_0_[22] ),
        .I1(\slv_reg202_reg_n_0_[22] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[22] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(\slv_reg207_reg_n_0_[22] ),
        .I1(\slv_reg206_reg_n_0_[22] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[22] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[23]_i_1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[23]_i_2_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(\slv_reg203_reg_n_0_[23] ),
        .I1(\slv_reg202_reg_n_0_[23] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[23] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(\slv_reg207_reg_n_0_[23] ),
        .I1(\slv_reg206_reg_n_0_[23] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[23] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[24]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \axi_rdata[24]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[24]_i_3_n_0 ),
        .I4(axi_araddr[5]),
        .I5(Q[2]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(\slv_reg203_reg_n_0_[24] ),
        .I1(\slv_reg202_reg_n_0_[24] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[24] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\slv_reg207_reg_n_0_[24] ),
        .I1(\slv_reg206_reg_n_0_[24] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[24] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[2]_i_10 
       (.I0(\axi_rdata[2]_i_23_n_0 ),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_rdata[2]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[2]_i_25_n_0 ),
        .O(\axi_rdata[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata_reg[2]_i_4_n_0 ),
        .I1(\axi_rdata_reg[2]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[2]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[2]_i_7_n_0 ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_23 
       (.I0(\slv_reg207_reg_n_0_[2] ),
        .I1(\slv_reg206_reg_n_0_[2] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg205_reg_n_0_[2] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg204_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_24 
       (.I0(\slv_reg203_reg_n_0_[2] ),
        .I1(\slv_reg202_reg_n_0_[2] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg201_reg_n_0_[2] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg200_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_25 
       (.I0(PHS49_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS48_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_26 
       (.I0(PHS25_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS24_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_27 
       (.I0(PHS27_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS26_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_28 
       (.I0(PHS29_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS28_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_29 
       (.I0(PHS31_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS30_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[2]_i_8_n_0 ),
        .I1(\axi_rdata_reg[2]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[2]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_30 
       (.I0(PHS17_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS16_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_31 
       (.I0(PHS19_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS18_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_32 
       (.I0(PHS21_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS20_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_33 
       (.I0(PHS23_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS22_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_34 
       (.I0(PHS9_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS8_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_35 
       (.I0(PHS11_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS10_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_36 
       (.I0(PHS13_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS12_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_37 
       (.I0(PHS15_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS14_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_38 
       (.I0(PHS1_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS0_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_39 
       (.I0(PHS3_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS2_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_40 
       (.I0(PHS5_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS4_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_41 
       (.I0(PHS7_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS6_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_42 
       (.I0(PHS33_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS32_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_43 
       (.I0(PHS35_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS34_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_44 
       (.I0(PHS37_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS36_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_45 
       (.I0(PHS39_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS38_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_46 
       (.I0(PHS41_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS40_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_47 
       (.I0(PHS43_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS42_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_48 
       (.I0(PHS45_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS44_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[2]_i_49 
       (.I0(PHS47_pwm_val[2]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS46_pwm_val[2]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[2]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[3]_i_10 
       (.I0(\axi_rdata[3]_i_23_n_0 ),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_rdata[3]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[3]_i_25_n_0 ),
        .O(\axi_rdata[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata_reg[3]_i_4_n_0 ),
        .I1(\axi_rdata_reg[3]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[3]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[3]_i_7_n_0 ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_23 
       (.I0(\slv_reg207_reg_n_0_[3] ),
        .I1(\slv_reg206_reg_n_0_[3] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg205_reg_n_0_[3] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg204_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_24 
       (.I0(\slv_reg203_reg_n_0_[3] ),
        .I1(\slv_reg202_reg_n_0_[3] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg201_reg_n_0_[3] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg200_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_25 
       (.I0(PHS49_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS48_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_26 
       (.I0(PHS25_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS24_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_27 
       (.I0(PHS27_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS26_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_28 
       (.I0(PHS29_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS28_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_29 
       (.I0(PHS31_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS30_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata_reg[3]_i_8_n_0 ),
        .I1(\axi_rdata_reg[3]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[3]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_30 
       (.I0(PHS17_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS16_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_31 
       (.I0(PHS19_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS18_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_32 
       (.I0(PHS21_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS20_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_33 
       (.I0(PHS23_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS22_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_34 
       (.I0(PHS9_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS8_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_35 
       (.I0(PHS11_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS10_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_36 
       (.I0(PHS13_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS12_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_37 
       (.I0(PHS15_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS14_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_38 
       (.I0(PHS1_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS0_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_39 
       (.I0(PHS3_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS2_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_40 
       (.I0(PHS5_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS4_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_41 
       (.I0(PHS7_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS6_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_42 
       (.I0(PHS33_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS32_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_43 
       (.I0(PHS35_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS34_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_44 
       (.I0(PHS37_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS36_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_45 
       (.I0(PHS39_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS38_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_46 
       (.I0(PHS41_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS40_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_47 
       (.I0(PHS43_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS42_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_48 
       (.I0(PHS45_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS44_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[3]_i_49 
       (.I0(PHS47_pwm_val[3]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS46_pwm_val[3]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[3]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[4]_i_10 
       (.I0(\axi_rdata[4]_i_23_n_0 ),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_rdata[4]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[4]_i_25_n_0 ),
        .O(\axi_rdata[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_rdata_reg[4]_i_4_n_0 ),
        .I1(\axi_rdata_reg[4]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[4]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[4]_i_7_n_0 ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_23 
       (.I0(\slv_reg207_reg_n_0_[4] ),
        .I1(\slv_reg206_reg_n_0_[4] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg205_reg_n_0_[4] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg204_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_24 
       (.I0(\slv_reg203_reg_n_0_[4] ),
        .I1(\slv_reg202_reg_n_0_[4] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg201_reg_n_0_[4] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg200_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_25 
       (.I0(PHS49_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS48_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_26 
       (.I0(PHS25_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS24_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_27 
       (.I0(PHS27_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS26_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_28 
       (.I0(PHS29_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS28_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_29 
       (.I0(PHS31_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS30_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata_reg[4]_i_8_n_0 ),
        .I1(\axi_rdata_reg[4]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[4]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_30 
       (.I0(PHS17_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS16_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_31 
       (.I0(PHS19_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS18_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_32 
       (.I0(PHS21_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS20_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_33 
       (.I0(PHS23_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS22_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_34 
       (.I0(PHS9_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS8_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_35 
       (.I0(PHS11_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS10_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_36 
       (.I0(PHS13_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS12_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_37 
       (.I0(PHS15_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS14_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_38 
       (.I0(PHS1_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS0_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_39 
       (.I0(PHS3_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS2_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_40 
       (.I0(PHS5_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS4_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_41 
       (.I0(PHS7_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS6_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_42 
       (.I0(PHS33_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS32_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_43 
       (.I0(PHS35_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS34_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_44 
       (.I0(PHS37_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS36_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_45 
       (.I0(PHS39_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS38_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_46 
       (.I0(PHS41_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS40_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_47 
       (.I0(PHS43_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS42_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_48 
       (.I0(PHS45_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS44_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[4]_i_49 
       (.I0(PHS47_pwm_val[4]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS46_pwm_val[4]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[4]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[5]_i_10 
       (.I0(\axi_rdata[5]_i_23_n_0 ),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_rdata[5]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[5]_i_25_n_0 ),
        .O(\axi_rdata[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata_reg[5]_i_4_n_0 ),
        .I1(\axi_rdata_reg[5]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[5]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[5]_i_7_n_0 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_23 
       (.I0(\slv_reg207_reg_n_0_[5] ),
        .I1(\slv_reg206_reg_n_0_[5] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg205_reg_n_0_[5] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg204_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_24 
       (.I0(\slv_reg203_reg_n_0_[5] ),
        .I1(\slv_reg202_reg_n_0_[5] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg201_reg_n_0_[5] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg200_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_25 
       (.I0(PHS49_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS48_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_26 
       (.I0(PHS25_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS24_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_27 
       (.I0(PHS27_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS26_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_28 
       (.I0(PHS29_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS28_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_29 
       (.I0(PHS31_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS30_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata_reg[5]_i_8_n_0 ),
        .I1(\axi_rdata_reg[5]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[5]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_30 
       (.I0(PHS17_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS16_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_31 
       (.I0(PHS19_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS18_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_32 
       (.I0(PHS21_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS20_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_33 
       (.I0(PHS23_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS22_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_34 
       (.I0(PHS9_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS8_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_35 
       (.I0(PHS11_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS10_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_36 
       (.I0(PHS13_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS12_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_37 
       (.I0(PHS15_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS14_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_38 
       (.I0(PHS1_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS0_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_39 
       (.I0(PHS3_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS2_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_40 
       (.I0(PHS5_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS4_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_41 
       (.I0(PHS7_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS6_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_42 
       (.I0(PHS33_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS32_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_43 
       (.I0(PHS35_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS34_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_44 
       (.I0(PHS37_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS36_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_45 
       (.I0(PHS39_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS38_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_46 
       (.I0(PHS41_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS40_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_47 
       (.I0(PHS43_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS42_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_48 
       (.I0(PHS45_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS44_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[5]_i_49 
       (.I0(PHS47_pwm_val[5]),
        .I1(\axi_araddr_reg[4]_rep_n_0 ),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS46_pwm_val[5]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[5]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[6]_i_10 
       (.I0(\axi_rdata[6]_i_23_n_0 ),
        .I1(axi_araddr[4]),
        .I2(\axi_rdata[6]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[6]_i_25_n_0 ),
        .O(\axi_rdata[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata_reg[6]_i_4_n_0 ),
        .I1(\axi_rdata_reg[6]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[6]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[6]_i_7_n_0 ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_23 
       (.I0(\slv_reg207_reg_n_0_[6] ),
        .I1(\slv_reg206_reg_n_0_[6] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg205_reg_n_0_[6] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg204_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_24 
       (.I0(\slv_reg203_reg_n_0_[6] ),
        .I1(\slv_reg202_reg_n_0_[6] ),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg201_reg_n_0_[6] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg200_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_25 
       (.I0(PHS49_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS48_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_26 
       (.I0(PHS25_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS24_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_27 
       (.I0(PHS27_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS26_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_28 
       (.I0(PHS29_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS28_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_29 
       (.I0(PHS31_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS30_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata_reg[6]_i_8_n_0 ),
        .I1(\axi_rdata_reg[6]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[6]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_30 
       (.I0(PHS17_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS16_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_31 
       (.I0(PHS19_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS18_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_32 
       (.I0(PHS21_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS20_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_33 
       (.I0(PHS23_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS22_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_34 
       (.I0(PHS9_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS8_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_35 
       (.I0(PHS11_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS10_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_36 
       (.I0(PHS13_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS12_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_37 
       (.I0(PHS15_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS14_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_38 
       (.I0(PHS1_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS0_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_39 
       (.I0(PHS3_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS2_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_40 
       (.I0(PHS5_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS4_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_41 
       (.I0(PHS7_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS6_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_42 
       (.I0(PHS33_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS32_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_43 
       (.I0(PHS35_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS34_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_44 
       (.I0(PHS37_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS36_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_45 
       (.I0(PHS39_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS38_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_46 
       (.I0(PHS41_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS40_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_47 
       (.I0(PHS43_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS42_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_48 
       (.I0(PHS45_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS44_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[6]_i_49 
       (.I0(PHS47_pwm_val[6]),
        .I1(axi_araddr[4]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(PHS46_pwm_val[6]),
        .I4(\axi_araddr_reg[3]_rep_n_0 ),
        .O(\axi_rdata[6]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[7]_i_10 
       (.I0(\axi_rdata[7]_i_23_n_0 ),
        .I1(axi_araddr[4]),
        .I2(\axi_rdata[7]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[7]_i_25_n_0 ),
        .O(\axi_rdata[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata_reg[7]_i_4_n_0 ),
        .I1(\axi_rdata_reg[7]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[7]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[7]_i_7_n_0 ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_23 
       (.I0(\slv_reg207_reg_n_0_[7] ),
        .I1(\slv_reg206_reg_n_0_[7] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[7] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_24 
       (.I0(\slv_reg203_reg_n_0_[7] ),
        .I1(\slv_reg202_reg_n_0_[7] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[7] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_25 
       (.I0(PHS49_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS48_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_26 
       (.I0(PHS25_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS24_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_27 
       (.I0(PHS27_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS26_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_28 
       (.I0(PHS29_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS28_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_29 
       (.I0(PHS31_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS30_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata_reg[7]_i_8_n_0 ),
        .I1(\axi_rdata_reg[7]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[7]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_30 
       (.I0(PHS17_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS16_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_31 
       (.I0(PHS19_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS18_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_32 
       (.I0(PHS21_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS20_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_33 
       (.I0(PHS23_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS22_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_34 
       (.I0(PHS9_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS8_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_35 
       (.I0(PHS11_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS10_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_36 
       (.I0(PHS13_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS12_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_37 
       (.I0(PHS15_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS14_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_38 
       (.I0(PHS1_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS0_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_39 
       (.I0(PHS3_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS2_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_40 
       (.I0(PHS5_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS4_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_41 
       (.I0(PHS7_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS6_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_42 
       (.I0(PHS33_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS32_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_43 
       (.I0(PHS35_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS34_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_44 
       (.I0(PHS37_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS36_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_45 
       (.I0(PHS39_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS38_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_46 
       (.I0(PHS41_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS40_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_47 
       (.I0(PHS43_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS42_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_48 
       (.I0(PHS45_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS44_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[7]_i_49 
       (.I0(PHS47_pwm_val[7]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS46_pwm_val[7]),
        .I4(Q[1]),
        .O(\axi_rdata[7]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[8]_i_10 
       (.I0(\axi_rdata[8]_i_23_n_0 ),
        .I1(axi_araddr[4]),
        .I2(\axi_rdata[8]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[8]_i_25_n_0 ),
        .O(\axi_rdata[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_rdata_reg[8]_i_4_n_0 ),
        .I1(\axi_rdata_reg[8]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[8]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[8]_i_7_n_0 ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_23 
       (.I0(\slv_reg207_reg_n_0_[8] ),
        .I1(\slv_reg206_reg_n_0_[8] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[8] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_24 
       (.I0(\slv_reg203_reg_n_0_[8] ),
        .I1(\slv_reg202_reg_n_0_[8] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[8] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_25 
       (.I0(PHS49_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS48_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_26 
       (.I0(PHS25_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS24_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_27 
       (.I0(PHS27_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS26_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_28 
       (.I0(PHS29_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS28_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_29 
       (.I0(PHS31_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS30_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata_reg[8]_i_8_n_0 ),
        .I1(\axi_rdata_reg[8]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[8]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_30 
       (.I0(PHS17_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS16_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_31 
       (.I0(PHS19_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS18_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_32 
       (.I0(PHS21_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS20_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_33 
       (.I0(PHS23_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS22_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_34 
       (.I0(PHS9_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS8_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_35 
       (.I0(PHS11_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS10_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_36 
       (.I0(PHS13_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS12_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_37 
       (.I0(PHS15_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS14_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_38 
       (.I0(PHS1_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS0_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_39 
       (.I0(PHS3_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS2_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_40 
       (.I0(PHS5_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS4_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_41 
       (.I0(PHS7_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS6_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_42 
       (.I0(PHS33_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS32_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_43 
       (.I0(PHS35_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS34_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_44 
       (.I0(PHS37_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS36_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_45 
       (.I0(PHS39_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS38_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_46 
       (.I0(PHS41_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS40_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_47 
       (.I0(PHS43_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS42_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_48 
       (.I0(PHS45_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS44_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[8]_i_49 
       (.I0(PHS47_pwm_val[8]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS46_pwm_val[8]),
        .I4(Q[1]),
        .O(\axi_rdata[8]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[9]_i_10 
       (.I0(\axi_rdata[9]_i_23_n_0 ),
        .I1(axi_araddr[4]),
        .I2(\axi_rdata[9]_i_24_n_0 ),
        .I3(axi_araddr[5]),
        .I4(\axi_rdata[9]_i_25_n_0 ),
        .O(\axi_rdata[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata_reg[9]_i_4_n_0 ),
        .I1(\axi_rdata_reg[9]_i_5_n_0 ),
        .I2(Q[4]),
        .I3(\axi_rdata_reg[9]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\axi_rdata_reg[9]_i_7_n_0 ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_23 
       (.I0(\slv_reg207_reg_n_0_[9] ),
        .I1(\slv_reg206_reg_n_0_[9] ),
        .I2(Q[1]),
        .I3(\slv_reg205_reg_n_0_[9] ),
        .I4(Q[0]),
        .I5(\slv_reg204_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_24 
       (.I0(\slv_reg203_reg_n_0_[9] ),
        .I1(\slv_reg202_reg_n_0_[9] ),
        .I2(Q[1]),
        .I3(\slv_reg201_reg_n_0_[9] ),
        .I4(Q[0]),
        .I5(\slv_reg200_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_25 
       (.I0(PHS49_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS48_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_26 
       (.I0(PHS25_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS24_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_27 
       (.I0(PHS27_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS26_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_28 
       (.I0(PHS29_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS28_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_29 
       (.I0(PHS31_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS30_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00CA00CA0FCA00CA)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata_reg[9]_i_8_n_0 ),
        .I1(\axi_rdata_reg[9]_i_9_n_0 ),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\axi_rdata[9]_i_10_n_0 ),
        .I5(Q[2]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_30 
       (.I0(PHS17_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS16_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_31 
       (.I0(PHS19_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS18_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_32 
       (.I0(PHS21_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS20_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_33 
       (.I0(PHS23_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS22_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_34 
       (.I0(PHS9_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS8_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_35 
       (.I0(PHS11_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS10_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_36 
       (.I0(PHS13_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS12_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_37 
       (.I0(PHS15_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS14_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_38 
       (.I0(PHS1_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS0_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_39 
       (.I0(PHS3_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS2_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_40 
       (.I0(PHS5_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS4_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_41 
       (.I0(PHS7_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS6_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_42 
       (.I0(PHS33_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS32_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_43 
       (.I0(PHS35_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS34_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_44 
       (.I0(PHS37_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS36_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_45 
       (.I0(PHS39_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS38_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_46 
       (.I0(PHS41_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS40_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_47 
       (.I0(PHS43_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS42_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_48 
       (.I0(PHS45_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS44_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \axi_rdata[9]_i_49 
       (.I0(PHS47_pwm_val[9]),
        .I1(axi_araddr[4]),
        .I2(Q[0]),
        .I3(PHS46_pwm_val[9]),
        .I4(Q[1]),
        .O(\axi_rdata[9]_i_49_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[0]_i_10 
       (.I0(\axi_rdata[0]_i_23_n_0 ),
        .I1(\axi_rdata[0]_i_24_n_0 ),
        .O(\axi_rdata_reg[0]_i_10_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_13 
       (.I0(\axi_rdata[0]_i_33_n_0 ),
        .I1(\axi_rdata[0]_i_34_n_0 ),
        .O(\axi_rdata_reg[0]_i_13_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_14 
       (.I0(\axi_rdata[0]_i_35_n_0 ),
        .I1(\axi_rdata[0]_i_36_n_0 ),
        .O(\axi_rdata_reg[0]_i_14_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_15 
       (.I0(\axi_rdata[0]_i_37_n_0 ),
        .I1(\axi_rdata[0]_i_38_n_0 ),
        .O(\axi_rdata_reg[0]_i_15_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_16 
       (.I0(\axi_rdata[0]_i_39_n_0 ),
        .I1(\axi_rdata[0]_i_40_n_0 ),
        .O(\axi_rdata_reg[0]_i_16_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_17 
       (.I0(\axi_rdata[0]_i_41_n_0 ),
        .I1(\axi_rdata[0]_i_42_n_0 ),
        .O(\axi_rdata_reg[0]_i_17_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_18 
       (.I0(\axi_rdata[0]_i_43_n_0 ),
        .I1(\axi_rdata[0]_i_44_n_0 ),
        .O(\axi_rdata_reg[0]_i_18_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_19 
       (.I0(\axi_rdata[0]_i_45_n_0 ),
        .I1(\axi_rdata[0]_i_46_n_0 ),
        .O(\axi_rdata_reg[0]_i_19_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_20 
       (.I0(\axi_rdata[0]_i_47_n_0 ),
        .I1(\axi_rdata[0]_i_48_n_0 ),
        .O(\axi_rdata_reg[0]_i_20_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_25 
       (.I0(\axi_rdata_reg[0]_i_49_n_0 ),
        .I1(\axi_rdata_reg[0]_i_50_n_0 ),
        .O(\axi_rdata_reg[0]_i_25_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_26 
       (.I0(\axi_rdata_reg[0]_i_51_n_0 ),
        .I1(\axi_rdata_reg[0]_i_52_n_0 ),
        .O(\axi_rdata_reg[0]_i_26_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_27 
       (.I0(\axi_rdata_reg[0]_i_53_n_0 ),
        .I1(\axi_rdata_reg[0]_i_54_n_0 ),
        .O(\axi_rdata_reg[0]_i_27_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_28 
       (.I0(\axi_rdata_reg[0]_i_55_n_0 ),
        .I1(\axi_rdata_reg[0]_i_56_n_0 ),
        .O(\axi_rdata_reg[0]_i_28_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_29 
       (.I0(\axi_rdata_reg[0]_i_57_n_0 ),
        .I1(\axi_rdata_reg[0]_i_58_n_0 ),
        .O(\axi_rdata_reg[0]_i_29_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata_reg[0]_i_9_n_0 ),
        .I1(\axi_rdata_reg[0]_i_10_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_30 
       (.I0(\axi_rdata_reg[0]_i_59_n_0 ),
        .I1(\axi_rdata_reg[0]_i_60_n_0 ),
        .O(\axi_rdata_reg[0]_i_30_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_31 
       (.I0(\axi_rdata_reg[0]_i_61_n_0 ),
        .I1(\axi_rdata_reg[0]_i_62_n_0 ),
        .O(\axi_rdata_reg[0]_i_31_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_32 
       (.I0(\axi_rdata_reg[0]_i_63_n_0 ),
        .I1(\axi_rdata_reg[0]_i_64_n_0 ),
        .O(\axi_rdata_reg[0]_i_32_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[0]_i_4 
       (.I0(\axi_rdata[0]_i_11_n_0 ),
        .I1(\axi_rdata[0]_i_12_n_0 ),
        .O(\axi_rdata_reg[0]_i_4_n_0 ),
        .S(Q[4]));
  MUXF7 \axi_rdata_reg[0]_i_49 
       (.I0(\axi_rdata[0]_i_65_n_0 ),
        .I1(\axi_rdata[0]_i_66_n_0 ),
        .O(\axi_rdata_reg[0]_i_49_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_5 
       (.I0(\axi_rdata_reg[0]_i_13_n_0 ),
        .I1(\axi_rdata_reg[0]_i_14_n_0 ),
        .O(\axi_rdata_reg[0]_i_5_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[0]_i_50 
       (.I0(\axi_rdata[0]_i_67_n_0 ),
        .I1(\axi_rdata[0]_i_68_n_0 ),
        .O(\axi_rdata_reg[0]_i_50_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_51 
       (.I0(\axi_rdata[0]_i_69_n_0 ),
        .I1(\axi_rdata[0]_i_70_n_0 ),
        .O(\axi_rdata_reg[0]_i_51_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_52 
       (.I0(\axi_rdata[0]_i_71_n_0 ),
        .I1(\axi_rdata[0]_i_72_n_0 ),
        .O(\axi_rdata_reg[0]_i_52_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_53 
       (.I0(\axi_rdata[0]_i_73_n_0 ),
        .I1(\axi_rdata[0]_i_74_n_0 ),
        .O(\axi_rdata_reg[0]_i_53_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_54 
       (.I0(\axi_rdata[0]_i_75_n_0 ),
        .I1(\axi_rdata[0]_i_76_n_0 ),
        .O(\axi_rdata_reg[0]_i_54_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_55 
       (.I0(\axi_rdata[0]_i_77_n_0 ),
        .I1(\axi_rdata[0]_i_78_n_0 ),
        .O(\axi_rdata_reg[0]_i_55_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_56 
       (.I0(\axi_rdata[0]_i_79_n_0 ),
        .I1(\axi_rdata[0]_i_80_n_0 ),
        .O(\axi_rdata_reg[0]_i_56_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_57 
       (.I0(\axi_rdata[0]_i_81_n_0 ),
        .I1(\axi_rdata[0]_i_82_n_0 ),
        .O(\axi_rdata_reg[0]_i_57_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_58 
       (.I0(\axi_rdata[0]_i_83_n_0 ),
        .I1(\axi_rdata[0]_i_84_n_0 ),
        .O(\axi_rdata_reg[0]_i_58_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_59 
       (.I0(\axi_rdata[0]_i_85_n_0 ),
        .I1(\axi_rdata[0]_i_86_n_0 ),
        .O(\axi_rdata_reg[0]_i_59_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_6 
       (.I0(\axi_rdata_reg[0]_i_15_n_0 ),
        .I1(\axi_rdata_reg[0]_i_16_n_0 ),
        .O(\axi_rdata_reg[0]_i_6_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[0]_i_60 
       (.I0(\axi_rdata[0]_i_87_n_0 ),
        .I1(\axi_rdata[0]_i_88_n_0 ),
        .O(\axi_rdata_reg[0]_i_60_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_61 
       (.I0(\axi_rdata[0]_i_89_n_0 ),
        .I1(\axi_rdata[0]_i_90_n_0 ),
        .O(\axi_rdata_reg[0]_i_61_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_62 
       (.I0(\axi_rdata[0]_i_91_n_0 ),
        .I1(\axi_rdata[0]_i_92_n_0 ),
        .O(\axi_rdata_reg[0]_i_62_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_63 
       (.I0(\axi_rdata[0]_i_93_n_0 ),
        .I1(\axi_rdata[0]_i_94_n_0 ),
        .O(\axi_rdata_reg[0]_i_63_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_64 
       (.I0(\axi_rdata[0]_i_95_n_0 ),
        .I1(\axi_rdata[0]_i_96_n_0 ),
        .O(\axi_rdata_reg[0]_i_64_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_7 
       (.I0(\axi_rdata_reg[0]_i_17_n_0 ),
        .I1(\axi_rdata_reg[0]_i_18_n_0 ),
        .O(\axi_rdata_reg[0]_i_7_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_8 
       (.I0(\axi_rdata_reg[0]_i_19_n_0 ),
        .I1(\axi_rdata_reg[0]_i_20_n_0 ),
        .O(\axi_rdata_reg[0]_i_8_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[0]_i_9 
       (.I0(\axi_rdata[0]_i_21_n_0 ),
        .I1(\axi_rdata[0]_i_22_n_0 ),
        .O(\axi_rdata_reg[0]_i_9_n_0 ),
        .S(\axi_araddr_reg[4]_rep__0_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_3_n_0 ),
        .I1(\axi_rdata[10]_i_4_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_3_n_0 ),
        .I1(\axi_rdata[11]_i_4_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_3_n_0 ),
        .I1(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_3_n_0 ),
        .I1(\axi_rdata[13]_i_4_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(\axi_rdata[14]_i_4_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_3_n_0 ),
        .I1(\axi_rdata[15]_i_4_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_3_n_0 ),
        .I1(\axi_rdata[16]_i_4_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_3_n_0 ),
        .I1(\axi_rdata[17]_i_4_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_3_n_0 ),
        .I1(\axi_rdata[18]_i_4_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_3_n_0 ),
        .I1(\axi_rdata[19]_i_4_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[1]_i_10 
       (.I0(\axi_rdata_reg[1]_i_21_n_0 ),
        .I1(\axi_rdata_reg[1]_i_22_n_0 ),
        .O(\axi_rdata_reg[1]_i_10_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[1]_i_11 
       (.I0(\axi_rdata[1]_i_23_n_0 ),
        .I1(\axi_rdata[1]_i_24_n_0 ),
        .O(\axi_rdata_reg[1]_i_11_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_12 
       (.I0(\axi_rdata[1]_i_25_n_0 ),
        .I1(\axi_rdata[1]_i_26_n_0 ),
        .O(\axi_rdata_reg[1]_i_12_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_15 
       (.I0(\axi_rdata[1]_i_35_n_0 ),
        .I1(\axi_rdata[1]_i_36_n_0 ),
        .O(\axi_rdata_reg[1]_i_15_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_16 
       (.I0(\axi_rdata[1]_i_37_n_0 ),
        .I1(\axi_rdata[1]_i_38_n_0 ),
        .O(\axi_rdata_reg[1]_i_16_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_17 
       (.I0(\axi_rdata[1]_i_39_n_0 ),
        .I1(\axi_rdata[1]_i_40_n_0 ),
        .O(\axi_rdata_reg[1]_i_17_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_18 
       (.I0(\axi_rdata[1]_i_41_n_0 ),
        .I1(\axi_rdata[1]_i_42_n_0 ),
        .O(\axi_rdata_reg[1]_i_18_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_19 
       (.I0(\axi_rdata[1]_i_43_n_0 ),
        .I1(\axi_rdata[1]_i_44_n_0 ),
        .O(\axi_rdata_reg[1]_i_19_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_20 
       (.I0(\axi_rdata[1]_i_45_n_0 ),
        .I1(\axi_rdata[1]_i_46_n_0 ),
        .O(\axi_rdata_reg[1]_i_20_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_21 
       (.I0(\axi_rdata[1]_i_47_n_0 ),
        .I1(\axi_rdata[1]_i_48_n_0 ),
        .O(\axi_rdata_reg[1]_i_21_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_22 
       (.I0(\axi_rdata[1]_i_49_n_0 ),
        .I1(\axi_rdata[1]_i_50_n_0 ),
        .O(\axi_rdata_reg[1]_i_22_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF8 \axi_rdata_reg[1]_i_27 
       (.I0(\axi_rdata_reg[1]_i_51_n_0 ),
        .I1(\axi_rdata_reg[1]_i_52_n_0 ),
        .O(\axi_rdata_reg[1]_i_27_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_28 
       (.I0(\axi_rdata_reg[1]_i_53_n_0 ),
        .I1(\axi_rdata_reg[1]_i_54_n_0 ),
        .O(\axi_rdata_reg[1]_i_28_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_29 
       (.I0(\axi_rdata_reg[1]_i_55_n_0 ),
        .I1(\axi_rdata_reg[1]_i_56_n_0 ),
        .O(\axi_rdata_reg[1]_i_29_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_30 
       (.I0(\axi_rdata_reg[1]_i_57_n_0 ),
        .I1(\axi_rdata_reg[1]_i_58_n_0 ),
        .O(\axi_rdata_reg[1]_i_30_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_31 
       (.I0(\axi_rdata_reg[1]_i_59_n_0 ),
        .I1(\axi_rdata_reg[1]_i_60_n_0 ),
        .O(\axi_rdata_reg[1]_i_31_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_32 
       (.I0(\axi_rdata_reg[1]_i_61_n_0 ),
        .I1(\axi_rdata_reg[1]_i_62_n_0 ),
        .O(\axi_rdata_reg[1]_i_32_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_33 
       (.I0(\axi_rdata_reg[1]_i_63_n_0 ),
        .I1(\axi_rdata_reg[1]_i_64_n_0 ),
        .O(\axi_rdata_reg[1]_i_33_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_34 
       (.I0(\axi_rdata_reg[1]_i_65_n_0 ),
        .I1(\axi_rdata_reg[1]_i_66_n_0 ),
        .O(\axi_rdata_reg[1]_i_34_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_4 
       (.I0(\axi_rdata_reg[1]_i_11_n_0 ),
        .I1(\axi_rdata_reg[1]_i_12_n_0 ),
        .O(\axi_rdata_reg[1]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[1]_i_51 
       (.I0(\axi_rdata[1]_i_67_n_0 ),
        .I1(\axi_rdata[1]_i_68_n_0 ),
        .O(\axi_rdata_reg[1]_i_51_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_52 
       (.I0(\axi_rdata[1]_i_69_n_0 ),
        .I1(\axi_rdata[1]_i_70_n_0 ),
        .O(\axi_rdata_reg[1]_i_52_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_53 
       (.I0(\axi_rdata[1]_i_71_n_0 ),
        .I1(\axi_rdata[1]_i_72_n_0 ),
        .O(\axi_rdata_reg[1]_i_53_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_54 
       (.I0(\axi_rdata[1]_i_73_n_0 ),
        .I1(\axi_rdata[1]_i_74_n_0 ),
        .O(\axi_rdata_reg[1]_i_54_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_55 
       (.I0(\axi_rdata[1]_i_75_n_0 ),
        .I1(\axi_rdata[1]_i_76_n_0 ),
        .O(\axi_rdata_reg[1]_i_55_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_56 
       (.I0(\axi_rdata[1]_i_77_n_0 ),
        .I1(\axi_rdata[1]_i_78_n_0 ),
        .O(\axi_rdata_reg[1]_i_56_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_57 
       (.I0(\axi_rdata[1]_i_79_n_0 ),
        .I1(\axi_rdata[1]_i_80_n_0 ),
        .O(\axi_rdata_reg[1]_i_57_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_58 
       (.I0(\axi_rdata[1]_i_81_n_0 ),
        .I1(\axi_rdata[1]_i_82_n_0 ),
        .O(\axi_rdata_reg[1]_i_58_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_59 
       (.I0(\axi_rdata[1]_i_83_n_0 ),
        .I1(\axi_rdata[1]_i_84_n_0 ),
        .O(\axi_rdata_reg[1]_i_59_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_6 
       (.I0(\axi_rdata[1]_i_13_n_0 ),
        .I1(\axi_rdata[1]_i_14_n_0 ),
        .O(\axi_rdata_reg[1]_i_6_n_0 ),
        .S(Q[4]));
  MUXF7 \axi_rdata_reg[1]_i_60 
       (.I0(\axi_rdata[1]_i_85_n_0 ),
        .I1(\axi_rdata[1]_i_86_n_0 ),
        .O(\axi_rdata_reg[1]_i_60_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_61 
       (.I0(\axi_rdata[1]_i_87_n_0 ),
        .I1(\axi_rdata[1]_i_88_n_0 ),
        .O(\axi_rdata_reg[1]_i_61_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_62 
       (.I0(\axi_rdata[1]_i_89_n_0 ),
        .I1(\axi_rdata[1]_i_90_n_0 ),
        .O(\axi_rdata_reg[1]_i_62_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_63 
       (.I0(\axi_rdata[1]_i_91_n_0 ),
        .I1(\axi_rdata[1]_i_92_n_0 ),
        .O(\axi_rdata_reg[1]_i_63_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_64 
       (.I0(\axi_rdata[1]_i_93_n_0 ),
        .I1(\axi_rdata[1]_i_94_n_0 ),
        .O(\axi_rdata_reg[1]_i_64_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_65 
       (.I0(\axi_rdata[1]_i_95_n_0 ),
        .I1(\axi_rdata[1]_i_96_n_0 ),
        .O(\axi_rdata_reg[1]_i_65_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_66 
       (.I0(\axi_rdata[1]_i_97_n_0 ),
        .I1(\axi_rdata[1]_i_98_n_0 ),
        .O(\axi_rdata_reg[1]_i_66_n_0 ),
        .S(\axi_araddr_reg[4]_rep_n_0 ));
  MUXF8 \axi_rdata_reg[1]_i_7 
       (.I0(\axi_rdata_reg[1]_i_15_n_0 ),
        .I1(\axi_rdata_reg[1]_i_16_n_0 ),
        .O(\axi_rdata_reg[1]_i_7_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_8 
       (.I0(\axi_rdata_reg[1]_i_17_n_0 ),
        .I1(\axi_rdata_reg[1]_i_18_n_0 ),
        .O(\axi_rdata_reg[1]_i_8_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_9 
       (.I0(\axi_rdata_reg[1]_i_19_n_0 ),
        .I1(\axi_rdata_reg[1]_i_20_n_0 ),
        .O(\axi_rdata_reg[1]_i_9_n_0 ),
        .S(axi_araddr[5]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_3_n_0 ),
        .I1(\axi_rdata[20]_i_4_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_3_n_0 ),
        .I1(\axi_rdata[21]_i_4_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_3_n_0 ),
        .I1(\axi_rdata[22]_i_4_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_3_n_0 ),
        .I1(\axi_rdata[23]_i_4_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[2]_i_11 
       (.I0(\axi_rdata[2]_i_26_n_0 ),
        .I1(\axi_rdata[2]_i_27_n_0 ),
        .O(\axi_rdata_reg[2]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_12 
       (.I0(\axi_rdata[2]_i_28_n_0 ),
        .I1(\axi_rdata[2]_i_29_n_0 ),
        .O(\axi_rdata_reg[2]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_13 
       (.I0(\axi_rdata[2]_i_30_n_0 ),
        .I1(\axi_rdata[2]_i_31_n_0 ),
        .O(\axi_rdata_reg[2]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_14 
       (.I0(\axi_rdata[2]_i_32_n_0 ),
        .I1(\axi_rdata[2]_i_33_n_0 ),
        .O(\axi_rdata_reg[2]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_15 
       (.I0(\axi_rdata[2]_i_34_n_0 ),
        .I1(\axi_rdata[2]_i_35_n_0 ),
        .O(\axi_rdata_reg[2]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_16 
       (.I0(\axi_rdata[2]_i_36_n_0 ),
        .I1(\axi_rdata[2]_i_37_n_0 ),
        .O(\axi_rdata_reg[2]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_17 
       (.I0(\axi_rdata[2]_i_38_n_0 ),
        .I1(\axi_rdata[2]_i_39_n_0 ),
        .O(\axi_rdata_reg[2]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_18 
       (.I0(\axi_rdata[2]_i_40_n_0 ),
        .I1(\axi_rdata[2]_i_41_n_0 ),
        .O(\axi_rdata_reg[2]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_19 
       (.I0(\axi_rdata[2]_i_42_n_0 ),
        .I1(\axi_rdata[2]_i_43_n_0 ),
        .O(\axi_rdata_reg[2]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_20 
       (.I0(\axi_rdata[2]_i_44_n_0 ),
        .I1(\axi_rdata[2]_i_45_n_0 ),
        .O(\axi_rdata_reg[2]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_21 
       (.I0(\axi_rdata[2]_i_46_n_0 ),
        .I1(\axi_rdata[2]_i_47_n_0 ),
        .O(\axi_rdata_reg[2]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_22 
       (.I0(\axi_rdata[2]_i_48_n_0 ),
        .I1(\axi_rdata[2]_i_49_n_0 ),
        .O(\axi_rdata_reg[2]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[2]_i_4 
       (.I0(\axi_rdata_reg[2]_i_11_n_0 ),
        .I1(\axi_rdata_reg[2]_i_12_n_0 ),
        .O(\axi_rdata_reg[2]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[2]_i_5 
       (.I0(\axi_rdata_reg[2]_i_13_n_0 ),
        .I1(\axi_rdata_reg[2]_i_14_n_0 ),
        .O(\axi_rdata_reg[2]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[2]_i_6 
       (.I0(\axi_rdata_reg[2]_i_15_n_0 ),
        .I1(\axi_rdata_reg[2]_i_16_n_0 ),
        .O(\axi_rdata_reg[2]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[2]_i_7 
       (.I0(\axi_rdata_reg[2]_i_17_n_0 ),
        .I1(\axi_rdata_reg[2]_i_18_n_0 ),
        .O(\axi_rdata_reg[2]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[2]_i_8 
       (.I0(\axi_rdata_reg[2]_i_19_n_0 ),
        .I1(\axi_rdata_reg[2]_i_20_n_0 ),
        .O(\axi_rdata_reg[2]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[2]_i_9 
       (.I0(\axi_rdata_reg[2]_i_21_n_0 ),
        .I1(\axi_rdata_reg[2]_i_22_n_0 ),
        .O(\axi_rdata_reg[2]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[3]_i_11 
       (.I0(\axi_rdata[3]_i_26_n_0 ),
        .I1(\axi_rdata[3]_i_27_n_0 ),
        .O(\axi_rdata_reg[3]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_12 
       (.I0(\axi_rdata[3]_i_28_n_0 ),
        .I1(\axi_rdata[3]_i_29_n_0 ),
        .O(\axi_rdata_reg[3]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_13 
       (.I0(\axi_rdata[3]_i_30_n_0 ),
        .I1(\axi_rdata[3]_i_31_n_0 ),
        .O(\axi_rdata_reg[3]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_14 
       (.I0(\axi_rdata[3]_i_32_n_0 ),
        .I1(\axi_rdata[3]_i_33_n_0 ),
        .O(\axi_rdata_reg[3]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_15 
       (.I0(\axi_rdata[3]_i_34_n_0 ),
        .I1(\axi_rdata[3]_i_35_n_0 ),
        .O(\axi_rdata_reg[3]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_16 
       (.I0(\axi_rdata[3]_i_36_n_0 ),
        .I1(\axi_rdata[3]_i_37_n_0 ),
        .O(\axi_rdata_reg[3]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_17 
       (.I0(\axi_rdata[3]_i_38_n_0 ),
        .I1(\axi_rdata[3]_i_39_n_0 ),
        .O(\axi_rdata_reg[3]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_18 
       (.I0(\axi_rdata[3]_i_40_n_0 ),
        .I1(\axi_rdata[3]_i_41_n_0 ),
        .O(\axi_rdata_reg[3]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_19 
       (.I0(\axi_rdata[3]_i_42_n_0 ),
        .I1(\axi_rdata[3]_i_43_n_0 ),
        .O(\axi_rdata_reg[3]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_20 
       (.I0(\axi_rdata[3]_i_44_n_0 ),
        .I1(\axi_rdata[3]_i_45_n_0 ),
        .O(\axi_rdata_reg[3]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_21 
       (.I0(\axi_rdata[3]_i_46_n_0 ),
        .I1(\axi_rdata[3]_i_47_n_0 ),
        .O(\axi_rdata_reg[3]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_22 
       (.I0(\axi_rdata[3]_i_48_n_0 ),
        .I1(\axi_rdata[3]_i_49_n_0 ),
        .O(\axi_rdata_reg[3]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[3]_i_4 
       (.I0(\axi_rdata_reg[3]_i_11_n_0 ),
        .I1(\axi_rdata_reg[3]_i_12_n_0 ),
        .O(\axi_rdata_reg[3]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[3]_i_5 
       (.I0(\axi_rdata_reg[3]_i_13_n_0 ),
        .I1(\axi_rdata_reg[3]_i_14_n_0 ),
        .O(\axi_rdata_reg[3]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[3]_i_6 
       (.I0(\axi_rdata_reg[3]_i_15_n_0 ),
        .I1(\axi_rdata_reg[3]_i_16_n_0 ),
        .O(\axi_rdata_reg[3]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[3]_i_7 
       (.I0(\axi_rdata_reg[3]_i_17_n_0 ),
        .I1(\axi_rdata_reg[3]_i_18_n_0 ),
        .O(\axi_rdata_reg[3]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[3]_i_8 
       (.I0(\axi_rdata_reg[3]_i_19_n_0 ),
        .I1(\axi_rdata_reg[3]_i_20_n_0 ),
        .O(\axi_rdata_reg[3]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[3]_i_9 
       (.I0(\axi_rdata_reg[3]_i_21_n_0 ),
        .I1(\axi_rdata_reg[3]_i_22_n_0 ),
        .O(\axi_rdata_reg[3]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[4]_i_11 
       (.I0(\axi_rdata[4]_i_26_n_0 ),
        .I1(\axi_rdata[4]_i_27_n_0 ),
        .O(\axi_rdata_reg[4]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_12 
       (.I0(\axi_rdata[4]_i_28_n_0 ),
        .I1(\axi_rdata[4]_i_29_n_0 ),
        .O(\axi_rdata_reg[4]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_13 
       (.I0(\axi_rdata[4]_i_30_n_0 ),
        .I1(\axi_rdata[4]_i_31_n_0 ),
        .O(\axi_rdata_reg[4]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_14 
       (.I0(\axi_rdata[4]_i_32_n_0 ),
        .I1(\axi_rdata[4]_i_33_n_0 ),
        .O(\axi_rdata_reg[4]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_15 
       (.I0(\axi_rdata[4]_i_34_n_0 ),
        .I1(\axi_rdata[4]_i_35_n_0 ),
        .O(\axi_rdata_reg[4]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_16 
       (.I0(\axi_rdata[4]_i_36_n_0 ),
        .I1(\axi_rdata[4]_i_37_n_0 ),
        .O(\axi_rdata_reg[4]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_17 
       (.I0(\axi_rdata[4]_i_38_n_0 ),
        .I1(\axi_rdata[4]_i_39_n_0 ),
        .O(\axi_rdata_reg[4]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_18 
       (.I0(\axi_rdata[4]_i_40_n_0 ),
        .I1(\axi_rdata[4]_i_41_n_0 ),
        .O(\axi_rdata_reg[4]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_19 
       (.I0(\axi_rdata[4]_i_42_n_0 ),
        .I1(\axi_rdata[4]_i_43_n_0 ),
        .O(\axi_rdata_reg[4]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_20 
       (.I0(\axi_rdata[4]_i_44_n_0 ),
        .I1(\axi_rdata[4]_i_45_n_0 ),
        .O(\axi_rdata_reg[4]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_21 
       (.I0(\axi_rdata[4]_i_46_n_0 ),
        .I1(\axi_rdata[4]_i_47_n_0 ),
        .O(\axi_rdata_reg[4]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_22 
       (.I0(\axi_rdata[4]_i_48_n_0 ),
        .I1(\axi_rdata[4]_i_49_n_0 ),
        .O(\axi_rdata_reg[4]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[4]_i_4 
       (.I0(\axi_rdata_reg[4]_i_11_n_0 ),
        .I1(\axi_rdata_reg[4]_i_12_n_0 ),
        .O(\axi_rdata_reg[4]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[4]_i_5 
       (.I0(\axi_rdata_reg[4]_i_13_n_0 ),
        .I1(\axi_rdata_reg[4]_i_14_n_0 ),
        .O(\axi_rdata_reg[4]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[4]_i_6 
       (.I0(\axi_rdata_reg[4]_i_15_n_0 ),
        .I1(\axi_rdata_reg[4]_i_16_n_0 ),
        .O(\axi_rdata_reg[4]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[4]_i_7 
       (.I0(\axi_rdata_reg[4]_i_17_n_0 ),
        .I1(\axi_rdata_reg[4]_i_18_n_0 ),
        .O(\axi_rdata_reg[4]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[4]_i_8 
       (.I0(\axi_rdata_reg[4]_i_19_n_0 ),
        .I1(\axi_rdata_reg[4]_i_20_n_0 ),
        .O(\axi_rdata_reg[4]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[4]_i_9 
       (.I0(\axi_rdata_reg[4]_i_21_n_0 ),
        .I1(\axi_rdata_reg[4]_i_22_n_0 ),
        .O(\axi_rdata_reg[4]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[5]_i_11 
       (.I0(\axi_rdata[5]_i_26_n_0 ),
        .I1(\axi_rdata[5]_i_27_n_0 ),
        .O(\axi_rdata_reg[5]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_12 
       (.I0(\axi_rdata[5]_i_28_n_0 ),
        .I1(\axi_rdata[5]_i_29_n_0 ),
        .O(\axi_rdata_reg[5]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_13 
       (.I0(\axi_rdata[5]_i_30_n_0 ),
        .I1(\axi_rdata[5]_i_31_n_0 ),
        .O(\axi_rdata_reg[5]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_14 
       (.I0(\axi_rdata[5]_i_32_n_0 ),
        .I1(\axi_rdata[5]_i_33_n_0 ),
        .O(\axi_rdata_reg[5]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_15 
       (.I0(\axi_rdata[5]_i_34_n_0 ),
        .I1(\axi_rdata[5]_i_35_n_0 ),
        .O(\axi_rdata_reg[5]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_16 
       (.I0(\axi_rdata[5]_i_36_n_0 ),
        .I1(\axi_rdata[5]_i_37_n_0 ),
        .O(\axi_rdata_reg[5]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_17 
       (.I0(\axi_rdata[5]_i_38_n_0 ),
        .I1(\axi_rdata[5]_i_39_n_0 ),
        .O(\axi_rdata_reg[5]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_18 
       (.I0(\axi_rdata[5]_i_40_n_0 ),
        .I1(\axi_rdata[5]_i_41_n_0 ),
        .O(\axi_rdata_reg[5]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_19 
       (.I0(\axi_rdata[5]_i_42_n_0 ),
        .I1(\axi_rdata[5]_i_43_n_0 ),
        .O(\axi_rdata_reg[5]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_20 
       (.I0(\axi_rdata[5]_i_44_n_0 ),
        .I1(\axi_rdata[5]_i_45_n_0 ),
        .O(\axi_rdata_reg[5]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_21 
       (.I0(\axi_rdata[5]_i_46_n_0 ),
        .I1(\axi_rdata[5]_i_47_n_0 ),
        .O(\axi_rdata_reg[5]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_22 
       (.I0(\axi_rdata[5]_i_48_n_0 ),
        .I1(\axi_rdata[5]_i_49_n_0 ),
        .O(\axi_rdata_reg[5]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[5]_i_4 
       (.I0(\axi_rdata_reg[5]_i_11_n_0 ),
        .I1(\axi_rdata_reg[5]_i_12_n_0 ),
        .O(\axi_rdata_reg[5]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[5]_i_5 
       (.I0(\axi_rdata_reg[5]_i_13_n_0 ),
        .I1(\axi_rdata_reg[5]_i_14_n_0 ),
        .O(\axi_rdata_reg[5]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[5]_i_6 
       (.I0(\axi_rdata_reg[5]_i_15_n_0 ),
        .I1(\axi_rdata_reg[5]_i_16_n_0 ),
        .O(\axi_rdata_reg[5]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[5]_i_7 
       (.I0(\axi_rdata_reg[5]_i_17_n_0 ),
        .I1(\axi_rdata_reg[5]_i_18_n_0 ),
        .O(\axi_rdata_reg[5]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[5]_i_8 
       (.I0(\axi_rdata_reg[5]_i_19_n_0 ),
        .I1(\axi_rdata_reg[5]_i_20_n_0 ),
        .O(\axi_rdata_reg[5]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[5]_i_9 
       (.I0(\axi_rdata_reg[5]_i_21_n_0 ),
        .I1(\axi_rdata_reg[5]_i_22_n_0 ),
        .O(\axi_rdata_reg[5]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[6]_i_11 
       (.I0(\axi_rdata[6]_i_26_n_0 ),
        .I1(\axi_rdata[6]_i_27_n_0 ),
        .O(\axi_rdata_reg[6]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_12 
       (.I0(\axi_rdata[6]_i_28_n_0 ),
        .I1(\axi_rdata[6]_i_29_n_0 ),
        .O(\axi_rdata_reg[6]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_13 
       (.I0(\axi_rdata[6]_i_30_n_0 ),
        .I1(\axi_rdata[6]_i_31_n_0 ),
        .O(\axi_rdata_reg[6]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_14 
       (.I0(\axi_rdata[6]_i_32_n_0 ),
        .I1(\axi_rdata[6]_i_33_n_0 ),
        .O(\axi_rdata_reg[6]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_15 
       (.I0(\axi_rdata[6]_i_34_n_0 ),
        .I1(\axi_rdata[6]_i_35_n_0 ),
        .O(\axi_rdata_reg[6]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_16 
       (.I0(\axi_rdata[6]_i_36_n_0 ),
        .I1(\axi_rdata[6]_i_37_n_0 ),
        .O(\axi_rdata_reg[6]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_17 
       (.I0(\axi_rdata[6]_i_38_n_0 ),
        .I1(\axi_rdata[6]_i_39_n_0 ),
        .O(\axi_rdata_reg[6]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_18 
       (.I0(\axi_rdata[6]_i_40_n_0 ),
        .I1(\axi_rdata[6]_i_41_n_0 ),
        .O(\axi_rdata_reg[6]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_19 
       (.I0(\axi_rdata[6]_i_42_n_0 ),
        .I1(\axi_rdata[6]_i_43_n_0 ),
        .O(\axi_rdata_reg[6]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_20 
       (.I0(\axi_rdata[6]_i_44_n_0 ),
        .I1(\axi_rdata[6]_i_45_n_0 ),
        .O(\axi_rdata_reg[6]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_21 
       (.I0(\axi_rdata[6]_i_46_n_0 ),
        .I1(\axi_rdata[6]_i_47_n_0 ),
        .O(\axi_rdata_reg[6]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_22 
       (.I0(\axi_rdata[6]_i_48_n_0 ),
        .I1(\axi_rdata[6]_i_49_n_0 ),
        .O(\axi_rdata_reg[6]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[6]_i_4 
       (.I0(\axi_rdata_reg[6]_i_11_n_0 ),
        .I1(\axi_rdata_reg[6]_i_12_n_0 ),
        .O(\axi_rdata_reg[6]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[6]_i_5 
       (.I0(\axi_rdata_reg[6]_i_13_n_0 ),
        .I1(\axi_rdata_reg[6]_i_14_n_0 ),
        .O(\axi_rdata_reg[6]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[6]_i_6 
       (.I0(\axi_rdata_reg[6]_i_15_n_0 ),
        .I1(\axi_rdata_reg[6]_i_16_n_0 ),
        .O(\axi_rdata_reg[6]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[6]_i_7 
       (.I0(\axi_rdata_reg[6]_i_17_n_0 ),
        .I1(\axi_rdata_reg[6]_i_18_n_0 ),
        .O(\axi_rdata_reg[6]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[6]_i_8 
       (.I0(\axi_rdata_reg[6]_i_19_n_0 ),
        .I1(\axi_rdata_reg[6]_i_20_n_0 ),
        .O(\axi_rdata_reg[6]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[6]_i_9 
       (.I0(\axi_rdata_reg[6]_i_21_n_0 ),
        .I1(\axi_rdata_reg[6]_i_22_n_0 ),
        .O(\axi_rdata_reg[6]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[7]_i_11 
       (.I0(\axi_rdata[7]_i_26_n_0 ),
        .I1(\axi_rdata[7]_i_27_n_0 ),
        .O(\axi_rdata_reg[7]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_12 
       (.I0(\axi_rdata[7]_i_28_n_0 ),
        .I1(\axi_rdata[7]_i_29_n_0 ),
        .O(\axi_rdata_reg[7]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_13 
       (.I0(\axi_rdata[7]_i_30_n_0 ),
        .I1(\axi_rdata[7]_i_31_n_0 ),
        .O(\axi_rdata_reg[7]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_14 
       (.I0(\axi_rdata[7]_i_32_n_0 ),
        .I1(\axi_rdata[7]_i_33_n_0 ),
        .O(\axi_rdata_reg[7]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_15 
       (.I0(\axi_rdata[7]_i_34_n_0 ),
        .I1(\axi_rdata[7]_i_35_n_0 ),
        .O(\axi_rdata_reg[7]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_16 
       (.I0(\axi_rdata[7]_i_36_n_0 ),
        .I1(\axi_rdata[7]_i_37_n_0 ),
        .O(\axi_rdata_reg[7]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_17 
       (.I0(\axi_rdata[7]_i_38_n_0 ),
        .I1(\axi_rdata[7]_i_39_n_0 ),
        .O(\axi_rdata_reg[7]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_18 
       (.I0(\axi_rdata[7]_i_40_n_0 ),
        .I1(\axi_rdata[7]_i_41_n_0 ),
        .O(\axi_rdata_reg[7]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_19 
       (.I0(\axi_rdata[7]_i_42_n_0 ),
        .I1(\axi_rdata[7]_i_43_n_0 ),
        .O(\axi_rdata_reg[7]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_20 
       (.I0(\axi_rdata[7]_i_44_n_0 ),
        .I1(\axi_rdata[7]_i_45_n_0 ),
        .O(\axi_rdata_reg[7]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_21 
       (.I0(\axi_rdata[7]_i_46_n_0 ),
        .I1(\axi_rdata[7]_i_47_n_0 ),
        .O(\axi_rdata_reg[7]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_22 
       (.I0(\axi_rdata[7]_i_48_n_0 ),
        .I1(\axi_rdata[7]_i_49_n_0 ),
        .O(\axi_rdata_reg[7]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[7]_i_4 
       (.I0(\axi_rdata_reg[7]_i_11_n_0 ),
        .I1(\axi_rdata_reg[7]_i_12_n_0 ),
        .O(\axi_rdata_reg[7]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[7]_i_5 
       (.I0(\axi_rdata_reg[7]_i_13_n_0 ),
        .I1(\axi_rdata_reg[7]_i_14_n_0 ),
        .O(\axi_rdata_reg[7]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[7]_i_6 
       (.I0(\axi_rdata_reg[7]_i_15_n_0 ),
        .I1(\axi_rdata_reg[7]_i_16_n_0 ),
        .O(\axi_rdata_reg[7]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[7]_i_7 
       (.I0(\axi_rdata_reg[7]_i_17_n_0 ),
        .I1(\axi_rdata_reg[7]_i_18_n_0 ),
        .O(\axi_rdata_reg[7]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[7]_i_8 
       (.I0(\axi_rdata_reg[7]_i_19_n_0 ),
        .I1(\axi_rdata_reg[7]_i_20_n_0 ),
        .O(\axi_rdata_reg[7]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[7]_i_9 
       (.I0(\axi_rdata_reg[7]_i_21_n_0 ),
        .I1(\axi_rdata_reg[7]_i_22_n_0 ),
        .O(\axi_rdata_reg[7]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[8]_i_11 
       (.I0(\axi_rdata[8]_i_26_n_0 ),
        .I1(\axi_rdata[8]_i_27_n_0 ),
        .O(\axi_rdata_reg[8]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_12 
       (.I0(\axi_rdata[8]_i_28_n_0 ),
        .I1(\axi_rdata[8]_i_29_n_0 ),
        .O(\axi_rdata_reg[8]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_13 
       (.I0(\axi_rdata[8]_i_30_n_0 ),
        .I1(\axi_rdata[8]_i_31_n_0 ),
        .O(\axi_rdata_reg[8]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_14 
       (.I0(\axi_rdata[8]_i_32_n_0 ),
        .I1(\axi_rdata[8]_i_33_n_0 ),
        .O(\axi_rdata_reg[8]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_15 
       (.I0(\axi_rdata[8]_i_34_n_0 ),
        .I1(\axi_rdata[8]_i_35_n_0 ),
        .O(\axi_rdata_reg[8]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_16 
       (.I0(\axi_rdata[8]_i_36_n_0 ),
        .I1(\axi_rdata[8]_i_37_n_0 ),
        .O(\axi_rdata_reg[8]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_17 
       (.I0(\axi_rdata[8]_i_38_n_0 ),
        .I1(\axi_rdata[8]_i_39_n_0 ),
        .O(\axi_rdata_reg[8]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_18 
       (.I0(\axi_rdata[8]_i_40_n_0 ),
        .I1(\axi_rdata[8]_i_41_n_0 ),
        .O(\axi_rdata_reg[8]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_19 
       (.I0(\axi_rdata[8]_i_42_n_0 ),
        .I1(\axi_rdata[8]_i_43_n_0 ),
        .O(\axi_rdata_reg[8]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_20 
       (.I0(\axi_rdata[8]_i_44_n_0 ),
        .I1(\axi_rdata[8]_i_45_n_0 ),
        .O(\axi_rdata_reg[8]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_21 
       (.I0(\axi_rdata[8]_i_46_n_0 ),
        .I1(\axi_rdata[8]_i_47_n_0 ),
        .O(\axi_rdata_reg[8]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_22 
       (.I0(\axi_rdata[8]_i_48_n_0 ),
        .I1(\axi_rdata[8]_i_49_n_0 ),
        .O(\axi_rdata_reg[8]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[8]_i_4 
       (.I0(\axi_rdata_reg[8]_i_11_n_0 ),
        .I1(\axi_rdata_reg[8]_i_12_n_0 ),
        .O(\axi_rdata_reg[8]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[8]_i_5 
       (.I0(\axi_rdata_reg[8]_i_13_n_0 ),
        .I1(\axi_rdata_reg[8]_i_14_n_0 ),
        .O(\axi_rdata_reg[8]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[8]_i_6 
       (.I0(\axi_rdata_reg[8]_i_15_n_0 ),
        .I1(\axi_rdata_reg[8]_i_16_n_0 ),
        .O(\axi_rdata_reg[8]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[8]_i_7 
       (.I0(\axi_rdata_reg[8]_i_17_n_0 ),
        .I1(\axi_rdata_reg[8]_i_18_n_0 ),
        .O(\axi_rdata_reg[8]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[8]_i_8 
       (.I0(\axi_rdata_reg[8]_i_19_n_0 ),
        .I1(\axi_rdata_reg[8]_i_20_n_0 ),
        .O(\axi_rdata_reg[8]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[8]_i_9 
       (.I0(\axi_rdata_reg[8]_i_21_n_0 ),
        .I1(\axi_rdata_reg[8]_i_22_n_0 ),
        .O(\axi_rdata_reg[8]_i_9_n_0 ),
        .S(Q[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(Q[5]));
  MUXF7 \axi_rdata_reg[9]_i_11 
       (.I0(\axi_rdata[9]_i_26_n_0 ),
        .I1(\axi_rdata[9]_i_27_n_0 ),
        .O(\axi_rdata_reg[9]_i_11_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_12 
       (.I0(\axi_rdata[9]_i_28_n_0 ),
        .I1(\axi_rdata[9]_i_29_n_0 ),
        .O(\axi_rdata_reg[9]_i_12_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_13 
       (.I0(\axi_rdata[9]_i_30_n_0 ),
        .I1(\axi_rdata[9]_i_31_n_0 ),
        .O(\axi_rdata_reg[9]_i_13_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_14 
       (.I0(\axi_rdata[9]_i_32_n_0 ),
        .I1(\axi_rdata[9]_i_33_n_0 ),
        .O(\axi_rdata_reg[9]_i_14_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_15 
       (.I0(\axi_rdata[9]_i_34_n_0 ),
        .I1(\axi_rdata[9]_i_35_n_0 ),
        .O(\axi_rdata_reg[9]_i_15_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_16 
       (.I0(\axi_rdata[9]_i_36_n_0 ),
        .I1(\axi_rdata[9]_i_37_n_0 ),
        .O(\axi_rdata_reg[9]_i_16_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_17 
       (.I0(\axi_rdata[9]_i_38_n_0 ),
        .I1(\axi_rdata[9]_i_39_n_0 ),
        .O(\axi_rdata_reg[9]_i_17_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_18 
       (.I0(\axi_rdata[9]_i_40_n_0 ),
        .I1(\axi_rdata[9]_i_41_n_0 ),
        .O(\axi_rdata_reg[9]_i_18_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_19 
       (.I0(\axi_rdata[9]_i_42_n_0 ),
        .I1(\axi_rdata[9]_i_43_n_0 ),
        .O(\axi_rdata_reg[9]_i_19_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_20 
       (.I0(\axi_rdata[9]_i_44_n_0 ),
        .I1(\axi_rdata[9]_i_45_n_0 ),
        .O(\axi_rdata_reg[9]_i_20_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_21 
       (.I0(\axi_rdata[9]_i_46_n_0 ),
        .I1(\axi_rdata[9]_i_47_n_0 ),
        .O(\axi_rdata_reg[9]_i_21_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_22 
       (.I0(\axi_rdata[9]_i_48_n_0 ),
        .I1(\axi_rdata[9]_i_49_n_0 ),
        .O(\axi_rdata_reg[9]_i_22_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[9]_i_4 
       (.I0(\axi_rdata_reg[9]_i_11_n_0 ),
        .I1(\axi_rdata_reg[9]_i_12_n_0 ),
        .O(\axi_rdata_reg[9]_i_4_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[9]_i_5 
       (.I0(\axi_rdata_reg[9]_i_13_n_0 ),
        .I1(\axi_rdata_reg[9]_i_14_n_0 ),
        .O(\axi_rdata_reg[9]_i_5_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[9]_i_6 
       (.I0(\axi_rdata_reg[9]_i_15_n_0 ),
        .I1(\axi_rdata_reg[9]_i_16_n_0 ),
        .O(\axi_rdata_reg[9]_i_6_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[9]_i_7 
       (.I0(\axi_rdata_reg[9]_i_17_n_0 ),
        .I1(\axi_rdata_reg[9]_i_18_n_0 ),
        .O(\axi_rdata_reg[9]_i_7_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[9]_i_8 
       (.I0(\axi_rdata_reg[9]_i_19_n_0 ),
        .I1(\axi_rdata_reg[9]_i_20_n_0 ),
        .O(\axi_rdata_reg[9]_i_8_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[9]_i_9 
       (.I0(\axi_rdata_reg[9]_i_21_n_0 ),
        .I1(\axi_rdata_reg[9]_i_22_n_0 ),
        .O(\axi_rdata_reg[9]_i_9_n_0 ),
        .S(Q[2]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg0[9]_i_2 
       (.I0(\axi_awaddr_reg[5]_2 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg0[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \slv_reg0[9]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\axi_awaddr_reg[5]_2 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS0_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS0_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS0_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS0_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS0_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS0_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS0_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS0_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS0_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[9]_i_2_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS0_pwm_val[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg100[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_2 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg100[9]_i_1_n_0 ));
  FDRE \slv_reg100_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS25_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS25_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS25_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS25_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS25_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS25_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS25_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS25_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS25_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg100_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg100[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS25_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg101_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg101_reg[0]_1 ),
        .Q(\slv_reg101_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg102[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS25_irq_mask[0]),
        .O(\slv_reg102[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg102[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS25_irq_mask[1]),
        .O(\slv_reg102[1]_i_1_n_0 ));
  FDRE \slv_reg102_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg102[0]_i_1_n_0 ),
        .Q(PHS25_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg102_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg102[1]_i_1_n_0 ),
        .Q(PHS25_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg103[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS25_irq0_clr),
        .O(\slv_reg103[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg103[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS25_irq1_clr),
        .O(\slv_reg103[1]_i_1_n_0 ));
  FDRE \slv_reg103_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg103[0]_i_1_n_0 ),
        .Q(PHS25_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg103_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg103[1]_i_1_n_0 ),
        .Q(PHS25_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg104[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_1 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg104[9]_i_1_n_0 ));
  FDRE \slv_reg104_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS26_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS26_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS26_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS26_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS26_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS26_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS26_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS26_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS26_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg104_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg104[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS26_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg105_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg105_reg[0]_1 ),
        .Q(\slv_reg105_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg106[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS26_irq_mask[0]),
        .O(\slv_reg106[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg106[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS26_irq_mask[1]),
        .O(\slv_reg106[1]_i_1_n_0 ));
  FDRE \slv_reg106_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg106[0]_i_1_n_0 ),
        .Q(PHS26_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg106_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg106[1]_i_1_n_0 ),
        .Q(PHS26_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg107[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS26_irq0_clr),
        .O(\slv_reg107[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg107[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS26_irq1_clr),
        .O(\slv_reg107[1]_i_1_n_0 ));
  FDRE \slv_reg107_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg107[0]_i_1_n_0 ),
        .Q(PHS26_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg107_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg107[1]_i_1_n_0 ),
        .Q(PHS26_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg108[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg108[9]_i_1_n_0 ));
  FDRE \slv_reg108_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS27_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS27_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS27_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS27_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS27_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS27_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS27_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS27_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS27_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg108_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg108[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS27_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg109_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg109_reg[0]_1 ),
        .Q(\slv_reg109_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg10[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS2_irq_mask[0]),
        .O(\slv_reg10[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg10[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS2_irq_mask[1]),
        .O(\slv_reg10[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \slv_reg10[1]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\slv_reg10[1]_i_2_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg10[0]_i_1_n_0 ),
        .Q(PHS2_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg10[1]_i_1_n_0 ),
        .Q(PHS2_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg110[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS27_irq_mask[0]),
        .O(\slv_reg110[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg110[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS27_irq_mask[1]),
        .O(\slv_reg110[1]_i_1_n_0 ));
  FDRE \slv_reg110_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg110[0]_i_1_n_0 ),
        .Q(PHS27_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg110_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg110[1]_i_1_n_0 ),
        .Q(PHS27_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg111[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS27_irq0_clr),
        .O(\slv_reg111[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg111[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS27_irq1_clr),
        .O(\slv_reg111[1]_i_1_n_0 ));
  FDRE \slv_reg111_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg111[0]_i_1_n_0 ),
        .Q(PHS27_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg111_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg111[1]_i_1_n_0 ),
        .Q(PHS27_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg112[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_3 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg112[9]_i_1_n_0 ));
  FDRE \slv_reg112_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS28_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS28_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS28_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS28_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS28_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS28_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS28_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS28_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS28_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg112_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg112[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS28_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg113_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg113_reg[0]_1 ),
        .Q(\slv_reg113_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg114[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS28_irq_mask[0]),
        .O(\slv_reg114[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg114[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS28_irq_mask[1]),
        .O(\slv_reg114[1]_i_1_n_0 ));
  FDRE \slv_reg114_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg114[0]_i_1_n_0 ),
        .Q(PHS28_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg114_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg114[1]_i_1_n_0 ),
        .Q(PHS28_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg115[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS28_irq0_clr),
        .O(\slv_reg115[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg115[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS28_irq1_clr),
        .O(\slv_reg115[1]_i_1_n_0 ));
  FDRE \slv_reg115_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg115[0]_i_1_n_0 ),
        .Q(PHS28_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg115_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg115[1]_i_1_n_0 ),
        .Q(PHS28_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg116[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_2 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg116[9]_i_1_n_0 ));
  FDRE \slv_reg116_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS29_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS29_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS29_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS29_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS29_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS29_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS29_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS29_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS29_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg116_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg116[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS29_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg117_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg117_reg[0]_1 ),
        .Q(\slv_reg117_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg118[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS29_irq_mask[0]),
        .O(\slv_reg118[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg118[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS29_irq_mask[1]),
        .O(\slv_reg118[1]_i_1_n_0 ));
  FDRE \slv_reg118_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg118[0]_i_1_n_0 ),
        .Q(PHS29_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg118_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg118[1]_i_1_n_0 ),
        .Q(PHS29_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg119[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS29_irq0_clr),
        .O(\slv_reg119[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg119[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS29_irq1_clr),
        .O(\slv_reg119[1]_i_1_n_0 ));
  FDRE \slv_reg119_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg119[0]_i_1_n_0 ),
        .Q(PHS29_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg119_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg119[1]_i_1_n_0 ),
        .Q(PHS29_irq1_clr),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg11[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS2_irq0_clr),
        .O(\slv_reg11[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg11[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS2_irq1_clr),
        .O(\slv_reg11[1]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg11[0]_i_1_n_0 ),
        .Q(PHS2_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg11[1]_i_1_n_0 ),
        .Q(PHS2_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg120[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_1 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg120[9]_i_1_n_0 ));
  FDRE \slv_reg120_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS30_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS30_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS30_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS30_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS30_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS30_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS30_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS30_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS30_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg120_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg120[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS30_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg121_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg121_reg[0]_1 ),
        .Q(\slv_reg121_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg122[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS30_irq_mask[0]),
        .O(\slv_reg122[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg122[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS30_irq_mask[1]),
        .O(\slv_reg122[1]_i_1_n_0 ));
  FDRE \slv_reg122_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg122[0]_i_1_n_0 ),
        .Q(PHS30_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg122_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg122[1]_i_1_n_0 ),
        .Q(PHS30_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg123[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS30_irq0_clr),
        .O(\slv_reg123[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg123[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS30_irq1_clr),
        .O(\slv_reg123[1]_i_1_n_0 ));
  FDRE \slv_reg123_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg123[0]_i_1_n_0 ),
        .Q(PHS30_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg123_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg123[1]_i_1_n_0 ),
        .Q(PHS30_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg124[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg124[9]_i_1_n_0 ));
  FDRE \slv_reg124_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS31_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS31_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS31_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS31_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS31_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS31_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS31_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS31_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS31_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg124_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg124[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS31_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg125_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg125_reg[0]_1 ),
        .Q(\slv_reg125_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg126[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS31_irq_mask[0]),
        .O(\slv_reg126[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg126[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS31_irq_mask[1]),
        .O(\slv_reg126[1]_i_1_n_0 ));
  FDRE \slv_reg126_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg126[0]_i_1_n_0 ),
        .Q(PHS31_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg126_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg126[1]_i_1_n_0 ),
        .Q(PHS31_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg127[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS31_irq0_clr),
        .O(\slv_reg127[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg127[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS31_irq1_clr),
        .O(\slv_reg127[1]_i_1_n_0 ));
  FDRE \slv_reg127_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg127[0]_i_1_n_0 ),
        .Q(PHS31_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg127_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg127[1]_i_1_n_0 ),
        .Q(PHS31_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg128[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_2 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg128[9]_i_1_n_0 ));
  FDRE \slv_reg128_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS32_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS32_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS32_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS32_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS32_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS32_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS32_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS32_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS32_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg128_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg128[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS32_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg129_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg129_reg[0]_1 ),
        .Q(\slv_reg129_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg12[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg12[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \slv_reg12[9]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\axi_awaddr_reg[5]_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS3_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS3_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS3_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS3_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS3_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS3_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS3_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS3_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS3_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS3_pwm_val[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg130[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS32_irq_mask[0]),
        .O(\slv_reg130[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg130[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS32_irq_mask[1]),
        .O(\slv_reg130[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg130[1]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[7]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\slv_reg130[1]_i_2_n_0 ));
  FDRE \slv_reg130_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg130[0]_i_1_n_0 ),
        .Q(PHS32_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg130_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg130[1]_i_1_n_0 ),
        .Q(PHS32_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg131[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS32_irq0_clr),
        .O(\slv_reg131[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg131[0]_i_2 
       (.I0(sel0[7]),
        .I1(sel0[0]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\axi_awaddr_reg[9]_1 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg131[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS32_irq1_clr),
        .O(\slv_reg131[1]_i_1_n_0 ));
  FDRE \slv_reg131_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg131[0]_i_1_n_0 ),
        .Q(PHS32_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg131_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg131[1]_i_1_n_0 ),
        .Q(PHS32_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg132[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_1 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg132[9]_i_1_n_0 ));
  FDRE \slv_reg132_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS33_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS33_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS33_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS33_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS33_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS33_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS33_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS33_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS33_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg132_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg132[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS33_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg133_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg133_reg[0]_1 ),
        .Q(\slv_reg133_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg134[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS33_irq_mask[0]),
        .O(\slv_reg134[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg134[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS33_irq_mask[1]),
        .O(\slv_reg134[1]_i_1_n_0 ));
  FDRE \slv_reg134_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg134[0]_i_1_n_0 ),
        .Q(PHS33_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg134_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg134[1]_i_1_n_0 ),
        .Q(PHS33_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg135[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS33_irq0_clr),
        .O(\slv_reg135[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg135[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS33_irq1_clr),
        .O(\slv_reg135[1]_i_1_n_0 ));
  FDRE \slv_reg135_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg135[0]_i_1_n_0 ),
        .Q(PHS33_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg135_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg135[1]_i_1_n_0 ),
        .Q(PHS33_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg136[9]_i_1 
       (.I0(\axi_awaddr_reg[4]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg136[9]_i_1_n_0 ));
  FDRE \slv_reg136_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS34_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS34_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS34_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS34_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS34_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS34_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS34_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS34_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS34_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg136_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg136[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS34_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg137_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg137_reg[0]_1 ),
        .Q(\slv_reg137_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg138[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS34_irq_mask[0]),
        .O(\slv_reg138[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg138[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS34_irq_mask[1]),
        .O(\slv_reg138[1]_i_1_n_0 ));
  FDRE \slv_reg138_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg138[0]_i_1_n_0 ),
        .Q(PHS34_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg138_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg138[1]_i_1_n_0 ),
        .Q(PHS34_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg139[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS34_irq0_clr),
        .O(\slv_reg139[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg139[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS34_irq1_clr),
        .O(\slv_reg139[1]_i_1_n_0 ));
  FDRE \slv_reg139_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg139[0]_i_1_n_0 ),
        .Q(PHS34_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg139_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg139[1]_i_1_n_0 ),
        .Q(PHS34_irq1_clr),
        .R(p_0_in));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg13_reg[0]_1 ),
        .Q(\slv_reg13_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg140[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg140[9]_i_1_n_0 ));
  FDRE \slv_reg140_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS35_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS35_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS35_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS35_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS35_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS35_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS35_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS35_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS35_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg140_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg140[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS35_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg141_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg141_reg[0]_1 ),
        .Q(\slv_reg141_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg142[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS35_irq_mask[0]),
        .O(\slv_reg142[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg142[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS35_irq_mask[1]),
        .O(\slv_reg142[1]_i_1_n_0 ));
  FDRE \slv_reg142_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg142[0]_i_1_n_0 ),
        .Q(PHS35_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg142_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg142[1]_i_1_n_0 ),
        .Q(PHS35_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg143[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS35_irq0_clr),
        .O(\slv_reg143[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg143[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS35_irq1_clr),
        .O(\slv_reg143[1]_i_1_n_0 ));
  FDRE \slv_reg143_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg143[0]_i_1_n_0 ),
        .Q(PHS35_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg143_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg143[1]_i_1_n_0 ),
        .Q(PHS35_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg144[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_2 ),
        .O(\slv_reg144[9]_i_1_n_0 ));
  FDRE \slv_reg144_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS36_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS36_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS36_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS36_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS36_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS36_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS36_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS36_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS36_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg144_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg144[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS36_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg145_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg145_reg[0]_1 ),
        .Q(\slv_reg145_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg146[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS36_irq_mask[0]),
        .O(\slv_reg146[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg146[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS36_irq_mask[1]),
        .O(\slv_reg146[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg146[1]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[7]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\slv_reg146[1]_i_2_n_0 ));
  FDRE \slv_reg146_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg146[0]_i_1_n_0 ),
        .Q(PHS36_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg146_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg146[1]_i_1_n_0 ),
        .Q(PHS36_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg147[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS36_irq0_clr),
        .O(\slv_reg147[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg147[0]_i_2 
       (.I0(sel0[7]),
        .I1(sel0[0]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\axi_awaddr_reg[9]_2 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg147[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS36_irq1_clr),
        .O(\slv_reg147[1]_i_1_n_0 ));
  FDRE \slv_reg147_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg147[0]_i_1_n_0 ),
        .Q(PHS36_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg147_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg147[1]_i_1_n_0 ),
        .Q(PHS36_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg148[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_1 ),
        .O(\slv_reg148[9]_i_1_n_0 ));
  FDRE \slv_reg148_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS37_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS37_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS37_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS37_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS37_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS37_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS37_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS37_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS37_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg148_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg148[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS37_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg149_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg149_reg[0]_1 ),
        .Q(\slv_reg149_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg14[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS3_irq_mask[0]),
        .O(\slv_reg14[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg14[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS3_irq_mask[1]),
        .O(\slv_reg14[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \slv_reg14[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\slv_reg14[1]_i_2_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg14[0]_i_1_n_0 ),
        .Q(PHS3_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg14[1]_i_1_n_0 ),
        .Q(PHS3_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg150[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS37_irq_mask[0]),
        .O(\slv_reg150[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg150[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS37_irq_mask[1]),
        .O(\slv_reg150[1]_i_1_n_0 ));
  FDRE \slv_reg150_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg150[0]_i_1_n_0 ),
        .Q(PHS37_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg150_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg150[1]_i_1_n_0 ),
        .Q(PHS37_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg151[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS37_irq0_clr),
        .O(\slv_reg151[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg151[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS37_irq1_clr),
        .O(\slv_reg151[1]_i_1_n_0 ));
  FDRE \slv_reg151_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg151[0]_i_1_n_0 ),
        .Q(PHS37_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg151_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg151[1]_i_1_n_0 ),
        .Q(PHS37_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg152[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .O(\slv_reg152[9]_i_1_n_0 ));
  FDRE \slv_reg152_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS38_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS38_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS38_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS38_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS38_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS38_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS38_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS38_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS38_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg152_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg152[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS38_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg153_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg153_reg[0]_1 ),
        .Q(\slv_reg153_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg154[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS38_irq_mask[0]),
        .O(\slv_reg154[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg154[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS38_irq_mask[1]),
        .O(\slv_reg154[1]_i_1_n_0 ));
  FDRE \slv_reg154_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg154[0]_i_1_n_0 ),
        .Q(PHS38_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg154_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg154[1]_i_1_n_0 ),
        .Q(PHS38_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg155[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS38_irq0_clr),
        .O(\slv_reg155[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg155[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS38_irq1_clr),
        .O(\slv_reg155[1]_i_1_n_0 ));
  FDRE \slv_reg155_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg155[0]_i_1_n_0 ),
        .Q(PHS38_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg155_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg155[1]_i_1_n_0 ),
        .Q(PHS38_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg156[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_0 ),
        .O(\slv_reg156[9]_i_1_n_0 ));
  FDRE \slv_reg156_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS39_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS39_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS39_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS39_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS39_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS39_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS39_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS39_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS39_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg156_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg156[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS39_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg157_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg157_reg[0]_1 ),
        .Q(\slv_reg157_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg158[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS39_irq_mask[0]),
        .O(\slv_reg158[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg158[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg146[1]_i_2_n_0 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS39_irq_mask[1]),
        .O(\slv_reg158[1]_i_1_n_0 ));
  FDRE \slv_reg158_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg158[0]_i_1_n_0 ),
        .Q(PHS39_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg158_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg158[1]_i_1_n_0 ),
        .Q(PHS39_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg159[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS39_irq0_clr),
        .O(\slv_reg159[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg159[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_2 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS39_irq1_clr),
        .O(\slv_reg159[1]_i_1_n_0 ));
  FDRE \slv_reg159_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg159[0]_i_1_n_0 ),
        .Q(PHS39_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg159_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg159[1]_i_1_n_0 ),
        .Q(PHS39_irq1_clr),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg15[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS3_irq0_clr),
        .O(\slv_reg15[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg15[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS3_irq1_clr),
        .O(\slv_reg15[1]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg15[0]_i_1_n_0 ),
        .Q(PHS3_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg15[1]_i_1_n_0 ),
        .Q(PHS3_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg160[9]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_2 ),
        .O(\slv_reg160[9]_i_1_n_0 ));
  FDRE \slv_reg160_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS40_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS40_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS40_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS40_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS40_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS40_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS40_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS40_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS40_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg160_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg160[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS40_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg161_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg161_reg[0]_1 ),
        .Q(\slv_reg161_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg162[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS40_irq_mask[0]),
        .O(\slv_reg162[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg162[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS40_irq_mask[1]),
        .O(\slv_reg162[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg162[1]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[7]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .O(\slv_reg162[1]_i_2_n_0 ));
  FDRE \slv_reg162_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg162[0]_i_1_n_0 ),
        .Q(PHS40_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg162_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg162[1]_i_1_n_0 ),
        .Q(PHS40_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg163[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS40_irq0_clr),
        .O(\slv_reg163[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg163[0]_i_2 
       (.I0(sel0[7]),
        .I1(sel0[0]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .O(\axi_awaddr_reg[9]_3 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg163[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS40_irq1_clr),
        .O(\slv_reg163[1]_i_1_n_0 ));
  FDRE \slv_reg163_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg163[0]_i_1_n_0 ),
        .Q(PHS40_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg163_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg163[1]_i_1_n_0 ),
        .Q(PHS40_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg164[9]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_1 ),
        .O(\slv_reg164[9]_i_1_n_0 ));
  FDRE \slv_reg164_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS41_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS41_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS41_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS41_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS41_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS41_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS41_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS41_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS41_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg164_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg164[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS41_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg165_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg165_reg[0]_1 ),
        .Q(\slv_reg165_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg166[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS41_irq_mask[0]),
        .O(\slv_reg166[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg166[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS41_irq_mask[1]),
        .O(\slv_reg166[1]_i_1_n_0 ));
  FDRE \slv_reg166_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg166[0]_i_1_n_0 ),
        .Q(PHS41_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg166_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg166[1]_i_1_n_0 ),
        .Q(PHS41_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg167[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS41_irq0_clr),
        .O(\slv_reg167[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg167[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS41_irq1_clr),
        .O(\slv_reg167[1]_i_1_n_0 ));
  FDRE \slv_reg167_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg167[0]_i_1_n_0 ),
        .Q(PHS41_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg167_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg167[1]_i_1_n_0 ),
        .Q(PHS41_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg168[9]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .O(\slv_reg168[9]_i_1_n_0 ));
  FDRE \slv_reg168_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS42_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS42_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS42_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS42_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS42_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS42_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS42_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS42_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS42_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg168_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg168[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS42_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg169_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg169_reg[0]_1 ),
        .Q(\slv_reg169_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg16[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_2 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg16[9]_i_1_n_0 ));
  FDRE \slv_reg16_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS4_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS4_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS4_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS4_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS4_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS4_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS4_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS4_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS4_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS4_pwm_val[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg170[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS42_irq_mask[0]),
        .O(\slv_reg170[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg170[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS42_irq_mask[1]),
        .O(\slv_reg170[1]_i_1_n_0 ));
  FDRE \slv_reg170_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg170[0]_i_1_n_0 ),
        .Q(PHS42_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg170_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg170[1]_i_1_n_0 ),
        .Q(PHS42_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg171[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS42_irq0_clr),
        .O(\slv_reg171[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg171[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS42_irq1_clr),
        .O(\slv_reg171[1]_i_1_n_0 ));
  FDRE \slv_reg171_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg171[0]_i_1_n_0 ),
        .Q(PHS42_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg171_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg171[1]_i_1_n_0 ),
        .Q(PHS42_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg172[9]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_0 ),
        .O(\slv_reg172[9]_i_1_n_0 ));
  FDRE \slv_reg172_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS43_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS43_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS43_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS43_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS43_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS43_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS43_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS43_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS43_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg172_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg172[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS43_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg173_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg173_reg[0]_1 ),
        .Q(\slv_reg173_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg174[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS43_irq_mask[0]),
        .O(\slv_reg174[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg174[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg162[1]_i_2_n_0 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS43_irq_mask[1]),
        .O(\slv_reg174[1]_i_1_n_0 ));
  FDRE \slv_reg174_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg174[0]_i_1_n_0 ),
        .Q(PHS43_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg174_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg174[1]_i_1_n_0 ),
        .Q(PHS43_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg175[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS43_irq0_clr),
        .O(\slv_reg175[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg175[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_3 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS43_irq1_clr),
        .O(\slv_reg175[1]_i_1_n_0 ));
  FDRE \slv_reg175_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg175[0]_i_1_n_0 ),
        .Q(PHS43_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg175_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg175[1]_i_1_n_0 ),
        .Q(PHS43_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg176[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_2 ),
        .O(\slv_reg176[9]_i_1_n_0 ));
  FDRE \slv_reg176_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS44_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS44_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS44_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS44_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS44_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS44_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS44_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS44_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS44_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg176_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg176[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS44_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg177_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg177_reg[0]_1 ),
        .Q(\slv_reg177_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg178[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS44_irq_mask[0]),
        .O(\slv_reg178[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg178[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS44_irq_mask[1]),
        .O(\slv_reg178[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg178[1]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[7]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\slv_reg178[1]_i_2_n_0 ));
  FDRE \slv_reg178_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg178[0]_i_1_n_0 ),
        .Q(PHS44_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg178_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg178[1]_i_1_n_0 ),
        .Q(PHS44_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg179[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS44_irq0_clr),
        .O(\slv_reg179[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg179[0]_i_2 
       (.I0(sel0[7]),
        .I1(sel0[0]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\axi_awaddr_reg[9]_4 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg179[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg2[1]_i_2_n_0 ),
        .I3(PHS44_irq1_clr),
        .O(\slv_reg179[1]_i_1_n_0 ));
  FDRE \slv_reg179_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg179[0]_i_1_n_0 ),
        .Q(PHS44_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg179_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg179[1]_i_1_n_0 ),
        .Q(PHS44_irq1_clr),
        .R(p_0_in));
  FDRE \slv_reg17_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg17_reg[0]_1 ),
        .Q(\slv_reg17_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg180[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_1 ),
        .O(\slv_reg180[9]_i_1_n_0 ));
  FDRE \slv_reg180_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS45_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS45_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS45_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS45_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS45_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS45_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS45_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS45_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS45_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg180_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg180[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS45_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg181_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg181_reg[0]_1 ),
        .Q(\slv_reg181_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg182[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS45_irq_mask[0]),
        .O(\slv_reg182[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg182[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS45_irq_mask[1]),
        .O(\slv_reg182[1]_i_1_n_0 ));
  FDRE \slv_reg182_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg182[0]_i_1_n_0 ),
        .Q(PHS45_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg182_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg182[1]_i_1_n_0 ),
        .Q(PHS45_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg183[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS45_irq0_clr),
        .O(\slv_reg183[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg183[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg6[1]_i_2_n_0 ),
        .I3(PHS45_irq1_clr),
        .O(\slv_reg183[1]_i_1_n_0 ));
  FDRE \slv_reg183_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg183[0]_i_1_n_0 ),
        .Q(PHS45_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg183_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg183[1]_i_1_n_0 ),
        .Q(PHS45_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg184[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[4]_0 ),
        .O(\slv_reg184[9]_i_1_n_0 ));
  FDRE \slv_reg184_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS46_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS46_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS46_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS46_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS46_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS46_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS46_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS46_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS46_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg184_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg184[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS46_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg185_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg185_reg[0]_1 ),
        .Q(\slv_reg185_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg186[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS46_irq_mask[0]),
        .O(\slv_reg186[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg186[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS46_irq_mask[1]),
        .O(\slv_reg186[1]_i_1_n_0 ));
  FDRE \slv_reg186_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg186[0]_i_1_n_0 ),
        .Q(PHS46_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg186_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg186[1]_i_1_n_0 ),
        .Q(PHS46_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg187[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS46_irq0_clr),
        .O(\slv_reg187[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg187[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg10[1]_i_2_n_0 ),
        .I3(PHS46_irq1_clr),
        .O(\slv_reg187[1]_i_1_n_0 ));
  FDRE \slv_reg187_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg187[0]_i_1_n_0 ),
        .Q(PHS46_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg187_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg187[1]_i_1_n_0 ),
        .Q(PHS46_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg188[9]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .I4(\axi_awaddr_reg[5]_0 ),
        .O(\slv_reg188[9]_i_1_n_0 ));
  FDRE \slv_reg188_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS47_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS47_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS47_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS47_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS47_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS47_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS47_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS47_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS47_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg188_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg188[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS47_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg189_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg189_reg[0]_1 ),
        .Q(\slv_reg189_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg18[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS4_irq_mask[0]),
        .O(\slv_reg18[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg18[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS4_irq_mask[1]),
        .O(\slv_reg18[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg18[1]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .O(\slv_reg18[1]_i_2_n_0 ));
  FDRE \slv_reg18_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg18[0]_i_1_n_0 ),
        .Q(PHS4_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg18[1]_i_1_n_0 ),
        .Q(PHS4_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg190[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS47_irq_mask[0]),
        .O(\slv_reg190[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg190[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg178[1]_i_2_n_0 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS47_irq_mask[1]),
        .O(\slv_reg190[1]_i_1_n_0 ));
  FDRE \slv_reg190_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg190[0]_i_1_n_0 ),
        .Q(PHS47_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg190_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg190[1]_i_1_n_0 ),
        .Q(PHS47_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg191[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS47_irq0_clr),
        .O(\slv_reg191[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg191[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\axi_awaddr_reg[9]_4 ),
        .I2(\slv_reg14[1]_i_2_n_0 ),
        .I3(PHS47_irq1_clr),
        .O(\slv_reg191[1]_i_1_n_0 ));
  FDRE \slv_reg191_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg191[0]_i_1_n_0 ),
        .Q(PHS47_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg191_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg191[1]_i_1_n_0 ),
        .Q(PHS47_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg192[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_3 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg192[9]_i_1_n_0 ));
  FDRE \slv_reg192_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS48_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS48_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS48_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS48_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS48_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS48_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS48_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS48_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS48_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg192_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg192[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS48_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg193_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg193_reg[0]_1 ),
        .Q(\slv_reg193_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg194[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS48_irq_mask[0]),
        .O(\slv_reg194[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg194[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS48_irq_mask[1]),
        .O(\slv_reg194[1]_i_1_n_0 ));
  FDRE \slv_reg194_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg194[0]_i_1_n_0 ),
        .Q(PHS48_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg194_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg194[1]_i_1_n_0 ),
        .Q(PHS48_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg195[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS48_irq0_clr),
        .O(\slv_reg195[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg195[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS48_irq1_clr),
        .O(\slv_reg195[1]_i_1_n_0 ));
  FDRE \slv_reg195_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg195[0]_i_1_n_0 ),
        .Q(PHS48_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg195_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg195[1]_i_1_n_0 ),
        .Q(PHS48_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg196[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_2 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg196[9]_i_1_n_0 ));
  FDRE \slv_reg196_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS49_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS49_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS49_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS49_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS49_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS49_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS49_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS49_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS49_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg196_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg196[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS49_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg197_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg197_reg[0]_1 ),
        .Q(\slv_reg197_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg198[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS49_irq_mask[0]),
        .O(\slv_reg198[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg198[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg130[1]_i_2_n_0 ),
        .I3(PHS49_irq_mask[1]),
        .O(\slv_reg198[1]_i_1_n_0 ));
  FDRE \slv_reg198_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg198[0]_i_1_n_0 ),
        .Q(PHS49_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg198_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg198[1]_i_1_n_0 ),
        .Q(PHS49_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg199[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS49_irq0_clr),
        .O(\slv_reg199[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg199[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_1 ),
        .I3(PHS49_irq1_clr),
        .O(\slv_reg199[1]_i_1_n_0 ));
  FDRE \slv_reg199_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg199[0]_i_1_n_0 ),
        .Q(PHS49_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg199_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg199[1]_i_1_n_0 ),
        .Q(PHS49_irq1_clr),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg19[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS4_irq0_clr),
        .O(\slv_reg19[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg19[0]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .O(\axi_awaddr_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg19[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS4_irq1_clr),
        .O(\slv_reg19[1]_i_1_n_0 ));
  FDRE \slv_reg19_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg19[0]_i_1_n_0 ),
        .Q(PHS4_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg19_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg19[1]_i_1_n_0 ),
        .Q(PHS4_irq1_clr),
        .R(p_0_in));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1_reg[0]_1 ),
        .Q(\slv_reg1_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg200[24]_i_1 
       (.I0(\axi_awaddr_reg[3]_1 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg200[24]_i_1_n_0 ));
  FDRE \slv_reg200_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg200_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg200_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg200_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg200_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg200_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg200_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg200_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg200_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg200_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg200_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg200_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg200_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg200_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg200_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg200_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg200_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg200_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg200_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg200_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg200_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg200_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg200_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg200_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg200_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg200_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg200[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg200_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg201[24]_i_1 
       (.I0(\axi_awaddr_reg[3]_1 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg201[24]_i_1_n_0 ));
  FDRE \slv_reg201_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg201_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg201_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg201_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg201_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg201_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg201_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg201_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg201_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg201_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg201_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg201_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg201_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg201_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg201_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg201_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg201_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg201_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg201_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg201_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg201_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg201_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg201_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg201_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg201_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg201_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg201[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg201_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg202[24]_i_1 
       (.I0(\slv_reg74[1]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg202[24]_i_1_n_0 ));
  FDRE \slv_reg202_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg202_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg202_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg202_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg202_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg202_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg202_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg202_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg202_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg202_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg202_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg202_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg202_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg202_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg202_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg202_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg202_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg202_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg202_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg202_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg202_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg202_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg202_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg202_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg202_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg202_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg202[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg202_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg203[24]_i_1 
       (.I0(\slv_reg74[1]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg203[24]_i_1_n_0 ));
  FDRE \slv_reg203_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg203_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg203_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg203_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg203_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg203_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg203_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg203_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg203_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg203_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg203_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg203_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg203_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg203_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg203_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg203_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg203_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg203_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg203_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg203_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg203_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg203_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg203_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg203_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg203_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg203_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg203[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg203_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg204[24]_i_1 
       (.I0(\axi_awaddr_reg[3]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg204[24]_i_1_n_0 ));
  FDRE \slv_reg204_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg204_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg204_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg204_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg204_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg204_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg204_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg204_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg204_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg204_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg204_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg204_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg204_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg204_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg204_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg204_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg204_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg204_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg204_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg204_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg204_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg204_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg204_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg204_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg204_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg204_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg204[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg204_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg205[24]_i_1 
       (.I0(\axi_awaddr_reg[3]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg205[24]_i_1_n_0 ));
  FDRE \slv_reg205_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg205_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg205_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg205_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg205_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg205_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg205_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg205_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg205_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg205_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg205_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg205_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg205_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg205_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg205_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg205_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg205_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg205_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg205_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg205_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg205_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg205_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg205_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg205_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg205_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg205_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg205[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg205_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg206[24]_i_1 
       (.I0(\slv_reg78[1]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .I4(sel0[0]),
        .O(\slv_reg206[24]_i_1_n_0 ));
  FDRE \slv_reg206_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg206_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg206_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg206_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg206_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg206_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg206_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg206_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg206_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg206_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg206_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg206_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg206_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg206_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg206_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg206_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg206_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg206_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg206_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg206_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg206_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg206_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg206_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg206_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg206_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg206_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg206[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg206_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg207[24]_i_1 
       (.I0(\slv_reg78[1]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg207[24]_i_1_n_0 ));
  FDRE \slv_reg207_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg207_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg207_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg207_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg207_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg207_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg207_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg207_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg207_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg207_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg207_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg207_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg207_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg207_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg207_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg207_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg207_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg207_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg207_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg207_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg207_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg207_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg207_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg207_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg207_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \slv_reg207_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg207[24]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg207_reg_n_0_[9] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg20[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_1 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg20[9]_i_1_n_0 ));
  FDRE \slv_reg20_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS5_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS5_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS5_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS5_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS5_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS5_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS5_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS5_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS5_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS5_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg21_reg[0]_1 ),
        .Q(\slv_reg21_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg22[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS5_irq_mask[0]),
        .O(\slv_reg22[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg22[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS5_irq_mask[1]),
        .O(\slv_reg22[1]_i_1_n_0 ));
  FDRE \slv_reg22_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg22[0]_i_1_n_0 ),
        .Q(PHS5_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg22_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg22[1]_i_1_n_0 ),
        .Q(PHS5_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg23[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS5_irq0_clr),
        .O(\slv_reg23[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg23[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS5_irq1_clr),
        .O(\slv_reg23[1]_i_1_n_0 ));
  FDRE \slv_reg23_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg23[0]_i_1_n_0 ),
        .Q(PHS5_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg23_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg23[1]_i_1_n_0 ),
        .Q(PHS5_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg24[9]_i_1 
       (.I0(\axi_awaddr_reg[4]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg24[9]_i_1_n_0 ));
  FDRE \slv_reg24_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS6_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS6_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS6_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS6_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS6_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS6_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS6_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS6_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS6_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS6_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg25_reg[0]_1 ),
        .Q(\slv_reg25_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg26[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS6_irq_mask[0]),
        .O(\slv_reg26[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg26[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS6_irq_mask[1]),
        .O(\slv_reg26[1]_i_1_n_0 ));
  FDRE \slv_reg26_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg26[0]_i_1_n_0 ),
        .Q(PHS6_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg26_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg26[1]_i_1_n_0 ),
        .Q(PHS6_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg27[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS6_irq0_clr),
        .O(\slv_reg27[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg27[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS6_irq1_clr),
        .O(\slv_reg27[1]_i_1_n_0 ));
  FDRE \slv_reg27_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg27[0]_i_1_n_0 ),
        .Q(PHS6_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg27_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg27[1]_i_1_n_0 ),
        .Q(PHS6_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg28[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg28[9]_i_1_n_0 ));
  FDRE \slv_reg28_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS7_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS7_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS7_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS7_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS7_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS7_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS7_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS7_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS7_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS7_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg29_reg[0]_1 ),
        .Q(\slv_reg29_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg2[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS0_irq_mask[0]),
        .O(\slv_reg2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg2[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS0_irq_mask[1]),
        .O(\slv_reg2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg2[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\slv_reg2[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \slv_reg2[1]_i_3 
       (.I0(sel0[7]),
        .I1(sel0[0]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\slv_reg2[1]_i_3_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(PHS0_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[1]_i_1_n_0 ),
        .Q(PHS0_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg30[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS7_irq_mask[0]),
        .O(\slv_reg30[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg30[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS7_irq_mask[1]),
        .O(\slv_reg30[1]_i_1_n_0 ));
  FDRE \slv_reg30_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg30[0]_i_1_n_0 ),
        .Q(PHS7_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg30_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg30[1]_i_1_n_0 ),
        .Q(PHS7_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg31[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS7_irq0_clr),
        .O(\slv_reg31[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg31[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS7_irq1_clr),
        .O(\slv_reg31[1]_i_1_n_0 ));
  FDRE \slv_reg31_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg31[0]_i_1_n_0 ),
        .Q(PHS7_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg31_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg31[1]_i_1_n_0 ),
        .Q(PHS7_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg32[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_2 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg32[9]_i_1_n_0 ));
  FDRE \slv_reg32_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS8_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS8_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS8_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS8_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS8_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS8_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS8_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS8_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS8_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg32[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS8_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg33_reg[0]_1 ),
        .Q(\slv_reg33_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg34[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS8_irq_mask[0]),
        .O(\slv_reg34[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg34[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS8_irq_mask[1]),
        .O(\slv_reg34[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg34[1]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .O(\slv_reg34[1]_i_2_n_0 ));
  FDRE \slv_reg34_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg34[0]_i_1_n_0 ),
        .Q(PHS8_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg34_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg34[1]_i_1_n_0 ),
        .Q(PHS8_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg35[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS8_irq0_clr),
        .O(\slv_reg35[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \slv_reg35[0]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .O(\axi_awaddr_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg35[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS8_irq1_clr),
        .O(\slv_reg35[1]_i_1_n_0 ));
  FDRE \slv_reg35_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg35[0]_i_1_n_0 ),
        .Q(PHS8_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg35_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg35[1]_i_1_n_0 ),
        .Q(PHS8_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg36[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_1 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg36[9]_i_1_n_0 ));
  FDRE \slv_reg36_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS9_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS9_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS9_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS9_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS9_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS9_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS9_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS9_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS9_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg36[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS9_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg37_reg[0]_1 ),
        .Q(\slv_reg37_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg38[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS9_irq_mask[0]),
        .O(\slv_reg38[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg38[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS9_irq_mask[1]),
        .O(\slv_reg38[1]_i_1_n_0 ));
  FDRE \slv_reg38_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg38[0]_i_1_n_0 ),
        .Q(PHS9_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg38_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg38[1]_i_1_n_0 ),
        .Q(PHS9_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg39[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS9_irq0_clr),
        .O(\slv_reg39[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg39[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS9_irq1_clr),
        .O(\slv_reg39[1]_i_1_n_0 ));
  FDRE \slv_reg39_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg39[0]_i_1_n_0 ),
        .Q(PHS9_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg39_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg39[1]_i_1_n_0 ),
        .Q(PHS9_irq1_clr),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg3[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS0_irq0_clr),
        .O(\slv_reg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \slv_reg3[0]_i_2 
       (.I0(sel0[7]),
        .I1(sel0[0]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\axi_awaddr_reg[9]_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg3[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS0_irq1_clr),
        .O(\slv_reg3[1]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(PHS0_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[1]_i_1_n_0 ),
        .Q(PHS0_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg40[9]_i_1 
       (.I0(\axi_awaddr_reg[4]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg40[9]_i_1_n_0 ));
  FDRE \slv_reg40_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS10_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS10_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS10_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS10_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS10_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS10_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS10_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS10_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS10_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg40_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg40[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS10_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg41_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg41_reg[0]_1 ),
        .Q(\slv_reg41_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg42[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS10_irq_mask[0]),
        .O(\slv_reg42[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg42[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS10_irq_mask[1]),
        .O(\slv_reg42[1]_i_1_n_0 ));
  FDRE \slv_reg42_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg42[0]_i_1_n_0 ),
        .Q(PHS10_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg42_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg42[1]_i_1_n_0 ),
        .Q(PHS10_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg43[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS10_irq0_clr),
        .O(\slv_reg43[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg43[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS10_irq1_clr),
        .O(\slv_reg43[1]_i_1_n_0 ));
  FDRE \slv_reg43_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg43[0]_i_1_n_0 ),
        .Q(PHS10_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg43_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg43[1]_i_1_n_0 ),
        .Q(PHS10_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg44[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg44[9]_i_1_n_0 ));
  FDRE \slv_reg44_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS11_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS11_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS11_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS11_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS11_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS11_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS11_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS11_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS11_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg44_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg44[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS11_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg45_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg45_reg[0]_1 ),
        .Q(\slv_reg45_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg46[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS11_irq_mask[0]),
        .O(\slv_reg46[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg46[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS11_irq_mask[1]),
        .O(\slv_reg46[1]_i_1_n_0 ));
  FDRE \slv_reg46_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg46[0]_i_1_n_0 ),
        .Q(PHS11_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg46_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg46[1]_i_1_n_0 ),
        .Q(PHS11_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg47[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS11_irq0_clr),
        .O(\slv_reg47[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg47[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS11_irq1_clr),
        .O(\slv_reg47[1]_i_1_n_0 ));
  FDRE \slv_reg47_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg47[0]_i_1_n_0 ),
        .Q(PHS11_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg47_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg47[1]_i_1_n_0 ),
        .Q(PHS11_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg48[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_2 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg48[9]_i_1_n_0 ));
  FDRE \slv_reg48_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS12_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS12_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS12_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS12_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS12_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS12_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS12_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS12_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS12_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg48_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg48[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS12_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg49_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg49_reg[0]_1 ),
        .Q(\slv_reg49_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg4[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_1 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg4[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \slv_reg4[9]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\axi_awaddr_reg[5]_1 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS1_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS1_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS1_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS1_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS1_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS1_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS1_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS1_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS1_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS1_pwm_val[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg50[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS12_irq_mask[0]),
        .O(\slv_reg50[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg50[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS12_irq_mask[1]),
        .O(\slv_reg50[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg50[1]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .O(\slv_reg50[1]_i_2_n_0 ));
  FDRE \slv_reg50_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg50[0]_i_1_n_0 ),
        .Q(PHS12_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg50_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg50[1]_i_1_n_0 ),
        .Q(PHS12_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg51[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS12_irq0_clr),
        .O(\slv_reg51[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \slv_reg51[0]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[0]),
        .O(\axi_awaddr_reg[7]_1 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg51[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg2[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS12_irq1_clr),
        .O(\slv_reg51[1]_i_1_n_0 ));
  FDRE \slv_reg51_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg51[0]_i_1_n_0 ),
        .Q(PHS12_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg51_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg51[1]_i_1_n_0 ),
        .Q(PHS12_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg52[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_1 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg52[9]_i_1_n_0 ));
  FDRE \slv_reg52_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS13_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS13_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS13_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS13_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS13_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS13_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS13_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS13_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS13_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg52_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg52[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS13_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg53_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg53_reg[0]_1 ),
        .Q(\slv_reg53_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg54[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS13_irq_mask[0]),
        .O(\slv_reg54[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg54[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS13_irq_mask[1]),
        .O(\slv_reg54[1]_i_1_n_0 ));
  FDRE \slv_reg54_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg54[0]_i_1_n_0 ),
        .Q(PHS13_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg54_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg54[1]_i_1_n_0 ),
        .Q(PHS13_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg55[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS13_irq0_clr),
        .O(\slv_reg55[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg55[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS13_irq1_clr),
        .O(\slv_reg55[1]_i_1_n_0 ));
  FDRE \slv_reg55_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg55[0]_i_1_n_0 ),
        .Q(PHS13_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg55_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg55[1]_i_1_n_0 ),
        .Q(PHS13_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg56[9]_i_1 
       (.I0(\axi_awaddr_reg[4]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg56[9]_i_1_n_0 ));
  FDRE \slv_reg56_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS14_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS14_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS14_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS14_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS14_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS14_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS14_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS14_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS14_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg56_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg56[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS14_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg57_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg57_reg[0]_1 ),
        .Q(\slv_reg57_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg58[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS14_irq_mask[0]),
        .O(\slv_reg58[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg58[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS14_irq_mask[1]),
        .O(\slv_reg58[1]_i_1_n_0 ));
  FDRE \slv_reg58_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg58[0]_i_1_n_0 ),
        .Q(PHS14_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg58_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg58[1]_i_1_n_0 ),
        .Q(PHS14_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg59[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS14_irq0_clr),
        .O(\slv_reg59[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg59[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg10[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS14_irq1_clr),
        .O(\slv_reg59[1]_i_1_n_0 ));
  FDRE \slv_reg59_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg59[0]_i_1_n_0 ),
        .Q(PHS14_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg59_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg59[1]_i_1_n_0 ),
        .Q(PHS14_irq1_clr),
        .R(p_0_in));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5_reg[0]_1 ),
        .Q(\slv_reg5_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg60[9]_i_1 
       (.I0(\axi_awaddr_reg[5]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg60[9]_i_1_n_0 ));
  FDRE \slv_reg60_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS15_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS15_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS15_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS15_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS15_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS15_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS15_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS15_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS15_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg60_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg60[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS15_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg61_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg61_reg[0]_1 ),
        .Q(\slv_reg61_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg62[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS15_irq_mask[0]),
        .O(\slv_reg62[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg62[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\slv_reg50[1]_i_2_n_0 ),
        .I3(PHS15_irq_mask[1]),
        .O(\slv_reg62[1]_i_1_n_0 ));
  FDRE \slv_reg62_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg62[0]_i_1_n_0 ),
        .Q(PHS15_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg62_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg62[1]_i_1_n_0 ),
        .Q(PHS15_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg63[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS15_irq0_clr),
        .O(\slv_reg63[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg63[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg14[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_1 ),
        .I3(PHS15_irq1_clr),
        .O(\slv_reg63[1]_i_1_n_0 ));
  FDRE \slv_reg63_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg63[0]_i_1_n_0 ),
        .Q(PHS15_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg63_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg63[1]_i_1_n_0 ),
        .Q(PHS15_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg64[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_3 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg64[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \slv_reg64[9]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(\axi_awaddr_reg[3]_3 ));
  FDRE \slv_reg64_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS16_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS16_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS16_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS16_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS16_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS16_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS16_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS16_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS16_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg64_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg64[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS16_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg65_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg65_reg[0]_1 ),
        .Q(\slv_reg65_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg66[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS16_irq_mask[0]),
        .O(\slv_reg66[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg66[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS16_irq_mask[1]),
        .O(\slv_reg66[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \slv_reg66[1]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(\slv_reg66[1]_i_2_n_0 ));
  FDRE \slv_reg66_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg66[0]_i_1_n_0 ),
        .Q(PHS16_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg66_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg66[1]_i_1_n_0 ),
        .Q(PHS16_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg67[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS16_irq0_clr),
        .O(\slv_reg67[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg67[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS16_irq1_clr),
        .O(\slv_reg67[1]_i_1_n_0 ));
  FDRE \slv_reg67_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg67[0]_i_1_n_0 ),
        .Q(PHS16_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg67_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg67[1]_i_1_n_0 ),
        .Q(PHS16_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg68[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_2 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg68[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg68[9]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(\axi_awaddr_reg[3]_2 ));
  FDRE \slv_reg68_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS17_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS17_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS17_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS17_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS17_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS17_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS17_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS17_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS17_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg68_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg68[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS17_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg69_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg69_reg[0]_1 ),
        .Q(\slv_reg69_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg6[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS1_irq_mask[0]),
        .O(\slv_reg6[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg6[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS1_irq_mask[1]),
        .O(\slv_reg6[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \slv_reg6[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\slv_reg6[1]_i_2_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg6[0]_i_1_n_0 ),
        .Q(PHS1_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg6[1]_i_1_n_0 ),
        .Q(PHS1_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg70[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS17_irq_mask[0]),
        .O(\slv_reg70[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg70[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS17_irq_mask[1]),
        .O(\slv_reg70[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg70[1]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(\slv_reg70[1]_i_2_n_0 ));
  FDRE \slv_reg70_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg70[0]_i_1_n_0 ),
        .Q(PHS17_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg70_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg70[1]_i_1_n_0 ),
        .Q(PHS17_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg71[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS17_irq0_clr),
        .O(\slv_reg71[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg71[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS17_irq1_clr),
        .O(\slv_reg71[1]_i_1_n_0 ));
  FDRE \slv_reg71_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg71[0]_i_1_n_0 ),
        .Q(PHS17_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg71_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg71[1]_i_1_n_0 ),
        .Q(PHS17_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg72[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_1 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg72[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg72[9]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(\axi_awaddr_reg[3]_1 ));
  FDRE \slv_reg72_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS18_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS18_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS18_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS18_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS18_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS18_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS18_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS18_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS18_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg72_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg72[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS18_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg73_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg73_reg[0]_1 ),
        .Q(\slv_reg73_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg74[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS18_irq_mask[0]),
        .O(\slv_reg74[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg74[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS18_irq_mask[1]),
        .O(\slv_reg74[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg74[1]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .O(\slv_reg74[1]_i_2_n_0 ));
  FDRE \slv_reg74_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg74[0]_i_1_n_0 ),
        .Q(PHS18_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg74_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg74[1]_i_1_n_0 ),
        .Q(PHS18_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg75[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS18_irq0_clr),
        .O(\slv_reg75[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg75[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS18_irq1_clr),
        .O(\slv_reg75[1]_i_1_n_0 ));
  FDRE \slv_reg75_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg75[0]_i_1_n_0 ),
        .Q(PHS18_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg75_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg75[1]_i_1_n_0 ),
        .Q(PHS18_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg76[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg76[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \slv_reg76[9]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(\axi_awaddr_reg[3]_0 ));
  FDRE \slv_reg76_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS19_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS19_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS19_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS19_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS19_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS19_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS19_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS19_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS19_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg76_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg76[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS19_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg77_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg77_reg[0]_1 ),
        .Q(\slv_reg77_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg78[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS19_irq_mask[0]),
        .O(\slv_reg78[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg78[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg2[1]_i_3_n_0 ),
        .I3(PHS19_irq_mask[1]),
        .O(\slv_reg78[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg78[1]_i_2 
       (.I0(sel0[1]),
        .I1(slv_reg_wren),
        .I2(sel0[6]),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(\slv_reg78[1]_i_2_n_0 ));
  FDRE \slv_reg78_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg78[0]_i_1_n_0 ),
        .Q(PHS19_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg78_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg78[1]_i_1_n_0 ),
        .Q(PHS19_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg79[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS19_irq0_clr),
        .O(\slv_reg79[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg79[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS19_irq1_clr),
        .O(\slv_reg79[1]_i_1_n_0 ));
  FDRE \slv_reg79_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg79[0]_i_1_n_0 ),
        .Q(PHS19_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg79_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg79[1]_i_1_n_0 ),
        .Q(PHS19_irq1_clr),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg7[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS1_irq0_clr),
        .O(\slv_reg7[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg7[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg6[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[9]_0 ),
        .I3(PHS1_irq1_clr),
        .O(\slv_reg7[1]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg7[0]_i_1_n_0 ),
        .Q(PHS1_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg7[1]_i_1_n_0 ),
        .Q(PHS1_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg80[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_3 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg80[9]_i_1_n_0 ));
  FDRE \slv_reg80_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS20_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS20_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS20_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS20_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS20_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS20_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS20_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS20_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS20_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg80_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg80[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS20_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg81_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg81_reg[0]_1 ),
        .Q(\slv_reg81_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg82[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS20_irq_mask[0]),
        .O(\slv_reg82[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg82[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS20_irq_mask[1]),
        .O(\slv_reg82[1]_i_1_n_0 ));
  FDRE \slv_reg82_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg82[0]_i_1_n_0 ),
        .Q(PHS20_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg82_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg82[1]_i_1_n_0 ),
        .Q(PHS20_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg83[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS20_irq0_clr),
        .O(\slv_reg83[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg83[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS20_irq1_clr),
        .O(\slv_reg83[1]_i_1_n_0 ));
  FDRE \slv_reg83_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg83[0]_i_1_n_0 ),
        .Q(PHS20_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg83_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg83[1]_i_1_n_0 ),
        .Q(PHS20_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg84[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_2 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg84[9]_i_1_n_0 ));
  FDRE \slv_reg84_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS21_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS21_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS21_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS21_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS21_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS21_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS21_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS21_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS21_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg84_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg84[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS21_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg85_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg85_reg[0]_1 ),
        .Q(\slv_reg85_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg86[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS21_irq_mask[0]),
        .O(\slv_reg86[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg86[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS21_irq_mask[1]),
        .O(\slv_reg86[1]_i_1_n_0 ));
  FDRE \slv_reg86_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg86[0]_i_1_n_0 ),
        .Q(PHS21_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg86_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg86[1]_i_1_n_0 ),
        .Q(PHS21_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg87[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS21_irq0_clr),
        .O(\slv_reg87[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg87[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg70[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS21_irq1_clr),
        .O(\slv_reg87[1]_i_1_n_0 ));
  FDRE \slv_reg87_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg87[0]_i_1_n_0 ),
        .Q(PHS21_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg87_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg87[1]_i_1_n_0 ),
        .Q(PHS21_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg88[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_1 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg88[9]_i_1_n_0 ));
  FDRE \slv_reg88_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS22_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS22_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS22_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS22_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS22_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS22_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS22_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS22_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS22_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg88_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg88[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS22_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg89_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg89_reg[0]_1 ),
        .Q(\slv_reg89_reg[0]_0 ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    \slv_reg8[9]_i_1 
       (.I0(\axi_awaddr_reg[4]_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[0]),
        .I4(sel0[7]),
        .O(\slv_reg8[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \slv_reg8[9]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(slv_reg_wren),
        .I4(sel0[6]),
        .O(\axi_awaddr_reg[4]_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS2_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS2_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS2_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS2_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS2_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS2_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS2_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS2_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS2_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS2_pwm_val[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg90[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS22_irq_mask[0]),
        .O(\slv_reg90[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg90[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS22_irq_mask[1]),
        .O(\slv_reg90[1]_i_1_n_0 ));
  FDRE \slv_reg90_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg90[0]_i_1_n_0 ),
        .Q(PHS22_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg90_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg90[1]_i_1_n_0 ),
        .Q(PHS22_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg91[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS22_irq0_clr),
        .O(\slv_reg91[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg91[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg74[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS22_irq1_clr),
        .O(\slv_reg91[1]_i_1_n_0 ));
  FDRE \slv_reg91_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg91[0]_i_1_n_0 ),
        .Q(PHS22_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg91_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg91[1]_i_1_n_0 ),
        .Q(PHS22_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg92[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_0 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[4]),
        .I4(sel0[5]),
        .O(\slv_reg92[9]_i_1_n_0 ));
  FDRE \slv_reg92_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS23_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS23_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS23_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS23_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS23_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS23_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS23_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS23_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS23_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg92_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg92[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS23_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg93_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg93_reg[0]_1 ),
        .Q(\slv_reg93_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg94[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS23_irq_mask[0]),
        .O(\slv_reg94[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg94[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\slv_reg18[1]_i_2_n_0 ),
        .I3(PHS23_irq_mask[1]),
        .O(\slv_reg94[1]_i_1_n_0 ));
  FDRE \slv_reg94_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg94[0]_i_1_n_0 ),
        .Q(PHS23_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg94_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg94[1]_i_1_n_0 ),
        .Q(PHS23_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg95[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS23_irq0_clr),
        .O(\slv_reg95[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg95[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg78[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[7]_0 ),
        .I3(PHS23_irq1_clr),
        .O(\slv_reg95[1]_i_1_n_0 ));
  FDRE \slv_reg95_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg95[0]_i_1_n_0 ),
        .Q(PHS23_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg95_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg95[1]_i_1_n_0 ),
        .Q(PHS23_irq1_clr),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000200)) 
    \slv_reg96[9]_i_1 
       (.I0(\axi_awaddr_reg[3]_3 ),
        .I1(sel0[0]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg96[9]_i_1_n_0 ));
  FDRE \slv_reg96_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(PHS24_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(PHS24_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(PHS24_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(PHS24_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(PHS24_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(PHS24_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(PHS24_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(PHS24_pwm_val[7]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(PHS24_pwm_val[8]),
        .R(p_0_in));
  FDRE \slv_reg96_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg96[9]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(PHS24_pwm_val[9]),
        .R(p_0_in));
  FDRE \slv_reg97_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg97_reg[0]_1 ),
        .Q(\slv_reg97_reg[0]_0 ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg98[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS24_irq_mask[0]),
        .O(\slv_reg98[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg98[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\slv_reg34[1]_i_2_n_0 ),
        .I3(PHS24_irq_mask[1]),
        .O(\slv_reg98[1]_i_1_n_0 ));
  FDRE \slv_reg98_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg98[0]_i_1_n_0 ),
        .Q(PHS24_irq_mask[0]),
        .R(p_0_in));
  FDRE \slv_reg98_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg98[1]_i_1_n_0 ),
        .Q(PHS24_irq_mask[1]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg99[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS24_irq0_clr),
        .O(\slv_reg99[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg99[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\slv_reg66[1]_i_2_n_0 ),
        .I2(\axi_awaddr_reg[6]_0 ),
        .I3(PHS24_irq1_clr),
        .O(\slv_reg99[1]_i_1_n_0 ));
  FDRE \slv_reg99_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg99[0]_i_1_n_0 ),
        .Q(PHS24_irq0_clr),
        .R(p_0_in));
  FDRE \slv_reg99_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg99[1]_i_1_n_0 ),
        .Q(PHS24_irq1_clr),
        .R(p_0_in));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg9_reg[0]_1 ),
        .Q(\slv_reg9_reg[0]_0 ),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    slv_reg_wren_d1_i_1
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren));
  FDRE #(
    .INIT(1'b0)) 
    slv_reg_wren_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_wren),
        .Q(slv_reg_wren_d1),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "S7_PHS_regs_0_0,PHS_regs_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "PHS_regs_v1_0,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (PHS0_pwm_val,
    PHS0_status,
    PHS0_irq_mask,
    PHS0_irq0_L2S,
    PHS0_irq1_S2L,
    PHS0_irq0_clr,
    PHS0_irq1_clr,
    PHS0_vld_out,
    PHS0_vld_in,
    PHS1_pwm_val,
    PHS1_status,
    PHS1_irq_mask,
    PHS1_irq0_L2S,
    PHS1_irq1_S2L,
    PHS1_irq0_clr,
    PHS1_irq1_clr,
    PHS1_vld_out,
    PHS1_vld_in,
    PHS2_pwm_val,
    PHS2_status,
    PHS2_irq_mask,
    PHS2_irq0_L2S,
    PHS2_irq1_S2L,
    PHS2_irq0_clr,
    PHS2_irq1_clr,
    PHS2_vld_out,
    PHS2_vld_in,
    PHS3_pwm_val,
    PHS3_status,
    PHS3_irq_mask,
    PHS3_irq0_L2S,
    PHS3_irq1_S2L,
    PHS3_irq0_clr,
    PHS3_irq1_clr,
    PHS3_vld_out,
    PHS3_vld_in,
    PHS4_pwm_val,
    PHS4_status,
    PHS4_irq_mask,
    PHS4_irq0_L2S,
    PHS4_irq1_S2L,
    PHS4_irq0_clr,
    PHS4_irq1_clr,
    PHS4_vld_out,
    PHS4_vld_in,
    PHS5_pwm_val,
    PHS5_status,
    PHS5_irq_mask,
    PHS5_irq0_L2S,
    PHS5_irq1_S2L,
    PHS5_irq0_clr,
    PHS5_irq1_clr,
    PHS5_vld_out,
    PHS5_vld_in,
    PHS6_pwm_val,
    PHS6_status,
    PHS6_irq_mask,
    PHS6_irq0_L2S,
    PHS6_irq1_S2L,
    PHS6_irq0_clr,
    PHS6_irq1_clr,
    PHS6_vld_out,
    PHS6_vld_in,
    PHS7_pwm_val,
    PHS7_status,
    PHS7_irq_mask,
    PHS7_irq0_L2S,
    PHS7_irq1_S2L,
    PHS7_irq0_clr,
    PHS7_irq1_clr,
    PHS7_vld_out,
    PHS7_vld_in,
    PHS8_pwm_val,
    PHS8_status,
    PHS8_irq_mask,
    PHS8_irq0_L2S,
    PHS8_irq1_S2L,
    PHS8_irq0_clr,
    PHS8_irq1_clr,
    PHS8_vld_out,
    PHS8_vld_in,
    PHS9_pwm_val,
    PHS9_status,
    PHS9_irq_mask,
    PHS9_irq0_L2S,
    PHS9_irq1_S2L,
    PHS9_irq0_clr,
    PHS9_irq1_clr,
    PHS9_vld_out,
    PHS9_vld_in,
    PHS10_pwm_val,
    PHS10_status,
    PHS10_irq_mask,
    PHS10_irq0_L2S,
    PHS10_irq1_S2L,
    PHS10_irq0_clr,
    PHS10_irq1_clr,
    PHS10_vld_out,
    PHS10_vld_in,
    PHS11_pwm_val,
    PHS11_status,
    PHS11_irq_mask,
    PHS11_irq0_L2S,
    PHS11_irq1_S2L,
    PHS11_irq0_clr,
    PHS11_irq1_clr,
    PHS11_vld_out,
    PHS11_vld_in,
    PHS12_pwm_val,
    PHS12_status,
    PHS12_irq_mask,
    PHS12_irq0_L2S,
    PHS12_irq1_S2L,
    PHS12_irq0_clr,
    PHS12_irq1_clr,
    PHS13_irq1_clr,
    PHS12_vld_out,
    PHS12_vld_in,
    PHS13_pwm_val,
    PHS13_status,
    PHS13_irq_mask,
    PHS13_irq0_L2S,
    PHS13_irq1_S2L,
    PHS13_irq0_clr,
    PHS13_vld_out,
    PHS13_vld_in,
    PHS14_pwm_val,
    PHS14_status,
    PHS14_irq_mask,
    PHS14_irq0_L2S,
    PHS14_irq1_S2L,
    PHS14_irq0_clr,
    PHS14_irq1_clr,
    PHS14_vld_out,
    PHS14_vld_in,
    PHS15_pwm_val,
    PHS15_status,
    PHS15_irq_mask,
    PHS15_irq0_L2S,
    PHS15_irq1_S2L,
    PHS15_irq0_clr,
    PHS15_irq1_clr,
    PHS15_vld_out,
    PHS15_vld_in,
    PHS16_pwm_val,
    PHS16_status,
    PHS16_irq_mask,
    PHS16_irq0_L2S,
    PHS16_irq1_S2L,
    PHS16_irq0_clr,
    PHS16_irq1_clr,
    PHS16_vld_out,
    PHS16_vld_in,
    PHS17_pwm_val,
    PHS17_status,
    PHS17_irq_mask,
    PHS17_irq0_L2S,
    PHS17_irq1_S2L,
    PHS17_irq0_clr,
    PHS17_irq1_clr,
    PHS17_vld_out,
    PHS17_vld_in,
    PHS18_pwm_val,
    PHS18_status,
    PHS18_irq_mask,
    PHS18_irq0_L2S,
    PHS18_irq1_S2L,
    PHS18_irq0_clr,
    PHS18_irq1_clr,
    PHS18_vld_out,
    PHS18_vld_in,
    PHS19_pwm_val,
    PHS19_status,
    PHS19_irq_mask,
    PHS19_irq0_L2S,
    PHS19_irq1_S2L,
    PHS19_irq0_clr,
    PHS19_irq1_clr,
    PHS19_vld_out,
    PHS19_vld_in,
    PHS20_pwm_val,
    PHS20_status,
    PHS20_irq_mask,
    PHS20_irq0_L2S,
    PHS20_irq1_S2L,
    PHS20_irq0_clr,
    PHS20_irq1_clr,
    PHS20_vld_out,
    PHS20_vld_in,
    PHS21_pwm_val,
    PHS21_status,
    PHS21_irq_mask,
    PHS21_irq0_L2S,
    PHS21_irq1_S2L,
    PHS21_irq0_clr,
    PHS21_irq1_clr,
    PHS21_vld_out,
    PHS21_vld_in,
    PHS22_pwm_val,
    PHS22_status,
    PHS22_irq_mask,
    PHS22_irq0_L2S,
    PHS22_irq1_S2L,
    PHS22_irq0_clr,
    PHS22_irq1_clr,
    PHS22_vld_out,
    PHS22_vld_in,
    PHS23_pwm_val,
    PHS23_status,
    PHS23_irq_mask,
    PHS23_irq0_L2S,
    PHS23_irq1_S2L,
    PHS23_irq0_clr,
    PHS23_irq1_clr,
    PHS23_vld_out,
    PHS23_vld_in,
    PHS24_pwm_val,
    PHS24_status,
    PHS24_irq_mask,
    PHS24_irq0_L2S,
    PHS24_irq1_S2L,
    PHS24_irq0_clr,
    PHS24_irq1_clr,
    PHS24_vld_out,
    PHS24_vld_in,
    PHS25_pwm_val,
    PHS25_status,
    PHS25_irq_mask,
    PHS25_irq0_L2S,
    PHS25_irq1_S2L,
    PHS25_irq0_clr,
    PHS25_irq1_clr,
    PHS25_vld_out,
    PHS25_vld_in,
    PHS26_pwm_val,
    PHS26_status,
    PHS26_irq_mask,
    PHS26_irq0_L2S,
    PHS26_irq1_S2L,
    PHS26_irq0_clr,
    PHS26_irq1_clr,
    PHS26_vld_out,
    PHS26_vld_in,
    PHS27_pwm_val,
    PHS27_status,
    PHS27_irq_mask,
    PHS27_irq0_L2S,
    PHS27_irq1_S2L,
    PHS27_irq0_clr,
    PHS27_irq1_clr,
    PHS27_vld_out,
    PHS27_vld_in,
    PHS28_pwm_val,
    PHS28_status,
    PHS28_irq_mask,
    PHS28_irq0_L2S,
    PHS28_irq1_S2L,
    PHS28_irq0_clr,
    PHS28_irq1_clr,
    PHS28_vld_out,
    PHS28_vld_in,
    PHS29_pwm_val,
    PHS29_status,
    PHS29_irq_mask,
    PHS29_irq0_L2S,
    PHS29_irq1_S2L,
    PHS29_irq0_clr,
    PHS29_irq1_clr,
    PHS29_vld_out,
    PHS29_vld_in,
    PHS30_pwm_val,
    PHS30_status,
    PHS30_irq_mask,
    PHS30_irq0_L2S,
    PHS30_irq1_S2L,
    PHS30_irq0_clr,
    PHS30_irq1_clr,
    PHS30_vld_out,
    PHS30_vld_in,
    PHS31_pwm_val,
    PHS31_status,
    PHS31_irq_mask,
    PHS31_irq0_L2S,
    PHS31_irq1_S2L,
    PHS31_irq0_clr,
    PHS31_irq1_clr,
    PHS31_vld_out,
    PHS31_vld_in,
    PHS32_pwm_val,
    PHS32_status,
    PHS32_irq_mask,
    PHS32_irq0_L2S,
    PHS32_irq1_S2L,
    PHS32_irq0_clr,
    PHS32_irq1_clr,
    PHS32_vld_out,
    PHS32_vld_in,
    PHS33_pwm_val,
    PHS33_status,
    PHS33_irq_mask,
    PHS33_irq0_L2S,
    PHS33_irq1_S2L,
    PHS33_irq0_clr,
    PHS33_irq1_clr,
    PHS33_vld_out,
    PHS33_vld_in,
    PHS34_pwm_val,
    PHS34_status,
    PHS34_irq_mask,
    PHS34_irq0_L2S,
    PHS34_irq1_S2L,
    PHS34_irq0_clr,
    PHS34_irq1_clr,
    PHS34_vld_out,
    PHS34_vld_in,
    PHS35_pwm_val,
    PHS35_status,
    PHS35_irq_mask,
    PHS35_irq0_L2S,
    PHS35_irq1_S2L,
    PHS35_irq0_clr,
    PHS35_irq1_clr,
    PHS35_vld_out,
    PHS35_vld_in,
    PHS36_pwm_val,
    PHS36_status,
    PHS36_irq_mask,
    PHS36_irq0_L2S,
    PHS36_irq1_S2L,
    PHS36_irq0_clr,
    PHS36_irq1_clr,
    PHS36_vld_out,
    PHS36_vld_in,
    PHS37_pwm_val,
    PHS37_status,
    PHS37_irq_mask,
    PHS37_irq0_L2S,
    PHS37_irq1_S2L,
    PHS37_irq0_clr,
    PHS37_irq1_clr,
    PHS37_vld_out,
    PHS37_vld_in,
    PHS38_pwm_val,
    PHS38_status,
    PHS38_irq_mask,
    PHS38_irq0_L2S,
    PHS38_irq1_S2L,
    PHS38_irq0_clr,
    PHS38_irq1_clr,
    PHS38_vld_out,
    PHS38_vld_in,
    PHS39_pwm_val,
    PHS39_status,
    PHS39_irq_mask,
    PHS39_irq0_L2S,
    PHS39_irq1_S2L,
    PHS39_irq0_clr,
    PHS39_irq1_clr,
    PHS39_vld_out,
    PHS39_vld_in,
    PHS40_pwm_val,
    PHS40_status,
    PHS40_irq_mask,
    PHS40_irq0_L2S,
    PHS40_irq1_S2L,
    PHS40_irq0_clr,
    PHS40_irq1_clr,
    PHS40_vld_out,
    PHS40_vld_in,
    PHS41_pwm_val,
    PHS41_status,
    PHS41_irq_mask,
    PHS41_irq0_L2S,
    PHS41_irq1_S2L,
    PHS41_irq0_clr,
    PHS41_irq1_clr,
    PHS41_vld_out,
    PHS41_vld_in,
    PHS42_pwm_val,
    PHS42_status,
    PHS42_irq_mask,
    PHS42_irq0_L2S,
    PHS42_irq1_S2L,
    PHS42_irq0_clr,
    PHS42_irq1_clr,
    PHS42_vld_out,
    PHS42_vld_in,
    PHS43_pwm_val,
    PHS43_status,
    PHS43_irq_mask,
    PHS43_irq0_L2S,
    PHS43_irq1_S2L,
    PHS43_irq0_clr,
    PHS43_irq1_clr,
    PHS43_vld_out,
    PHS43_vld_in,
    PHS44_pwm_val,
    PHS44_status,
    PHS44_irq_mask,
    PHS44_irq0_L2S,
    PHS44_irq1_S2L,
    PHS44_irq0_clr,
    PHS44_irq1_clr,
    PHS44_vld_out,
    PHS44_vld_in,
    PHS45_pwm_val,
    PHS45_status,
    PHS45_irq_mask,
    PHS45_irq0_L2S,
    PHS45_irq1_S2L,
    PHS45_irq0_clr,
    PHS45_irq1_clr,
    PHS45_vld_out,
    PHS45_vld_in,
    PHS46_pwm_val,
    PHS46_status,
    PHS46_irq_mask,
    PHS46_irq0_L2S,
    PHS46_irq1_S2L,
    PHS46_irq0_clr,
    PHS46_irq1_clr,
    PHS46_vld_out,
    PHS46_vld_in,
    PHS47_pwm_val,
    PHS47_status,
    PHS47_irq_mask,
    PHS47_irq0_L2S,
    PHS47_irq1_S2L,
    PHS47_irq0_clr,
    PHS47_irq1_clr,
    PHS47_vld_out,
    PHS47_vld_in,
    PHS48_pwm_val,
    PHS48_status,
    PHS48_irq_mask,
    PHS48_irq0_L2S,
    PHS48_irq1_S2L,
    PHS48_irq0_clr,
    PHS48_irq1_clr,
    PHS48_vld_out,
    PHS48_vld_in,
    PHS49_pwm_val,
    PHS49_status,
    PHS49_irq_mask,
    PHS49_irq0_L2S,
    PHS49_irq1_S2L,
    PHS49_irq0_clr,
    PHS49_irq1_clr,
    PHS49_vld_out,
    PHS49_vld_in,
    PHS_irqs_L2S_0,
    PHS_irqs_L2S_1,
    PHS_irq_L2S_0,
    PHS_irq_L2S_1,
    PHS_irqs_S2L_0,
    PHS_irqs_S2L_1,
    PHS_irq_S2L_0,
    PHS_irq_S2L_1,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs pwm_val" *) output [9:0]PHS0_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs status" *) input PHS0_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq_mask" *) output [1:0]PHS0_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq0_L2S" *) input PHS0_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq1_S2L" *) input PHS0_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq0_L2S_clr" *) output PHS0_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs irq1_S2L_clr" *) output PHS0_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs vld_out" *) output PHS0_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS0_regs valid_in" *) input PHS0_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs pwm_val" *) output [9:0]PHS1_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs status" *) input PHS1_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq_mask" *) output [1:0]PHS1_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq0_L2S" *) input PHS1_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq1_S2L" *) input PHS1_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq0_L2S_clr" *) output PHS1_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs irq1_S2L_clr" *) output PHS1_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs vld_out" *) output PHS1_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS1_regs valid_in" *) input PHS1_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs pwm_val" *) output [9:0]PHS2_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs status" *) input PHS2_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq_mask" *) output [1:0]PHS2_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq0_L2S" *) input PHS2_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq1_S2L" *) input PHS2_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq0_L2S_clr" *) output PHS2_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs irq1_S2L_clr" *) output PHS2_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs vld_out" *) output PHS2_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS2_regs valid_in" *) input PHS2_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs pwm_val" *) output [9:0]PHS3_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs status" *) input PHS3_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq_mask" *) output [1:0]PHS3_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq0_L2S" *) input PHS3_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq1_S2L" *) input PHS3_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq0_L2S_clr" *) output PHS3_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs irq1_S2L_clr" *) output PHS3_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs vld_out" *) output PHS3_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS3_regs valid_in" *) input PHS3_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs pwm_val" *) output [9:0]PHS4_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs status" *) input PHS4_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq_mask" *) output [1:0]PHS4_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq0_L2S" *) input PHS4_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq1_S2L" *) input PHS4_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq0_L2S_clr" *) output PHS4_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs irq1_S2L_clr" *) output PHS4_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs vld_out" *) output PHS4_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS4_regs valid_in" *) input PHS4_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs pwm_val" *) output [9:0]PHS5_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs status" *) input PHS5_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq_mask" *) output [1:0]PHS5_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq0_L2S" *) input PHS5_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq1_S2L" *) input PHS5_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq0_L2S_clr" *) output PHS5_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs irq1_S2L_clr" *) output PHS5_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs vld_out" *) output PHS5_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS5_regs valid_in" *) input PHS5_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs pwm_val" *) output [9:0]PHS6_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs status" *) input PHS6_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq_mask" *) output [1:0]PHS6_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq0_L2S" *) input PHS6_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq1_S2L" *) input PHS6_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq0_L2S_clr" *) output PHS6_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs irq1_S2L_clr" *) output PHS6_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs vld_out" *) output PHS6_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS6_regs valid_in" *) input PHS6_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs pwm_val" *) output [9:0]PHS7_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs status" *) input PHS7_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq_mask" *) output [1:0]PHS7_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq0_L2S" *) input PHS7_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq1_S2L" *) input PHS7_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq0_L2S_clr" *) output PHS7_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs irq1_S2L_clr" *) output PHS7_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs vld_out" *) output PHS7_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS7_regs valid_in" *) input PHS7_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs pwm_val" *) output [9:0]PHS8_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs status" *) input PHS8_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq_mask" *) output [1:0]PHS8_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq0_L2S" *) input PHS8_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq1_S2L" *) input PHS8_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq0_L2S_clr" *) output PHS8_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs irq1_S2L_clr" *) output PHS8_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs vld_out" *) output PHS8_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS8_regs valid_in" *) input PHS8_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs pwm_val" *) output [9:0]PHS9_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs status" *) input PHS9_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq_mask" *) output [1:0]PHS9_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq0_L2S" *) input PHS9_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq1_S2L" *) input PHS9_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq0_L2S_clr" *) output PHS9_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs irq1_S2L_clr" *) output PHS9_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs vld_out" *) output PHS9_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS9_regs valid_in" *) input PHS9_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs pwm_val" *) output [9:0]PHS10_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs status" *) input PHS10_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq_mask" *) output [1:0]PHS10_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq0_L2S" *) input PHS10_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq1_S2L" *) input PHS10_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq0_L2S_clr" *) output PHS10_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs irq1_S2L_clr" *) output PHS10_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs vld_out" *) output PHS10_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS10_regs valid_in" *) input PHS10_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs pwm_val" *) output [9:0]PHS11_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs status" *) input PHS11_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq_mask" *) output [1:0]PHS11_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq0_L2S" *) input PHS11_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq1_S2L" *) input PHS11_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq0_L2S_clr" *) output PHS11_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs irq1_S2L_clr" *) output PHS11_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs vld_out" *) output PHS11_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS11_regs valid_in" *) input PHS11_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs pwm_val" *) output [9:0]PHS12_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs status" *) input PHS12_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq_mask" *) output [1:0]PHS12_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq0_L2S" *) input PHS12_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq1_S2L" *) input PHS12_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq0_L2S_clr" *) output PHS12_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs irq1_S2L_clr" *) output PHS12_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq1_S2L_clr" *) output PHS13_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs vld_out" *) output PHS12_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS12_regs valid_in" *) input PHS12_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs pwm_val" *) output [9:0]PHS13_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs status" *) input PHS13_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq_mask" *) output [1:0]PHS13_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq0_L2S" *) input PHS13_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq1_S2L" *) input PHS13_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs irq0_L2S_clr" *) output PHS13_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs vld_out" *) output PHS13_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS13_regs valid_in" *) input PHS13_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs pwm_val" *) output [9:0]PHS14_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs status" *) input PHS14_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq_mask" *) output [1:0]PHS14_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq0_L2S" *) input PHS14_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq1_S2L" *) input PHS14_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq0_L2S_clr" *) output PHS14_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs irq1_S2L_clr" *) output PHS14_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs vld_out" *) output PHS14_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS14_regs valid_in" *) input PHS14_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs pwm_val" *) output [9:0]PHS15_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs status" *) input PHS15_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq_mask" *) output [1:0]PHS15_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq0_L2S" *) input PHS15_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq1_S2L" *) input PHS15_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq0_L2S_clr" *) output PHS15_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs irq1_S2L_clr" *) output PHS15_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs vld_out" *) output PHS15_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS15_regs valid_in" *) input PHS15_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs pwm_val" *) output [9:0]PHS16_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs status" *) input PHS16_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq_mask" *) output [1:0]PHS16_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq0_L2S" *) input PHS16_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq1_S2L" *) input PHS16_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq0_L2S_clr" *) output PHS16_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs irq1_S2L_clr" *) output PHS16_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs vld_out" *) output PHS16_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS16_regs valid_in" *) input PHS16_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs pwm_val" *) output [9:0]PHS17_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs status" *) input PHS17_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq_mask" *) output [1:0]PHS17_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq0_L2S" *) input PHS17_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq1_S2L" *) input PHS17_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq0_L2S_clr" *) output PHS17_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs irq1_S2L_clr" *) output PHS17_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs vld_out" *) output PHS17_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS17_regs valid_in" *) input PHS17_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs pwm_val" *) output [9:0]PHS18_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs status" *) input PHS18_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq_mask" *) output [1:0]PHS18_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq0_L2S" *) input PHS18_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq1_S2L" *) input PHS18_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq0_L2S_clr" *) output PHS18_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs irq1_S2L_clr" *) output PHS18_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs vld_out" *) output PHS18_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS18_regs valid_in" *) input PHS18_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs pwm_val" *) output [9:0]PHS19_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs status" *) input PHS19_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq_mask" *) output [1:0]PHS19_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq0_L2S" *) input PHS19_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq1_S2L" *) input PHS19_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq0_L2S_clr" *) output PHS19_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs irq1_S2L_clr" *) output PHS19_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs vld_out" *) output PHS19_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS19_regs valid_in" *) input PHS19_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs pwm_val" *) output [9:0]PHS20_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs status" *) input PHS20_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq_mask" *) output [1:0]PHS20_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq0_L2S" *) input PHS20_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq1_S2L" *) input PHS20_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq0_L2S_clr" *) output PHS20_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs irq1_S2L_clr" *) output PHS20_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs vld_out" *) output PHS20_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS20_regs valid_in" *) input PHS20_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs pwm_val" *) output [9:0]PHS21_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs status" *) input PHS21_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq_mask" *) output [1:0]PHS21_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq0_L2S" *) input PHS21_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq1_S2L" *) input PHS21_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq0_L2S_clr" *) output PHS21_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs irq1_S2L_clr" *) output PHS21_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs vld_out" *) output PHS21_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS21_regs valid_in" *) input PHS21_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs pwm_val" *) output [9:0]PHS22_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs status" *) input PHS22_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq_mask" *) output [1:0]PHS22_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq0_L2S" *) input PHS22_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq1_S2L" *) input PHS22_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq0_L2S_clr" *) output PHS22_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs irq1_S2L_clr" *) output PHS22_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs vld_out" *) output PHS22_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS22_regs valid_in" *) input PHS22_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs pwm_val" *) output [9:0]PHS23_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs status" *) input PHS23_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq_mask" *) output [1:0]PHS23_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq0_L2S" *) input PHS23_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq1_S2L" *) input PHS23_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq0_L2S_clr" *) output PHS23_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs irq1_S2L_clr" *) output PHS23_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs vld_out" *) output PHS23_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS23_regs valid_in" *) input PHS23_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs pwm_val" *) output [9:0]PHS24_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs status" *) input PHS24_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq_mask" *) output [1:0]PHS24_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq0_L2S" *) input PHS24_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq1_S2L" *) input PHS24_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq0_L2S_clr" *) output PHS24_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs irq1_S2L_clr" *) output PHS24_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs vld_out" *) output PHS24_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS24_regs valid_in" *) input PHS24_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs pwm_val" *) output [9:0]PHS25_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs status" *) input PHS25_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq_mask" *) output [1:0]PHS25_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq0_L2S" *) input PHS25_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq1_S2L" *) input PHS25_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq0_L2S_clr" *) output PHS25_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs irq1_S2L_clr" *) output PHS25_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs vld_out" *) output PHS25_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS25_regs valid_in" *) input PHS25_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs pwm_val" *) output [9:0]PHS26_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs status" *) input PHS26_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq_mask" *) output [1:0]PHS26_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq0_L2S" *) input PHS26_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq1_S2L" *) input PHS26_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq0_L2S_clr" *) output PHS26_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs irq1_S2L_clr" *) output PHS26_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs vld_out" *) output PHS26_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS26_regs valid_in" *) input PHS26_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs pwm_val" *) output [9:0]PHS27_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs status" *) input PHS27_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq_mask" *) output [1:0]PHS27_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq0_L2S" *) input PHS27_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq1_S2L" *) input PHS27_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq0_L2S_clr" *) output PHS27_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs irq1_S2L_clr" *) output PHS27_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs vld_out" *) output PHS27_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS27_regs valid_in" *) input PHS27_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs pwm_val" *) output [9:0]PHS28_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs status" *) input PHS28_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq_mask" *) output [1:0]PHS28_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq0_L2S" *) input PHS28_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq1_S2L" *) input PHS28_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq0_L2S_clr" *) output PHS28_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs irq1_S2L_clr" *) output PHS28_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs vld_out" *) output PHS28_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS28_regs valid_in" *) input PHS28_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs pwm_val" *) output [9:0]PHS29_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs status" *) input PHS29_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq_mask" *) output [1:0]PHS29_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq0_L2S" *) input PHS29_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq1_S2L" *) input PHS29_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq0_L2S_clr" *) output PHS29_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs irq1_S2L_clr" *) output PHS29_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs vld_out" *) output PHS29_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS29_regs valid_in" *) input PHS29_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs pwm_val" *) output [9:0]PHS30_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs status" *) input PHS30_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq_mask" *) output [1:0]PHS30_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq0_L2S" *) input PHS30_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq1_S2L" *) input PHS30_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq0_L2S_clr" *) output PHS30_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs irq1_S2L_clr" *) output PHS30_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs vld_out" *) output PHS30_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS30_regs valid_in" *) input PHS30_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs pwm_val" *) output [9:0]PHS31_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs status" *) input PHS31_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq_mask" *) output [1:0]PHS31_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq0_L2S" *) input PHS31_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq1_S2L" *) input PHS31_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq0_L2S_clr" *) output PHS31_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs irq1_S2L_clr" *) output PHS31_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs vld_out" *) output PHS31_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS31_regs valid_in" *) input PHS31_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs pwm_val" *) output [9:0]PHS32_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs status" *) input PHS32_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq_mask" *) output [1:0]PHS32_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq0_L2S" *) input PHS32_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq1_S2L" *) input PHS32_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq0_L2S_clr" *) output PHS32_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs irq1_S2L_clr" *) output PHS32_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs vld_out" *) output PHS32_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS32_regs valid_in" *) input PHS32_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs pwm_val" *) output [9:0]PHS33_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs status" *) input PHS33_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq_mask" *) output [1:0]PHS33_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq0_L2S" *) input PHS33_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq1_S2L" *) input PHS33_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq0_L2S_clr" *) output PHS33_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs irq1_S2L_clr" *) output PHS33_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs vld_out" *) output PHS33_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS33_regs valid_in" *) input PHS33_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs pwm_val" *) output [9:0]PHS34_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs status" *) input PHS34_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq_mask" *) output [1:0]PHS34_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq0_L2S" *) input PHS34_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq1_S2L" *) input PHS34_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq0_L2S_clr" *) output PHS34_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs irq1_S2L_clr" *) output PHS34_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs vld_out" *) output PHS34_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS34_regs valid_in" *) input PHS34_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs pwm_val" *) output [9:0]PHS35_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs status" *) input PHS35_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq_mask" *) output [1:0]PHS35_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq0_L2S" *) input PHS35_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq1_S2L" *) input PHS35_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq0_L2S_clr" *) output PHS35_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs irq1_S2L_clr" *) output PHS35_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs vld_out" *) output PHS35_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS35_regs valid_in" *) input PHS35_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs pwm_val" *) output [9:0]PHS36_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs status" *) input PHS36_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq_mask" *) output [1:0]PHS36_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq0_L2S" *) input PHS36_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq1_S2L" *) input PHS36_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq0_L2S_clr" *) output PHS36_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs irq1_S2L_clr" *) output PHS36_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs vld_out" *) output PHS36_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS36_regs valid_in" *) input PHS36_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs pwm_val" *) output [9:0]PHS37_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs status" *) input PHS37_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq_mask" *) output [1:0]PHS37_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq0_L2S" *) input PHS37_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq1_S2L" *) input PHS37_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq0_L2S_clr" *) output PHS37_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs irq1_S2L_clr" *) output PHS37_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs vld_out" *) output PHS37_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS37_regs valid_in" *) input PHS37_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs pwm_val" *) output [9:0]PHS38_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs status" *) input PHS38_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq_mask" *) output [1:0]PHS38_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq0_L2S" *) input PHS38_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq1_S2L" *) input PHS38_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq0_L2S_clr" *) output PHS38_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs irq1_S2L_clr" *) output PHS38_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs vld_out" *) output PHS38_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS38_regs valid_in" *) input PHS38_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs pwm_val" *) output [9:0]PHS39_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs status" *) input PHS39_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq_mask" *) output [1:0]PHS39_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq0_L2S" *) input PHS39_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq1_S2L" *) input PHS39_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq0_L2S_clr" *) output PHS39_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs irq1_S2L_clr" *) output PHS39_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs vld_out" *) output PHS39_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS39_regs valid_in" *) input PHS39_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs pwm_val" *) output [9:0]PHS40_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs status" *) input PHS40_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq_mask" *) output [1:0]PHS40_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq0_L2S" *) input PHS40_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq1_S2L" *) input PHS40_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq0_L2S_clr" *) output PHS40_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs irq1_S2L_clr" *) output PHS40_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs vld_out" *) output PHS40_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS40_regs valid_in" *) input PHS40_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs pwm_val" *) output [9:0]PHS41_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs status" *) input PHS41_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq_mask" *) output [1:0]PHS41_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq0_L2S" *) input PHS41_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq1_S2L" *) input PHS41_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq0_L2S_clr" *) output PHS41_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs irq1_S2L_clr" *) output PHS41_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs vld_out" *) output PHS41_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS41_regs valid_in" *) input PHS41_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs pwm_val" *) output [9:0]PHS42_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs status" *) input PHS42_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq_mask" *) output [1:0]PHS42_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq0_L2S" *) input PHS42_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq1_S2L" *) input PHS42_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq0_L2S_clr" *) output PHS42_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs irq1_S2L_clr" *) output PHS42_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs vld_out" *) output PHS42_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS42_regs valid_in" *) input PHS42_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs pwm_val" *) output [9:0]PHS43_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs status" *) input PHS43_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq_mask" *) output [1:0]PHS43_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq0_L2S" *) input PHS43_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq1_S2L" *) input PHS43_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq0_L2S_clr" *) output PHS43_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs irq1_S2L_clr" *) output PHS43_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs vld_out" *) output PHS43_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS43_regs valid_in" *) input PHS43_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs pwm_val" *) output [9:0]PHS44_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs status" *) input PHS44_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq_mask" *) output [1:0]PHS44_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq0_L2S" *) input PHS44_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq1_S2L" *) input PHS44_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq0_L2S_clr" *) output PHS44_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs irq1_S2L_clr" *) output PHS44_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs vld_out" *) output PHS44_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS44_regs valid_in" *) input PHS44_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs pwm_val" *) output [9:0]PHS45_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs status" *) input PHS45_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq_mask" *) output [1:0]PHS45_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq0_L2S" *) input PHS45_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq1_S2L" *) input PHS45_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq0_L2S_clr" *) output PHS45_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs irq1_S2L_clr" *) output PHS45_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs vld_out" *) output PHS45_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS45_regs valid_in" *) input PHS45_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs pwm_val" *) output [9:0]PHS46_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs status" *) input PHS46_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq_mask" *) output [1:0]PHS46_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq0_L2S" *) input PHS46_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq1_S2L" *) input PHS46_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq0_L2S_clr" *) output PHS46_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs irq1_S2L_clr" *) output PHS46_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs vld_out" *) output PHS46_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS46_regs valid_in" *) input PHS46_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs pwm_val" *) output [9:0]PHS47_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs status" *) input PHS47_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq_mask" *) output [1:0]PHS47_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq0_L2S" *) input PHS47_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq1_S2L" *) input PHS47_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq0_L2S_clr" *) output PHS47_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs irq1_S2L_clr" *) output PHS47_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs vld_out" *) output PHS47_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS47_regs valid_in" *) input PHS47_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs pwm_val" *) output [9:0]PHS48_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs status" *) input PHS48_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq_mask" *) output [1:0]PHS48_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq0_L2S" *) input PHS48_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq1_S2L" *) input PHS48_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq0_L2S_clr" *) output PHS48_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs irq1_S2L_clr" *) output PHS48_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs vld_out" *) output PHS48_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS48_regs valid_in" *) input PHS48_vld_in;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs pwm_val" *) output [9:0]PHS49_pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs status" *) input PHS49_status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq_mask" *) output [1:0]PHS49_irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq0_L2S" *) input PHS49_irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq1_S2L" *) input PHS49_irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq0_L2S_clr" *) output PHS49_irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs irq1_S2L_clr" *) output PHS49_irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs vld_out" *) output PHS49_vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS49_regs valid_in" *) input PHS49_vld_in;
  output [24:0]PHS_irqs_L2S_0;
  output [24:0]PHS_irqs_L2S_1;
  output PHS_irq_L2S_0;
  output PHS_irq_L2S_1;
  output [24:0]PHS_irqs_S2L_0;
  output [24:0]PHS_irqs_S2L_1;
  output PHS_irq_S2L_0;
  output PHS_irq_S2L_1;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 208, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [9:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [9:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire PHS0_irq0_clr;
  wire PHS0_irq1_clr;
  wire [1:0]PHS0_irq_mask;
  wire [9:0]PHS0_pwm_val;
  wire PHS0_status;
  wire PHS0_vld_in;
  wire PHS0_vld_out;
  wire PHS10_irq0_clr;
  wire PHS10_irq1_clr;
  wire [1:0]PHS10_irq_mask;
  wire [9:0]PHS10_pwm_val;
  wire PHS10_status;
  wire PHS10_vld_in;
  wire PHS10_vld_out;
  wire PHS11_irq0_clr;
  wire PHS11_irq1_clr;
  wire [1:0]PHS11_irq_mask;
  wire [9:0]PHS11_pwm_val;
  wire PHS11_status;
  wire PHS11_vld_in;
  wire PHS11_vld_out;
  wire PHS12_irq0_clr;
  wire PHS12_irq1_clr;
  wire [1:0]PHS12_irq_mask;
  wire [9:0]PHS12_pwm_val;
  wire PHS12_status;
  wire PHS12_vld_in;
  wire PHS12_vld_out;
  wire PHS13_irq0_clr;
  wire PHS13_irq1_clr;
  wire [1:0]PHS13_irq_mask;
  wire [9:0]PHS13_pwm_val;
  wire PHS13_status;
  wire PHS13_vld_in;
  wire PHS13_vld_out;
  wire PHS14_irq0_clr;
  wire PHS14_irq1_clr;
  wire [1:0]PHS14_irq_mask;
  wire [9:0]PHS14_pwm_val;
  wire PHS14_status;
  wire PHS14_vld_in;
  wire PHS14_vld_out;
  wire PHS15_irq0_clr;
  wire PHS15_irq1_clr;
  wire [1:0]PHS15_irq_mask;
  wire [9:0]PHS15_pwm_val;
  wire PHS15_status;
  wire PHS15_vld_in;
  wire PHS15_vld_out;
  wire PHS16_irq0_clr;
  wire PHS16_irq1_clr;
  wire [1:0]PHS16_irq_mask;
  wire [9:0]PHS16_pwm_val;
  wire PHS16_status;
  wire PHS16_vld_in;
  wire PHS16_vld_out;
  wire PHS17_irq0_clr;
  wire PHS17_irq1_clr;
  wire [1:0]PHS17_irq_mask;
  wire [9:0]PHS17_pwm_val;
  wire PHS17_status;
  wire PHS17_vld_in;
  wire PHS17_vld_out;
  wire PHS18_irq0_clr;
  wire PHS18_irq1_clr;
  wire [1:0]PHS18_irq_mask;
  wire [9:0]PHS18_pwm_val;
  wire PHS18_status;
  wire PHS18_vld_in;
  wire PHS18_vld_out;
  wire PHS19_irq0_clr;
  wire PHS19_irq1_clr;
  wire [1:0]PHS19_irq_mask;
  wire [9:0]PHS19_pwm_val;
  wire PHS19_status;
  wire PHS19_vld_in;
  wire PHS19_vld_out;
  wire PHS1_irq0_clr;
  wire PHS1_irq1_clr;
  wire [1:0]PHS1_irq_mask;
  wire [9:0]PHS1_pwm_val;
  wire PHS1_status;
  wire PHS1_vld_in;
  wire PHS1_vld_out;
  wire PHS20_irq0_clr;
  wire PHS20_irq1_clr;
  wire [1:0]PHS20_irq_mask;
  wire [9:0]PHS20_pwm_val;
  wire PHS20_status;
  wire PHS20_vld_in;
  wire PHS20_vld_out;
  wire PHS21_irq0_clr;
  wire PHS21_irq1_clr;
  wire [1:0]PHS21_irq_mask;
  wire [9:0]PHS21_pwm_val;
  wire PHS21_status;
  wire PHS21_vld_in;
  wire PHS21_vld_out;
  wire PHS22_irq0_clr;
  wire PHS22_irq1_clr;
  wire [1:0]PHS22_irq_mask;
  wire [9:0]PHS22_pwm_val;
  wire PHS22_status;
  wire PHS22_vld_in;
  wire PHS22_vld_out;
  wire PHS23_irq0_clr;
  wire PHS23_irq1_clr;
  wire [1:0]PHS23_irq_mask;
  wire [9:0]PHS23_pwm_val;
  wire PHS23_status;
  wire PHS23_vld_in;
  wire PHS23_vld_out;
  wire PHS24_irq0_clr;
  wire PHS24_irq1_clr;
  wire [1:0]PHS24_irq_mask;
  wire [9:0]PHS24_pwm_val;
  wire PHS24_status;
  wire PHS24_vld_in;
  wire PHS24_vld_out;
  wire PHS25_irq0_clr;
  wire PHS25_irq1_clr;
  wire [1:0]PHS25_irq_mask;
  wire [9:0]PHS25_pwm_val;
  wire PHS25_status;
  wire PHS25_vld_in;
  wire PHS25_vld_out;
  wire PHS26_irq0_clr;
  wire PHS26_irq1_clr;
  wire [1:0]PHS26_irq_mask;
  wire [9:0]PHS26_pwm_val;
  wire PHS26_status;
  wire PHS26_vld_in;
  wire PHS26_vld_out;
  wire PHS27_irq0_clr;
  wire PHS27_irq1_clr;
  wire [1:0]PHS27_irq_mask;
  wire [9:0]PHS27_pwm_val;
  wire PHS27_status;
  wire PHS27_vld_in;
  wire PHS27_vld_out;
  wire PHS28_irq0_clr;
  wire PHS28_irq1_clr;
  wire [1:0]PHS28_irq_mask;
  wire [9:0]PHS28_pwm_val;
  wire PHS28_status;
  wire PHS28_vld_in;
  wire PHS28_vld_out;
  wire PHS29_irq0_clr;
  wire PHS29_irq1_clr;
  wire [1:0]PHS29_irq_mask;
  wire [9:0]PHS29_pwm_val;
  wire PHS29_status;
  wire PHS29_vld_in;
  wire PHS29_vld_out;
  wire PHS2_irq0_clr;
  wire PHS2_irq1_clr;
  wire [1:0]PHS2_irq_mask;
  wire [9:0]PHS2_pwm_val;
  wire PHS2_status;
  wire PHS2_vld_in;
  wire PHS2_vld_out;
  wire PHS30_irq0_clr;
  wire PHS30_irq1_clr;
  wire [1:0]PHS30_irq_mask;
  wire [9:0]PHS30_pwm_val;
  wire PHS30_status;
  wire PHS30_vld_in;
  wire PHS30_vld_out;
  wire PHS31_irq0_clr;
  wire PHS31_irq1_clr;
  wire [1:0]PHS31_irq_mask;
  wire [9:0]PHS31_pwm_val;
  wire PHS31_status;
  wire PHS31_vld_in;
  wire PHS31_vld_out;
  wire PHS32_irq0_clr;
  wire PHS32_irq1_clr;
  wire [1:0]PHS32_irq_mask;
  wire [9:0]PHS32_pwm_val;
  wire PHS32_status;
  wire PHS32_vld_in;
  wire PHS32_vld_out;
  wire PHS33_irq0_clr;
  wire PHS33_irq1_clr;
  wire [1:0]PHS33_irq_mask;
  wire [9:0]PHS33_pwm_val;
  wire PHS33_status;
  wire PHS33_vld_in;
  wire PHS33_vld_out;
  wire PHS34_irq0_clr;
  wire PHS34_irq1_clr;
  wire [1:0]PHS34_irq_mask;
  wire [9:0]PHS34_pwm_val;
  wire PHS34_status;
  wire PHS34_vld_in;
  wire PHS34_vld_out;
  wire PHS35_irq0_clr;
  wire PHS35_irq1_clr;
  wire [1:0]PHS35_irq_mask;
  wire [9:0]PHS35_pwm_val;
  wire PHS35_status;
  wire PHS35_vld_in;
  wire PHS35_vld_out;
  wire PHS36_irq0_clr;
  wire PHS36_irq1_clr;
  wire [1:0]PHS36_irq_mask;
  wire [9:0]PHS36_pwm_val;
  wire PHS36_status;
  wire PHS36_vld_in;
  wire PHS36_vld_out;
  wire PHS37_irq0_clr;
  wire PHS37_irq1_clr;
  wire [1:0]PHS37_irq_mask;
  wire [9:0]PHS37_pwm_val;
  wire PHS37_status;
  wire PHS37_vld_in;
  wire PHS37_vld_out;
  wire PHS38_irq0_clr;
  wire PHS38_irq1_clr;
  wire [1:0]PHS38_irq_mask;
  wire [9:0]PHS38_pwm_val;
  wire PHS38_status;
  wire PHS38_vld_in;
  wire PHS38_vld_out;
  wire PHS39_irq0_clr;
  wire PHS39_irq1_clr;
  wire [1:0]PHS39_irq_mask;
  wire [9:0]PHS39_pwm_val;
  wire PHS39_status;
  wire PHS39_vld_in;
  wire PHS39_vld_out;
  wire PHS3_irq0_clr;
  wire PHS3_irq1_clr;
  wire [1:0]PHS3_irq_mask;
  wire [9:0]PHS3_pwm_val;
  wire PHS3_status;
  wire PHS3_vld_in;
  wire PHS3_vld_out;
  wire PHS40_irq0_clr;
  wire PHS40_irq1_clr;
  wire [1:0]PHS40_irq_mask;
  wire [9:0]PHS40_pwm_val;
  wire PHS40_status;
  wire PHS40_vld_in;
  wire PHS40_vld_out;
  wire PHS41_irq0_clr;
  wire PHS41_irq1_clr;
  wire [1:0]PHS41_irq_mask;
  wire [9:0]PHS41_pwm_val;
  wire PHS41_status;
  wire PHS41_vld_in;
  wire PHS41_vld_out;
  wire PHS42_irq0_clr;
  wire PHS42_irq1_clr;
  wire [1:0]PHS42_irq_mask;
  wire [9:0]PHS42_pwm_val;
  wire PHS42_status;
  wire PHS42_vld_in;
  wire PHS42_vld_out;
  wire PHS43_irq0_clr;
  wire PHS43_irq1_clr;
  wire [1:0]PHS43_irq_mask;
  wire [9:0]PHS43_pwm_val;
  wire PHS43_status;
  wire PHS43_vld_in;
  wire PHS43_vld_out;
  wire PHS44_irq0_clr;
  wire PHS44_irq1_clr;
  wire [1:0]PHS44_irq_mask;
  wire [9:0]PHS44_pwm_val;
  wire PHS44_status;
  wire PHS44_vld_in;
  wire PHS44_vld_out;
  wire PHS45_irq0_clr;
  wire PHS45_irq1_clr;
  wire [1:0]PHS45_irq_mask;
  wire [9:0]PHS45_pwm_val;
  wire PHS45_status;
  wire PHS45_vld_in;
  wire PHS45_vld_out;
  wire PHS46_irq0_clr;
  wire PHS46_irq1_clr;
  wire [1:0]PHS46_irq_mask;
  wire [9:0]PHS46_pwm_val;
  wire PHS46_status;
  wire PHS46_vld_in;
  wire PHS46_vld_out;
  wire PHS47_irq0_clr;
  wire PHS47_irq1_clr;
  wire [1:0]PHS47_irq_mask;
  wire [9:0]PHS47_pwm_val;
  wire PHS47_status;
  wire PHS47_vld_in;
  wire PHS47_vld_out;
  wire PHS48_irq0_clr;
  wire PHS48_irq1_clr;
  wire [1:0]PHS48_irq_mask;
  wire [9:0]PHS48_pwm_val;
  wire PHS48_status;
  wire PHS48_vld_in;
  wire PHS48_vld_out;
  wire PHS49_irq0_clr;
  wire PHS49_irq1_clr;
  wire [1:0]PHS49_irq_mask;
  wire [9:0]PHS49_pwm_val;
  wire PHS49_status;
  wire PHS49_vld_in;
  wire PHS49_vld_out;
  wire PHS4_irq0_clr;
  wire PHS4_irq1_clr;
  wire [1:0]PHS4_irq_mask;
  wire [9:0]PHS4_pwm_val;
  wire PHS4_status;
  wire PHS4_vld_in;
  wire PHS4_vld_out;
  wire PHS5_irq0_clr;
  wire PHS5_irq1_clr;
  wire [1:0]PHS5_irq_mask;
  wire [9:0]PHS5_pwm_val;
  wire PHS5_status;
  wire PHS5_vld_in;
  wire PHS5_vld_out;
  wire PHS6_irq0_clr;
  wire PHS6_irq1_clr;
  wire [1:0]PHS6_irq_mask;
  wire [9:0]PHS6_pwm_val;
  wire PHS6_status;
  wire PHS6_vld_in;
  wire PHS6_vld_out;
  wire PHS7_irq0_clr;
  wire PHS7_irq1_clr;
  wire [1:0]PHS7_irq_mask;
  wire [9:0]PHS7_pwm_val;
  wire PHS7_status;
  wire PHS7_vld_in;
  wire PHS7_vld_out;
  wire PHS8_irq0_clr;
  wire PHS8_irq1_clr;
  wire [1:0]PHS8_irq_mask;
  wire [9:0]PHS8_pwm_val;
  wire PHS8_status;
  wire PHS8_vld_in;
  wire PHS8_vld_out;
  wire PHS9_irq0_clr;
  wire PHS9_irq1_clr;
  wire [1:0]PHS9_irq_mask;
  wire [9:0]PHS9_pwm_val;
  wire PHS9_status;
  wire PHS9_vld_in;
  wire PHS9_vld_out;
  wire s00_axi_aclk;
  wire [9:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [9:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [24:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24:0] = \^s00_axi_rdata [24:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PHS_regs_v1_0 U0
       (.PHS0_irq0_clr(PHS0_irq0_clr),
        .PHS0_irq1_clr(PHS0_irq1_clr),
        .PHS0_irq_mask(PHS0_irq_mask),
        .PHS0_pwm_val(PHS0_pwm_val),
        .PHS0_status(PHS0_status),
        .PHS0_vld_in(PHS0_vld_in),
        .PHS0_vld_out(PHS0_vld_out),
        .PHS10_irq0_clr(PHS10_irq0_clr),
        .PHS10_irq1_clr(PHS10_irq1_clr),
        .PHS10_irq_mask(PHS10_irq_mask),
        .PHS10_pwm_val(PHS10_pwm_val),
        .PHS10_status(PHS10_status),
        .PHS10_vld_in(PHS10_vld_in),
        .PHS10_vld_out(PHS10_vld_out),
        .PHS11_irq0_clr(PHS11_irq0_clr),
        .PHS11_irq1_clr(PHS11_irq1_clr),
        .PHS11_irq_mask(PHS11_irq_mask),
        .PHS11_pwm_val(PHS11_pwm_val),
        .PHS11_status(PHS11_status),
        .PHS11_vld_in(PHS11_vld_in),
        .PHS11_vld_out(PHS11_vld_out),
        .PHS12_irq0_clr(PHS12_irq0_clr),
        .PHS12_irq1_clr(PHS12_irq1_clr),
        .PHS12_irq_mask(PHS12_irq_mask),
        .PHS12_pwm_val(PHS12_pwm_val),
        .PHS12_status(PHS12_status),
        .PHS12_vld_in(PHS12_vld_in),
        .PHS12_vld_out(PHS12_vld_out),
        .PHS13_irq0_clr(PHS13_irq0_clr),
        .PHS13_irq1_clr(PHS13_irq1_clr),
        .PHS13_irq_mask(PHS13_irq_mask),
        .PHS13_pwm_val(PHS13_pwm_val),
        .PHS13_status(PHS13_status),
        .PHS13_vld_in(PHS13_vld_in),
        .PHS13_vld_out(PHS13_vld_out),
        .PHS14_irq0_clr(PHS14_irq0_clr),
        .PHS14_irq1_clr(PHS14_irq1_clr),
        .PHS14_irq_mask(PHS14_irq_mask),
        .PHS14_pwm_val(PHS14_pwm_val),
        .PHS14_status(PHS14_status),
        .PHS14_vld_in(PHS14_vld_in),
        .PHS14_vld_out(PHS14_vld_out),
        .PHS15_irq0_clr(PHS15_irq0_clr),
        .PHS15_irq1_clr(PHS15_irq1_clr),
        .PHS15_irq_mask(PHS15_irq_mask),
        .PHS15_pwm_val(PHS15_pwm_val),
        .PHS15_status(PHS15_status),
        .PHS15_vld_in(PHS15_vld_in),
        .PHS15_vld_out(PHS15_vld_out),
        .PHS16_irq0_clr(PHS16_irq0_clr),
        .PHS16_irq1_clr(PHS16_irq1_clr),
        .PHS16_irq_mask(PHS16_irq_mask),
        .PHS16_pwm_val(PHS16_pwm_val),
        .PHS16_status(PHS16_status),
        .PHS16_vld_in(PHS16_vld_in),
        .PHS16_vld_out(PHS16_vld_out),
        .PHS17_irq0_clr(PHS17_irq0_clr),
        .PHS17_irq1_clr(PHS17_irq1_clr),
        .PHS17_irq_mask(PHS17_irq_mask),
        .PHS17_pwm_val(PHS17_pwm_val),
        .PHS17_status(PHS17_status),
        .PHS17_vld_in(PHS17_vld_in),
        .PHS17_vld_out(PHS17_vld_out),
        .PHS18_irq0_clr(PHS18_irq0_clr),
        .PHS18_irq1_clr(PHS18_irq1_clr),
        .PHS18_irq_mask(PHS18_irq_mask),
        .PHS18_pwm_val(PHS18_pwm_val),
        .PHS18_status(PHS18_status),
        .PHS18_vld_in(PHS18_vld_in),
        .PHS18_vld_out(PHS18_vld_out),
        .PHS19_irq0_clr(PHS19_irq0_clr),
        .PHS19_irq1_clr(PHS19_irq1_clr),
        .PHS19_irq_mask(PHS19_irq_mask),
        .PHS19_pwm_val(PHS19_pwm_val),
        .PHS19_status(PHS19_status),
        .PHS19_vld_in(PHS19_vld_in),
        .PHS19_vld_out(PHS19_vld_out),
        .PHS1_irq0_clr(PHS1_irq0_clr),
        .PHS1_irq1_clr(PHS1_irq1_clr),
        .PHS1_irq_mask(PHS1_irq_mask),
        .PHS1_pwm_val(PHS1_pwm_val),
        .PHS1_status(PHS1_status),
        .PHS1_vld_in(PHS1_vld_in),
        .PHS1_vld_out(PHS1_vld_out),
        .PHS20_irq0_clr(PHS20_irq0_clr),
        .PHS20_irq1_clr(PHS20_irq1_clr),
        .PHS20_irq_mask(PHS20_irq_mask),
        .PHS20_pwm_val(PHS20_pwm_val),
        .PHS20_status(PHS20_status),
        .PHS20_vld_in(PHS20_vld_in),
        .PHS20_vld_out(PHS20_vld_out),
        .PHS21_irq0_clr(PHS21_irq0_clr),
        .PHS21_irq1_clr(PHS21_irq1_clr),
        .PHS21_irq_mask(PHS21_irq_mask),
        .PHS21_pwm_val(PHS21_pwm_val),
        .PHS21_status(PHS21_status),
        .PHS21_vld_in(PHS21_vld_in),
        .PHS21_vld_out(PHS21_vld_out),
        .PHS22_irq0_clr(PHS22_irq0_clr),
        .PHS22_irq1_clr(PHS22_irq1_clr),
        .PHS22_irq_mask(PHS22_irq_mask),
        .PHS22_pwm_val(PHS22_pwm_val),
        .PHS22_status(PHS22_status),
        .PHS22_vld_in(PHS22_vld_in),
        .PHS22_vld_out(PHS22_vld_out),
        .PHS23_irq0_clr(PHS23_irq0_clr),
        .PHS23_irq1_clr(PHS23_irq1_clr),
        .PHS23_irq_mask(PHS23_irq_mask),
        .PHS23_pwm_val(PHS23_pwm_val),
        .PHS23_status(PHS23_status),
        .PHS23_vld_in(PHS23_vld_in),
        .PHS23_vld_out(PHS23_vld_out),
        .PHS24_irq0_clr(PHS24_irq0_clr),
        .PHS24_irq1_clr(PHS24_irq1_clr),
        .PHS24_irq_mask(PHS24_irq_mask),
        .PHS24_pwm_val(PHS24_pwm_val),
        .PHS24_status(PHS24_status),
        .PHS24_vld_in(PHS24_vld_in),
        .PHS24_vld_out(PHS24_vld_out),
        .PHS25_irq0_clr(PHS25_irq0_clr),
        .PHS25_irq1_clr(PHS25_irq1_clr),
        .PHS25_irq_mask(PHS25_irq_mask),
        .PHS25_pwm_val(PHS25_pwm_val),
        .PHS25_status(PHS25_status),
        .PHS25_vld_in(PHS25_vld_in),
        .PHS25_vld_out(PHS25_vld_out),
        .PHS26_irq0_clr(PHS26_irq0_clr),
        .PHS26_irq1_clr(PHS26_irq1_clr),
        .PHS26_irq_mask(PHS26_irq_mask),
        .PHS26_pwm_val(PHS26_pwm_val),
        .PHS26_status(PHS26_status),
        .PHS26_vld_in(PHS26_vld_in),
        .PHS26_vld_out(PHS26_vld_out),
        .PHS27_irq0_clr(PHS27_irq0_clr),
        .PHS27_irq1_clr(PHS27_irq1_clr),
        .PHS27_irq_mask(PHS27_irq_mask),
        .PHS27_pwm_val(PHS27_pwm_val),
        .PHS27_status(PHS27_status),
        .PHS27_vld_in(PHS27_vld_in),
        .PHS27_vld_out(PHS27_vld_out),
        .PHS28_irq0_clr(PHS28_irq0_clr),
        .PHS28_irq1_clr(PHS28_irq1_clr),
        .PHS28_irq_mask(PHS28_irq_mask),
        .PHS28_pwm_val(PHS28_pwm_val),
        .PHS28_status(PHS28_status),
        .PHS28_vld_in(PHS28_vld_in),
        .PHS28_vld_out(PHS28_vld_out),
        .PHS29_irq0_clr(PHS29_irq0_clr),
        .PHS29_irq1_clr(PHS29_irq1_clr),
        .PHS29_irq_mask(PHS29_irq_mask),
        .PHS29_pwm_val(PHS29_pwm_val),
        .PHS29_status(PHS29_status),
        .PHS29_vld_in(PHS29_vld_in),
        .PHS29_vld_out(PHS29_vld_out),
        .PHS2_irq0_clr(PHS2_irq0_clr),
        .PHS2_irq1_clr(PHS2_irq1_clr),
        .PHS2_irq_mask(PHS2_irq_mask),
        .PHS2_pwm_val(PHS2_pwm_val),
        .PHS2_status(PHS2_status),
        .PHS2_vld_in(PHS2_vld_in),
        .PHS2_vld_out(PHS2_vld_out),
        .PHS30_irq0_clr(PHS30_irq0_clr),
        .PHS30_irq1_clr(PHS30_irq1_clr),
        .PHS30_irq_mask(PHS30_irq_mask),
        .PHS30_pwm_val(PHS30_pwm_val),
        .PHS30_status(PHS30_status),
        .PHS30_vld_in(PHS30_vld_in),
        .PHS30_vld_out(PHS30_vld_out),
        .PHS31_irq0_clr(PHS31_irq0_clr),
        .PHS31_irq1_clr(PHS31_irq1_clr),
        .PHS31_irq_mask(PHS31_irq_mask),
        .PHS31_pwm_val(PHS31_pwm_val),
        .PHS31_status(PHS31_status),
        .PHS31_vld_in(PHS31_vld_in),
        .PHS31_vld_out(PHS31_vld_out),
        .PHS32_irq0_clr(PHS32_irq0_clr),
        .PHS32_irq1_clr(PHS32_irq1_clr),
        .PHS32_irq_mask(PHS32_irq_mask),
        .PHS32_pwm_val(PHS32_pwm_val),
        .PHS32_status(PHS32_status),
        .PHS32_vld_in(PHS32_vld_in),
        .PHS32_vld_out(PHS32_vld_out),
        .PHS33_irq0_clr(PHS33_irq0_clr),
        .PHS33_irq1_clr(PHS33_irq1_clr),
        .PHS33_irq_mask(PHS33_irq_mask),
        .PHS33_pwm_val(PHS33_pwm_val),
        .PHS33_status(PHS33_status),
        .PHS33_vld_in(PHS33_vld_in),
        .PHS33_vld_out(PHS33_vld_out),
        .PHS34_irq0_clr(PHS34_irq0_clr),
        .PHS34_irq1_clr(PHS34_irq1_clr),
        .PHS34_irq_mask(PHS34_irq_mask),
        .PHS34_pwm_val(PHS34_pwm_val),
        .PHS34_status(PHS34_status),
        .PHS34_vld_in(PHS34_vld_in),
        .PHS34_vld_out(PHS34_vld_out),
        .PHS35_irq0_clr(PHS35_irq0_clr),
        .PHS35_irq1_clr(PHS35_irq1_clr),
        .PHS35_irq_mask(PHS35_irq_mask),
        .PHS35_pwm_val(PHS35_pwm_val),
        .PHS35_status(PHS35_status),
        .PHS35_vld_in(PHS35_vld_in),
        .PHS35_vld_out(PHS35_vld_out),
        .PHS36_irq0_clr(PHS36_irq0_clr),
        .PHS36_irq1_clr(PHS36_irq1_clr),
        .PHS36_irq_mask(PHS36_irq_mask),
        .PHS36_pwm_val(PHS36_pwm_val),
        .PHS36_status(PHS36_status),
        .PHS36_vld_in(PHS36_vld_in),
        .PHS36_vld_out(PHS36_vld_out),
        .PHS37_irq0_clr(PHS37_irq0_clr),
        .PHS37_irq1_clr(PHS37_irq1_clr),
        .PHS37_irq_mask(PHS37_irq_mask),
        .PHS37_pwm_val(PHS37_pwm_val),
        .PHS37_status(PHS37_status),
        .PHS37_vld_in(PHS37_vld_in),
        .PHS37_vld_out(PHS37_vld_out),
        .PHS38_irq0_clr(PHS38_irq0_clr),
        .PHS38_irq1_clr(PHS38_irq1_clr),
        .PHS38_irq_mask(PHS38_irq_mask),
        .PHS38_pwm_val(PHS38_pwm_val),
        .PHS38_status(PHS38_status),
        .PHS38_vld_in(PHS38_vld_in),
        .PHS38_vld_out(PHS38_vld_out),
        .PHS39_irq0_clr(PHS39_irq0_clr),
        .PHS39_irq1_clr(PHS39_irq1_clr),
        .PHS39_irq_mask(PHS39_irq_mask),
        .PHS39_pwm_val(PHS39_pwm_val),
        .PHS39_status(PHS39_status),
        .PHS39_vld_in(PHS39_vld_in),
        .PHS39_vld_out(PHS39_vld_out),
        .PHS3_irq0_clr(PHS3_irq0_clr),
        .PHS3_irq1_clr(PHS3_irq1_clr),
        .PHS3_irq_mask(PHS3_irq_mask),
        .PHS3_pwm_val(PHS3_pwm_val),
        .PHS3_status(PHS3_status),
        .PHS3_vld_in(PHS3_vld_in),
        .PHS3_vld_out(PHS3_vld_out),
        .PHS40_irq0_clr(PHS40_irq0_clr),
        .PHS40_irq1_clr(PHS40_irq1_clr),
        .PHS40_irq_mask(PHS40_irq_mask),
        .PHS40_pwm_val(PHS40_pwm_val),
        .PHS40_status(PHS40_status),
        .PHS40_vld_in(PHS40_vld_in),
        .PHS40_vld_out(PHS40_vld_out),
        .PHS41_irq0_clr(PHS41_irq0_clr),
        .PHS41_irq1_clr(PHS41_irq1_clr),
        .PHS41_irq_mask(PHS41_irq_mask),
        .PHS41_pwm_val(PHS41_pwm_val),
        .PHS41_status(PHS41_status),
        .PHS41_vld_in(PHS41_vld_in),
        .PHS41_vld_out(PHS41_vld_out),
        .PHS42_irq0_clr(PHS42_irq0_clr),
        .PHS42_irq1_clr(PHS42_irq1_clr),
        .PHS42_irq_mask(PHS42_irq_mask),
        .PHS42_pwm_val(PHS42_pwm_val),
        .PHS42_status(PHS42_status),
        .PHS42_vld_in(PHS42_vld_in),
        .PHS42_vld_out(PHS42_vld_out),
        .PHS43_irq0_clr(PHS43_irq0_clr),
        .PHS43_irq1_clr(PHS43_irq1_clr),
        .PHS43_irq_mask(PHS43_irq_mask),
        .PHS43_pwm_val(PHS43_pwm_val),
        .PHS43_status(PHS43_status),
        .PHS43_vld_in(PHS43_vld_in),
        .PHS43_vld_out(PHS43_vld_out),
        .PHS44_irq0_clr(PHS44_irq0_clr),
        .PHS44_irq1_clr(PHS44_irq1_clr),
        .PHS44_irq_mask(PHS44_irq_mask),
        .PHS44_pwm_val(PHS44_pwm_val),
        .PHS44_status(PHS44_status),
        .PHS44_vld_in(PHS44_vld_in),
        .PHS44_vld_out(PHS44_vld_out),
        .PHS45_irq0_clr(PHS45_irq0_clr),
        .PHS45_irq1_clr(PHS45_irq1_clr),
        .PHS45_irq_mask(PHS45_irq_mask),
        .PHS45_pwm_val(PHS45_pwm_val),
        .PHS45_status(PHS45_status),
        .PHS45_vld_in(PHS45_vld_in),
        .PHS45_vld_out(PHS45_vld_out),
        .PHS46_irq0_clr(PHS46_irq0_clr),
        .PHS46_irq1_clr(PHS46_irq1_clr),
        .PHS46_irq_mask(PHS46_irq_mask),
        .PHS46_pwm_val(PHS46_pwm_val),
        .PHS46_status(PHS46_status),
        .PHS46_vld_in(PHS46_vld_in),
        .PHS46_vld_out(PHS46_vld_out),
        .PHS47_irq0_clr(PHS47_irq0_clr),
        .PHS47_irq1_clr(PHS47_irq1_clr),
        .PHS47_irq_mask(PHS47_irq_mask),
        .PHS47_pwm_val(PHS47_pwm_val),
        .PHS47_status(PHS47_status),
        .PHS47_vld_in(PHS47_vld_in),
        .PHS47_vld_out(PHS47_vld_out),
        .PHS48_irq0_clr(PHS48_irq0_clr),
        .PHS48_irq1_clr(PHS48_irq1_clr),
        .PHS48_irq_mask(PHS48_irq_mask),
        .PHS48_pwm_val(PHS48_pwm_val),
        .PHS48_status(PHS48_status),
        .PHS48_vld_in(PHS48_vld_in),
        .PHS48_vld_out(PHS48_vld_out),
        .PHS49_irq0_clr(PHS49_irq0_clr),
        .PHS49_irq1_clr(PHS49_irq1_clr),
        .PHS49_irq_mask(PHS49_irq_mask),
        .PHS49_pwm_val(PHS49_pwm_val),
        .PHS49_status(PHS49_status),
        .PHS49_vld_in(PHS49_vld_in),
        .PHS49_vld_out(PHS49_vld_out),
        .PHS4_irq0_clr(PHS4_irq0_clr),
        .PHS4_irq1_clr(PHS4_irq1_clr),
        .PHS4_irq_mask(PHS4_irq_mask),
        .PHS4_pwm_val(PHS4_pwm_val),
        .PHS4_status(PHS4_status),
        .PHS4_vld_in(PHS4_vld_in),
        .PHS4_vld_out(PHS4_vld_out),
        .PHS5_irq0_clr(PHS5_irq0_clr),
        .PHS5_irq1_clr(PHS5_irq1_clr),
        .PHS5_irq_mask(PHS5_irq_mask),
        .PHS5_pwm_val(PHS5_pwm_val),
        .PHS5_status(PHS5_status),
        .PHS5_vld_in(PHS5_vld_in),
        .PHS5_vld_out(PHS5_vld_out),
        .PHS6_irq0_clr(PHS6_irq0_clr),
        .PHS6_irq1_clr(PHS6_irq1_clr),
        .PHS6_irq_mask(PHS6_irq_mask),
        .PHS6_pwm_val(PHS6_pwm_val),
        .PHS6_status(PHS6_status),
        .PHS6_vld_in(PHS6_vld_in),
        .PHS6_vld_out(PHS6_vld_out),
        .PHS7_irq0_clr(PHS7_irq0_clr),
        .PHS7_irq1_clr(PHS7_irq1_clr),
        .PHS7_irq_mask(PHS7_irq_mask),
        .PHS7_pwm_val(PHS7_pwm_val),
        .PHS7_status(PHS7_status),
        .PHS7_vld_in(PHS7_vld_in),
        .PHS7_vld_out(PHS7_vld_out),
        .PHS8_irq0_clr(PHS8_irq0_clr),
        .PHS8_irq1_clr(PHS8_irq1_clr),
        .PHS8_irq_mask(PHS8_irq_mask),
        .PHS8_pwm_val(PHS8_pwm_val),
        .PHS8_status(PHS8_status),
        .PHS8_vld_in(PHS8_vld_in),
        .PHS8_vld_out(PHS8_vld_out),
        .PHS9_irq0_clr(PHS9_irq0_clr),
        .PHS9_irq1_clr(PHS9_irq1_clr),
        .PHS9_irq_mask(PHS9_irq_mask),
        .PHS9_pwm_val(PHS9_pwm_val),
        .PHS9_status(PHS9_status),
        .PHS9_vld_in(PHS9_vld_in),
        .PHS9_vld_out(PHS9_vld_out),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[9:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[9:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[24:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
