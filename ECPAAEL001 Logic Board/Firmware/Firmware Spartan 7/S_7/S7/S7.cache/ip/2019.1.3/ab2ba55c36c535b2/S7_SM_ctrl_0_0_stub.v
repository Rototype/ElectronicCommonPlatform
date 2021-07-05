// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Wed Jul 29 04:44:46 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SM_ctrl_0_0_stub.v
// Design      : S7_SM_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SM_ctrl,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, clk200, tgt_ACC, tgt_EC, dir, 
  ena_load, res, init_EC, cnt_o, cnt_i, ramp_up, ramp_dwn, spd_chg, slw_stps, fst_stps, running, 
  irq_mask, irq_in, irq_clr, vld_in, vld_out, port_ref, port_clk, port_ena, port_dir, port_m2P, 
  port_m1P, smc_ACC, smc_EC, smc_RM, smc_req, smc_Next_EC, smc_Next_RM, smc_ack, dbg_ref, dbg_clk, 
  dbg_ena, dbg_dir, dbg_m2P, dbg_m1P)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,clk200,tgt_ACC[23:0],tgt_EC[21:0],dir,ena_load[1:0],res[1:0],init_EC[21:0],cnt_o[31:0],cnt_i[31:0],ramp_up,ramp_dwn,spd_chg,slw_stps,fst_stps,running[1:0],irq_mask,irq_in,irq_clr,vld_in,vld_out,port_ref,port_clk,port_ena,port_dir,port_m2P,port_m1P,smc_ACC[21:0],smc_EC[21:0],smc_RM[15:0],smc_req,smc_Next_EC[21:0],smc_Next_RM[15:0],smc_ack,dbg_ref,dbg_clk,dbg_ena,dbg_dir,dbg_m2P,dbg_m1P" */;
  input aclk;
  input aresetn;
  input clk200;
  input [23:0]tgt_ACC;
  input [21:0]tgt_EC;
  input dir;
  input [1:0]ena_load;
  input [1:0]res;
  input [21:0]init_EC;
  input [31:0]cnt_o;
  output [31:0]cnt_i;
  input ramp_up;
  input ramp_dwn;
  input spd_chg;
  input slw_stps;
  input fst_stps;
  output [1:0]running;
  input irq_mask;
  output irq_in;
  input irq_clr;
  output vld_in;
  input vld_out;
  output port_ref;
  output port_clk;
  output port_ena;
  output port_dir;
  output port_m2P;
  output port_m1P;
  output [21:0]smc_ACC;
  output [21:0]smc_EC;
  output [15:0]smc_RM;
  output smc_req;
  input [21:0]smc_Next_EC;
  input [15:0]smc_Next_RM;
  input smc_ack;
  output dbg_ref;
  output dbg_clk;
  output dbg_ena;
  output dbg_dir;
  output dbg_m2P;
  output dbg_m1P;
endmodule
