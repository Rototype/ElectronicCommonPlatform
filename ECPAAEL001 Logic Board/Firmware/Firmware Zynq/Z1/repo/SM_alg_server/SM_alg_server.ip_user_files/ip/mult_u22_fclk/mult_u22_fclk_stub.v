// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR72013 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 15 06:11:42 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/RTT/VVD/ZED/P0/repo/SM_alg_server/SM_alg_server.srcs/sources_1/ip/mult_u22_fclk/mult_u22_fclk_stub.v
// Design      : mult_u22_fclk
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3_AR72013" *)
module mult_u22_fclk(CLK, A, SCLR, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[21:0],SCLR,P[49:0]" */;
  input CLK;
  input [21:0]A;
  input SCLR;
  output [49:0]P;
endmodule
