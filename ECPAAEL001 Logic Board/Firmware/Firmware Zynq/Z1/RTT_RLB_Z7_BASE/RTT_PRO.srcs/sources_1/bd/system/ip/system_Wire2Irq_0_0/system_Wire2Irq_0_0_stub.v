// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May  3 09:46:41 2021
// Host        : LAPTOP-21897QU1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.srcs/sources_1/bd/system/ip/system_Wire2Irq_0_0/system_Wire2Irq_0_0_stub.v
// Design      : system_Wire2Irq_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Wire2Irq,Vivado 2019.1" *)
module system_Wire2Irq_0_0(wir, wire_irq)
/* synthesis syn_black_box black_box_pad_pin="wir[3:0],wire_irq[3:0]" */;
  input [3:0]wir;
  output [3:0]wire_irq;
endmodule