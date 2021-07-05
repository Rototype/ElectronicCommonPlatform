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
`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module traffic_lite_gen
#(
parameter   C_GEN_MAS_LITE_TRAFFIC   = 0,
parameter   C_GEN_LITE_TRAFFIC_MAS_SLV = 0,
parameter   C_AXI_LITE_DATA_WIDTH    = 32,
parameter   C_AXI_LITE_ADDR_WIDTH    = 32,
parameter   C_AXI_LITE_PROT_WIDTH    = 2,
parameter   C_AXI_LITE_STB_WIDTH     = 4,
parameter   C_AXI_LITE_RESP_WIDTH    = 2
)
(
  input wire                               s_axi_lite_aclk,
  input wire                               s_axi_lite_reset_n,

  input wire                               m_axi_lite_aclk,
  input wire                               m_axi_lite_reset_n,

  input wire                               m_axi_lite_wvalid,
  input wire                               m_axi_lite_arvalid,
  input wire                               m_axi_lite_awvalid,
  output wire                              m_axi_lite_arready,
  output wire                              m_axi_lite_awready,
  output wire                              m_axi_lite_wready,

  output wire                              m_axi_lite_rvalid,
  output wire  [C_AXI_LITE_DATA_WIDTH-1:0]      m_axi_lite_rdata,
  output wire  [C_AXI_LITE_RESP_WIDTH-1:0]      m_axi_lite_rresp,
  input wire                               m_axi_lite_rready,
                                          
  output wire                              m_axi_lite_bvalid,
  output wire  [C_AXI_LITE_RESP_WIDTH-1:0]      m_axi_lite_bresp,
  input wire                               m_axi_lite_bready,

  output wire                              s_axi_lite_awvalid,
  output wire  [C_AXI_LITE_ADDR_WIDTH-1:0]      s_axi_lite_awaddr,
  output wire  [C_AXI_LITE_PROT_WIDTH-1:0]      s_axi_lite_awprot,
  input wire                               s_axi_lite_awready,

  output wire  [C_AXI_LITE_ADDR_WIDTH-1:0]      s_axi_lite_araddr,
  output wire                              s_axi_lite_arvalid,
  output wire  [C_AXI_LITE_PROT_WIDTH-1:0]      s_axi_lite_arprot,
  input wire                               s_axi_lite_arready,

  output wire  [C_AXI_LITE_DATA_WIDTH-1:0]      s_axi_lite_wdata,
  output wire  [C_AXI_LITE_STB_WIDTH-1:0]       s_axi_lite_wstrb,
  input wire                               s_axi_lite_wready,
  output wire                              s_axi_lite_wvalid,

  input wire                               s_axi_lite_bvalid,
  output wire                              s_axi_lite_bready,
                                         
  output wire                              s_axi_lite_rready,
  input wire                               s_axi_lite_rvalid
);

  reg                              m_axi_lite_arready_reg;
  reg                              m_axi_lite_awready_reg;
  reg                              m_axi_lite_wready_reg;
 
  reg                              m_axi_lite_rvalid_reg;
  reg  [C_AXI_LITE_DATA_WIDTH-1:0]      m_axi_lite_rdata_reg;
  reg  [C_AXI_LITE_RESP_WIDTH-1:0]      m_axi_lite_rresp_reg;
                                   
  reg                              m_axi_lite_bvalid_reg;
  reg  [C_AXI_LITE_RESP_WIDTH-1:0]      m_axi_lite_bresp_reg;

  reg                              s_axi_lite_awvalid_reg;
  reg  [C_AXI_LITE_ADDR_WIDTH-1:0]      s_axi_lite_awaddr_reg;
  reg  [C_AXI_LITE_PROT_WIDTH-1:0]      s_axi_lite_awprot_reg;

  reg  [C_AXI_LITE_ADDR_WIDTH-1:0]      s_axi_lite_araddr_reg;
  reg                              s_axi_lite_arvalid_reg;
  reg  [C_AXI_LITE_PROT_WIDTH-1:0]      s_axi_lite_arprot_reg;

  reg  [C_AXI_LITE_DATA_WIDTH-1:0]      s_axi_lite_wdata_reg;
  reg  [C_AXI_LITE_STB_WIDTH-1:0]       s_axi_lite_wstrb_reg;
  reg                              s_axi_lite_wvalid_reg;

  reg                              s_axi_lite_bready_reg;
                                  
  reg                              s_axi_lite_rready_reg;

  reg [7:0] awcount, arcount,wcount;

generate if ( ( C_GEN_MAS_LITE_TRAFFIC == 1 ) & ( C_GEN_LITE_TRAFFIC_MAS_SLV == 0 ) ) 
begin: master_aw_ar_w_lite_traffic_gen

  assign  s_axi_lite_awvalid  =  s_axi_lite_awvalid_reg;
  assign  s_axi_lite_awaddr   =  s_axi_lite_awaddr_reg;
  assign  s_axi_lite_awprot   =  s_axi_lite_awprot_reg;
  assign  s_axi_lite_araddr   =  s_axi_lite_araddr_reg;
  assign  s_axi_lite_arvalid  =  s_axi_lite_arvalid_reg;
  assign  s_axi_lite_arprot   =  s_axi_lite_arprot_reg;
  assign  s_axi_lite_wdata    =  s_axi_lite_wdata_reg;
  assign  s_axi_lite_wstrb    =  s_axi_lite_wstrb_reg;
  assign  s_axi_lite_wvalid   =  s_axi_lite_wvalid_reg;
  assign  s_axi_lite_bready   =  s_axi_lite_bready_reg;
  assign  s_axi_lite_rready   =  s_axi_lite_rready_reg;
  assign  m_axi_lite_rvalid   =  1'b 0; 
  assign  m_axi_lite_rdata    =  1'b 0; 
  assign  m_axi_lite_rresp    =  1'b 0; 
  assign  m_axi_lite_bvalid   =  1'b 0; 
  assign  m_axi_lite_bresp    =  1'b 0; 
  assign  m_axi_lite_arready  =  1'b 0; 
  assign  m_axi_lite_awready  =  1'b 0; 
  assign  m_axi_lite_wready   =  1'b 0; 
  always @ ( posedge s_axi_lite_aclk )
  begin
     if ( s_axi_lite_reset_n == 1'b 0 )
     begin
        s_axi_lite_arvalid_reg    <= 0;
        s_axi_lite_araddr_reg     <= { C_AXI_LITE_ADDR_WIDTH { 1'b 0 } };
        s_axi_lite_arprot_reg     <= { C_AXI_LITE_PROT_WIDTH { 1'b 0 } };
     
        s_axi_lite_awvalid_reg    <= 1'b 0;
        s_axi_lite_awaddr_reg     <= { C_AXI_LITE_ADDR_WIDTH { 1'b 0 } };
        s_axi_lite_awprot_reg     <= { C_AXI_LITE_PROT_WIDTH { 1'b 0 } };
     
        s_axi_lite_wvalid_reg     <= 0;
        s_axi_lite_wdata_reg      <= { C_AXI_LITE_DATA_WIDTH { 1'b 0 } };
        s_axi_lite_wstrb_reg      <= { C_AXI_LITE_STB_WIDTH { 1'b 0 } };
     
        s_axi_lite_bready_reg     <= 1'b 0;
        s_axi_lite_rready_reg     <= 1'b 0;
        awcount                   <= 8'b 0;
        arcount                   <= 8'b 0;
        wcount                    <= 8'b 0;
     end
     else
     begin
        awcount              <= awcount + 1'b 1;
        arcount              <= arcount + 1'b 1;
        wcount               <= wcount + 1'b 1;
        s_axi_lite_rready_reg    <= s_axi_lite_rvalid & ~s_axi_lite_rready_reg;
        s_axi_lite_bready_reg    <= s_axi_lite_bvalid & ~s_axi_lite_bready_reg;
     
        if ( ~s_axi_lite_awvalid_reg & (&awcount) )
        begin
           s_axi_lite_awaddr_reg    <= s_axi_lite_awaddr_reg + 8'h 55;
           s_axi_lite_awprot_reg    <= s_axi_lite_awprot_reg + 1'b 1;
           s_axi_lite_awvalid_reg   <= 1'b 1;
        end
        else if ( s_axi_lite_awvalid_reg )
        begin
           s_axi_lite_awvalid_reg   <= ~s_axi_lite_awready;
        end
        else
        begin
           s_axi_lite_awvalid_reg   <= 1'b 0;
        end
     
        if ( ~s_axi_lite_arvalid_reg & (&arcount) )
        begin
           s_axi_lite_araddr_reg    <= s_axi_lite_araddr_reg + 8'h 66;
           s_axi_lite_arprot_reg    <= s_axi_lite_arprot_reg + 2'h 2;
           s_axi_lite_arvalid_reg   <= 1'b 1;
        end
        else if ( s_axi_lite_arvalid_reg )
        begin
           s_axi_lite_arvalid_reg   <= ~s_axi_lite_arready;
        end
        else
        begin
           s_axi_lite_arvalid_reg   <= 1'b 0;
        end
     
        if ( ~s_axi_lite_wvalid_reg & (&wcount) )
        begin
           s_axi_lite_wdata_reg     <= s_axi_lite_wdata_reg + 8'h aa;
           s_axi_lite_wstrb_reg     <= s_axi_lite_wstrb_reg + 2'h 2;
           s_axi_lite_wvalid_reg    <= 1'b 1;
        end
        else if ( s_axi_lite_wvalid_reg )
        begin
           s_axi_lite_wvalid_reg    <= ~s_axi_lite_wready;
        end
        else
        begin
           s_axi_lite_wvalid_reg    <= 1'b 0;
        end
     end
  end
end
else if ( ( C_GEN_MAS_LITE_TRAFFIC == 0 ) & ( C_GEN_LITE_TRAFFIC_MAS_SLV == 0 ) ) 
begin: slave_aw_ar_w_lite_traffic_gen
  assign  s_axi_lite_awvalid  =  1'b 0;
  assign  s_axi_lite_awaddr   =  1'b 0;
  assign  s_axi_lite_awprot   =  1'b 0;
  assign  s_axi_lite_araddr   =  1'b 0;
  assign  s_axi_lite_arvalid  =  1'b 0;
  assign  s_axi_lite_arprot   =  1'b 0;
  assign  s_axi_lite_wdata    =  1'b 0;
  assign  s_axi_lite_wstrb    =  1'b 0;
  assign  s_axi_lite_wvalid   =  1'b 0;
  assign  s_axi_lite_bready   =  1'b 0;
  assign  s_axi_lite_rready   =  1'b 0;
  assign  m_axi_lite_rvalid   =  m_axi_lite_rvalid_reg;
  assign  m_axi_lite_rdata    =  m_axi_lite_rdata_reg;
  assign  m_axi_lite_rresp    =  m_axi_lite_rresp_reg;
  assign  m_axi_lite_bvalid   =  m_axi_lite_bvalid_reg;
  assign  m_axi_lite_bresp    =  m_axi_lite_bresp_reg;
  assign  m_axi_lite_arready  =  m_axi_lite_arready_reg;
  assign  m_axi_lite_awready  =  m_axi_lite_awready_reg;
  assign  m_axi_lite_wready   =  m_axi_lite_wready_reg;
  always @ ( posedge m_axi_lite_aclk )
  begin
     if ( m_axi_lite_reset_n == 1'b 0 )
     begin
        m_axi_lite_awready_reg    <= 1'b 0;
        m_axi_lite_wready_reg     <= 1'b 0;
        m_axi_lite_bvalid_reg     <= 1'b 0;
        m_axi_lite_bresp_reg      <= { C_AXI_LITE_RESP_WIDTH { 1'b 0 } };
        m_axi_lite_arready_reg    <= 1'b 0;
        m_axi_lite_rvalid_reg     <= 1'b 0;
        m_axi_lite_rdata_reg      <= { C_AXI_LITE_DATA_WIDTH { 1'b 0 } };
        m_axi_lite_rresp_reg      <= { C_AXI_LITE_RESP_WIDTH { 1'b 0 } };
     end
     else
     begin
        m_axi_lite_arready_reg    <= m_axi_lite_arvalid & ~m_axi_lite_arready_reg;
        m_axi_lite_awready_reg    <= m_axi_lite_awvalid & ~m_axi_lite_awready_reg;
        m_axi_lite_wready_reg     <= m_axi_lite_wvalid  & ~m_axi_lite_wready_reg;
    
        m_axi_lite_bvalid_reg     <= m_axi_lite_bready & ~m_axi_lite_bvalid_reg;
        m_axi_lite_rvalid_reg     <= m_axi_lite_rready & ~m_axi_lite_rvalid_reg;
    
        if ( m_axi_lite_wready_reg & m_axi_lite_wvalid & ~m_axi_lite_bvalid_reg )
        begin
           m_axi_lite_bresp_reg     <= m_axi_lite_bresp_reg + 1'b 1;
           m_axi_lite_bvalid_reg    <= 1'b 1;
        end
        else if ( m_axi_lite_bvalid_reg )
        begin
           m_axi_lite_bvalid_reg    <= ~m_axi_lite_bready;
        end
        else
        begin
           m_axi_lite_bvalid_reg    <= 1'b 0;
        end
        if ( m_axi_lite_arready_reg & m_axi_lite_arvalid & ~m_axi_lite_rvalid_reg )
        begin
           m_axi_lite_rdata_reg     <= m_axi_lite_rdata_reg + 8'h 77;
           m_axi_lite_rresp_reg     <= m_axi_lite_rresp_reg + 2'h 1;
           m_axi_lite_rvalid_reg    <= 1'b 1;
        end
        else if ( m_axi_lite_rvalid_reg )
        begin
           m_axi_lite_rvalid_reg    <= ~m_axi_lite_rready;
        end
        else
        begin
           m_axi_lite_rvalid_reg    <= 1'b 0;
        end
     end
  end
end
else
begin
  assign  s_axi_lite_awvalid  =  s_axi_lite_awvalid_reg;
  assign  s_axi_lite_awaddr   =  s_axi_lite_awaddr_reg;
  assign  s_axi_lite_awprot   =  s_axi_lite_awprot_reg;
  assign  s_axi_lite_araddr   =  s_axi_lite_araddr_reg;
  assign  s_axi_lite_arvalid  =  s_axi_lite_arvalid_reg;
  assign  s_axi_lite_arprot   =  s_axi_lite_arprot_reg;
  assign  s_axi_lite_wdata    =  s_axi_lite_wdata_reg;
  assign  s_axi_lite_wstrb    =  s_axi_lite_wstrb_reg;
  assign  s_axi_lite_wvalid   =  s_axi_lite_wvalid_reg;
  assign  s_axi_lite_bready   =  s_axi_lite_bready_reg;
  assign  s_axi_lite_rready   =  s_axi_lite_rready_reg;
  assign  m_axi_lite_rvalid   =  m_axi_lite_rvalid_reg;
  assign  m_axi_lite_rdata    =  m_axi_lite_rdata_reg;
  assign  m_axi_lite_rresp    =  m_axi_lite_rresp_reg;
  assign  m_axi_lite_bvalid   =  m_axi_lite_bvalid_reg;
  assign  m_axi_lite_bresp    =  m_axi_lite_bresp_reg;
  assign  m_axi_lite_arready  =  m_axi_lite_arready_reg;
  assign  m_axi_lite_awready  =  m_axi_lite_awready_reg;
  assign  m_axi_lite_wready   =  m_axi_lite_wready_reg;
  always @ ( posedge s_axi_lite_aclk )
  begin
     if ( s_axi_lite_reset_n == 1'b 0 )
     begin
        s_axi_lite_arvalid_reg    <= 0;
        s_axi_lite_araddr_reg     <= { C_AXI_LITE_ADDR_WIDTH { 1'b 0 } };
        s_axi_lite_arprot_reg     <= { C_AXI_LITE_PROT_WIDTH { 1'b 0 } };
     
        s_axi_lite_awvalid_reg    <= 1'b 0;
        s_axi_lite_awaddr_reg     <= { C_AXI_LITE_ADDR_WIDTH { 1'b 0 } };
        s_axi_lite_awprot_reg     <= { C_AXI_LITE_PROT_WIDTH { 1'b 0 } };
     
        s_axi_lite_wvalid_reg     <= 0;
        s_axi_lite_wdata_reg      <= { C_AXI_LITE_DATA_WIDTH { 1'b 0 } };
        s_axi_lite_wstrb_reg      <= { C_AXI_LITE_STB_WIDTH { 1'b 0 } };
     
        s_axi_lite_bready_reg     <= 1'b 0;
        s_axi_lite_rready_reg     <= 1'b 0;
        awcount                   <= 8'b 0;
        arcount                   <= 8'b 0;
        wcount                    <= 8'b 0;
     end
     else
     begin
        awcount              <= awcount + 1'b 1;
        arcount              <= arcount + 1'b 1;
        wcount               <= wcount + 1'b 1;
        s_axi_lite_rready_reg    <= s_axi_lite_rvalid & ~s_axi_lite_rready_reg;
        s_axi_lite_bready_reg    <= s_axi_lite_bvalid & ~s_axi_lite_bready_reg;
     
        if ( ~s_axi_lite_awvalid_reg & (&awcount) )
        begin
           s_axi_lite_awaddr_reg    <= s_axi_lite_awaddr_reg + 8'h 55;
           s_axi_lite_awprot_reg    <= s_axi_lite_awprot_reg + 1'b 1;
           s_axi_lite_awvalid_reg   <= 1'b 1;
        end
        else if ( s_axi_lite_awvalid_reg )
        begin
           s_axi_lite_awvalid_reg   <= ~s_axi_lite_awready;
        end
        else
        begin
           s_axi_lite_awvalid_reg   <= 1'b 0;
        end
     
        if ( ~s_axi_lite_arvalid_reg & (&arcount) )
        begin
           s_axi_lite_araddr_reg    <= s_axi_lite_araddr_reg + 8'h 66;
           s_axi_lite_arprot_reg    <= s_axi_lite_arprot_reg + 2'h 2;
           s_axi_lite_arvalid_reg   <= 1'b 1;
        end
        else if ( s_axi_lite_arvalid_reg )
        begin
           s_axi_lite_arvalid_reg   <= ~s_axi_lite_arready;
        end
        else
        begin
           s_axi_lite_arvalid_reg   <= 1'b 0;
        end
     
        if ( ~s_axi_lite_wvalid_reg & (&wcount) )
        begin
           s_axi_lite_wdata_reg     <= s_axi_lite_wdata_reg + 8'h aa;
           s_axi_lite_wstrb_reg     <= s_axi_lite_wstrb_reg + 2'h 2;
           s_axi_lite_wvalid_reg    <= 1'b 1;
        end
        else if ( s_axi_lite_wvalid_reg )
        begin
           s_axi_lite_wvalid_reg    <= ~s_axi_lite_wready;
        end
        else
        begin
           s_axi_lite_wvalid_reg    <= 1'b 0;
        end
     end
  end

  always @ ( posedge m_axi_lite_aclk )
  begin
     if ( m_axi_lite_reset_n == 1'b 0 )
     begin
        m_axi_lite_awready_reg    <= 1'b 0;
        m_axi_lite_wready_reg     <= 1'b 0;
        m_axi_lite_bvalid_reg     <= 1'b 0;
        m_axi_lite_bresp_reg      <= { C_AXI_LITE_RESP_WIDTH { 1'b 0 } };
        m_axi_lite_arready_reg    <= 1'b 0;
        m_axi_lite_rvalid_reg     <= 1'b 0;
        m_axi_lite_rdata_reg      <= { C_AXI_LITE_DATA_WIDTH { 1'b 0 } };
        m_axi_lite_rresp_reg      <= { C_AXI_LITE_RESP_WIDTH { 1'b 0 } };
     end
     else
     begin
        m_axi_lite_arready_reg    <= m_axi_lite_arvalid & ~m_axi_lite_arready_reg;
        m_axi_lite_awready_reg    <= m_axi_lite_awvalid & ~m_axi_lite_awready_reg;
        m_axi_lite_wready_reg     <= m_axi_lite_wvalid  & ~m_axi_lite_wready_reg;
    
        m_axi_lite_bvalid_reg     <= m_axi_lite_bready & ~m_axi_lite_bvalid_reg;
        m_axi_lite_rvalid_reg     <= m_axi_lite_rready & ~m_axi_lite_rvalid_reg;
    
        if ( m_axi_lite_wready_reg & m_axi_lite_wvalid & ~m_axi_lite_bvalid_reg )
        begin
           m_axi_lite_bresp_reg     <= m_axi_lite_bresp_reg + 1'b 1;
           m_axi_lite_bvalid_reg    <= 1'b 1;
        end
        else if ( m_axi_lite_bvalid_reg )
        begin
           m_axi_lite_bvalid_reg    <= ~m_axi_lite_bready;
        end
        else
        begin
           m_axi_lite_bvalid_reg    <= 1'b 0;
        end
        if ( m_axi_lite_arready_reg & m_axi_lite_arvalid & ~m_axi_lite_rvalid_reg )
        begin
           m_axi_lite_rdata_reg     <= m_axi_lite_rdata_reg + 8'h 77;
           m_axi_lite_rresp_reg     <= m_axi_lite_rresp_reg + 2'h 1;
           m_axi_lite_rvalid_reg    <= 1'b 1;
        end
        else if ( m_axi_lite_rvalid_reg )
        begin
           m_axi_lite_rvalid_reg    <= ~m_axi_lite_rready;
        end
        else
        begin
           m_axi_lite_rvalid_reg    <= 1'b 0;
        end
     end
  end
end
endgenerate
endmodule
