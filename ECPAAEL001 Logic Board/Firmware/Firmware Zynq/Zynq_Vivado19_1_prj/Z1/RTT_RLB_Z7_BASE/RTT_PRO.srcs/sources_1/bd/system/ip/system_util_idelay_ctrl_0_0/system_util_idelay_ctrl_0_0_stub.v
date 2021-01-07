// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri Jun  5 15:33:17 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/MW/RTT/VVD/Z/Z1/RTT_RLB_BASE/RTT_PRO.srcs/sources_1/bd/system/ip/system_util_idelay_ctrl_0_0/system_util_idelay_ctrl_0_0_stub.v
// Design      : system_util_idelay_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_idelay_ctrl_v1_0_1_util_idelay_ctrl,Vivado 2019.1.3" *)
module system_util_idelay_ctrl_0_0(rst, rdy, ref_clk)
/* synthesis syn_black_box black_box_pad_pin="rst,rdy,ref_clk" */;
  input rst;
  output rdy;
  input ref_clk;
endmodule
