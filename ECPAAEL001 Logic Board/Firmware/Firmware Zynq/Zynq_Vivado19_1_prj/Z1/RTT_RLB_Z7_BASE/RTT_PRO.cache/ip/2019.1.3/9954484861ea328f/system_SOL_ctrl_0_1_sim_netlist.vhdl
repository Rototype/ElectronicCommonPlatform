-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu May  7 10:49:05 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SOL_ctrl_0_1_sim_netlist.vhdl
-- Design      : system_SOL_ctrl_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    time_full : in STD_LOGIC_VECTOR ( 10 downto 0 );
    run : in STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_SOL_ctrl_0_1,SOL_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SOL_ctrl,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL_IOs port_pwm";
  attribute x_interface_info of run : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs run";
  attribute x_interface_info of vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs vld_in";
  attribute x_interface_info of vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs vld_out";
  attribute x_interface_info of pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs pwm_val";
  attribute x_interface_info of status : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs status";
  attribute x_interface_info of time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs time_full";
begin
  port_pwm <= \<const0>\;
  status(1) <= \<const0>\;
  status(0) <= \<const0>\;
  vld_in <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
