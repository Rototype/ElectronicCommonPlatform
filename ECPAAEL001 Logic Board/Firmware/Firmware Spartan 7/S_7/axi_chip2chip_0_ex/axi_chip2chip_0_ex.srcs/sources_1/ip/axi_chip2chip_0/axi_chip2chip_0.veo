// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:axi_chip2chip:5.0
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
axi_chip2chip_0 your_instance_name (
  .s_aclk(s_aclk),                                                    // input wire s_aclk
  .s_aresetn(s_aresetn),                                              // input wire s_aresetn
  .s_axi_awid(s_axi_awid),                                            // input wire [11 : 0] s_axi_awid
  .s_axi_awaddr(s_axi_awaddr),                                        // input wire [31 : 0] s_axi_awaddr
  .s_axi_awlen(s_axi_awlen),                                          // input wire [7 : 0] s_axi_awlen
  .s_axi_awsize(s_axi_awsize),                                        // input wire [2 : 0] s_axi_awsize
  .s_axi_awburst(s_axi_awburst),                                      // input wire [1 : 0] s_axi_awburst
  .s_axi_awvalid(s_axi_awvalid),                                      // input wire s_axi_awvalid
  .s_axi_awready(s_axi_awready),                                      // output wire s_axi_awready
  .s_axi_wdata(s_axi_wdata),                                          // input wire [31 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb),                                          // input wire [3 : 0] s_axi_wstrb
  .s_axi_wlast(s_axi_wlast),                                          // input wire s_axi_wlast
  .s_axi_wvalid(s_axi_wvalid),                                        // input wire s_axi_wvalid
  .s_axi_wready(s_axi_wready),                                        // output wire s_axi_wready
  .s_axi_bid(s_axi_bid),                                              // output wire [11 : 0] s_axi_bid
  .s_axi_bresp(s_axi_bresp),                                          // output wire [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),                                        // output wire s_axi_bvalid
  .s_axi_bready(s_axi_bready),                                        // input wire s_axi_bready
  .s_axi_arid(s_axi_arid),                                            // input wire [11 : 0] s_axi_arid
  .s_axi_araddr(s_axi_araddr),                                        // input wire [31 : 0] s_axi_araddr
  .s_axi_arlen(s_axi_arlen),                                          // input wire [7 : 0] s_axi_arlen
  .s_axi_arsize(s_axi_arsize),                                        // input wire [2 : 0] s_axi_arsize
  .s_axi_arburst(s_axi_arburst),                                      // input wire [1 : 0] s_axi_arburst
  .s_axi_arvalid(s_axi_arvalid),                                      // input wire s_axi_arvalid
  .s_axi_arready(s_axi_arready),                                      // output wire s_axi_arready
  .s_axi_rid(s_axi_rid),                                              // output wire [11 : 0] s_axi_rid
  .s_axi_rdata(s_axi_rdata),                                          // output wire [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),                                          // output wire [1 : 0] s_axi_rresp
  .s_axi_rlast(s_axi_rlast),                                          // output wire s_axi_rlast
  .s_axi_rvalid(s_axi_rvalid),                                        // output wire s_axi_rvalid
  .s_axi_rready(s_axi_rready),                                        // input wire s_axi_rready
  .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),                          // input wire [3 : 0] axi_c2c_m2s_intr_in
  .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),                        // output wire [3 : 0] axi_c2c_s2m_intr_out
  .idelay_ref_clk(idelay_ref_clk),                                    // input wire idelay_ref_clk
  .axi_c2c_phy_clk(axi_c2c_phy_clk),                                  // input wire axi_c2c_phy_clk
  .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),              // output wire [16 : 0] axi_c2c_selio_tx_data_out
  .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),                // input wire [16 : 0] axi_c2c_selio_rx_data_in
  .axi_c2c_selio_tx_diff_clk_out_p(axi_c2c_selio_tx_diff_clk_out_p),  // output wire axi_c2c_selio_tx_diff_clk_out_p
  .axi_c2c_selio_tx_diff_clk_out_n(axi_c2c_selio_tx_diff_clk_out_n),  // output wire axi_c2c_selio_tx_diff_clk_out_n
  .axi_c2c_selio_rx_diff_clk_in_p(axi_c2c_selio_rx_diff_clk_in_p),    // input wire axi_c2c_selio_rx_diff_clk_in_p
  .axi_c2c_selio_rx_diff_clk_in_n(axi_c2c_selio_rx_diff_clk_in_n),    // input wire axi_c2c_selio_rx_diff_clk_in_n
  .axi_c2c_link_status_out(axi_c2c_link_status_out),                  // output wire axi_c2c_link_status_out
  .axi_c2c_multi_bit_error_out(axi_c2c_multi_bit_error_out),          // output wire axi_c2c_multi_bit_error_out
  .axi_c2c_link_error_out(axi_c2c_link_error_out),                    // output wire axi_c2c_link_error_out
  .m_axi_lite_aclk(m_axi_lite_aclk),                                  // input wire m_axi_lite_aclk
  .m_axi_lite_awaddr(m_axi_lite_awaddr),                              // output wire [31 : 0] m_axi_lite_awaddr
  .m_axi_lite_awprot(m_axi_lite_awprot),                              // output wire [1 : 0] m_axi_lite_awprot
  .m_axi_lite_awvalid(m_axi_lite_awvalid),                            // output wire m_axi_lite_awvalid
  .m_axi_lite_awready(m_axi_lite_awready),                            // input wire m_axi_lite_awready
  .m_axi_lite_wdata(m_axi_lite_wdata),                                // output wire [31 : 0] m_axi_lite_wdata
  .m_axi_lite_wstrb(m_axi_lite_wstrb),                                // output wire [3 : 0] m_axi_lite_wstrb
  .m_axi_lite_wvalid(m_axi_lite_wvalid),                              // output wire m_axi_lite_wvalid
  .m_axi_lite_wready(m_axi_lite_wready),                              // input wire m_axi_lite_wready
  .m_axi_lite_bresp(m_axi_lite_bresp),                                // input wire [1 : 0] m_axi_lite_bresp
  .m_axi_lite_bvalid(m_axi_lite_bvalid),                              // input wire m_axi_lite_bvalid
  .m_axi_lite_bready(m_axi_lite_bready),                              // output wire m_axi_lite_bready
  .m_axi_lite_araddr(m_axi_lite_araddr),                              // output wire [31 : 0] m_axi_lite_araddr
  .m_axi_lite_arprot(m_axi_lite_arprot),                              // output wire [1 : 0] m_axi_lite_arprot
  .m_axi_lite_arvalid(m_axi_lite_arvalid),                            // output wire m_axi_lite_arvalid
  .m_axi_lite_arready(m_axi_lite_arready),                            // input wire m_axi_lite_arready
  .m_axi_lite_rdata(m_axi_lite_rdata),                                // input wire [31 : 0] m_axi_lite_rdata
  .m_axi_lite_rresp(m_axi_lite_rresp),                                // input wire [1 : 0] m_axi_lite_rresp
  .m_axi_lite_rvalid(m_axi_lite_rvalid),                              // input wire m_axi_lite_rvalid
  .m_axi_lite_rready(m_axi_lite_rready)                              // output wire m_axi_lite_rready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file axi_chip2chip_0.v when simulating
// the core, axi_chip2chip_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.
