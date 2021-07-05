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

-- IP VLNV: xilinx.com:user:DCM_ctrl:1.0
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_DCM_ctrl_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    clk200 : IN STD_LOGIC;
    pwm_val : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pwm_frq : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dir : IN STD_LOGIC;
    run : IN STD_LOGIC;
    brake : IN STD_LOGIC;
    status : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    vld_in : OUT STD_LOGIC;
    vld_out : IN STD_LOGIC;
    port_pwm : OUT STD_LOGIC;
    port_in1 : OUT STD_LOGIC;
    port_in2 : OUT STD_LOGIC
  );
END S7_DCM_ctrl_0_0;

ARCHITECTURE S7_DCM_ctrl_0_0_arch OF S7_DCM_ctrl_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_DCM_ctrl_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DCM_ctrl IS
    GENERIC (
      PRESENT : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      clk200 : IN STD_LOGIC;
      pwm_val : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pwm_frq : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      dir : IN STD_LOGIC;
      run : IN STD_LOGIC;
      brake : IN STD_LOGIC;
      status : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      vld_in : OUT STD_LOGIC;
      vld_out : IN STD_LOGIC;
      port_pwm : OUT STD_LOGIC;
      port_in1 : OUT STD_LOGIC;
      port_in2 : OUT STD_LOGIC
    );
  END COMPONENT DCM_ctrl;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF S7_DCM_ctrl_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF port_in2: SIGNAL IS "Mindway:user:DCM_IOs:1.0 DCM_IO in2";
  ATTRIBUTE X_INTERFACE_INFO OF port_in1: SIGNAL IS "Mindway:user:DCM_IOs:1.0 DCM_IO in1";
  ATTRIBUTE X_INTERFACE_INFO OF port_pwm: SIGNAL IS "Mindway:user:DCM_IOs:1.0 DCM_IO pwm";
  ATTRIBUTE X_INTERFACE_INFO OF vld_out: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF vld_in: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF status: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if status";
  ATTRIBUTE X_INTERFACE_INFO OF brake: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if brake";
  ATTRIBUTE X_INTERFACE_INFO OF run: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if run";
  ATTRIBUTE X_INTERFACE_INFO OF dir: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if dir";
  ATTRIBUTE X_INTERFACE_INFO OF pwm_frq: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_frq";
  ATTRIBUTE X_INTERFACE_INFO OF pwm_val: SIGNAL IS "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_val";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk200: SIGNAL IS "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk200: SIGNAL IS "xilinx.com:signal:clock:1.0 clk200 CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF DCM_IO:DCM_reg_if, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : DCM_ctrl
    GENERIC MAP (
      PRESENT => 1
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      clk200 => clk200,
      pwm_val => pwm_val,
      pwm_frq => pwm_frq,
      dir => dir,
      run => run,
      brake => brake,
      status => status,
      vld_in => vld_in,
      vld_out => vld_out,
      port_pwm => port_pwm,
      port_in1 => port_in1,
      port_in2 => port_in2
    );
END S7_DCM_ctrl_0_0_arch;
