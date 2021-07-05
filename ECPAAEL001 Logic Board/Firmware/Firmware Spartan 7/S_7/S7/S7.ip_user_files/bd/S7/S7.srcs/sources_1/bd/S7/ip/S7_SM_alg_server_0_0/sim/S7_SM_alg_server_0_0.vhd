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

-- IP VLNV: xilinx.com:user:SM_alg_server:1.0
-- IP Revision: 8

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY S7_SM_alg_server_0_0 IS
  PORT (
    aresetn : IN STD_LOGIC;
    aclk : IN STD_LOGIC;
    clk200 : IN STD_LOGIC;
    smc_0_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_0_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_0_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_0_req : IN STD_LOGIC;
    smc_0_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_0_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_0_ack : OUT STD_LOGIC;
    smc_1_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_1_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_1_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_1_req : IN STD_LOGIC;
    smc_1_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_1_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_1_ack : OUT STD_LOGIC;
    smc_2_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_2_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_2_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_2_req : IN STD_LOGIC;
    smc_2_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_2_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_2_ack : OUT STD_LOGIC;
    smc_3_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_3_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_3_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_3_req : IN STD_LOGIC;
    smc_3_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_3_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_3_ack : OUT STD_LOGIC;
    smc_4_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_4_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_4_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_4_req : IN STD_LOGIC;
    smc_4_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_4_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_4_ack : OUT STD_LOGIC;
    smc_5_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_5_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_5_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_5_req : IN STD_LOGIC;
    smc_5_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_5_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_5_ack : OUT STD_LOGIC;
    smc_6_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_6_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_6_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_6_req : IN STD_LOGIC;
    smc_6_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_6_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_6_ack : OUT STD_LOGIC;
    smc_7_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_7_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_7_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_7_req : IN STD_LOGIC;
    smc_7_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_7_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_7_ack : OUT STD_LOGIC;
    smc_8_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_8_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_8_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_8_req : IN STD_LOGIC;
    smc_8_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_8_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_8_ack : OUT STD_LOGIC;
    smc_9_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_9_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_9_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_9_req : IN STD_LOGIC;
    smc_9_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
    smc_9_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    smc_9_ack : OUT STD_LOGIC
  );
END S7_SM_alg_server_0_0;

ARCHITECTURE S7_SM_alg_server_0_0_arch OF S7_SM_alg_server_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF S7_SM_alg_server_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT SM_alg_server IS
    PORT (
      aresetn : IN STD_LOGIC;
      aclk : IN STD_LOGIC;
      clk200 : IN STD_LOGIC;
      smc_0_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_0_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_0_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_0_req : IN STD_LOGIC;
      smc_0_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_0_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_0_ack : OUT STD_LOGIC;
      smc_1_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_1_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_1_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_1_req : IN STD_LOGIC;
      smc_1_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_1_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_1_ack : OUT STD_LOGIC;
      smc_2_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_2_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_2_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_2_req : IN STD_LOGIC;
      smc_2_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_2_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_2_ack : OUT STD_LOGIC;
      smc_3_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_3_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_3_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_3_req : IN STD_LOGIC;
      smc_3_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_3_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_3_ack : OUT STD_LOGIC;
      smc_4_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_4_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_4_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_4_req : IN STD_LOGIC;
      smc_4_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_4_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_4_ack : OUT STD_LOGIC;
      smc_5_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_5_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_5_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_5_req : IN STD_LOGIC;
      smc_5_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_5_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_5_ack : OUT STD_LOGIC;
      smc_6_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_6_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_6_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_6_req : IN STD_LOGIC;
      smc_6_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_6_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_6_ack : OUT STD_LOGIC;
      smc_7_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_7_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_7_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_7_req : IN STD_LOGIC;
      smc_7_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_7_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_7_ack : OUT STD_LOGIC;
      smc_8_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_8_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_8_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_8_req : IN STD_LOGIC;
      smc_8_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_8_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_8_ack : OUT STD_LOGIC;
      smc_9_ACC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_9_EC : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_9_RM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_9_req : IN STD_LOGIC;
      smc_9_Next_EC : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
      smc_9_Next_RM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      smc_9_ack : OUT STD_LOGIC
    );
  END COMPONENT SM_alg_server;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF S7_SM_alg_server_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_9_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_9 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_8_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_8 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_7_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_7 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_6_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_6 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_5_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_5 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_4_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_4 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_3_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_3 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_2_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_2 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_1_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_1 ACC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_ack: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 ACK";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_Next_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 Next_RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_Next_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 Next_EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_req: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 REQ";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_RM: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 RM";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_EC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 EC";
  ATTRIBUTE X_INTERFACE_INFO OF smc_0_ACC: SIGNAL IS "mindway:user:SM_alg_if:1.0 smc_0 ACC";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk200: SIGNAL IS "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF smc_0:smc_1:smc_2:smc_3:smc_4:smc_5:smc_6:smc_7:smc_8, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk200: SIGNAL IS "xilinx.com:signal:clock:1.0 clk200 CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
