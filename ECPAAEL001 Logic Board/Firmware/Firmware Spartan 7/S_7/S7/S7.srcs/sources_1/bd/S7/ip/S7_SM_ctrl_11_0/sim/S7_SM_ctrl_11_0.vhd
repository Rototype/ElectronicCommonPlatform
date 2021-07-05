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

-- IP VLNV: xilinx.com:user:SM_ctrl:1.0
-- IP Revision: 25

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_SM_ctrl_11_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    clk200 : IN STD_LOGIC;
    tgt_ACC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    tgt_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    dir : IN STD_LOGIC;
    ena_load : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    res : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    init_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    cnt_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cnt_i : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ramp_up : IN STD_LOGIC;
    ramp_dwn : IN STD_LOGIC;
    spd_chg : IN STD_LOGIC;
    slw_stps : IN STD_LOGIC;
    fst_stps : IN STD_LOGIC;
    running : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    irq_mask : IN STD_LOGIC;
    irq_in : OUT STD_LOGIC;
    irq_clr : IN STD_LOGIC;
    vld_in : OUT STD_LOGIC;
    vld_out : IN STD_LOGIC;
    port_ref : OUT STD_LOGIC;
    port_clk : OUT STD_LOGIC;
    port_ena : OUT STD_LOGIC;
    port_dir : OUT STD_LOGIC;
    port_m2P : OUT STD_LOGIC;
    port_m1P : OUT STD_LOGIC;
    smc_ACC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_req : OUT STD_LOGIC;
    smc_Next_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_Next_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_ack : IN STD_LOGIC;
    dbg_ref : OUT STD_LOGIC;
    dbg_clk : OUT STD_LOGIC;
    dbg_ena : OUT STD_LOGIC;
    dbg_dir : OUT STD_LOGIC;
    dbg_m2P : OUT STD_LOGIC;
    dbg_m1P : OUT STD_LOGIC
  );
END S7_SM_ctrl_11_0;

