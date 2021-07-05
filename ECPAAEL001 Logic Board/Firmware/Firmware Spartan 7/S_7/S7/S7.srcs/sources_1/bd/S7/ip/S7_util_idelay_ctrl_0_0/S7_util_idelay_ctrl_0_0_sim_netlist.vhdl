-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue May  5 10:14:43 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top S7_util_idelay_ctrl_0_0 -prefix
--               S7_util_idelay_ctrl_0_0_ S7_util_idelay_ctrl_0_0_sim_netlist.vhdl
-- Design      : S7_util_idelay_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_1_util_idelay_ctrl is
  port (
    rdy : out STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end S7_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_1_util_idelay_ctrl;

architecture STRUCTURE of S7_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_1_util_idelay_ctrl is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of dlyctrl : label is "PRIMITIVE";
begin
dlyctrl: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => rdy,
      REFCLK => ref_clk,
      RST => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_util_idelay_ctrl_0_0 is
  port (
    rst : in STD_LOGIC;
    rdy : out STD_LOGIC;
    ref_clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of S7_util_idelay_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of S7_util_idelay_ctrl_0_0 : entity is "S7_util_idelay_ctrl_0_0,util_idelay_ctrl_v1_0_1_util_idelay_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of S7_util_idelay_ctrl_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of S7_util_idelay_ctrl_0_0 : entity is "util_idelay_ctrl_v1_0_1_util_idelay_ctrl,Vivado 2019.1.3";
end S7_util_idelay_ctrl_0_0;

architecture STRUCTURE of S7_util_idelay_ctrl_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ref_clk : signal is "xilinx.com:signal:clock:1.0 ref_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ref_clk : signal is "XIL_INTERFACENAME ref_clk, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.S7_util_idelay_ctrl_0_0_util_idelay_ctrl_v1_0_1_util_idelay_ctrl
     port map (
      rdy => rdy,
      ref_clk => ref_clk,
      rst => rst
    );
end STRUCTURE;
