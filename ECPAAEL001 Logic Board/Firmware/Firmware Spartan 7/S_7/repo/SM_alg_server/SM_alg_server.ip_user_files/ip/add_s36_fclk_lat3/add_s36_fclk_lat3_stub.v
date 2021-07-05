// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue Oct 13 16:44:32 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/RTT/VVD/S/S_3/repo/SM_alg_server/SM_alg_server.srcs/sources_1/ip/add_s36_fclk_lat3/add_s36_fclk_lat3_stub.v
// Design      : add_s36_fclk_lat3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1.3" *)
module add_s36_fclk_lat3(A, CLK, SCLR, S)
/* synthesis syn_black_box black_box_pad_pin="A[36:0],CLK,SCLR,S[36:0]" */;
  input [36:0]A;
  input CLK;
  input SCLR;
  output [36:0]S;
endmodule
