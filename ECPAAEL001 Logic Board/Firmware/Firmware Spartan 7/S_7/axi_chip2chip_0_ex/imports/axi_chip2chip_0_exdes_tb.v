/******************************************************************************
-- (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
*******************************************************************************/

// The AXI Chip2Chip issues the Aurora POR as per Aurora requirements
// Due to this the example design simulation can take huge amount of time
// to simulate
// For faster simulations, it is recommended to set the parameter c_simulation
// in IP instance to '1' before opening the example design
// setting c_simulation to 1 disables the Aurora reset sequence
// This parameter is hidden and should be exercised ONLY for example design
// simulations
// In normal use cases, the Aurora reset sequence can be initiated by applying
// a pulse of at least 10 clocks wide on C2C pma_init_in port
// Issuing a reset to C2C only issues aurora_rst_out signal

// To reset the C2C setup:
// the Slave C2C be reset and released, followed by Master C2C 
// reset and release


`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_chip2chip_0_exdes_tb (
  output wire lite_error,
  output wire axi4_error
);
    wire [((36/2)-1)-1:0] t_axi_sio_data_out_mas;
    wire [((36/2)-1)-1:0] t_axi_sio_data_in_mas;
    wire [((36/2)-1)-1:0] t_axi_sio_data_out_slv;
    wire [((36/2)-1)-1:0] t_axi_sio_data_in_slv;

    assign                t_axi_sio_data_in_mas = t_axi_sio_data_out_slv;
    assign                t_axi_sio_data_in_slv = t_axi_sio_data_out_mas;
    wire                  axi_c2c_tx_diff_clk_out_p_mas;
    wire                  axi_c2c_tx_diff_clk_out_n_mas;
    wire                  axi_c2c_rx_diff_clk_in_p_mas;
    wire                  axi_c2c_rx_diff_clk_in_n_mas;
    wire                  axi_c2c_rx_diff_clk_in_p_slv;
    wire                  axi_c2c_rx_diff_clk_in_n_slv;
    wire                  axi_c2c_tx_diff_clk_out_p_slv;
    wire                  axi_c2c_tx_diff_clk_out_n_slv;

    assign               axi_c2c_rx_diff_clk_in_p_slv = axi_c2c_tx_diff_clk_out_p_mas;
    assign               axi_c2c_rx_diff_clk_in_n_slv = axi_c2c_tx_diff_clk_out_n_mas;
    assign               axi_c2c_rx_diff_clk_in_p_mas = axi_c2c_tx_diff_clk_out_p_slv;
    assign               axi_c2c_rx_diff_clk_in_n_mas = axi_c2c_tx_diff_clk_out_n_slv;
    wire                  t_axi_calib_done_out_mas;
    wire                  t_axi_calib_error_out_mas;
    wire                  t_axi_calib_done_out_slv;
    wire                  t_axi_calib_error_out_slv;
    wire                  axi_c2c_link_error_out_mas;

reg start_traffic;
reg clk_200_p;
reg clk_200_n;
reg reset;
real CLK_PER = 1000.0/200.0;
real PARTNER_CLK_PER = 1000.0/100.0;
real LITE_CLK_PER = 1000.0/100.0;
real PHY_CLK_PER = 1000.0/100;
real IDELAY_CLK_PER = 1000.0/200.0;

  reg m_aresetn_partner;
  reg m_aclk_partner;
  reg s_axi_lite_aclk;
  reg idelay_ref_clk;


// In normal use cases, the Aurora reset sequence can be initiated by applying
// a pulse of at least 10 clocks wide on C2C pma_init_in port
// Issuing a reset to C2C only issues aurora_rst_out signal

// If MMCM is used to generate a stable clock (init_clk), pma_init needs to be applied to
// the Aurora core until MMCM lock is established. This ensures that the core remains
// in a known state before a stable clock is available for the core.
// This achieve this, simply hold the pma_init_in of C2C to high until the MMCM is locked

initial
begin
  clk_200_p        = 0;
  clk_200_n        = 1;
  reset            = 1;
  start_traffic    = 0;
  m_aresetn_partner = 0;
  m_aclk_partner = 0;
  s_axi_lite_aclk = 0;
  idelay_ref_clk = 0;
  #45;
  reset            = 0;
  m_aresetn_partner = 1;
  wait ( t_axi_calib_done_out_mas | t_axi_calib_done_out_slv | t_axi_calib_error_out_mas | t_axi_calib_error_out_slv );
  #50000;
  if ( t_axi_calib_error_out_mas | t_axi_calib_error_out_slv)
  begin
     $display ( "Error: Link Not Detected" );
     $finish;
  end
  else
  begin
     $display ( "Link detected" );
     start_traffic    = 1;
  end
  #5000;
  #5000;
  $display ("Test Completed Successfully");
  $finish;
end

always #(CLK_PER/2) clk_200_p = ~clk_200_p;
always #(CLK_PER/2) clk_200_n = ~clk_200_n;


  always #(PARTNER_CLK_PER/2) m_aclk_partner = ~m_aclk_partner;
  always #(LITE_CLK_PER/2) s_axi_lite_aclk = ~s_axi_lite_aclk;
  always #(IDELAY_CLK_PER/2) idelay_ref_clk = ~idelay_ref_clk;


axi_chip2chip_0_exdes_sim_top exdes_inst (
  .clk_200_p(clk_200_p),
  .clk_200_n(clk_200_n),
  .reset(reset),
  .start_traffic(start_traffic), 
  .m_aresetn(m_aresetn_partner),
  .m_aclk(m_aclk_partner),
  .s_axi_lite_aclk(s_axi_lite_aclk),
  .idelay_ref_clk(idelay_ref_clk),
  .t_axi_sio_data_out_mas(t_axi_sio_data_out_mas),
  .t_axi_sio_data_in_mas(t_axi_sio_data_in_mas),
  .t_axi_sio_data_out_slv(t_axi_sio_data_out_slv),
  .t_axi_sio_data_in_slv(t_axi_sio_data_in_slv),
  .axi_c2c_tx_diff_clk_out_p_mas(axi_c2c_tx_diff_clk_out_p_mas),
  .axi_c2c_tx_diff_clk_out_n_mas(axi_c2c_tx_diff_clk_out_n_mas),
  .axi_c2c_rx_diff_clk_in_p_mas(axi_c2c_rx_diff_clk_in_p_mas),
  .axi_c2c_rx_diff_clk_in_n_mas(axi_c2c_rx_diff_clk_in_n_mas),
  .axi_c2c_rx_diff_clk_in_p_slv(axi_c2c_rx_diff_clk_in_p_slv),
  .axi_c2c_rx_diff_clk_in_n_slv(axi_c2c_rx_diff_clk_in_n_slv),
  .axi_c2c_tx_diff_clk_out_p_slv(axi_c2c_tx_diff_clk_out_p_slv),
  .axi_c2c_tx_diff_clk_out_n_slv(axi_c2c_tx_diff_clk_out_n_slv),
  .t_axi_calib_done_out_mas(t_axi_calib_done_out_mas),
  .t_axi_calib_error_out_mas(t_axi_calib_error_out_mas),
  .t_axi_calib_done_out_slv(t_axi_calib_done_out_slv),
  .t_axi_calib_error_out_slv(t_axi_calib_error_out_slv),
  .axi_c2c_link_error_out_mas(axi_c2c_link_error_out_mas),
  .lite_error(lite_error),
  .axi4_error(axi4_error)
);

endmodule

