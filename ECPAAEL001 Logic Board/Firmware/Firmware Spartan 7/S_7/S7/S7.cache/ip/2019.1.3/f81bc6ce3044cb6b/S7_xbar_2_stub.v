// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri Apr 16 13:32:45 2021
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_xbar_2_stub.v
// Design      : S7_xbar_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_20_axi_crossbar,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[63:0],s_axi_awprot[5:0],s_axi_awvalid[1:0],s_axi_awready[1:0],s_axi_wdata[63:0],s_axi_wstrb[7:0],s_axi_wvalid[1:0],s_axi_wready[1:0],s_axi_bresp[3:0],s_axi_bvalid[1:0],s_axi_bready[1:0],s_axi_araddr[63:0],s_axi_arprot[5:0],s_axi_arvalid[1:0],s_axi_arready[1:0],s_axi_rdata[63:0],s_axi_rresp[3:0],s_axi_rvalid[1:0],s_axi_rready[1:0],m_axi_awaddr[223:0],m_axi_awprot[20:0],m_axi_awvalid[6:0],m_axi_awready[6:0],m_axi_wdata[223:0],m_axi_wstrb[27:0],m_axi_wvalid[6:0],m_axi_wready[6:0],m_axi_bresp[13:0],m_axi_bvalid[6:0],m_axi_bready[6:0],m_axi_araddr[223:0],m_axi_arprot[20:0],m_axi_arvalid[6:0],m_axi_arready[6:0],m_axi_rdata[223:0],m_axi_rresp[13:0],m_axi_rvalid[6:0],m_axi_rready[6:0]" */;
  input aclk;
  input aresetn;
  input [63:0]s_axi_awaddr;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awvalid;
  output [1:0]s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [1:0]s_axi_wvalid;
  output [1:0]s_axi_wready;
  output [3:0]s_axi_bresp;
  output [1:0]s_axi_bvalid;
  input [1:0]s_axi_bready;
  input [63:0]s_axi_araddr;
  input [5:0]s_axi_arprot;
  input [1:0]s_axi_arvalid;
  output [1:0]s_axi_arready;
  output [63:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]s_axi_rvalid;
  input [1:0]s_axi_rready;
  output [223:0]m_axi_awaddr;
  output [20:0]m_axi_awprot;
  output [6:0]m_axi_awvalid;
  input [6:0]m_axi_awready;
  output [223:0]m_axi_wdata;
  output [27:0]m_axi_wstrb;
  output [6:0]m_axi_wvalid;
  input [6:0]m_axi_wready;
  input [13:0]m_axi_bresp;
  input [6:0]m_axi_bvalid;
  output [6:0]m_axi_bready;
  output [223:0]m_axi_araddr;
  output [20:0]m_axi_arprot;
  output [6:0]m_axi_arvalid;
  input [6:0]m_axi_arready;
  input [223:0]m_axi_rdata;
  input [13:0]m_axi_rresp;
  input [6:0]m_axi_rvalid;
  output [6:0]m_axi_rready;
endmodule