// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR72013 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 15 06:12:40 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/RTT/VVD/ZED/P0/repo/SM_alg_server/SM_alg_server.srcs/sources_1/ip/SM_status_fifo/SM_status_fifo_stub.v
// Design      : SM_status_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3_AR72013" *)
module SM_status_fifo(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[59:0],wr_en,rd_en,dout[59:0],full,empty" */;
  input clk;
  input srst;
  input [59:0]din;
  input wr_en;
  input rd_en;
  output [59:0]dout;
  output full;
  output empty;
endmodule