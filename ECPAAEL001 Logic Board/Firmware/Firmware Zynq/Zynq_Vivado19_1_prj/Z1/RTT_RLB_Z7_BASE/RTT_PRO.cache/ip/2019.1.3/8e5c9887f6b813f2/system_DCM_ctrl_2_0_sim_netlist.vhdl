-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Mon May 11 09:50:20 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_DCM_ctrl_2_0_sim_netlist.vhdl
-- Design      : system_DCM_ctrl_2_0
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
    clk200 : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_frq : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dir : in STD_LOGIC;
    run : in STD_LOGIC;
    brake : in STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_pwm : out STD_LOGIC;
    port_in1 : out STD_LOGIC;
    port_in2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_DCM_ctrl_2_0,DCM_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DCM_ctrl,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF DCM_IO:DCM_reg_if, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of brake : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if brake";
  attribute x_interface_info of clk200 : signal is "xilinx.com:signal:clock:1.0 clk200 CLK";
  attribute x_interface_parameter of clk200 : signal is "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 2e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of dir : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if dir";
  attribute x_interface_info of port_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM_IO in1";
  attribute x_interface_info of port_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM_IO in2";
  attribute x_interface_info of port_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM_IO pwm";
  attribute x_interface_info of run : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if run";
  attribute x_interface_info of vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_in";
  attribute x_interface_info of vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_out";
  attribute x_interface_info of pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_frq";
  attribute x_interface_info of pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_val";
  attribute x_interface_info of status : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if status";
begin
  port_in1 <= \<const0>\;
  port_in2 <= \<const0>\;
  port_pwm <= \<const0>\;
  status(1) <= \<const0>\;
  status(0) <= \<const0>\;
  vld_in <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
