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
module traffic_lite_chk_partner
#(
parameter   C_CHK_MAS_LITE_TRAFFIC   = 0,
parameter   C_CHK_LITE_TRAFFIC_MAS_SLV = 0,
parameter   C_AXI_LITE_DATA_WIDTH    = 32,
parameter   C_AXI_LITE_ADDR_WIDTH    = 32,
parameter   C_AXI_LITE_PROT_WIDTH    = 2,
parameter   C_AXI_LITE_STB_WIDTH     = 4,
parameter   C_AXI_LITE_RESP_WIDTH    = 2
)
(
  input wire                              s_axi_lite_aclk,
  input wire                              s_axi_lite_reset_n,
  input wire                              m_axi_lite_aclk,
  input wire                              m_axi_lite_reset_n,

  input wire                              m_axi_lite_awvalid,
  input wire  [C_AXI_LITE_ADDR_WIDTH-1:0]      m_axi_lite_awaddr,
  input wire  [C_AXI_LITE_PROT_WIDTH-1:0]      m_axi_lite_awprot,
  input wire                              m_axi_lite_awready,

  input wire  [C_AXI_LITE_ADDR_WIDTH-1:0]      m_axi_lite_araddr,
  input wire                              m_axi_lite_arvalid,
  input wire  [C_AXI_LITE_PROT_WIDTH-1:0]      m_axi_lite_arprot,
  input wire                              m_axi_lite_arready,

  input wire  [C_AXI_LITE_DATA_WIDTH-1:0]      m_axi_lite_wdata,
  input wire  [C_AXI_LITE_STB_WIDTH-1:0]       m_axi_lite_wstrb,
  input wire                              m_axi_lite_wready,
  input wire                              m_axi_lite_wvalid,

  input wire                              s_axi_lite_bvalid,
  input wire                              s_axi_lite_bready,
  input wire  [C_AXI_LITE_RESP_WIDTH-1:0]      s_axi_lite_bresp,

  input wire  [C_AXI_LITE_DATA_WIDTH-1:0]      s_axi_lite_rdata,
  input wire  [C_AXI_LITE_RESP_WIDTH-1:0]      s_axi_lite_rresp,
  input wire                              s_axi_lite_rready,
  input wire                              s_axi_lite_rvalid,

  output   wire                            aw_lite_error,
  output   wire                            ar_lite_error,
  output   wire                            w_lite_error,
  output   wire                            r_lite_error,
  output   wire                            b_lite_error
);


  reg  aw_lite_error_reg;
  reg  ar_lite_error_reg;
  reg  w_lite_error_reg;
  reg  r_lite_error_reg;
  reg  b_lite_error_reg;

  reg  [C_AXI_LITE_ADDR_WIDTH-1:0]      exp_axi_lite_araddr;
  reg  [C_AXI_LITE_PROT_WIDTH-1:0]      exp_axi_lite_arprot;
  reg  [C_AXI_LITE_ADDR_WIDTH-1:0]      exp_axi_lite_awaddr;
  reg  [C_AXI_LITE_PROT_WIDTH-1:0]      exp_axi_lite_awprot;
  reg  [C_AXI_LITE_DATA_WIDTH-1:0]      exp_axi_lite_wdata;
  reg  [C_AXI_LITE_STB_WIDTH-1:0]       exp_axi_lite_wstrb;
  reg  [C_AXI_LITE_DATA_WIDTH-1:0]      exp_axi_lite_rdata;
  reg  [C_AXI_LITE_RESP_WIDTH-1:0]      exp_axi_lite_rresp;
  reg  [C_AXI_LITE_RESP_WIDTH-1:0]      exp_axi_lite_bresp;

