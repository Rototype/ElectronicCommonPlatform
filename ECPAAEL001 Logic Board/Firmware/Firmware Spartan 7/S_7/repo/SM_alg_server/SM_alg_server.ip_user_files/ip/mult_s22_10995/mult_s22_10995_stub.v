// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Oct 13 16:44:36 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/RTT/VVD/S/S_3/repo/SM_alg_server/SM_alg_server.srcs/sources_1/ip/mult_s22_10995/mult_s22_10995_stub.v
// Design      : mult_s22_10995
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1.3" *)
module mult_s22_10995(CLK, A, SCLR, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[21:0],SCLR,P[35:0]" */;
  input CLK;
  input [21:0]A;
  input SCLR;
  output [35:0]P;
endmodule
