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

-- IP VLNV: xilinx.com:user:PHS_ctrl:1.0
-- IP Revision: 14

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_PHS_ctrl_33_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    ena_in : IN STD_LOGIC;
    ena_out : OUT STD_LOGIC;
    pwm_val : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    status : OUT STD_LOGIC;
    irq_mask : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    irq0_L2S : OUT STD_LOGIC;
    irq1_S2L : OUT STD_LOGIC;
    irq0_clr : IN STD_LOGIC;
    irq1_clr : IN STD_LOGIC;
    vld_out : IN STD_LOGIC;
    vld_in : OUT STD_LOGIC;
    port_pwm_out : OUT STD_LOGIC;
    port_phs_in : IN STD_LOGIC
  );
END S7_PHS_ctrl_33_0;

ARCHITECTURE S7_PHS_ctrl_33_0_arch OF S7_PHS_ctrl_33_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_PHS_ctrl_33_0_arch: ARCHITECTURE IS "yes";
  COMPONENT PHS_ctrl IS
    GENERIC (
      PRESENT : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      ena_in : IN STD_LOGIC;
      ena_out : OUT STD_LOGIC;
      pwm_val : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      status : OUT STD_LOGIC;
      irq_mask : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      irq0_L2S : OUT STD_LOGIC;
      irq1_S2L : OUT STD_LOGIC;
      irq0_clr : IN STD_LOGIC;
      irq1_clr : IN STD_LOGIC;
      vld_out : IN STD_LOGIC;
      vld_in : OUT STD_LOGIC;
      port_pwm_out : OUT STD_LOGIC;
      port_phs_in : IN STD_LOGIC
    );
  END COMPONENT PHS_ctrl;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF S7_PHS_ctrl_33_0_arch: ARCHITECTURE IS "PHS_ctrl,Vivado 2019.1.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF S7_PHS_ctrl_33_0_arch : ARCHITECTURE IS "S7_PHS_ctrl_33_0,PHS_ctrl,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF S7_PHS_ctrl_33_0_arch: ARCHITECTURE IS "S7_PHS_ctrl_33_0,PHS_ctrl,{x_ipProduct=Vivado 2019.1.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=PHS_ctrl,x_ipVersion=1.0,x_ipCoreRevision=14,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,PRESENT=1}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF S7_PHS_ctrl_33_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF port_phs_in: SIGNAL IS "Mindway:user:PHS_IOs:1.0 PHS_ios phs_in";
  ATTRIBUTE X_INTERFACE_INFO OF port_pwm_out: SIGNAL IS "Mindway:user:PHS_IOs:1.0 PHS_ios pwm_out";
  ATTRIBUTE X_INTERFACE_INFO OF vld_in: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs valid_in";
  ATTRIBUTE X_INTERFACE_INFO OF vld_out: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF irq1_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs irq1_S2L_clr";
  ATTRIBUTE X_INTERFACE_INFO OF irq0_clr: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs irq0_L2S_clr";
  ATTRIBUTE X_INTERFACE_INFO OF irq1_S2L: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs irq1_S2L";
  ATTRIBUTE X_INTERFACE_INFO OF irq0_L2S: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs irq0_L2S";
  ATTRIBUTE X_INTERFACE_INFO OF irq_mask: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF status: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs status";
  ATTRIBUTE X_INTERFACE_INFO OF pwm_val: SIGNAL IS "Mindway:user:PHS_reg_if:1.0 PHS_regs pwm_val";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF PHS_regs, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : PHS_ctrl
    GENERIC MAP (
      PRESENT => 1
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      ena_in => ena_in,
      ena_out => ena_out,
      pwm_val => pwm_val,
      status => status,
      irq_mask => irq_mask,
      irq0_L2S => irq0_L2S,
      irq1_S2L => irq1_S2L,
      irq0_clr => irq0_clr,
      irq1_clr => irq1_clr,
      vld_out => vld_out,
      vld_in => vld_in,
      port_pwm_out => port_pwm_out,
      port_phs_in => port_phs_in
    );
END S7_PHS_ctrl_33_0_arch;
