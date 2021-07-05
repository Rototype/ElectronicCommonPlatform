// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue May  5 10:11:52 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top S7_RT_timebase_0_0 -prefix
//               S7_RT_timebase_0_0_ S7_RT_timebase_0_0_stub.v
// Design      : S7_RT_timebase_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "RT_timebase,Vivado 2019.1.3" *)
module S7_RT_timebase_0_0(aclk, aresetn, ena_PHS)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,ena_PHS" */;
  input aclk;
  input aresetn;
  output ena_PHS;
endmodule
