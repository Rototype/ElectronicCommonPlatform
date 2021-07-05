// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri Apr 16 13:32:26 2021
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_AXI4_Stream_Inverter_0_0_stub.v
// Design      : S7_AXI4_Stream_Inverter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI4Stream_Inverter,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(resetn, clk, s00_axis_tdata, s00_axis_tvalid, 
  s00_axis_tlast, s00_axis_tready, m00_axis_tdata, m00_axis_tvalid, m00_axis_tlast, 
  m00_axis_tready, counter, file_dimension)
/* synthesis syn_black_box black_box_pad_pin="resetn,clk,s00_axis_tdata[31:0],s00_axis_tvalid,s00_axis_tlast,s00_axis_tready,m00_axis_tdata[31:0],m00_axis_tvalid,m00_axis_tlast,m00_axis_tready,counter[31:0],file_dimension[31:0]" */;
  input resetn;
  input clk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  output s00_axis_tready;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input m00_axis_tready;
  output [31:0]counter;
  output [31:0]file_dimension;
endmodule
