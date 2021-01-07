// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon May 11 09:50:20 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SOL_ctrl_7_0_stub.v
// Design      : system_SOL_ctrl_7_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SOL_ctrl,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, pwm_val, time_full, run, status, 
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