ARCHITECTURE S7_SM_ctrl_11_0_arch OF S7_SM_ctrl_11_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_SM_ctrl_11_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SM_ctrl IS
    GENERIC (
      PRESENT : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      clk200 : IN STD_LOGIC;
      tgt_ACC : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      tgt_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      dir : IN STD_LOGIC;
      ena_load : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      res : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      init_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      cnt_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      cnt_i : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ramp_up : IN STD_LOGIC;
      ramp_dwn : IN STD_LOGIC;
      spd_chg : IN STD_LOGIC;
      slw_stps : IN STD_LOGIC;
      fst_stps : IN STD_LOGIC;
      running : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      irq_mask : IN STD_LOGIC;
      irq_in : OUT STD_LOGIC;
      irq_clr : IN STD_LOGIC;
      vld_in : OUT STD_LOGIC;
      vld_out : IN STD_LOGIC;
      port_ref : OUT STD_LOGIC;
      port_clk : OUT STD_LOGIC;
      port_ena : OUT STD_LOGIC;
      port_dir : OUT STD_LOGIC;
      port_m2P : OUT STD_LOGIC;
      port_m1P : OUT STD_LOGIC;
      smc_ACC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_req : OUT STD_LOGIC;
      smc_Next_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_Next_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_ack : IN STD_LOGIC;
      dbg_ref : OUT STD_LOGIC;
      dbg_clk : OUT STD_LOGIC;
      dbg_ena : OUT STD_LOGIC;
      dbg_dir : OUT STD_LOGIC;
      dbg_m2P : OUT STD_LOGIC;
      dbg_m1P : OUT STD_LOGIC
    );
  END COMPONENT SM_ctrl;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF S7_SM_ctrl_11_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF dbg_m1P: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 dbg m1p";
  ATTRIBUTE X_INTERFACE_INFO OF dbg_m2P: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 dbg m2p";
  ATTRIBUTE X_INTERFACE_INFO OF dbg_dir: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 dbg dir";
  ATTRIBUTE X_INTERFACE_INFO OF dbg_ena: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 dbg ena";
  ATTRIBUTE X_INTERFACE_INFO OF dbg_clk: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 dbg clk";
  ATTRIBUTE X_INTERFACE_INFO OF dbg_ref: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 dbg ref";
  ATTRIBUTE X_INTERFACE_INFO OF smc_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc ACC";
  ATTRIBUTE X_INTERFACE_INFO OF port_m1P: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 SM_IO m1p";
  ATTRIBUTE X_INTERFACE_INFO OF port_m2P: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 SM_IO m2p";
  ATTRIBUTE X_INTERFACE_INFO OF port_dir: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 SM_IO dir";
  ATTRIBUTE X_INTERFACE_INFO OF port_ena: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 SM_IO ena";
  ATTRIBUTE X_INTERFACE_INFO OF port_clk: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 SM_IO clk";
  ATTRIBUTE X_INTERFACE_INFO OF port_ref: SIGNAL IS "xilinx.com:user:SM_IOs:1.0 SM_IO ref";
  ATTRIBUTE X_INTERFACE_INFO OF vld_out: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if vld_out";
  ATTRIBUTE X_INTERFACE_INFO OF vld_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if vld_in";
  ATTRIBUTE X_INTERFACE_INFO OF irq_clr: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if irq_clr";
  ATTRIBUTE X_INTERFACE_INFO OF irq_in: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if irq_in";
  ATTRIBUTE X_INTERFACE_INFO OF irq_mask: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if irq_mask";
  ATTRIBUTE X_INTERFACE_INFO OF running: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if running";
  ATTRIBUTE X_INTERFACE_INFO OF fst_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if fst_stps";
  ATTRIBUTE X_INTERFACE_INFO OF slw_stps: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if slw_stps";
  ATTRIBUTE X_INTERFACE_INFO OF spd_chg: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if spd_chg";
  ATTRIBUTE X_INTERFACE_INFO OF ramp_dwn: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_dwn";
  ATTRIBUTE X_INTERFACE_INFO OF ramp_up: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_up";
  ATTRIBUTE X_INTERFACE_INFO OF cnt_i: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_i";
  ATTRIBUTE X_INTERFACE_INFO OF cnt_o: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_o";
  ATTRIBUTE X_INTERFACE_INFO OF init_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if init_EC";
  ATTRIBUTE X_INTERFACE_INFO OF res: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if res";
  ATTRIBUTE X_INTERFACE_INFO OF ena_load: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if load";
  ATTRIBUTE X_INTERFACE_INFO OF dir: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if dir";
  ATTRIBUTE X_INTERFACE_INFO OF tgt_EC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_EC";
  ATTRIBUTE X_INTERFACE_INFO OF tgt_ACC: SIGNAL IS "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_ACC";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk200: SIGNAL IS "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk200: SIGNAL IS "xilinx.com:signal:clock:1.0 clk200 CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : SM_ctrl
    GENERIC MAP (
      PRESENT => 1
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      clk200 => clk200,
      tgt_ACC => tgt_ACC,
      tgt_EC => tgt_EC,
      dir => dir,
      ena_load => ena_load,
      res => res,
      init_EC => init_EC,
      cnt_o => cnt_o,
      cnt_i => cnt_i,
      ramp_up => ramp_up,
      ramp_dwn => ramp_dwn,
      spd_chg => spd_chg,
      slw_stps => slw_stps,
      fst_stps => fst_stps,
      running => running,
      irq_mask => irq_mask,
      irq_in => irq_in,
      irq_clr => irq_clr,
      vld_in => vld_in,
      vld_out => vld_out,
      port_ref => port_ref,
      port_clk => port_clk,
      port_ena => port_ena,
      port_dir => port_dir,
      port_m2P => port_m2P,
      port_m1P => port_m1P,
      smc_ACC => smc_ACC,
      smc_EC => smc_EC,
      smc_RM => smc_RM,
      smc_req => smc_req,
      smc_Next_EC => smc_Next_EC,
      smc_Next_RM => smc_Next_RM,
      smc_ack => smc_ack,
      dbg_ref => dbg_ref,
      dbg_clk => dbg_clk,
      dbg_ena => dbg_ena,
      dbg_dir => dbg_dir,
      dbg_m2P => dbg_m2P,
      dbg_m1P => dbg_m1P
    );
END S7_SM_ctrl_11_0_arch;
