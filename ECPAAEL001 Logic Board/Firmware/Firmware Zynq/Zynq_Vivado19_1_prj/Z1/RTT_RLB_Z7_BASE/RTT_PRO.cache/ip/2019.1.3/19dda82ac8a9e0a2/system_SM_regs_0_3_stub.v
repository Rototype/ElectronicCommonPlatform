// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri May 15 00:03:48 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SM_regs_0_3_stub.v
// Design      : system_SM_regs_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SM_regs_v1_0,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SM0_tgt_ACC, SM0_tgt_EC, SM0_dir, SM0_load, 
  SM0_res, SM0_init_EC, SM0_cnt_o, SM0_cnt_i, SM0_ramp_up, SM0_ramp_dwn, SM0_spd_chg, 
  SM0_slw_stps, SM0_fst_stps, SM0_running, SM0_irq_mask, SM0_irq_in, SM0_irq_clr, SM0_vld_in, 
  SM0_vld_out, SM1_tgt_ACC, SM1_tgt_EC, SM1_dir, SM1_load, SM1_res, SM1_init_EC, SM1_cnt_o, 
  SM1_cnt_i, SM1_ramp_up, SM1_ramp_dwn, SM1_spd_chg, SM1_slw_stps, SM1_fst_stps, SM1_running, 
  SM1_irq_mask, SM1_irq_in, SM1_irq_clr, SM1_vld_in, SM1_vld_out, SM2_tgt_ACC, SM2_tgt_EC, 
  SM2_dir, SM2_load, SM2_res, SM2_init_EC, SM2_cnt_o, SM2_cnt_i, SM2_ramp_up, SM2_ramp_dwn, 
  SM2_spd_chg, SM2_slw_stps, SM2_fst_stps, SM2_running, SM2_irq_mask, SM2_irq_in, SM2_irq_clr, 
  SM2_vld_in, SM2_vld_out, SM3_tgt_ACC, SM3_tgt_EC, SM3_dir, SM3_load, SM3_res, SM3_init_EC, 
  SM3_cnt_o, SM3_cnt_i, SM3_ramp_up, SM3_ramp_dwn, SM3_spd_chg, SM3_slw_stps, SM3_fst_stps, 
  SM3_running, SM3_irq_mask, SM3_irq_in, SM3_irq_clr, SM3_vld_in, SM3_vld_out, SM4_tgt_ACC, 
  SM4_tgt_EC, SM4_dir, SM4_load, SM4_res, SM4_init_EC, SM4_cnt_o, SM4_cnt_i, SM4_ramp_up, 
  SM4_ramp_dwn, SM4_spd_chg, SM4_slw_stps, SM4_fst_stps, SM4_running, SM4_irq_mask, SM4_irq_in, 
  SM4_irq_clr, SM4_vld_in, SM4_vld_out, SM5_tgt_ACC, SM5_tgt_EC, SM5_dir, SM5_load, SM5_res, 
  SM5_init_EC, SM5_cnt_o, SM5_cnt_i, SM5_ramp_up, SM5_ramp_dwn, SM5_spd_chg, SM5_slw_stps, 
  SM5_fst_stps, SM5_running, SM5_irq_mask, SM5_irq_in, SM5_irq_clr, SM5_vld_in, SM5_vld_out, 
  SM6_tgt_ACC, SM6_tgt_EC, SM6_dir, SM6_load, SM6_res, SM6_init_EC, SM6_cnt_o, SM6_cnt_i, 
  SM6_ramp_up, SM6_ramp_dwn, SM6_spd_chg, SM6_slw_stps, SM6_fst_stps, SM6_running, 
  SM6_irq_mask, SM6_irq_in, SM6_irq_clr, SM6_vld_in, SM6_vld_out, SM7_tgt_ACC, SM7_tgt_EC, 
  SM7_dir, SM7_load, SM7_res, SM7_init_EC, SM7_cnt_o, SM7_cnt_i, SM7_ramp_up, SM7_ramp_dwn, 
  SM7_spd_chg, SM7_slw_stps, SM7_fst_stps, SM7_running, SM7_irq_mask, SM7_irq_in, SM7_irq_clr, 
  SM7_vld_in, SM7_vld_out, SM8_tgt_ACC, SM8_tgt_EC, SM8_dir, SM8_load, SM8_res, SM8_init_EC, 
  SM8_cnt_o, SM8_cnt_i, SM8_ramp_up, SM8_ramp_dwn, SM8_spd_chg, SM8_slw_stps, SM8_fst_stps, 
  SM8_running, SM8_irq_mask, SM8_irq_in, SM8_irq_clr, SM8_vld_in, SM8_vld_out, SM9_tgt_ACC, 
  SM9_tgt_EC, SM9_dir, SM9_load, SM9_res, SM9_init_EC, SM9_cnt_o, SM9_cnt_i, SM9_ramp_up, 
  SM9_ramp_dwn, SM9_spd_chg, SM9_slw_stps, SM9_fst_stps, SM9_running, SM9_irq_mask, SM9_irq_in, 
  SM9_irq_clr, SM9_vld_in, SM9_vld_out, SM10_tgt_ACC, SM10_tgt_EC, SM10_dir, SM10_load, SM10_res, 
  SM10_init_EC, SM10_cnt_o, SM10_cnt_i, SM10_ramp_up, SM10_ramp_dwn, SM10_spd_chg, 
  SM10_slw_stps, SM10_fst_stps, SM10_running, SM10_irq_mask, SM10_irq_in, SM10_irq_clr, 
  SM10_vld_in, SM10_vld_out, SM11_tgt_ACC, SM11_tgt_EC, SM11_dir, SM11_load, SM11_res, 
  SM11_init_EC, SM11_cnt_o, SM11_cnt_i, SM11_ramp_up, SM11_ramp_dwn, SM11_spd_chg, 
  SM11_slw_stps, SM11_fst_stps, SM11_running, SM11_irq_mask, SM11_irq_in, SM11_irq_clr, 
  SM11_vld_in, SM11_vld_out, SM12_tgt_ACC, SM12_tgt_EC, SM12_dir, SM12_load, SM12_res, 
  SM12_init_EC, SM12_cnt_o, SM12_cnt_i, SM12_ramp_up, SM12_ramp_dwn, SM12_spd_chg, 
  SM12_slw_stps, SM12_fst_stps, SM12_running, SM12_irq_mask, SM12_irq_in, SM12_irq_clr, 
  SM12_vld_in, SM12_vld_out, SM13_tgt_ACC, SM13_tgt_EC, SM13_dir, SM13_load, SM13_res, 
  SM13_init_EC, SM13_cnt_o, SM13_cnt_i, SM13_ramp_up, SM13_ramp_dwn, SM13_spd_chg, 
  SM13_slw_stps, SM13_fst_stps, SM13_running, SM13_irq_mask, SM13_irq_in, SM13_irq_clr, 
  SM13_vld_in, SM13_vld_out, SM14_tgt_ACC, SM14_tgt_EC, SM14_dir, SM14_load, SM14_res, 
  SM14_init_EC, SM14_cnt_o, SM14_cnt_i, SM14_ramp_up, SM14_ramp_dwn, SM14_spd_chg, 
  SM14_slw_stps, SM14_fst_stps, SM14_running, SM14_irq_mask, SM14_irq_in, SM14_irq_clr, 
  SM14_vld_in, SM14_vld_out, SM15_tgt_ACC, SM15_tgt_EC, SM15_dir, SM15_load, SM15_res, 
  SM15_init_EC, SM15_cnt_o, SM15_cnt_i, SM15_ramp_up, SM15_ramp_dwn, SM15_spd_chg, 
  SM15_slw_stps, SM15_fst_stps, SM15_running, SM15_irq_mask, SM15_irq_in, SM15_irq_clr, 
  SM15_vld_in, SM15_vld_out, SM16_tgt_ACC, SM16_tgt_EC, SM16_dir, SM16_load, SM16_res, 
  SM16_init_EC, SM16_cnt_o, SM16_cnt_i, SM16_ramp_up, SM16_ramp_dwn, SM16_spd_chg, 
  SM16_slw_stps, SM16_fst_stps, SM16_running, SM16_irq_mask, SM16_irq_in, SM16_irq_clr, 
  SM16_vld_in, SM16_vld_out, SM17_tgt_ACC, SM17_tgt_EC, SM17_dir, SM17_load, SM17_res, 
  SM17_init_EC, SM17_cnt_o, SM17_cnt_i, SM17_ramp_up, SM17_ramp_dwn, SM17_spd_chg, 
  SM17_slw_stps, SM17_fst_stps, SM17_running, SM17_irq_mask, SM17_irq_in, SM17_irq_clr, 
  SM17_vld_in, SM17_vld_out, SM18_tgt_ACC, SM18_tgt_EC, SM18_dir, SM18_load, SM18_res, 
  SM18_init_EC, SM18_cnt_o, SM18_cnt_i, SM18_ramp_up, SM18_ramp_dwn, SM18_spd_chg, 
  SM18_slw_stps, SM18_fst_stps, SM18_running, SM18_irq_mask, SM18_irq_in, SM18_irq_clr, 
  SM18_vld_in, SM18_vld_out, SM19_tgt_ACC, SM19_tgt_EC, SM19_dir, SM19_load, SM19_res, 
  SM19_init_EC, SM19_cnt_o, SM19_cnt_i, SM19_ramp_up, SM19_ramp_dwn, SM19_spd_chg, 
  SM19_slw_stps, SM19_fst_stps, SM19_running, SM19_irq_mask, SM19_irq_in, SM19_irq_clr, 
  SM19_vld_in, SM19_vld_out, SM_irqs, SM_irq, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="SM0_tgt_ACC[23:0],SM0_tgt_EC[21:0],SM0_dir,SM0_load[1:0],SM0_res[1:0],SM0_init_EC[21:0],SM0_cnt_o[31:0],SM0_cnt_i[31:0],SM0_ramp_up,SM0_ramp_dwn,SM0_spd_chg,SM0_slw_stps,SM0_fst_stps,SM0_running[1:0],SM0_irq_mask,SM0_irq_in,SM0_irq_clr,SM0_vld_in,SM0_vld_out,SM1_tgt_ACC[23:0],SM1_tgt_EC[21:0],SM1_dir,SM1_load[1:0],SM1_res[1:0],SM1_init_EC[21:0],SM1_cnt_o[31:0],SM1_cnt_i[31:0],SM1_ramp_up,SM1_ramp_dwn,SM1_spd_chg,SM1_slw_stps,SM1_fst_stps,SM1_running[1:0],SM1_irq_mask,SM1_irq_in,SM1_irq_clr,SM1_vld_in,SM1_vld_out,SM2_tgt_ACC[23:0],SM2_tgt_EC[21:0],SM2_dir,SM2_load[1:0],SM2_res[1:0],SM2_init_EC[21:0],SM2_cnt_o[31:0],SM2_cnt_i[31:0],SM2_ramp_up,SM2_ramp_dwn,SM2_spd_chg,SM2_slw_stps,SM2_fst_stps,SM2_running[1:0],SM2_irq_mask,SM2_irq_in,SM2_irq_clr,SM2_vld_in,SM2_vld_out,SM3_tgt_ACC[23:0],SM3_tgt_EC[21:0],SM3_dir,SM3_load[1:0],SM3_res[1:0],SM3_init_EC[21:0],SM3_cnt_o[31:0],SM3_cnt_i[31:0],SM3_ramp_up,SM3_ramp_dwn,SM3_spd_chg,SM3_slw_stps,SM3_fst_stps,SM3_running[1:0],SM3_irq_mask,SM3_irq_in,SM3_irq_clr,SM3_vld_in,SM3_vld_out,SM4_tgt_ACC[23:0],SM4_tgt_EC[21:0],SM4_dir,SM4_load[1:0],SM4_res[1:0],SM4_init_EC[21:0],SM4_cnt_o[31:0],SM4_cnt_i[31:0],SM4_ramp_up,SM4_ramp_dwn,SM4_spd_chg,SM4_slw_stps,SM4_fst_stps,SM4_running[1:0],SM4_irq_mask,SM4_irq_in,SM4_irq_clr,SM4_vld_in,SM4_vld_out,SM5_tgt_ACC[23:0],SM5_tgt_EC[21:0],SM5_dir,SM5_load[1:0],SM5_res[1:0],SM5_init_EC[21:0],SM5_cnt_o[31:0],SM5_cnt_i[31:0],SM5_ramp_up,SM5_ramp_dwn,SM5_spd_chg,SM5_slw_stps,SM5_fst_stps,SM5_running[1:0],SM5_irq_mask,SM5_irq_in,SM5_irq_clr,SM5_vld_in,SM5_vld_out,SM6_tgt_ACC[23:0],SM6_tgt_EC[21:0],SM6_dir,SM6_load[1:0],SM6_res[1:0],SM6_init_EC[21:0],SM6_cnt_o[31:0],SM6_cnt_i[31:0],SM6_ramp_up,SM6_ramp_dwn,SM6_spd_chg,SM6_slw_stps,SM6_fst_stps,SM6_running[1:0],SM6_irq_mask,SM6_irq_in,SM6_irq_clr,SM6_vld_in,SM6_vld_out,SM7_tgt_ACC[23:0],SM7_tgt_EC[21:0],SM7_dir,SM7_load[1:0],SM7_res[1:0],SM7_init_EC[21:0],SM7_cnt_o[31:0],SM7_cnt_i[31:0],SM7_ramp_up,SM7_ramp_dwn,SM7_spd_chg,SM7_slw_stps,SM7_fst_stps,SM7_running[1:0],SM7_irq_mask,SM7_irq_in,SM7_irq_clr,SM7_vld_in,SM7_vld_out,SM8_tgt_ACC[23:0],SM8_tgt_EC[21:0],SM8_dir,SM8_load[1:0],SM8_res[1:0],SM8_init_EC[21:0],SM8_cnt_o[31:0],SM8_cnt_i[31:0],SM8_ramp_up,SM8_ramp_dwn,SM8_spd_chg,SM8_slw_stps,SM8_fst_stps,SM8_running[1:0],SM8_irq_mask,SM8_irq_in,SM8_irq_clr,SM8_vld_in,SM8_vld_out,SM9_tgt_ACC[23:0],SM9_tgt_EC[21:0],SM9_dir,SM9_load[1:0],SM9_res[1:0],SM9_init_EC[21:0],SM9_cnt_o[31:0],SM9_cnt_i[31:0],SM9_ramp_up,SM9_ramp_dwn,SM9_spd_chg,SM9_slw_stps,SM9_fst_stps,SM9_running[1:0],SM9_irq_mask,SM9_irq_in,SM9_irq_clr,SM9_vld_in,SM9_vld_out,SM10_tgt_ACC[23:0],SM10_tgt_EC[21:0],SM10_dir,SM10_load[1:0],SM10_res[1:0],SM10_init_EC[21:0],SM10_cnt_o[31:0],SM10_cnt_i[31:0],SM10_ramp_up,SM10_ramp_dwn,SM10_spd_chg,SM10_slw_stps,SM10_fst_stps,SM10_running[1:0],SM10_irq_mask,SM10_irq_in,SM10_irq_clr,SM10_vld_in,SM10_vld_out,SM11_tgt_ACC[23:0],SM11_tgt_EC[21:0],SM11_dir,SM11_load[1:0],SM11_res[1:0],SM11_init_EC[21:0],SM11_cnt_o[31:0],SM11_cnt_i[31:0],SM11_ramp_up,SM11_ramp_dwn,SM11_spd_chg,SM11_slw_stps,SM11_fst_stps,SM11_running[1:0],SM11_irq_mask,SM11_irq_in,SM11_irq_clr,SM11_vld_in,SM11_vld_out,SM12_tgt_ACC[23:0],SM12_tgt_EC[21:0],SM12_dir,SM12_load[1:0],SM12_res[1:0],SM12_init_EC[21:0],SM12_cnt_o[31:0],SM12_cnt_i[31:0],SM12_ramp_up,SM12_ramp_dwn,SM12_spd_chg,SM12_slw_stps,SM12_fst_stps,SM12_running[1:0],SM12_irq_mask,SM12_irq_in,SM12_irq_clr,SM12_vld_in,SM12_vld_out,SM13_tgt_ACC[23:0],SM13_tgt_EC[21:0],SM13_dir,SM13_load[1:0],SM13_res[1:0],SM13_init_EC[21:0],SM13_cnt_o[31:0],SM13_cnt_i[31:0],SM13_ramp_up,SM13_ramp_dwn,SM13_spd_chg,SM13_slw_stps,SM13_fst_stps,SM13_running[1:0],SM13_irq_mask,SM13_irq_in,SM13_irq_clr,SM13_vld_in,SM13_vld_out,SM14_tgt_ACC[23:0],SM14_tgt_EC[21:0],SM14_dir,SM14_load[1:0],SM14_res[1:0],SM14_init_EC[21:0],SM14_cnt_o[31:0],SM14_cnt_i[31:0],SM14_ramp_up,SM14_ramp_dwn,SM14_spd_chg,SM14_slw_stps,SM14_fst_stps,SM14_running[1:0],SM14_irq_mask,SM14_irq_in,SM14_irq_clr,SM14_vld_in,SM14_vld_out,SM15_tgt_ACC[23:0],SM15_tgt_EC[21:0],SM15_dir,SM15_load[1:0],SM15_res[1:0],SM15_init_EC[21:0],SM15_cnt_o[31:0],SM15_cnt_i[31:0],SM15_ramp_up,SM15_ramp_dwn,SM15_spd_chg,SM15_slw_stps,SM15_fst_stps,SM15_running[1:0],SM15_irq_mask,SM15_irq_in,SM15_irq_clr,SM15_vld_in,SM15_vld_out,SM16_tgt_ACC[23:0],SM16_tgt_EC[21:0],SM16_dir,SM16_load[1:0],SM16_res[1:0],SM16_init_EC[21:0],SM16_cnt_o[31:0],SM16_cnt_i[31:0],SM16_ramp_up,SM16_ramp_dwn,SM16_spd_chg,SM16_slw_stps,SM16_fst_stps,SM16_running[1:0],SM16_irq_mask,SM16_irq_in,SM16_irq_clr,SM16_vld_in,SM16_vld_out,SM17_tgt_ACC[23:0],SM17_tgt_EC[21:0],SM17_dir,SM17_load[1:0],SM17_res[1:0],SM17_init_EC[21:0],SM17_cnt_o[31:0],SM17_cnt_i[31:0],SM17_ramp_up,SM17_ramp_dwn,SM17_spd_chg,SM17_slw_stps,SM17_fst_stps,SM17_running[1:0],SM17_irq_mask,SM17_irq_in,SM17_irq_clr,SM17_vld_in,SM17_vld_out,SM18_tgt_ACC[23:0],SM18_tgt_EC[21:0],SM18_dir,SM18_load[1:0],SM18_res[1:0],SM18_init_EC[21:0],SM18_cnt_o[31:0],SM18_cnt_i[31:0],SM18_ramp_up,SM18_ramp_dwn,SM18_spd_chg,SM18_slw_stps,SM18_fst_stps,SM18_running[1:0],SM18_irq_mask,SM18_irq_in,SM18_irq_clr,SM18_vld_in,SM18_vld_out,SM19_tgt_ACC[23:0],SM19_tgt_EC[21:0],SM19_dir,SM19_load[1:0],SM19_res[1:0],SM19_init_EC[21:0],SM19_cnt_o[31:0],SM19_cnt_i[31:0],SM19_ramp_up,SM19_ramp_dwn,SM19_spd_chg,SM19_slw_stps,SM19_fst_stps,SM19_running[1:0],SM19_irq_mask,SM19_irq_in,SM19_irq_clr,SM19_vld_in,SM19_vld_out,SM_irqs[19:0],SM_irq,s00_axi_awaddr[10:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[10:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  output [23:0]SM0_tgt_ACC;
  output [21:0]SM0_tgt_EC;
  output SM0_dir;
  output [1:0]SM0_load;
  output [1:0]SM0_res;
  output [21:0]SM0_init_EC;
  output [31:0]SM0_cnt_o;
  input [31:0]SM0_cnt_i;
  output SM0_ramp_up;
  output SM0_ramp_dwn;
  output SM0_spd_chg;
  output SM0_slw_stps;
  output SM0_fst_stps;
  input [1:0]SM0_running;
  output SM0_irq_mask;
  input SM0_irq_in;
  output SM0_irq_clr;
  input SM0_vld_in;
  output SM0_vld_out;
  output [23:0]SM1_tgt_ACC;
  output [21:0]SM1_tgt_EC;
  output SM1_dir;
  output [1:0]SM1_load;
  output [1:0]SM1_res;
  output [21:0]SM1_init_EC;
  output [31:0]SM1_cnt_o;
  input [31:0]SM1_cnt_i;
  output SM1_ramp_up;
  output SM1_ramp_dwn;
  output SM1_spd_chg;
  output SM1_slw_stps;
  output SM1_fst_stps;
  input [1:0]SM1_running;
  output SM1_irq_mask;
  input SM1_irq_in;
  output SM1_irq_clr;
  input SM1_vld_in;
  output SM1_vld_out;
  output [23:0]SM2_tgt_ACC;
  output [21:0]SM2_tgt_EC;
  output SM2_dir;
  output [1:0]SM2_load;
  output [1:0]SM2_res;
  output [21:0]SM2_init_EC;
  output [31:0]SM2_cnt_o;
  input [31:0]SM2_cnt_i;
  output SM2_ramp_up;
  output SM2_ramp_dwn;
  output SM2_spd_chg;
  output SM2_slw_stps;
  output SM2_fst_stps;
  input [1:0]SM2_running;
  output SM2_irq_mask;
  input SM2_irq_in;
  output SM2_irq_clr;
  input SM2_vld_in;
  output SM2_vld_out;
  output [23:0]SM3_tgt_ACC;
  output [21:0]SM3_tgt_EC;
  output SM3_dir;
  output [1:0]SM3_load;
  output [1:0]SM3_res;
  output [21:0]SM3_init_EC;
  output [31:0]SM3_cnt_o;
  input [31:0]SM3_cnt_i;
  output SM3_ramp_up;
  output SM3_ramp_dwn;
  output SM3_spd_chg;
  output SM3_slw_stps;
  output SM3_fst_stps;
  input [1:0]SM3_running;
  output SM3_irq_mask;
  input SM3_irq_in;
  output SM3_irq_clr;
  input SM3_vld_in;
  output SM3_vld_out;
  output [23:0]SM4_tgt_ACC;
  output [21:0]SM4_tgt_EC;
  output SM4_dir;
  output [1:0]SM4_load;
  output [1:0]SM4_res;
  output [21:0]SM4_init_EC;
  output [31:0]SM4_cnt_o;
  input [31:0]SM4_cnt_i;
  output SM4_ramp_up;
  output SM4_ramp_dwn;
  output SM4_spd_chg;
  output SM4_slw_stps;
  output SM4_fst_stps;
  input [1:0]SM4_running;
  output SM4_irq_mask;
  input SM4_irq_in;
  output SM4_irq_clr;
  input SM4_vld_in;
  output SM4_vld_out;
  output [23:0]SM5_tgt_ACC;
  output [21:0]SM5_tgt_EC;
  output SM5_dir;
  output [1:0]SM5_load;
  output [1:0]SM5_res;
  output [21:0]SM5_init_EC;
  output [31:0]SM5_cnt_o;
  input [31:0]SM5_cnt_i;
  output SM5_ramp_up;
  output SM5_ramp_dwn;
  output SM5_spd_chg;
  output SM5_slw_stps;
  output SM5_fst_stps;
  input [1:0]SM5_running;
  output SM5_irq_mask;
  input SM5_irq_in;
  output SM5_irq_clr;
  input SM5_vld_in;
  output SM5_vld_out;
  output [23:0]SM6_tgt_ACC;
  output [21:0]SM6_tgt_EC;
  output SM6_dir;
  output [1:0]SM6_load;
  output [1:0]SM6_res;
  output [21:0]SM6_init_EC;
  output [31:0]SM6_cnt_o;
  input [31:0]SM6_cnt_i;
  output SM6_ramp_up;
  output SM6_ramp_dwn;
  output SM6_spd_chg;
  output SM6_slw_stps;
  output SM6_fst_stps;
  input [1:0]SM6_running;
  output SM6_irq_mask;
  input SM6_irq_in;
  output SM6_irq_clr;
  input SM6_vld_in;
  output SM6_vld_out;
  output [23:0]SM7_tgt_ACC;
  output [21:0]SM7_tgt_EC;
  output SM7_dir;
  output [1:0]SM7_load;
  output [1:0]SM7_res;
  output [21:0]SM7_init_EC;
  output [31:0]SM7_cnt_o;
  input [31:0]SM7_cnt_i;
  output SM7_ramp_up;
  output SM7_ramp_dwn;
  output SM7_spd_chg;
  output SM7_slw_stps;
  output SM7_fst_stps;
  input [1:0]SM7_running;
  output SM7_irq_mask;
  input SM7_irq_in;
  output SM7_irq_clr;
  input SM7_vld_in;
  output SM7_vld_out;
  output [23:0]SM8_tgt_ACC;
  output [21:0]SM8_tgt_EC;
  output SM8_dir;
  output [1:0]SM8_load;
  output [1:0]SM8_res;
  output [21:0]SM8_init_EC;
  output [31:0]SM8_cnt_o;
  input [31:0]SM8_cnt_i;
  output SM8_ramp_up;
  output SM8_ramp_dwn;
  output SM8_spd_chg;
  output SM8_slw_stps;
  output SM8_fst_stps;
  input [1:0]SM8_running;
  output SM8_irq_mask;
  input SM8_irq_in;
  output SM8_irq_clr;
  input SM8_vld_in;
  output SM8_vld_out;
  output [23:0]SM9_tgt_ACC;
  output [21:0]SM9_tgt_EC;
  output SM9_dir;
  output [1:0]SM9_load;
  output [1:0]SM9_res;
  output [21:0]SM9_init_EC;
  output [31:0]SM9_cnt_o;
  input [31:0]SM9_cnt_i;
  output SM9_ramp_up;
  output SM9_ramp_dwn;
  output SM9_spd_chg;
  output SM9_slw_stps;
  output SM9_fst_stps;
  input [1:0]SM9_running;
  output SM9_irq_mask;
  input SM9_irq_in;
  output SM9_irq_clr;
  input SM9_vld_in;
  output SM9_vld_out;
  output [23:0]SM10_tgt_ACC;
  output [21:0]SM10_tgt_EC;
  output SM10_dir;
  output [1:0]SM10_load;
  output [1:0]SM10_res;
  output [21:0]SM10_init_EC;
  output [31:0]SM10_cnt_o;
  input [31:0]SM10_cnt_i;
  output SM10_ramp_up;
  output SM10_ramp_dwn;
  output SM10_spd_chg;
  output SM10_slw_stps;
  output SM10_fst_stps;
  input [1:0]SM10_running;
  output SM10_irq_mask;
  input SM10_irq_in;
  output SM10_irq_clr;
  input SM10_vld_in;
  output SM10_vld_out;
  output [23:0]SM11_tgt_ACC;
  output [21:0]SM11_tgt_EC;
  output SM11_dir;
  output [1:0]SM11_load;
  output [1:0]SM11_res;
  output [21:0]SM11_init_EC;
  output [31:0]SM11_cnt_o;
  input [31:0]SM11_cnt_i;
  output SM11_ramp_up;
  output SM11_ramp_dwn;
  output SM11_spd_chg;
  output SM11_slw_stps;
  output SM11_fst_stps;
  input [1:0]SM11_running;
  output SM11_irq_mask;
  input SM11_irq_in;
  output SM11_irq_clr;
  input SM11_vld_in;
  output SM11_vld_out;
  output [23:0]SM12_tgt_ACC;
  output [21:0]SM12_tgt_EC;
  output SM12_dir;
  output [1:0]SM12_load;
  output [1:0]SM12_res;
  output [21:0]SM12_init_EC;
  output [31:0]SM12_cnt_o;
  input [31:0]SM12_cnt_i;
  output SM12_ramp_up;
  output SM12_ramp_dwn;
  output SM12_spd_chg;
  output SM12_slw_stps;
  output SM12_fst_stps;
  input [1:0]SM12_running;
  output SM12_irq_mask;
  input SM12_irq_in;
  output SM12_irq_clr;
  input SM12_vld_in;
  output SM12_vld_out;
  output [23:0]SM13_tgt_ACC;
  output [21:0]SM13_tgt_EC;
  output SM13_dir;
  output [1:0]SM13_load;
  output [1:0]SM13_res;
  output [21:0]SM13_init_EC;
  output [31:0]SM13_cnt_o;
  input [31:0]SM13_cnt_i;
  output SM13_ramp_up;
  output SM13_ramp_dwn;
  output SM13_spd_chg;
  output SM13_slw_stps;
  output SM13_fst_stps;
  input [1:0]SM13_running;
  output SM13_irq_mask;
  input SM13_irq_in;
  output SM13_irq_clr;
  input SM13_vld_in;
  output SM13_vld_out;
  output [23:0]SM14_tgt_ACC;
  output [21:0]SM14_tgt_EC;
  output SM14_dir;
  output [1:0]SM14_load;
  output [1:0]SM14_res;
  output [21:0]SM14_init_EC;
  output [31:0]SM14_cnt_o;
  input [31:0]SM14_cnt_i;
  output SM14_ramp_up;
  output SM14_ramp_dwn;
  output SM14_spd_chg;
  output SM14_slw_stps;
  output SM14_fst_stps;
  input [1:0]SM14_running;
  output SM14_irq_mask;
  input SM14_irq_in;
  output SM14_irq_clr;
  input SM14_vld_in;
  output SM14_vld_out;
  output [23:0]SM15_tgt_ACC;
  output [21:0]SM15_tgt_EC;
  output SM15_dir;
  output [1:0]SM15_load;
  output [1:0]SM15_res;
  output [21:0]SM15_init_EC;
  output [31:0]SM15_cnt_o;
  input [31:0]SM15_cnt_i;
  output SM15_ramp_up;
  output SM15_ramp_dwn;
  output SM15_spd_chg;
  output SM15_slw_stps;
  output SM15_fst_stps;
  input [1:0]SM15_running;
  output SM15_irq_mask;
  input SM15_irq_in;
  output SM15_irq_clr;
  input SM15_vld_in;
  output SM15_vld_out;
  output [23:0]SM16_tgt_ACC;
  output [21:0]SM16_tgt_EC;
  output SM16_dir;
  output [1:0]SM16_load;
  output [1:0]SM16_res;
  output [21:0]SM16_init_EC;
  output [31:0]SM16_cnt_o;
  input [31:0]SM16_cnt_i;
  output SM16_ramp_up;
  output SM16_ramp_dwn;
  output SM16_spd_chg;
  output SM16_slw_stps;
  output SM16_fst_stps;
  input [1:0]SM16_running;
  output SM16_irq_mask;
  input SM16_irq_in;
  output SM16_irq_clr;
  input SM16_vld_in;
  output SM16_vld_out;
  output [23:0]SM17_tgt_ACC;
  output [21:0]SM17_tgt_EC;
  output SM17_dir;
  output [1:0]SM17_load;
  output [1:0]SM17_res;
  output [21:0]SM17_init_EC;
  output [31:0]SM17_cnt_o;
  input [31:0]SM17_cnt_i;
  output SM17_ramp_up;
  output SM17_ramp_dwn;
  output SM17_spd_chg;
  output SM17_slw_stps;
  output SM17_fst_stps;
  input [1:0]SM17_running;
  output SM17_irq_mask;
  input SM17_irq_in;
  output SM17_irq_clr;
  input SM17_vld_in;
  output SM17_vld_out;
  output [23:0]SM18_tgt_ACC;
  output [21:0]SM18_tgt_EC;
  output SM18_dir;
  output [1:0]SM18_load;
  output [1:0]SM18_res;
  output [21:0]SM18_init_EC;
  output [31:0]SM18_cnt_o;
  input [31:0]SM18_cnt_i;
  output SM18_ramp_up;
  output SM18_ramp_dwn;
  output SM18_spd_chg;
  output SM18_slw_stps;
  output SM18_fst_stps;
  input [1:0]SM18_running;
  output SM18_irq_mask;
  input SM18_irq_in;
  output SM18_irq_clr;
  input SM18_vld_in;
  output SM18_vld_out;
  output [23:0]SM19_tgt_ACC;
  output [21:0]SM19_tgt_EC;
  output SM19_dir;
  output [1:0]SM19_load;
  output [1:0]SM19_res;
  output [21:0]SM19_init_EC;
  output [31:0]SM19_cnt_o;
  input [31:0]SM19_cnt_i;
  output SM19_ramp_up;
  output SM19_ramp_dwn;
  output SM19_spd_chg;
  output SM19_slw_stps;
  output SM19_fst_stps;
  input [1:0]SM19_running;
  output SM19_irq_mask;
  input SM19_irq_in;
  output SM19_irq_clr;
  input SM19_vld_in;
  output SM19_vld_out;
  output [19:0]SM_irqs;
  output SM_irq;
  input [10:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [10:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
