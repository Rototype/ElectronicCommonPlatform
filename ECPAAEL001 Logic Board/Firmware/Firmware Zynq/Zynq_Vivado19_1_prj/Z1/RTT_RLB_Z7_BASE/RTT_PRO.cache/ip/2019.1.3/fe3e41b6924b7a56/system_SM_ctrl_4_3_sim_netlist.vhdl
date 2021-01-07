-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Mon May 18 00:56:52 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SM_ctrl_4_3_sim_netlist.vhdl
-- Design      : system_SM_ctrl_4_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    tgt_ACC : in STD_LOGIC_VECTOR ( 23 downto 0 );
    tgt_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    dir : in STD_LOGIC;
    ena_load : in STD_LOGIC_VECTOR ( 1 downto 0 );
    res : in STD_LOGIC_VECTOR ( 1 downto 0 );
    init_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    cnt_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cnt_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ramp_up : in STD_LOGIC;
    ramp_dwn : in STD_LOGIC;
    spd_chg : in STD_LOGIC;
    slw_stps : in STD_LOGIC;
    fst_stps : in STD_LOGIC;
    running : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq_mask : in STD_LOGIC;
    irq_in : out STD_LOGIC;
    irq_clr : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_ref : out STD_LOGIC;
    port_clk : out STD_LOGIC;
    port_ena : out STD_LOGIC;
    port_dir : out STD_LOGIC;
    port_m2P : out STD_LOGIC;
    port_m1P : out STD_LOGIC;
    smc_ACC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_req : out STD_LOGIC;
    smc_Next_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_Next_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_ack : in STD_LOGIC;
    dbg_ref : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    dbg_ena : out STD_LOGIC;
    dbg_dir : out STD_LOGIC;
    dbg_m2P : out STD_LOGIC;
    dbg_m1P : out STD_LOGIC
  );
  attribute PRESENT : integer;
  attribute PRESENT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl : entity is 0;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  cnt_i(31) <= \<const0>\;
  cnt_i(30) <= \<const0>\;
  cnt_i(29) <= \<const0>\;
  cnt_i(28) <= \<const0>\;
  cnt_i(27) <= \<const0>\;
  cnt_i(26) <= \<const0>\;
  cnt_i(25) <= \<const0>\;
  cnt_i(24) <= \<const0>\;
  cnt_i(23) <= \<const0>\;
  cnt_i(22) <= \<const0>\;
  cnt_i(21) <= \<const0>\;
  cnt_i(20) <= \<const0>\;
  cnt_i(19) <= \<const0>\;
  cnt_i(18) <= \<const0>\;
  cnt_i(17) <= \<const0>\;
  cnt_i(16) <= \<const0>\;
  cnt_i(15) <= \<const0>\;
  cnt_i(14) <= \<const0>\;
  cnt_i(13) <= \<const0>\;
  cnt_i(12) <= \<const0>\;
  cnt_i(11) <= \<const0>\;
  cnt_i(10) <= \<const0>\;
  cnt_i(9) <= \<const0>\;
  cnt_i(8) <= \<const0>\;
  cnt_i(7) <= \<const0>\;
  cnt_i(6) <= \<const0>\;
  cnt_i(5) <= \<const0>\;
  cnt_i(4) <= \<const0>\;
  cnt_i(3) <= \<const0>\;
  cnt_i(2) <= \<const0>\;
  cnt_i(1) <= \<const0>\;
  cnt_i(0) <= \<const0>\;
  dbg_clk <= \<const0>\;
  dbg_dir <= \<const0>\;
  dbg_ena <= \<const0>\;
  dbg_m1P <= \<const0>\;
  dbg_m2P <= \<const0>\;
  dbg_ref <= \<const0>\;
  irq_in <= \<const0>\;
  port_clk <= \<const0>\;
  port_dir <= \<const0>\;
  port_ena <= \<const0>\;
  port_m1P <= \<const0>\;
  port_m2P <= \<const0>\;
  port_ref <= \<const0>\;
  running(1) <= \<const0>\;
  running(0) <= \<const0>\;
  smc_ACC(21) <= \<const0>\;
  smc_ACC(20) <= \<const0>\;
  smc_ACC(19) <= \<const0>\;
  smc_ACC(18) <= \<const0>\;
  smc_ACC(17) <= \<const0>\;
  smc_ACC(16) <= \<const0>\;
  smc_ACC(15) <= \<const0>\;
  smc_ACC(14) <= \<const0>\;
  smc_ACC(13) <= \<const0>\;
  smc_ACC(12) <= \<const0>\;
  smc_ACC(11) <= \<const0>\;
  smc_ACC(10) <= \<const0>\;
  smc_ACC(9) <= \<const0>\;
  smc_ACC(8) <= \<const0>\;
  smc_ACC(7) <= \<const0>\;
  smc_ACC(6) <= \<const0>\;
  smc_ACC(5) <= \<const0>\;
  smc_ACC(4) <= \<const0>\;
  smc_ACC(3) <= \<const0>\;
  smc_ACC(2) <= \<const0>\;
  smc_ACC(1) <= \<const0>\;
  smc_ACC(0) <= \<const0>\;
  smc_EC(21) <= \<const1>\;
  smc_EC(20) <= \<const1>\;
  smc_EC(19) <= \<const1>\;
  smc_EC(18) <= \<const1>\;
  smc_EC(17) <= \<const1>\;
  smc_EC(16) <= \<const1>\;
  smc_EC(15) <= \<const1>\;
  smc_EC(14) <= \<const1>\;
  smc_EC(13) <= \<const1>\;
  smc_EC(12) <= \<const1>\;
  smc_EC(11) <= \<const1>\;
  smc_EC(10) <= \<const1>\;
  smc_EC(9) <= \<const1>\;
  smc_EC(8) <= \<const1>\;
  smc_EC(7) <= \<const1>\;
  smc_EC(6) <= \<const1>\;
  smc_EC(5) <= \<const1>\;
  smc_EC(4) <= \<const1>\;
  smc_EC(3) <= \<const1>\;
  smc_EC(2) <= \<const1>\;
  smc_EC(1) <= \<const1>\;
  smc_EC(0) <= \<const1>\;
  smc_RM(15) <= \<const0>\;
  smc_RM(14) <= \<const0>\;
  smc_RM(13) <= \<const0>\;
  smc_RM(12) <= \<const0>\;
  smc_RM(11) <= \<const0>\;
  smc_RM(10) <= \<const0>\;
  smc_RM(9) <= \<const0>\;
  smc_RM(8) <= \<const0>\;
  smc_RM(7) <= \<const0>\;
  smc_RM(6) <= \<const0>\;
  smc_RM(5) <= \<const0>\;
  smc_RM(4) <= \<const0>\;
  smc_RM(3) <= \<const0>\;
  smc_RM(2) <= \<const0>\;
  smc_RM(1) <= \<const0>\;
  smc_RM(0) <= \<const0>\;
  smc_req <= \<const0>\;
  vld_in <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    tgt_ACC : in STD_LOGIC_VECTOR ( 23 downto 0 );
    tgt_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    dir : in STD_LOGIC;
    ena_load : in STD_LOGIC_VECTOR ( 1 downto 0 );
    res : in STD_LOGIC_VECTOR ( 1 downto 0 );
    init_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    cnt_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cnt_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ramp_up : in STD_LOGIC;
    ramp_dwn : in STD_LOGIC;
    spd_chg : in STD_LOGIC;
    slw_stps : in STD_LOGIC;
    fst_stps : in STD_LOGIC;
    running : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq_mask : in STD_LOGIC;
    irq_in : out STD_LOGIC;
    irq_clr : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_ref : out STD_LOGIC;
    port_clk : out STD_LOGIC;
    port_ena : out STD_LOGIC;
    port_dir : out STD_LOGIC;
    port_m2P : out STD_LOGIC;
    port_m1P : out STD_LOGIC;
    smc_ACC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_req : out STD_LOGIC;
    smc_Next_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_Next_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_ack : in STD_LOGIC;
    dbg_ref : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    dbg_ena : out STD_LOGIC;
    dbg_dir : out STD_LOGIC;
    dbg_m2P : out STD_LOGIC;
    dbg_m1P : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_SM_ctrl_4_3,SM_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SM_ctrl,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute PRESENT : integer;
  attribute PRESENT of U0 : label is 0;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk200 : signal is "xilinx.com:signal:clock:1.0 clk200 CLK";
  attribute x_interface_parameter of clk200 : signal is "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 2e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of dbg_clk : signal is "xilinx.com:user:SM_IOs:1.0 dbg clk";
  attribute x_interface_info of dbg_dir : signal is "xilinx.com:user:SM_IOs:1.0 dbg dir";
  attribute x_interface_info of dbg_ena : signal is "xilinx.com:user:SM_IOs:1.0 dbg ena";
  attribute x_interface_info of dbg_m1P : signal is "xilinx.com:user:SM_IOs:1.0 dbg m1p";
  attribute x_interface_info of dbg_m2P : signal is "xilinx.com:user:SM_IOs:1.0 dbg m2p";
  attribute x_interface_info of dbg_ref : signal is "xilinx.com:user:SM_IOs:1.0 dbg ref";
  attribute x_interface_info of dir : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if dir";
  attribute x_interface_info of fst_stps : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if fst_stps";
  attribute x_interface_info of irq_clr : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if irq_clr";
  attribute x_interface_info of irq_in : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if irq_in";
  attribute x_interface_info of irq_mask : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if irq_mask";
  attribute x_interface_info of port_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO clk";
  attribute x_interface_info of port_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO dir";
  attribute x_interface_info of port_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO ena";
  attribute x_interface_info of port_m1P : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO m1p";
  attribute x_interface_info of port_m2P : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO m2p";
  attribute x_interface_info of port_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO ref";
  attribute x_interface_info of ramp_dwn : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_dwn";
  attribute x_interface_info of ramp_up : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_up";
  attribute x_interface_info of slw_stps : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if slw_stps";
  attribute x_interface_info of smc_ack : signal is "mindway:user:SM_alg_if:1.0 smc ACK";
  attribute x_interface_info of smc_req : signal is "mindway:user:SM_alg_if:1.0 smc REQ";
  attribute x_interface_info of spd_chg : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if spd_chg";
  attribute x_interface_info of vld_in : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if vld_in";
  attribute x_interface_info of vld_out : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if vld_out";
  attribute x_interface_info of cnt_i : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_i";
  attribute x_interface_info of cnt_o : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_o";
  attribute x_interface_info of ena_load : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if load";
  attribute x_interface_info of init_EC : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if init_EC";
  attribute x_interface_info of res : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if res";
  attribute x_interface_info of running : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if running";
  attribute x_interface_info of smc_ACC : signal is "mindway:user:SM_alg_if:1.0 smc ACC";
  attribute x_interface_info of smc_EC : signal is "mindway:user:SM_alg_if:1.0 smc EC";
  attribute x_interface_info of smc_Next_EC : signal is "mindway:user:SM_alg_if:1.0 smc Next_EC";
  attribute x_interface_info of smc_Next_RM : signal is "mindway:user:SM_alg_if:1.0 smc Next_RM";
  attribute x_interface_info of smc_RM : signal is "mindway:user:SM_alg_if:1.0 smc RM";
  attribute x_interface_info of tgt_ACC : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_ACC";
  attribute x_interface_info of tgt_EC : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_EC";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl
     port map (
      aclk => aclk,
      aresetn => aresetn,
      clk200 => clk200,
      cnt_i(31 downto 0) => cnt_i(31 downto 0),
      cnt_o(31 downto 0) => cnt_o(31 downto 0),
      dbg_clk => dbg_clk,
      dbg_dir => dbg_dir,
      dbg_ena => dbg_ena,
      dbg_m1P => dbg_m1P,
      dbg_m2P => dbg_m2P,
      dbg_ref => dbg_ref,
      dir => dir,
      ena_load(1 downto 0) => ena_load(1 downto 0),
      fst_stps => fst_stps,
      init_EC(21 downto 0) => init_EC(21 downto 0),
      irq_clr => irq_clr,
      irq_in => irq_in,
      irq_mask => irq_mask,
      port_clk => port_clk,
      port_dir => port_dir,
      port_ena => port_ena,
      port_m1P => port_m1P,
      port_m2P => port_m2P,
      port_ref => port_ref,
      ramp_dwn => ramp_dwn,
      ramp_up => ramp_up,
      res(1 downto 0) => res(1 downto 0),
      running(1 downto 0) => running(1 downto 0),
      slw_stps => slw_stps,
      smc_ACC(21 downto 0) => smc_ACC(21 downto 0),
      smc_EC(21 downto 0) => smc_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => smc_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => smc_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => smc_RM(15 downto 0),
      smc_ack => smc_ack,
      smc_req => smc_req,
      spd_chg => spd_chg,
      tgt_ACC(23 downto 0) => tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => tgt_EC(21 downto 0),
      vld_in => vld_in,
      vld_out => vld_out
    );
end STRUCTURE;