BEGIN
  U0 : SM_alg_server
    PORT MAP (
      aresetn => aresetn,
      aclk => aclk,
      clk200 => clk200,
      smc_0_ACC => smc_0_ACC,
      smc_0_EC => smc_0_EC,
      smc_0_RM => smc_0_RM,
      smc_0_req => smc_0_req,
      smc_0_Next_EC => smc_0_Next_EC,
      smc_0_Next_RM => smc_0_Next_RM,
      smc_0_ack => smc_0_ack,
      smc_1_ACC => smc_1_ACC,
      smc_1_EC => smc_1_EC,
      smc_1_RM => smc_1_RM,
      smc_1_req => smc_1_req,
      smc_1_Next_EC => smc_1_Next_EC,
      smc_1_Next_RM => smc_1_Next_RM,
      smc_1_ack => smc_1_ack,
      smc_2_ACC => smc_2_ACC,
      smc_2_EC => smc_2_EC,
      smc_2_RM => smc_2_RM,
      smc_2_req => smc_2_req,
      smc_2_Next_EC => smc_2_Next_EC,
      smc_2_Next_RM => smc_2_Next_RM,
      smc_2_ack => smc_2_ack,
      smc_3_ACC => smc_3_ACC,
      smc_3_EC => smc_3_EC,
      smc_3_RM => smc_3_RM,
      smc_3_req => smc_3_req,
      smc_3_Next_EC => smc_3_Next_EC,
      smc_3_Next_RM => smc_3_Next_RM,
      smc_3_ack => smc_3_ack,
      smc_4_ACC => smc_4_ACC,
      smc_4_EC => smc_4_EC,
      smc_4_RM => smc_4_RM,
      smc_4_req => smc_4_req,
      smc_4_Next_EC => smc_4_Next_EC,
      smc_4_Next_RM => smc_4_Next_RM,
      smc_4_ack => smc_4_ack,
      smc_5_ACC => smc_5_ACC,
      smc_5_EC => smc_5_EC,
      smc_5_RM => smc_5_RM,
      smc_5_req => smc_5_req,
      smc_5_Next_EC => smc_5_Next_EC,
      smc_5_Next_RM => smc_5_Next_RM,
      smc_5_ack => smc_5_ack,
      smc_6_ACC => smc_6_ACC,
      smc_6_EC => smc_6_EC,
      smc_6_RM => smc_6_RM,
      smc_6_req => smc_6_req,
      smc_6_Next_EC => smc_6_Next_EC,
      smc_6_Next_RM => smc_6_Next_RM,
      smc_6_ack => smc_6_ack,
      smc_7_ACC => smc_7_ACC,
      smc_7_EC => smc_7_EC,
      smc_7_RM => smc_7_RM,
      smc_7_req => smc_7_req,
      smc_7_Next_EC => smc_7_Next_EC,
      smc_7_Next_RM => smc_7_Next_RM,
      smc_7_ack => smc_7_ack,
      smc_8_ACC => smc_8_ACC,
      smc_8_EC => smc_8_EC,
      smc_8_RM => smc_8_RM,
      smc_8_req => smc_8_req,
      smc_8_Next_EC => smc_8_Next_EC,
      smc_8_Next_RM => smc_8_Next_RM,
      smc_8_ack => smc_8_ack,
      smc_9_ACC => smc_9_ACC,
      smc_9_EC => smc_9_EC,
      smc_9_RM => smc_9_RM,
      smc_9_req => smc_9_req,
      smc_9_Next_EC => smc_9_Next_EC,
      smc_9_Next_RM => smc_9_Next_RM,
      smc_9_ack => smc_9_ack
    );
END S7_SM_alg_server_0_0_arch;
