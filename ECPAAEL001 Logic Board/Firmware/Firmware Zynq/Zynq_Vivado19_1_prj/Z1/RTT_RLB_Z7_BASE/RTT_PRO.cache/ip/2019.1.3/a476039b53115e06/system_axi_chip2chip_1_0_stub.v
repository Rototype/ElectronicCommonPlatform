// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Fri May  8 17:53:47 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_chip2chip_1_0_stub.v
// Design      : system_axi_chip2chip_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_chip2chip_v5_0_6,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(m_aclk, m_aresetn, m_axi_awid, m_axi_awaddr, 
  m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awvalid, m_axi_awready, m_axi_wuser, 
  m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_wready, m_axi_bid, m_axi_bresp, 
  m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, m_axi_arlen, m_axi_arsize, 
  m_axi_arburst, m_axi_arvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, 
  m_axi_rlast, m_axi_rvalid, m_axi_rready, axi_c2c_s2m_intr_in, axi_c2c_m2s_intr_out, 
  idelay_ref_clk, axi_c2c_selio_tx_data_out, axi_c2c_selio_rx_data_in, 
  axi_c2c_selio_tx_diff_clk_out_p, axi_c2c_selio_tx_diff_clk_out_n, 
  axi_c2c_selio_rx_diff_clk_in_p, axi_c2c_selio_rx_diff_clk_in_n, 
  axi_c2c_link_status_out, axi_c2c_multi_bit_error_out, s_axi_lite_aclk, 
  s_axi_lite_awaddr, s_axi_lite_awprot, s_axi_lite_awvalid, s_axi_lite_awready, 
  s_axi_lite_wdata, s_axi_lite_wstrb, s_axi_lite_wvalid, s_axi_lite_wready, 
  s_axi_lite_bresp, s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_araddr, 
  s_axi_lite_arprot, s_axi_lite_arvalid, s_axi_lite_arready, s_axi_lite_rdata, 
  s_axi_lite_rresp, s_axi_lite_rvalid, s_axi_lite_rready)
/* synthesis syn_black_box black_box_pad_pin="m_aclk,m_aresetn,m_axi_awid[11:0],m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awvalid,m_axi_awready,m_axi_wuser[3:0],m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bid[11:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_arid[11:0],m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arvalid,m_axi_arready,m_axi_rid[11:0],m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready,axi_c2c_s2m_intr_in[3:0],axi_c2c_m2s_intr_out[3:0],idelay_ref_clk,axi_c2c_selio_tx_data_out[16:0],axi_c2c_selio_rx_data_in[16:0],axi_c2c_selio_tx_diff_clk_out_p,axi_c2c_selio_tx_diff_clk_out_n,axi_c2c_selio_rx_diff_clk_in_p,axi_c2c_selio_rx_diff_clk_in_n,axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,s_axi_lite_aclk,s_axi_lite_awaddr[31:0],s_axi_lite_awprot[1:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[31:0],s_axi_lite_arprot[1:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready" */;
  input m_aclk;
  input m_aresetn;
  output [11:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wuser;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [11:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [11:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arvalid;
  input m_axi_arready;
  input [11:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input [3:0]axi_c2c_s2m_intr_in;
  output [3:0]axi_c2c_m2s_intr_out;
  input idelay_ref_clk;
  output [16:0]axi_c2c_selio_tx_data_out;
  input [16:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_selio_tx_diff_clk_out_p;
  output axi_c2c_selio_tx_diff_clk_out_n;
  input axi_c2c_selio_rx_diff_clk_in_p;
  input axi_c2c_selio_rx_diff_clk_in_n;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  input s_axi_lite_aclk;
  input [31:0]s_axi_lite_awaddr;
  input [1:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [31:0]s_axi_lite_araddr;
  input [1:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
endmodule
