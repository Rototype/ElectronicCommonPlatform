// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Apr 29 10:11:08 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/RTT/VVD/ZED/P0/repo/SM_ctrl/SM_ctrl.srcs/sources_1/ip/mult_s36_u43_lat7/mult_s36_u43_lat7_stub.v
// Design      : mult_s36_u43_lat7
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *)
module mult_s36_u43_lat7(CLK, A, B, SCLR, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[35:0],B[42:0],SCLR,P[36:0]" */;
  input CLK;
  input [35:0]A;
  input [42:0]B;
  input SCLR;
  output [36:0]P;
endmodule
