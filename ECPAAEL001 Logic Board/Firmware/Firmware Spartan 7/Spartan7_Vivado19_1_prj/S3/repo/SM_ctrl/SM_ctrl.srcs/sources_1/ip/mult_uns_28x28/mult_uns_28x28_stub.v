// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  2 14:23:35 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MW/Rototype/VVD/FPGA/FPGA_0/repo/SM_ctrl/SM_ctrl.srcs/sources_1/ip/mult_uns_28x28/mult_uns_28x28_stub.v
// Design      : mult_uns_28x28
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module mult_uns_28x28(CLK, A, B, SCLR, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[27:0],B[27:0],SCLR,P[55:0]" */;
  input CLK;
  input [27:0]A;
  input [27:0]B;
  input SCLR;
  output [55:0]P;
endmodule