generate if ( ( C_CHK_MAS_LITE_TRAFFIC == 1 ) & ( C_CHK_LITE_TRAFFIC_MAS_SLV == 0 ) ) 
begin: master_aw_ar_w_lite_traffic_gen


  assign      r_lite_error         = r_lite_error_reg;
  assign      b_lite_error         = b_lite_error_reg;
  assign      aw_lite_error        = 1'b 0;
  assign      ar_lite_error        = 1'b 0;
  assign      w_lite_error         = 1'b 0;
  always @ ( posedge s_axi_lite_aclk or negedge s_axi_lite_reset_n)
  begin
     if ( s_axi_lite_reset_n == 1'b 0 )
     begin
        exp_axi_lite_bresp   <= 1'h 1;
        exp_axi_lite_rdata   <= 8'h 77;
        exp_axi_lite_rresp   <= 1'h 1;
        r_lite_error_reg     <= 1'b 0;
        b_lite_error_reg     <= 1'b 0;
        aw_lite_error_reg    <= 1'b 0;
        ar_lite_error_reg    <= 1'b 0;
        w_lite_error_reg     <= 1'b 0;
     end
     else
     begin
        if ( s_axi_lite_rready & s_axi_lite_rvalid )
        begin
           exp_axi_lite_rdata  <= exp_axi_lite_rdata + 8'h 77;
           exp_axi_lite_rresp  <= exp_axi_lite_rresp + 2'h 1;
           if ( ( exp_axi_lite_rdata != s_axi_lite_rdata ) | ( exp_axi_lite_rresp != s_axi_lite_rresp ) )
           begin
              r_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_rdata !== s_axi_lite_rdata ) | ( exp_axi_lite_rresp !== s_axi_lite_rresp ) )
           begin
              $display ("ERROR! S_AXI LITE R channel error exp r %h resp %h, act r %h resp %h",
                         exp_axi_lite_rdata, exp_axi_lite_rresp, s_axi_lite_rdata, s_axi_lite_rresp );
           end
           else
           begin
              $display ("S_AXI LITE R channel exp r %h resp %h, act r %h resp %h",
                         exp_axi_lite_rdata, exp_axi_lite_rresp, s_axi_lite_rdata, s_axi_lite_rresp );
           end
           // synthesis translate_on
        end
    
        if ( s_axi_lite_bready & s_axi_lite_bvalid )
        begin
           exp_axi_lite_bresp  <= exp_axi_lite_bresp + 2'h 1;
           if ( exp_axi_lite_bresp != s_axi_lite_bresp )
           begin
              b_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( exp_axi_lite_bresp !== s_axi_lite_bresp )
           begin
              $display ("ERROR! S_AXI LITE B channel error exp %h , act %h",
                         exp_axi_lite_bresp, s_axi_lite_bresp );
           end
           else
           begin
              $display ("S_AXI LITE B channel exp %h , act %h",
                         exp_axi_lite_bresp, s_axi_lite_bresp );
           end
           // synthesis translate_on
        end
     end
  end
end
else if ( ( C_CHK_MAS_LITE_TRAFFIC == 0 ) & ( C_CHK_LITE_TRAFFIC_MAS_SLV == 0 ) ) 
begin: slave_aw_ar_w_lite_traffic_gen

  assign  aw_lite_error   =    aw_lite_error_reg;
  assign  ar_lite_error   =    ar_lite_error_reg;
  assign  w_lite_error    =    w_lite_error_reg;
  assign  r_lite_error    =    1'b 0;
  assign  b_lite_error    =    1'b 0;

  always @ ( posedge m_axi_lite_aclk or negedge m_axi_lite_reset_n)
  begin
     if ( m_axi_lite_reset_n == 1'b 0 )
     begin
        exp_axi_lite_awaddr  <= 8'h 55;
        exp_axi_lite_awprot  <= 2'h 1;
        exp_axi_lite_araddr  <= 8'h 66;
        exp_axi_lite_arprot  <= 2'h 2;
        exp_axi_lite_wdata   <= 8'h aa;
        exp_axi_lite_wstrb   <= 2'h 2;
        aw_lite_error_reg    <= 1'b 0;
        ar_lite_error_reg    <= 1'b 0;
        w_lite_error_reg     <= 1'b 0;
        r_lite_error_reg     <= 1'b 0;
        b_lite_error_reg     <= 1'b 0;
     end
     else
     begin
        if ( m_axi_lite_awvalid & m_axi_lite_awready )
        begin
           exp_axi_lite_awaddr  <= exp_axi_lite_awaddr + 8'h 55;
           exp_axi_lite_awprot  <= exp_axi_lite_awprot + 2'h 1;
           if ( ( exp_axi_lite_awaddr != m_axi_lite_awaddr ) | ( exp_axi_lite_awprot != m_axi_lite_awprot ) )
           begin
              aw_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_awaddr !== m_axi_lite_awaddr ) | ( exp_axi_lite_awprot !== m_axi_lite_awprot ) )
           begin
              $display ("ERROR! M_AXI LITE AW channel error exp aw %h prot %h, act aw %h prot %h",
                         exp_axi_lite_awaddr, exp_axi_lite_awprot, m_axi_lite_awaddr, m_axi_lite_awprot );
           end
           else
           begin
              $display ("M_AXI LITE AW channel exp aw %h prot %h, act aw %h prot %h",
                         exp_axi_lite_awaddr, exp_axi_lite_awprot, m_axi_lite_awaddr, m_axi_lite_awprot );
           end
           // synthesis translate_on
        end
        if ( m_axi_lite_wready & m_axi_lite_wvalid )
        begin
           exp_axi_lite_wdata  <= exp_axi_lite_wdata + 8'h aa;
           exp_axi_lite_wstrb  <= exp_axi_lite_wstrb + 2'h 2;
           if ( ( exp_axi_lite_wdata != m_axi_lite_wdata ) | ( exp_axi_lite_wstrb != m_axi_lite_wstrb ) )
           begin
              w_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_wdata !== m_axi_lite_wdata ) | ( exp_axi_lite_wstrb !== m_axi_lite_wstrb ) )
           begin
              $display ("ERROR! M_AXI LITE W channel error exp w %h strb %h, act w %h strb %h",
                         exp_axi_lite_wdata, exp_axi_lite_wstrb, m_axi_lite_wdata, m_axi_lite_wstrb );
           end
           else
           begin
              $display ("M_AXI LITE W channel exp w %h strb %h, act w %h strb %h",
                         exp_axi_lite_wdata, exp_axi_lite_wstrb, m_axi_lite_wdata, m_axi_lite_wstrb );
           end
           // synthesis translate_on
        end
        if ( m_axi_lite_arready & m_axi_lite_arvalid )
        begin
           exp_axi_lite_araddr  <= exp_axi_lite_araddr + 8'h 66;
           exp_axi_lite_arprot  <= exp_axi_lite_arprot + 2'h 2;
           if ( ( exp_axi_lite_araddr != m_axi_lite_araddr ) | ( exp_axi_lite_arprot != m_axi_lite_arprot ) )
           begin
              ar_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_araddr !== m_axi_lite_araddr ) | ( exp_axi_lite_arprot !== m_axi_lite_arprot ) )
           begin
              $display ("ERROR! M_AXI LITE AR channel error exp ar %h prot %h, act ar %h prot %h",
                         exp_axi_lite_araddr, exp_axi_lite_arprot, m_axi_lite_araddr, m_axi_lite_arprot );
           end
           else
           begin
              $display ("M_AXI LITE AR channel exp ar %h prot %h, act ar %h prot %h",
                         exp_axi_lite_araddr, exp_axi_lite_arprot, m_axi_lite_araddr, m_axi_lite_arprot );
           end
           // synthesis translate_on
        end
     end
  end
