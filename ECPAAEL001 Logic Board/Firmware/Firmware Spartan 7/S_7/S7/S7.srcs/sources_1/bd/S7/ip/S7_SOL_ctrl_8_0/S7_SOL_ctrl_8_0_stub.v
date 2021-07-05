// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Sat Jun 26 15:42:50 2021
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top S7_SOL_ctrl_8_0 -prefix
//               S7_SOL_ctrl_8_0_ S7_SOL_ctrl_2_0_stub.v
// Design      : S7_SOL_ctrl_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SOL_ctrl,Vivado 2019.1.3" *)
module S7_SOL_ctrl_8_0(aclk, aresetn, pwm_val, time_full, run, status, 
  vld_in, vld_out, port_pwm)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,pwm_val[7:0],time_full[10:0],run,status[1:0],vld_in,vld_out,port_pwm" */;
  input aclk;
  input aresetn;
  input [7:0]pwm_val;
  input [10:0]time_full;
  input run;
  output [1:0]status;
  output vld_in;
  input vld_out;
  output port_pwm;
endmodule
