// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jan  3 08:15:08 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/Rototype/VVD/FPGA/FPGA_0/repo/SM_ctrl/SM_ctrl.srcs/sources_1/ip/sum_uns_28_28_lat2/sum_uns_28_28_lat2_stub.v
// Design      : sum_uns_28_28_lat2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module sum_uns_28_28_lat2(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[27:0],B[27:0],CLK,S[28:0]" */;
  input [27:0]A;
  input [27:0]B;
  input CLK;
  output [28:0]S;
endmodule
