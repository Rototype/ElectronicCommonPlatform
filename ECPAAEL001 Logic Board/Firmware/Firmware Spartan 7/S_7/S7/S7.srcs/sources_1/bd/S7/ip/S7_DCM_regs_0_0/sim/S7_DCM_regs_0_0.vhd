-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:DCM_regs:1.0
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_DCM_regs_0_0 IS
  PORT (
    DCM0_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    DCM0_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    DCM0_dir : OUT STD_LOGIC;
    DCM0_run : OUT STD_LOGIC;
    DCM0_brake : OUT STD_LOGIC;
    DCM0_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DCM0_vld_in : IN STD_LOGIC;
    DCM0_vld_out : OUT STD_LOGIC;
    DCM1_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    DCM1_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    DCM1_dir : OUT STD_LOGIC;
    DCM1_run : OUT STD_LOGIC;
    DCM1_brake : OUT STD_LOGIC;
    DCM1_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DCM1_vld_in : IN STD_LOGIC;
    DCM1_vld_out : OUT STD_LOGIC;
    DCM2_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    DCM2_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    DCM2_dir : OUT STD_LOGIC;
    DCM2_run : OUT STD_LOGIC;
    DCM2_brake : OUT STD_LOGIC;
    DCM2_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DCM2_vld_in : IN STD_LOGIC;
    DCM2_vld_out : OUT STD_LOGIC;
    DCM3_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    DCM3_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    DCM3_dir : OUT STD_LOGIC;
    DCM3_run : OUT STD_LOGIC;
    DCM3_brake : OUT STD_LOGIC;
    DCM3_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DCM3_vld_in : IN STD_LOGIC;
    DCM3_vld_out : OUT STD_LOGIC;
    DCM4_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    DCM4_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    DCM4_dir : OUT STD_LOGIC;
    DCM4_run : OUT STD_LOGIC;
    DCM4_brake : OUT STD_LOGIC;
    DCM4_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    DCM4_vld_in : IN STD_LOGIC;
    DCM4_vld_out : OUT STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC
  );
END S7_DCM_regs_0_0;

ARCHITECTURE S7_DCM_regs_0_0_arch OF S7_DCM_regs_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_DCM_regs_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DCM_regs_v1_0 IS
    GENERIC (
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      DCM0_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      DCM0_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      DCM0_dir : OUT STD_LOGIC;
      DCM0_run : OUT STD_LOGIC;
      DCM0_brake : OUT STD_LOGIC;
      DCM0_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      DCM0_vld_in : IN STD_LOGIC;
      DCM0_vld_out : OUT STD_LOGIC;
      DCM1_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      DCM1_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      DCM1_dir : OUT STD_LOGIC;
      DCM1_run : OUT STD_LOGIC;
      DCM1_brake : OUT STD_LOGIC;
      DCM1_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      DCM1_vld_in : IN STD_LOGIC;
      DCM1_vld_out : OUT STD_LOGIC;
      DCM2_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      DCM2_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      DCM2_dir : OUT STD_LOGIC;
      DCM2_run : OUT STD_LOGIC;
      DCM2_brake : OUT STD_LOGIC;
      DCM2_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      DCM2_vld_in : IN STD_LOGIC;
      DCM2_vld_out : OUT STD_LOGIC;
      DCM3_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      DCM3_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      DCM3_dir : OUT STD_LOGIC;
      DCM3_run : OUT STD_LOGIC;
      DCM3_brake : OUT STD_LOGIC;
      DCM3_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      DCM3_vld_in : IN STD_LOGIC;
      DCM3_vld_out : OUT STD_LOGIC;
      DCM4_pwm_val : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      DCM4_pwm_frq : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      DCM4_dir : OUT STD_LOGIC;
      DCM4_run : OUT STD_LOGIC;
      DCM4_brake : OUT STD_LOGIC;
      DCM4_status : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      DCM4_vld_in : IN STD_LOGIC;
      DCM4_vld_out : OUT STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT DCM_regs_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 40, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_" & 
"OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_vld_out: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_vld_in: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_status: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 status";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_brake: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 brake";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_run: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 run";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_dir: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 dir";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_pwm_frq: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 pwm_frq";
  ATTRIBUTE X_INTERFACE_INFO OF DCM4_pwm_val: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM4 pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_vld_out: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_vld_in: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_status: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 status";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_brake: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 brake";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_run: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 run";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_dir: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 dir";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_pwm_frq: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 pwm_frq";
  ATTRIBUTE X_INTERFACE_INFO OF DCM3_pwm_val: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM3 pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_vld_out: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_vld_in: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_status: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 status";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_brake: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 brake";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_run: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 run";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_dir: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 dir";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_pwm_frq: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 pwm_frq";
  ATTRIBUTE X_INTERFACE_INFO OF DCM2_pwm_val: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM2 pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_vld_out: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_vld_in: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_status: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 status";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_brake: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 brake";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_run: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 run";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_dir: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 dir";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_pwm_frq: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 pwm_frq";
  ATTRIBUTE X_INTERFACE_INFO OF DCM1_pwm_val: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM1 pwm_val";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_vld_out: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_vld_in: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_status: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 status";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_brake: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 brake";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_run: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 run";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_dir: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 dir";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_pwm_frq: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 pwm_frq";
  ATTRIBUTE X_INTERFACE_INFO OF DCM0_pwm_val: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM0 pwm_val";
BEGIN
  U0 : DCM_regs_v1_0
    GENERIC MAP (
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 7
    )
    PORT MAP (
      DCM0_pwm_val => DCM0_pwm_val,
      DCM0_pwm_frq => DCM0_pwm_frq,
      DCM0_dir => DCM0_dir,
      DCM0_run => DCM0_run,
      DCM0_brake => DCM0_brake,
      DCM0_status => DCM0_status,
      DCM0_vld_in => DCM0_vld_in,
      DCM0_vld_out => DCM0_vld_out,
      DCM1_pwm_val => DCM1_pwm_val,
      DCM1_pwm_frq => DCM1_pwm_frq,
      DCM1_dir => DCM1_dir,
      DCM1_run => DCM1_run,
      DCM1_brake => DCM1_brake,
      DCM1_status => DCM1_status,
      DCM1_vld_in => DCM1_vld_in,
      DCM1_vld_out => DCM1_vld_out,
      DCM2_pwm_val => DCM2_pwm_val,
      DCM2_pwm_frq => DCM2_pwm_frq,
      DCM2_dir => DCM2_dir,
      DCM2_run => DCM2_run,
      DCM2_brake => DCM2_brake,
      DCM2_status => DCM2_status,
      DCM2_vld_in => DCM2_vld_in,
      DCM2_vld_out => DCM2_vld_out,
      DCM3_pwm_val => DCM3_pwm_val,
      DCM3_pwm_frq => DCM3_pwm_frq,
      DCM3_dir => DCM3_dir,
      DCM3_run => DCM3_run,
      DCM3_brake => DCM3_brake,
      DCM3_status => DCM3_status,
      DCM3_vld_in => DCM3_vld_in,
      DCM3_vld_out => DCM3_vld_out,
      DCM4_pwm_val => DCM4_pwm_val,
      DCM4_pwm_frq => DCM4_pwm_frq,
      DCM4_dir => DCM4_dir,
      DCM4_run => DCM4_run,
      DCM4_brake => DCM4_brake,
      DCM4_status => DCM4_status,
      DCM4_vld_in => DCM4_vld_in,
      DCM4_vld_out => DCM4_vld_out,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
END S7_DCM_regs_0_0_arch;
