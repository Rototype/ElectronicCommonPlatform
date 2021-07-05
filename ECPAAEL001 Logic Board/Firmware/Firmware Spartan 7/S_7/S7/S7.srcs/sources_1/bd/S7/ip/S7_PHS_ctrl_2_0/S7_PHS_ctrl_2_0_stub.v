// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Thu Oct 22 16:03:55 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top S7_PHS_ctrl_2_0 -prefix
//               S7_PHS_ctrl_2_0_ S7_PHS_ctrl_5_0_stub.v
// Design      : S7_PHS_ctrl_5_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PHS_ctrl,Vivado 2019.1.3" *)
module S7_PHS_ctrl_2_0(aclk, aresetn, ena_in, ena_out, pwm_val, status, 
  irq_mask, irq0_L2S, irq1_S2L, irq0_clr, irq1_clr, vld_out, vld_in, port_pwm_out, port_phs_in)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,ena_in,ena_out,pwm_val[9:0],status,irq_mask[1:0],irq0_L2S,irq1_S2L,irq0_clr,irq1_clr,vld_out,vld_in,port_pwm_out,port_phs_in" */;
  input aclk;
  input aresetn;
  input ena_in;
  output ena_out;
  input [9:0]pwm_val;
  output status;
  input [1:0]irq_mask;
  output irq0_L2S;
  output irq1_S2L;
  input irq0_clr;
  input irq1_clr;
  input vld_out;
  output vld_in;
  output port_pwm_out;
  input port_phs_in;
endmodule