end
else
begin

  assign  aw_lite_error   =    aw_lite_error_reg;
  assign  ar_lite_error   =    ar_lite_error_reg;
  assign  w_lite_error    =    w_lite_error_reg;
  assign  r_lite_error    =    r_lite_error_reg;
  assign  b_lite_error    =    b_lite_error_reg;

  always @ ( posedge m_axi_lite_aclk or negedge m_axi_lite_reset_n)
  begin
     if ( m_axi_lite_reset_n == 1'b 0 )
     begin
        exp_axi_lite_awaddr  <= 8'h 55;
        exp_axi_lite_awprot  <= 2'h 1;
        exp_axi_lite_araddr  <= 8'h 66;
        exp_axi_lite_arprot  <= 2'h 2;
        exp_axi_lite_wdata   <= 8'h aa;
        exp_axi_lite_wstrb   <= 2'h 2;
        aw_lite_error_reg        <= 1'b 0;
        ar_lite_error_reg        <= 1'b 0;
        w_lite_error_reg         <= 1'b 0;
     end
     else
     begin
        if ( m_axi_lite_awvalid & m_axi_lite_awready )
        begin
           exp_axi_lite_awaddr  <= exp_axi_lite_awaddr + 8'h 55;
           exp_axi_lite_awprot  <= exp_axi_lite_awprot + 2'h 1;
           if ( ( exp_axi_lite_awaddr != m_axi_lite_awaddr ) | ( exp_axi_lite_awprot != m_axi_lite_awprot ) )
           begin
              aw_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_awaddr !== m_axi_lite_awaddr ) | ( exp_axi_lite_awprot !== m_axi_lite_awprot ) )
           begin
              $display ("ERROR! M_AXI LITE AW channel error exp aw %h prot %h, act aw %h prot %h",
                         exp_axi_lite_awaddr, exp_axi_lite_awprot, m_axi_lite_awaddr, m_axi_lite_awprot );
           end
           else
           begin
              $display ("M_AXI LITE AW channel exp aw %h prot %h, act aw %h prot %h",
                         exp_axi_lite_awaddr, exp_axi_lite_awprot, m_axi_lite_awaddr, m_axi_lite_awprot );
           end
           // synthesis translate_on
        end
        if ( m_axi_lite_wready & m_axi_lite_wvalid )
        begin
           exp_axi_lite_wdata  <= exp_axi_lite_wdata + 8'h aa;
           exp_axi_lite_wstrb  <= exp_axi_lite_wstrb + 2'h 2;
           if ( ( exp_axi_lite_wdata != m_axi_lite_wdata ) | ( exp_axi_lite_wstrb != m_axi_lite_wstrb ) )
           begin
              w_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_wdata !== m_axi_lite_wdata ) | ( exp_axi_lite_wstrb !== m_axi_lite_wstrb ) )
           begin
              $display ("ERROR! M_AXI LITE W channel error exp w %h strb %h, act w %h strb %h",
                         exp_axi_lite_wdata, exp_axi_lite_wstrb, m_axi_lite_wdata, m_axi_lite_wstrb );
           end
           else
           begin
              $display ("M_AXI LITE W channel exp w %h strb %h, act w %h strb %h",
                         exp_axi_lite_wdata, exp_axi_lite_wstrb, m_axi_lite_wdata, m_axi_lite_wstrb );
           end
           // synthesis translate_on
        end
        if ( m_axi_lite_arready & m_axi_lite_arvalid )
        begin
           exp_axi_lite_araddr  <= exp_axi_lite_araddr + 8'h 66;
           exp_axi_lite_arprot  <= exp_axi_lite_arprot + 2'h 2;
           if ( ( exp_axi_lite_araddr != m_axi_lite_araddr ) | ( exp_axi_lite_arprot != m_axi_lite_arprot ) )
           begin
              ar_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_araddr !== m_axi_lite_araddr ) | ( exp_axi_lite_arprot !== m_axi_lite_arprot ) )
           begin
              $display ("ERROR! M_AXI LITE AR channel error exp ar %h prot %h, act ar %h prot %h",
                         exp_axi_lite_araddr, exp_axi_lite_arprot, m_axi_lite_araddr, m_axi_lite_arprot );
           end
           else
           begin
              $display ("M_AXI LITE AR channel exp ar %h prot %h, act ar %h prot %h",
                         exp_axi_lite_araddr, exp_axi_lite_arprot, m_axi_lite_araddr, m_axi_lite_arprot );
           end
           // synthesis translate_on
        end
     end
  end
  always @ ( posedge s_axi_lite_aclk or negedge s_axi_lite_reset_n)
  begin
     if ( s_axi_lite_reset_n == 1'b 0 )
     begin
        exp_axi_lite_bresp    <= 1'h 1;
        exp_axi_lite_rdata    <= 8'h 77;
        exp_axi_lite_rresp    <= 1'h 1;
        r_lite_error_reg          <= 1'b 0;
        b_lite_error_reg          <= 1'b 0;
     end
     else
     begin
        if ( s_axi_lite_rready & s_axi_lite_rvalid )
        begin
           exp_axi_lite_rdata  <= exp_axi_lite_rdata + 8'h 77;
           exp_axi_lite_rresp  <= exp_axi_lite_rresp + 2'h 1;
           if ( ( exp_axi_lite_rdata != s_axi_lite_rdata ) | ( exp_axi_lite_rresp != s_axi_lite_rresp ) )
           begin
              r_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( ( exp_axi_lite_rdata !== s_axi_lite_rdata ) | ( exp_axi_lite_rresp !== s_axi_lite_rresp ) )
           begin
              $display ("ERROR! S_AXI LITE R channel error exp r %h resp %h, act r %h resp %h",
                         exp_axi_lite_rdata, exp_axi_lite_rresp, s_axi_lite_rdata, s_axi_lite_rresp );
           end
           else
           begin
              $display ("S_AXI LITE R channel exp r %h resp %h, act r %h resp %h",
                         exp_axi_lite_rdata, exp_axi_lite_rresp, s_axi_lite_rdata, s_axi_lite_rresp );
           end
           // synthesis translate_on
        end
    
        if ( s_axi_lite_bready & s_axi_lite_bvalid )
        begin
           exp_axi_lite_bresp  <= exp_axi_lite_bresp + 2'h 1;
           if ( exp_axi_lite_bresp != s_axi_lite_bresp )
           begin
              b_lite_error_reg <= 1'b 1;
           end
           // synthesis translate_off
           if ( exp_axi_lite_bresp !== s_axi_lite_bresp )
           begin
              $display ("ERROR! S_AXI LITE B channel error exp %h , act %h",
                         exp_axi_lite_bresp, s_axi_lite_bresp );
           end
           else
           begin
              $display ("S_AXI LITE B channel exp %h , act %h",
                         exp_axi_lite_bresp, s_axi_lite_bresp );
           end
           // synthesis translate_on
        end
     end
  end
end
endgenerate
endmodule
