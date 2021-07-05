--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
--Date        : Sat Jun 26 15:41:59 2021
--Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
--Command     : generate_target S7.bd
--Design      : S7
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DCM_5_imp_J00IJ8 is
  port (
    DCM0_in1 : out STD_LOGIC;
    DCM0_in2 : out STD_LOGIC;
    DCM0_pwm : out STD_LOGIC;
    DCM1_in1 : out STD_LOGIC;
    DCM1_in2 : out STD_LOGIC;
    DCM1_pwm : out STD_LOGIC;
    DCM2_in1 : out STD_LOGIC;
    DCM2_in2 : out STD_LOGIC;
    DCM2_pwm : out STD_LOGIC;
    DCM3_in1 : out STD_LOGIC;
    DCM3_in2 : out STD_LOGIC;
    DCM3_pwm : out STD_LOGIC;
    DCM4_in1 : out STD_LOGIC;
    DCM4_in2 : out STD_LOGIC;
    DCM4_pwm : out STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk200 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end DCM_5_imp_J00IJ8;

architecture STRUCTURE of DCM_5_imp_J00IJ8 is
  component S7_DCM_regs_0_0 is
  port (
    DCM0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM0_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM0_dir : out STD_LOGIC;
    DCM0_run : out STD_LOGIC;
    DCM0_brake : out STD_LOGIC;
    DCM0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM0_vld_in : in STD_LOGIC;
    DCM0_vld_out : out STD_LOGIC;
    DCM1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM1_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM1_dir : out STD_LOGIC;
    DCM1_run : out STD_LOGIC;
    DCM1_brake : out STD_LOGIC;
    DCM1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM1_vld_in : in STD_LOGIC;
    DCM1_vld_out : out STD_LOGIC;
    DCM2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM2_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM2_dir : out STD_LOGIC;
    DCM2_run : out STD_LOGIC;
    DCM2_brake : out STD_LOGIC;
    DCM2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM2_vld_in : in STD_LOGIC;
    DCM2_vld_out : out STD_LOGIC;
    DCM3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM3_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM3_dir : out STD_LOGIC;
    DCM3_run : out STD_LOGIC;
    DCM3_brake : out STD_LOGIC;
    DCM3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM3_vld_in : in STD_LOGIC;
    DCM3_vld_out : out STD_LOGIC;
    DCM4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM4_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM4_dir : out STD_LOGIC;
    DCM4_run : out STD_LOGIC;
    DCM4_brake : out STD_LOGIC;
    DCM4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM4_vld_in : in STD_LOGIC;
    DCM4_vld_out : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component S7_DCM_regs_0_0;
  component S7_DCM_ctrl_0_0 is
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
  end component S7_DCM_ctrl_0_0;
  component S7_DCM_ctrl_1_0 is
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
  end component S7_DCM_ctrl_1_0;
  component S7_DCM_ctrl_2_0 is
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
  end component S7_DCM_ctrl_2_0;
  component S7_DCM_ctrl_3_0 is
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
  end component S7_DCM_ctrl_3_0;
  component S7_DCM_ctrl_4_0 is
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
  end component S7_DCM_ctrl_4_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DCM_ctrl_0_DCM_IO_in1 : STD_LOGIC;
  signal DCM_ctrl_0_DCM_IO_in2 : STD_LOGIC;
  signal DCM_ctrl_0_DCM_IO_pwm : STD_LOGIC;
  signal DCM_ctrl_1_DCM_IO_in1 : STD_LOGIC;
  signal DCM_ctrl_1_DCM_IO_in2 : STD_LOGIC;
  signal DCM_ctrl_1_DCM_IO_pwm : STD_LOGIC;
  signal DCM_ctrl_2_DCM_IO_in1 : STD_LOGIC;
  signal DCM_ctrl_2_DCM_IO_in2 : STD_LOGIC;
  signal DCM_ctrl_2_DCM_IO_pwm : STD_LOGIC;
  signal DCM_ctrl_3_DCM_IO_in1 : STD_LOGIC;
  signal DCM_ctrl_3_DCM_IO_in2 : STD_LOGIC;
  signal DCM_ctrl_3_DCM_IO_pwm : STD_LOGIC;
  signal DCM_ctrl_4_DCM_IO_in1 : STD_LOGIC;
  signal DCM_ctrl_4_DCM_IO_in2 : STD_LOGIC;
  signal DCM_ctrl_4_DCM_IO_pwm : STD_LOGIC;
  signal DCM_regs_0_DCM0_brake : STD_LOGIC;
  signal DCM_regs_0_DCM0_dir : STD_LOGIC;
  signal DCM_regs_0_DCM0_pwm_frq : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DCM_regs_0_DCM0_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DCM_regs_0_DCM0_run : STD_LOGIC;
  signal DCM_regs_0_DCM0_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCM_regs_0_DCM0_vld_in : STD_LOGIC;
  signal DCM_regs_0_DCM0_vld_out : STD_LOGIC;
  signal DCM_regs_0_DCM1_brake : STD_LOGIC;
  signal DCM_regs_0_DCM1_dir : STD_LOGIC;
  signal DCM_regs_0_DCM1_pwm_frq : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DCM_regs_0_DCM1_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DCM_regs_0_DCM1_run : STD_LOGIC;
  signal DCM_regs_0_DCM1_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCM_regs_0_DCM1_vld_in : STD_LOGIC;
  signal DCM_regs_0_DCM1_vld_out : STD_LOGIC;
  signal DCM_regs_0_DCM2_brake : STD_LOGIC;
  signal DCM_regs_0_DCM2_dir : STD_LOGIC;
  signal DCM_regs_0_DCM2_pwm_frq : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DCM_regs_0_DCM2_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DCM_regs_0_DCM2_run : STD_LOGIC;
  signal DCM_regs_0_DCM2_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCM_regs_0_DCM2_vld_in : STD_LOGIC;
  signal DCM_regs_0_DCM2_vld_out : STD_LOGIC;
  signal DCM_regs_0_DCM3_brake : STD_LOGIC;
  signal DCM_regs_0_DCM3_dir : STD_LOGIC;
  signal DCM_regs_0_DCM3_pwm_frq : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DCM_regs_0_DCM3_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DCM_regs_0_DCM3_run : STD_LOGIC;
  signal DCM_regs_0_DCM3_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCM_regs_0_DCM3_vld_in : STD_LOGIC;
  signal DCM_regs_0_DCM3_vld_out : STD_LOGIC;
  signal DCM_regs_0_DCM4_brake : STD_LOGIC;
  signal DCM_regs_0_DCM4_dir : STD_LOGIC;
  signal DCM_regs_0_DCM4_pwm_frq : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DCM_regs_0_DCM4_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DCM_regs_0_DCM4_run : STD_LOGIC;
  signal DCM_regs_0_DCM4_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DCM_regs_0_DCM4_vld_in : STD_LOGIC;
  signal DCM_regs_0_DCM4_vld_out : STD_LOGIC;
  signal clk200_1 : STD_LOGIC;
  signal s00_axi_aclk_2_1 : STD_LOGIC;
  signal s00_axi_aresetn_2_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn1_ARVALID(0) <= S00_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn1_AWVALID(0) <= S00_AXI_awvalid(0);
  Conn1_BREADY(0) <= S00_AXI_bready(0);
  Conn1_RREADY(0) <= S00_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S00_AXI_wvalid(0);
  DCM0_in1 <= DCM_ctrl_0_DCM_IO_in1;
  DCM0_in2 <= DCM_ctrl_0_DCM_IO_in2;
  DCM0_pwm <= DCM_ctrl_0_DCM_IO_pwm;
  DCM1_in1 <= DCM_ctrl_1_DCM_IO_in1;
  DCM1_in2 <= DCM_ctrl_1_DCM_IO_in2;
  DCM1_pwm <= DCM_ctrl_1_DCM_IO_pwm;
  DCM2_in1 <= DCM_ctrl_2_DCM_IO_in1;
  DCM2_in2 <= DCM_ctrl_2_DCM_IO_in2;
  DCM2_pwm <= DCM_ctrl_2_DCM_IO_pwm;
  DCM3_in1 <= DCM_ctrl_3_DCM_IO_in1;
  DCM3_in2 <= DCM_ctrl_3_DCM_IO_in2;
  DCM3_pwm <= DCM_ctrl_3_DCM_IO_pwm;
  DCM4_in1 <= DCM_ctrl_4_DCM_IO_in1;
  DCM4_in2 <= DCM_ctrl_4_DCM_IO_in2;
  DCM4_pwm <= DCM_ctrl_4_DCM_IO_pwm;
  S00_AXI_arready(0) <= Conn1_ARREADY;
  S00_AXI_awready(0) <= Conn1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Conn1_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Conn1_RVALID;
  S00_AXI_wready(0) <= Conn1_WREADY;
  clk200_1 <= clk200;
  s00_axi_aclk_2_1 <= s00_axi_aclk;
  s00_axi_aresetn_2_1 <= s00_axi_aresetn;
DCM_ctrl_0: component S7_DCM_ctrl_0_0
     port map (
      aclk => s00_axi_aclk_2_1,
      aresetn => s00_axi_aresetn_2_1,
      brake => DCM_regs_0_DCM0_brake,
      clk200 => clk200_1,
      dir => DCM_regs_0_DCM0_dir,
      port_in1 => DCM_ctrl_0_DCM_IO_in1,
      port_in2 => DCM_ctrl_0_DCM_IO_in2,
      port_pwm => DCM_ctrl_0_DCM_IO_pwm,
      pwm_frq(6 downto 0) => DCM_regs_0_DCM0_pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => DCM_regs_0_DCM0_pwm_val(7 downto 0),
      run => DCM_regs_0_DCM0_run,
      status(1 downto 0) => DCM_regs_0_DCM0_status(1 downto 0),
      vld_in => DCM_regs_0_DCM0_vld_in,
      vld_out => DCM_regs_0_DCM0_vld_out
    );
DCM_ctrl_1: component S7_DCM_ctrl_1_0
     port map (
      aclk => s00_axi_aclk_2_1,
      aresetn => s00_axi_aresetn_2_1,
      brake => DCM_regs_0_DCM1_brake,
      clk200 => clk200_1,
      dir => DCM_regs_0_DCM1_dir,
      port_in1 => DCM_ctrl_1_DCM_IO_in1,
      port_in2 => DCM_ctrl_1_DCM_IO_in2,
      port_pwm => DCM_ctrl_1_DCM_IO_pwm,
      pwm_frq(6 downto 0) => DCM_regs_0_DCM1_pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => DCM_regs_0_DCM1_pwm_val(7 downto 0),
      run => DCM_regs_0_DCM1_run,
      status(1 downto 0) => DCM_regs_0_DCM1_status(1 downto 0),
      vld_in => DCM_regs_0_DCM1_vld_in,
      vld_out => DCM_regs_0_DCM1_vld_out
    );
DCM_ctrl_2: component S7_DCM_ctrl_2_0
     port map (
      aclk => s00_axi_aclk_2_1,
      aresetn => s00_axi_aresetn_2_1,
      brake => DCM_regs_0_DCM2_brake,
      clk200 => clk200_1,
      dir => DCM_regs_0_DCM2_dir,
      port_in1 => DCM_ctrl_2_DCM_IO_in1,
      port_in2 => DCM_ctrl_2_DCM_IO_in2,
      port_pwm => DCM_ctrl_2_DCM_IO_pwm,
      pwm_frq(6 downto 0) => DCM_regs_0_DCM2_pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => DCM_regs_0_DCM2_pwm_val(7 downto 0),
      run => DCM_regs_0_DCM2_run,
      status(1 downto 0) => DCM_regs_0_DCM2_status(1 downto 0),
      vld_in => DCM_regs_0_DCM2_vld_in,
      vld_out => DCM_regs_0_DCM2_vld_out
    );
DCM_ctrl_3: component S7_DCM_ctrl_3_0
     port map (
      aclk => s00_axi_aclk_2_1,
      aresetn => s00_axi_aresetn_2_1,
      brake => DCM_regs_0_DCM3_brake,
      clk200 => clk200_1,
      dir => DCM_regs_0_DCM3_dir,
      port_in1 => DCM_ctrl_3_DCM_IO_in1,
      port_in2 => DCM_ctrl_3_DCM_IO_in2,
      port_pwm => DCM_ctrl_3_DCM_IO_pwm,
      pwm_frq(6 downto 0) => DCM_regs_0_DCM3_pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => DCM_regs_0_DCM3_pwm_val(7 downto 0),
      run => DCM_regs_0_DCM3_run,
      status(1 downto 0) => DCM_regs_0_DCM3_status(1 downto 0),
      vld_in => DCM_regs_0_DCM3_vld_in,
      vld_out => DCM_regs_0_DCM3_vld_out
    );
DCM_ctrl_4: component S7_DCM_ctrl_4_0
     port map (
      aclk => s00_axi_aclk_2_1,
      aresetn => s00_axi_aresetn_2_1,
      brake => DCM_regs_0_DCM4_brake,
      clk200 => clk200_1,
      dir => DCM_regs_0_DCM4_dir,
      port_in1 => DCM_ctrl_4_DCM_IO_in1,
      port_in2 => DCM_ctrl_4_DCM_IO_in2,
      port_pwm => DCM_ctrl_4_DCM_IO_pwm,
      pwm_frq(6 downto 0) => DCM_regs_0_DCM4_pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => DCM_regs_0_DCM4_pwm_val(7 downto 0),
      run => DCM_regs_0_DCM4_run,
      status(1 downto 0) => DCM_regs_0_DCM4_status(1 downto 0),
      vld_in => DCM_regs_0_DCM4_vld_in,
      vld_out => DCM_regs_0_DCM4_vld_out
    );
DCM_regs_0: component S7_DCM_regs_0_0
     port map (
      DCM0_brake => DCM_regs_0_DCM0_brake,
      DCM0_dir => DCM_regs_0_DCM0_dir,
      DCM0_pwm_frq(6 downto 0) => DCM_regs_0_DCM0_pwm_frq(6 downto 0),
      DCM0_pwm_val(7 downto 0) => DCM_regs_0_DCM0_pwm_val(7 downto 0),
      DCM0_run => DCM_regs_0_DCM0_run,
      DCM0_status(1 downto 0) => DCM_regs_0_DCM0_status(1 downto 0),
      DCM0_vld_in => DCM_regs_0_DCM0_vld_in,
      DCM0_vld_out => DCM_regs_0_DCM0_vld_out,
      DCM1_brake => DCM_regs_0_DCM1_brake,
      DCM1_dir => DCM_regs_0_DCM1_dir,
      DCM1_pwm_frq(6 downto 0) => DCM_regs_0_DCM1_pwm_frq(6 downto 0),
      DCM1_pwm_val(7 downto 0) => DCM_regs_0_DCM1_pwm_val(7 downto 0),
      DCM1_run => DCM_regs_0_DCM1_run,
      DCM1_status(1 downto 0) => DCM_regs_0_DCM1_status(1 downto 0),
      DCM1_vld_in => DCM_regs_0_DCM1_vld_in,
      DCM1_vld_out => DCM_regs_0_DCM1_vld_out,
      DCM2_brake => DCM_regs_0_DCM2_brake,
      DCM2_dir => DCM_regs_0_DCM2_dir,
      DCM2_pwm_frq(6 downto 0) => DCM_regs_0_DCM2_pwm_frq(6 downto 0),
      DCM2_pwm_val(7 downto 0) => DCM_regs_0_DCM2_pwm_val(7 downto 0),
      DCM2_run => DCM_regs_0_DCM2_run,
      DCM2_status(1 downto 0) => DCM_regs_0_DCM2_status(1 downto 0),
      DCM2_vld_in => DCM_regs_0_DCM2_vld_in,
      DCM2_vld_out => DCM_regs_0_DCM2_vld_out,
      DCM3_brake => DCM_regs_0_DCM3_brake,
      DCM3_dir => DCM_regs_0_DCM3_dir,
      DCM3_pwm_frq(6 downto 0) => DCM_regs_0_DCM3_pwm_frq(6 downto 0),
      DCM3_pwm_val(7 downto 0) => DCM_regs_0_DCM3_pwm_val(7 downto 0),
      DCM3_run => DCM_regs_0_DCM3_run,
      DCM3_status(1 downto 0) => DCM_regs_0_DCM3_status(1 downto 0),
      DCM3_vld_in => DCM_regs_0_DCM3_vld_in,
      DCM3_vld_out => DCM_regs_0_DCM3_vld_out,
      DCM4_brake => DCM_regs_0_DCM4_brake,
      DCM4_dir => DCM_regs_0_DCM4_dir,
      DCM4_pwm_frq(6 downto 0) => DCM_regs_0_DCM4_pwm_frq(6 downto 0),
      DCM4_pwm_val(7 downto 0) => DCM_regs_0_DCM4_pwm_val(7 downto 0),
      DCM4_run => DCM_regs_0_DCM4_run,
      DCM4_status(1 downto 0) => DCM_regs_0_DCM4_status(1 downto 0),
      DCM4_vld_in => DCM_regs_0_DCM4_vld_in,
      DCM4_vld_out => DCM_regs_0_DCM4_vld_out,
      s00_axi_aclk => s00_axi_aclk_2_1,
      s00_axi_araddr(6 downto 0) => Conn1_ARADDR(6 downto 0),
      s00_axi_aresetn => s00_axi_aresetn_2_1,
      s00_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s00_axi_arready => Conn1_ARREADY,
      s00_axi_arvalid => Conn1_ARVALID(0),
      s00_axi_awaddr(6 downto 0) => Conn1_AWADDR(6 downto 0),
      s00_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s00_axi_awready => Conn1_AWREADY,
      s00_axi_awvalid => Conn1_AWVALID(0),
      s00_axi_bready => Conn1_BREADY(0),
      s00_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s00_axi_bvalid => Conn1_BVALID,
      s00_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s00_axi_rready => Conn1_RREADY(0),
      s00_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s00_axi_rvalid => Conn1_RVALID,
      s00_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s00_axi_wready => Conn1_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn1_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PHS_50_imp_RL92HO is
  port (
    PHS0_phs_in : in STD_LOGIC;
    PHS0_pwm_out : out STD_LOGIC;
    PHS10_phs_in : in STD_LOGIC;
    PHS10_pwm_out : out STD_LOGIC;
    PHS11_phs_in : in STD_LOGIC;
    PHS11_pwm_out : out STD_LOGIC;
    PHS12_phs_in : in STD_LOGIC;
    PHS12_pwm_out : out STD_LOGIC;
    PHS13_phs_in : in STD_LOGIC;
    PHS13_pwm_out : out STD_LOGIC;
    PHS14_phs_in : in STD_LOGIC;
    PHS14_pwm_out : out STD_LOGIC;
    PHS15_phs_in : in STD_LOGIC;
    PHS15_pwm_out : out STD_LOGIC;
    PHS16_phs_in : in STD_LOGIC;
    PHS16_pwm_out : out STD_LOGIC;
    PHS17_phs_in : in STD_LOGIC;
    PHS17_pwm_out : out STD_LOGIC;
    PHS18_phs_in : in STD_LOGIC;
    PHS18_pwm_out : out STD_LOGIC;
    PHS19_phs_in : in STD_LOGIC;
    PHS19_pwm_out : out STD_LOGIC;
    PHS1_phs_in : in STD_LOGIC;
    PHS1_pwm_out : out STD_LOGIC;
    PHS20_phs_in : in STD_LOGIC;
    PHS20_pwm_out : out STD_LOGIC;
    PHS21_phs_in : in STD_LOGIC;
    PHS21_pwm_out : out STD_LOGIC;
    PHS22_phs_in : in STD_LOGIC;
    PHS22_pwm_out : out STD_LOGIC;
    PHS23_phs_in : in STD_LOGIC;
    PHS23_pwm_out : out STD_LOGIC;
    PHS24_phs_in : in STD_LOGIC;
    PHS24_pwm_out : out STD_LOGIC;
    PHS25_phs_in : in STD_LOGIC;
    PHS25_pwm_out : out STD_LOGIC;
    PHS26_phs_in : in STD_LOGIC;
    PHS26_pwm_out : out STD_LOGIC;
    PHS27_phs_in : in STD_LOGIC;
    PHS27_pwm_out : out STD_LOGIC;
    PHS28_phs_in : in STD_LOGIC;
    PHS28_pwm_out : out STD_LOGIC;
    PHS29_phs_in : in STD_LOGIC;
    PHS29_pwm_out : out STD_LOGIC;
    PHS2_phs_in : in STD_LOGIC;
    PHS2_pwm_out : out STD_LOGIC;
    PHS30_phs_in : in STD_LOGIC;
    PHS30_pwm_out : out STD_LOGIC;
    PHS31_phs_in : in STD_LOGIC;
    PHS31_pwm_out : out STD_LOGIC;
    PHS32_phs_in : in STD_LOGIC;
    PHS32_pwm_out : out STD_LOGIC;
    PHS33_phs_in : in STD_LOGIC;
    PHS33_pwm_out : out STD_LOGIC;
    PHS34_phs_in : in STD_LOGIC;
    PHS34_pwm_out : out STD_LOGIC;
    PHS35_phs_in : in STD_LOGIC;
    PHS35_pwm_out : out STD_LOGIC;
    PHS36_phs_in : in STD_LOGIC;
    PHS36_pwm_out : out STD_LOGIC;
    PHS37_phs_in : in STD_LOGIC;
    PHS37_pwm_out : out STD_LOGIC;
    PHS38_phs_in : in STD_LOGIC;
    PHS38_pwm_out : out STD_LOGIC;
    PHS39_phs_in : in STD_LOGIC;
    PHS39_pwm_out : out STD_LOGIC;
    PHS3_phs_in : in STD_LOGIC;
    PHS3_pwm_out : out STD_LOGIC;
    PHS40_phs_in : in STD_LOGIC;
    PHS40_pwm_out : out STD_LOGIC;
    PHS41_phs_in : in STD_LOGIC;
    PHS41_pwm_out : out STD_LOGIC;
    PHS42_phs_in : in STD_LOGIC;
    PHS42_pwm_out : out STD_LOGIC;
    PHS43_phs_in : in STD_LOGIC;
    PHS43_pwm_out : out STD_LOGIC;
    PHS44_phs_in : in STD_LOGIC;
    PHS44_pwm_out : out STD_LOGIC;
    PHS45_phs_in : in STD_LOGIC;
    PHS45_pwm_out : out STD_LOGIC;
    PHS46_phs_in : in STD_LOGIC;
    PHS46_pwm_out : out STD_LOGIC;
    PHS47_phs_in : in STD_LOGIC;
    PHS47_pwm_out : out STD_LOGIC;
    PHS48_phs_in : in STD_LOGIC;
    PHS48_pwm_out : out STD_LOGIC;
    PHS49_phs_in : in STD_LOGIC;
    PHS49_pwm_out : out STD_LOGIC;
    PHS4_phs_in : in STD_LOGIC;
    PHS4_pwm_out : out STD_LOGIC;
    PHS5_phs_in : in STD_LOGIC;
    PHS5_pwm_out : out STD_LOGIC;
    PHS6_phs_in : in STD_LOGIC;
    PHS6_pwm_out : out STD_LOGIC;
    PHS7_phs_in : in STD_LOGIC;
    PHS7_pwm_out : out STD_LOGIC;
    PHS8_phs_in : in STD_LOGIC;
    PHS8_pwm_out : out STD_LOGIC;
    PHS9_phs_in : in STD_LOGIC;
    PHS9_pwm_out : out STD_LOGIC;
    PHS_ena_dbg : out STD_LOGIC;
    PHS_irq_L2S_0 : out STD_LOGIC;
    PHS_irq_L2S_1 : out STD_LOGIC;
    PHS_irq_S2L_0 : out STD_LOGIC;
    PHS_irq_S2L_1 : out STD_LOGIC;
    PHS_irqs_L2S_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_L2S_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end PHS_50_imp_RL92HO;

architecture STRUCTURE of PHS_50_imp_RL92HO is
  component S7_RT_timebase_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_PHS : out STD_LOGIC
  );
  end component S7_RT_timebase_0_0;
  component S7_PHS_ctrl_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_0_0;
  component S7_PHS_ctrl_10_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_10_0;
  component S7_PHS_ctrl_11_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_11_0;
  component S7_PHS_ctrl_12_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_12_0;
  component S7_PHS_ctrl_13_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_13_0;
  component S7_PHS_ctrl_14_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_14_0;
  component S7_PHS_ctrl_15_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_15_0;
  component S7_PHS_ctrl_16_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_16_0;
  component S7_PHS_ctrl_17_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_17_0;
  component S7_PHS_ctrl_18_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_18_0;
  component S7_PHS_ctrl_19_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_19_0;
  component S7_PHS_ctrl_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_1_0;
  component S7_PHS_ctrl_20_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_20_0;
  component S7_PHS_ctrl_21_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_21_0;
  component S7_PHS_ctrl_22_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_22_0;
  component S7_PHS_ctrl_23_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_23_0;
  component S7_PHS_ctrl_24_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_24_0;
  component S7_PHS_ctrl_25_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_25_0;
  component S7_PHS_ctrl_26_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_26_0;
  component S7_PHS_ctrl_27_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_27_0;
  component S7_PHS_ctrl_28_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_28_0;
  component S7_PHS_ctrl_29_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_29_0;
  component S7_PHS_ctrl_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_2_0;
  component S7_PHS_ctrl_30_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_30_0;
  component S7_PHS_ctrl_31_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_31_0;
  component S7_PHS_ctrl_32_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_32_0;
  component S7_PHS_ctrl_33_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_33_0;
  component S7_PHS_ctrl_34_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_34_0;
  component S7_PHS_ctrl_35_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_35_0;
  component S7_PHS_ctrl_36_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_36_0;
  component S7_PHS_ctrl_37_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_37_0;
  component S7_PHS_ctrl_38_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_38_0;
  component S7_PHS_ctrl_39_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_39_0;
  component S7_PHS_ctrl_3_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_3_0;
  component S7_PHS_ctrl_40_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_40_0;
  component S7_PHS_ctrl_41_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_41_0;
  component S7_PHS_ctrl_42_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_42_0;
  component S7_PHS_ctrl_43_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_43_0;
  component S7_PHS_ctrl_44_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_44_0;
  component S7_PHS_ctrl_45_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_45_0;
  component S7_PHS_ctrl_46_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_46_0;
  component S7_PHS_ctrl_47_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_47_0;
  component S7_PHS_ctrl_48_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_48_0;
  component S7_PHS_ctrl_49_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_49_0;
  component S7_PHS_ctrl_4_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_4_0;
  component S7_PHS_ctrl_5_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_5_0;
  component S7_PHS_ctrl_6_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_6_0;
  component S7_PHS_ctrl_7_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_7_0;
  component S7_PHS_ctrl_8_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_8_0;
  component S7_PHS_ctrl_9_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  end component S7_PHS_ctrl_9_0;
  component S7_PHS_regs_0_0 is
  port (
    PHS0_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS0_status : in STD_LOGIC;
    PHS0_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS0_irq0_L2S : in STD_LOGIC;
    PHS0_irq1_S2L : in STD_LOGIC;
    PHS0_irq0_clr : out STD_LOGIC;
    PHS0_irq1_clr : out STD_LOGIC;
    PHS0_vld_out : out STD_LOGIC;
    PHS0_vld_in : in STD_LOGIC;
    PHS1_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS1_status : in STD_LOGIC;
    PHS1_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS1_irq0_L2S : in STD_LOGIC;
    PHS1_irq1_S2L : in STD_LOGIC;
    PHS1_irq0_clr : out STD_LOGIC;
    PHS1_irq1_clr : out STD_LOGIC;
    PHS1_vld_out : out STD_LOGIC;
    PHS1_vld_in : in STD_LOGIC;
    PHS2_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS2_status : in STD_LOGIC;
    PHS2_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS2_irq0_L2S : in STD_LOGIC;
    PHS2_irq1_S2L : in STD_LOGIC;
    PHS2_irq0_clr : out STD_LOGIC;
    PHS2_irq1_clr : out STD_LOGIC;
    PHS2_vld_out : out STD_LOGIC;
    PHS2_vld_in : in STD_LOGIC;
    PHS3_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS3_status : in STD_LOGIC;
    PHS3_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS3_irq0_L2S : in STD_LOGIC;
    PHS3_irq1_S2L : in STD_LOGIC;
    PHS3_irq0_clr : out STD_LOGIC;
    PHS3_irq1_clr : out STD_LOGIC;
    PHS3_vld_out : out STD_LOGIC;
    PHS3_vld_in : in STD_LOGIC;
    PHS4_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS4_status : in STD_LOGIC;
    PHS4_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS4_irq0_L2S : in STD_LOGIC;
    PHS4_irq1_S2L : in STD_LOGIC;
    PHS4_irq0_clr : out STD_LOGIC;
    PHS4_irq1_clr : out STD_LOGIC;
    PHS4_vld_out : out STD_LOGIC;
    PHS4_vld_in : in STD_LOGIC;
    PHS5_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS5_status : in STD_LOGIC;
    PHS5_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS5_irq0_L2S : in STD_LOGIC;
    PHS5_irq1_S2L : in STD_LOGIC;
    PHS5_irq0_clr : out STD_LOGIC;
    PHS5_irq1_clr : out STD_LOGIC;
    PHS5_vld_out : out STD_LOGIC;
    PHS5_vld_in : in STD_LOGIC;
    PHS6_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS6_status : in STD_LOGIC;
    PHS6_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS6_irq0_L2S : in STD_LOGIC;
    PHS6_irq1_S2L : in STD_LOGIC;
    PHS6_irq0_clr : out STD_LOGIC;
    PHS6_irq1_clr : out STD_LOGIC;
    PHS6_vld_out : out STD_LOGIC;
    PHS6_vld_in : in STD_LOGIC;
    PHS7_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS7_status : in STD_LOGIC;
    PHS7_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS7_irq0_L2S : in STD_LOGIC;
    PHS7_irq1_S2L : in STD_LOGIC;
    PHS7_irq0_clr : out STD_LOGIC;
    PHS7_irq1_clr : out STD_LOGIC;
    PHS7_vld_out : out STD_LOGIC;
    PHS7_vld_in : in STD_LOGIC;
    PHS8_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS8_status : in STD_LOGIC;
    PHS8_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS8_irq0_L2S : in STD_LOGIC;
    PHS8_irq1_S2L : in STD_LOGIC;
    PHS8_irq0_clr : out STD_LOGIC;
    PHS8_irq1_clr : out STD_LOGIC;
    PHS8_vld_out : out STD_LOGIC;
    PHS8_vld_in : in STD_LOGIC;
    PHS9_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS9_status : in STD_LOGIC;
    PHS9_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS9_irq0_L2S : in STD_LOGIC;
    PHS9_irq1_S2L : in STD_LOGIC;
    PHS9_irq0_clr : out STD_LOGIC;
    PHS9_irq1_clr : out STD_LOGIC;
    PHS9_vld_out : out STD_LOGIC;
    PHS9_vld_in : in STD_LOGIC;
    PHS10_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS10_status : in STD_LOGIC;
    PHS10_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS10_irq0_L2S : in STD_LOGIC;
    PHS10_irq1_S2L : in STD_LOGIC;
    PHS10_irq0_clr : out STD_LOGIC;
    PHS10_irq1_clr : out STD_LOGIC;
    PHS10_vld_out : out STD_LOGIC;
    PHS10_vld_in : in STD_LOGIC;
    PHS11_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS11_status : in STD_LOGIC;
    PHS11_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS11_irq0_L2S : in STD_LOGIC;
    PHS11_irq1_S2L : in STD_LOGIC;
    PHS11_irq0_clr : out STD_LOGIC;
    PHS11_irq1_clr : out STD_LOGIC;
    PHS11_vld_out : out STD_LOGIC;
    PHS11_vld_in : in STD_LOGIC;
    PHS12_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS12_status : in STD_LOGIC;
    PHS12_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS12_irq0_L2S : in STD_LOGIC;
    PHS12_irq1_S2L : in STD_LOGIC;
    PHS12_irq0_clr : out STD_LOGIC;
    PHS12_irq1_clr : out STD_LOGIC;
    PHS13_irq1_clr : out STD_LOGIC;
    PHS12_vld_out : out STD_LOGIC;
    PHS12_vld_in : in STD_LOGIC;
    PHS13_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS13_status : in STD_LOGIC;
    PHS13_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS13_irq0_L2S : in STD_LOGIC;
    PHS13_irq1_S2L : in STD_LOGIC;
    PHS13_irq0_clr : out STD_LOGIC;
    PHS13_vld_out : out STD_LOGIC;
    PHS13_vld_in : in STD_LOGIC;
    PHS14_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS14_status : in STD_LOGIC;
    PHS14_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS14_irq0_L2S : in STD_LOGIC;
    PHS14_irq1_S2L : in STD_LOGIC;
    PHS14_irq0_clr : out STD_LOGIC;
    PHS14_irq1_clr : out STD_LOGIC;
    PHS14_vld_out : out STD_LOGIC;
    PHS14_vld_in : in STD_LOGIC;
    PHS15_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS15_status : in STD_LOGIC;
    PHS15_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS15_irq0_L2S : in STD_LOGIC;
    PHS15_irq1_S2L : in STD_LOGIC;
    PHS15_irq0_clr : out STD_LOGIC;
    PHS15_irq1_clr : out STD_LOGIC;
    PHS15_vld_out : out STD_LOGIC;
    PHS15_vld_in : in STD_LOGIC;
    PHS16_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS16_status : in STD_LOGIC;
    PHS16_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS16_irq0_L2S : in STD_LOGIC;
    PHS16_irq1_S2L : in STD_LOGIC;
    PHS16_irq0_clr : out STD_LOGIC;
    PHS16_irq1_clr : out STD_LOGIC;
    PHS16_vld_out : out STD_LOGIC;
    PHS16_vld_in : in STD_LOGIC;
    PHS17_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS17_status : in STD_LOGIC;
    PHS17_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS17_irq0_L2S : in STD_LOGIC;
    PHS17_irq1_S2L : in STD_LOGIC;
    PHS17_irq0_clr : out STD_LOGIC;
    PHS17_irq1_clr : out STD_LOGIC;
    PHS17_vld_out : out STD_LOGIC;
    PHS17_vld_in : in STD_LOGIC;
    PHS18_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS18_status : in STD_LOGIC;
    PHS18_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS18_irq0_L2S : in STD_LOGIC;
    PHS18_irq1_S2L : in STD_LOGIC;
    PHS18_irq0_clr : out STD_LOGIC;
    PHS18_irq1_clr : out STD_LOGIC;
    PHS18_vld_out : out STD_LOGIC;
    PHS18_vld_in : in STD_LOGIC;
    PHS19_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS19_status : in STD_LOGIC;
    PHS19_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS19_irq0_L2S : in STD_LOGIC;
    PHS19_irq1_S2L : in STD_LOGIC;
    PHS19_irq0_clr : out STD_LOGIC;
    PHS19_irq1_clr : out STD_LOGIC;
    PHS19_vld_out : out STD_LOGIC;
    PHS19_vld_in : in STD_LOGIC;
    PHS20_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS20_status : in STD_LOGIC;
    PHS20_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS20_irq0_L2S : in STD_LOGIC;
    PHS20_irq1_S2L : in STD_LOGIC;
    PHS20_irq0_clr : out STD_LOGIC;
    PHS20_irq1_clr : out STD_LOGIC;
    PHS20_vld_out : out STD_LOGIC;
    PHS20_vld_in : in STD_LOGIC;
    PHS21_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS21_status : in STD_LOGIC;
    PHS21_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS21_irq0_L2S : in STD_LOGIC;
    PHS21_irq1_S2L : in STD_LOGIC;
    PHS21_irq0_clr : out STD_LOGIC;
    PHS21_irq1_clr : out STD_LOGIC;
    PHS21_vld_out : out STD_LOGIC;
    PHS21_vld_in : in STD_LOGIC;
    PHS22_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS22_status : in STD_LOGIC;
    PHS22_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS22_irq0_L2S : in STD_LOGIC;
    PHS22_irq1_S2L : in STD_LOGIC;
    PHS22_irq0_clr : out STD_LOGIC;
    PHS22_irq1_clr : out STD_LOGIC;
    PHS22_vld_out : out STD_LOGIC;
    PHS22_vld_in : in STD_LOGIC;
    PHS23_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS23_status : in STD_LOGIC;
    PHS23_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS23_irq0_L2S : in STD_LOGIC;
    PHS23_irq1_S2L : in STD_LOGIC;
    PHS23_irq0_clr : out STD_LOGIC;
    PHS23_irq1_clr : out STD_LOGIC;
    PHS23_vld_out : out STD_LOGIC;
    PHS23_vld_in : in STD_LOGIC;
    PHS24_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS24_status : in STD_LOGIC;
    PHS24_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS24_irq0_L2S : in STD_LOGIC;
    PHS24_irq1_S2L : in STD_LOGIC;
    PHS24_irq0_clr : out STD_LOGIC;
    PHS24_irq1_clr : out STD_LOGIC;
    PHS24_vld_out : out STD_LOGIC;
    PHS24_vld_in : in STD_LOGIC;
    PHS25_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS25_status : in STD_LOGIC;
    PHS25_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS25_irq0_L2S : in STD_LOGIC;
    PHS25_irq1_S2L : in STD_LOGIC;
    PHS25_irq0_clr : out STD_LOGIC;
    PHS25_irq1_clr : out STD_LOGIC;
    PHS25_vld_out : out STD_LOGIC;
    PHS25_vld_in : in STD_LOGIC;
    PHS26_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS26_status : in STD_LOGIC;
    PHS26_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS26_irq0_L2S : in STD_LOGIC;
    PHS26_irq1_S2L : in STD_LOGIC;
    PHS26_irq0_clr : out STD_LOGIC;
    PHS26_irq1_clr : out STD_LOGIC;
    PHS26_vld_out : out STD_LOGIC;
    PHS26_vld_in : in STD_LOGIC;
    PHS27_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS27_status : in STD_LOGIC;
    PHS27_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS27_irq0_L2S : in STD_LOGIC;
    PHS27_irq1_S2L : in STD_LOGIC;
    PHS27_irq0_clr : out STD_LOGIC;
    PHS27_irq1_clr : out STD_LOGIC;
    PHS27_vld_out : out STD_LOGIC;
    PHS27_vld_in : in STD_LOGIC;
    PHS28_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS28_status : in STD_LOGIC;
    PHS28_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS28_irq0_L2S : in STD_LOGIC;
    PHS28_irq1_S2L : in STD_LOGIC;
    PHS28_irq0_clr : out STD_LOGIC;
    PHS28_irq1_clr : out STD_LOGIC;
    PHS28_vld_out : out STD_LOGIC;
    PHS28_vld_in : in STD_LOGIC;
    PHS29_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS29_status : in STD_LOGIC;
    PHS29_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS29_irq0_L2S : in STD_LOGIC;
    PHS29_irq1_S2L : in STD_LOGIC;
    PHS29_irq0_clr : out STD_LOGIC;
    PHS29_irq1_clr : out STD_LOGIC;
    PHS29_vld_out : out STD_LOGIC;
    PHS29_vld_in : in STD_LOGIC;
    PHS30_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS30_status : in STD_LOGIC;
    PHS30_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS30_irq0_L2S : in STD_LOGIC;
    PHS30_irq1_S2L : in STD_LOGIC;
    PHS30_irq0_clr : out STD_LOGIC;
    PHS30_irq1_clr : out STD_LOGIC;
    PHS30_vld_out : out STD_LOGIC;
    PHS30_vld_in : in STD_LOGIC;
    PHS31_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS31_status : in STD_LOGIC;
    PHS31_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS31_irq0_L2S : in STD_LOGIC;
    PHS31_irq1_S2L : in STD_LOGIC;
    PHS31_irq0_clr : out STD_LOGIC;
    PHS31_irq1_clr : out STD_LOGIC;
    PHS31_vld_out : out STD_LOGIC;
    PHS31_vld_in : in STD_LOGIC;
    PHS32_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS32_status : in STD_LOGIC;
    PHS32_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS32_irq0_L2S : in STD_LOGIC;
    PHS32_irq1_S2L : in STD_LOGIC;
    PHS32_irq0_clr : out STD_LOGIC;
    PHS32_irq1_clr : out STD_LOGIC;
    PHS32_vld_out : out STD_LOGIC;
    PHS32_vld_in : in STD_LOGIC;
    PHS33_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS33_status : in STD_LOGIC;
    PHS33_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS33_irq0_L2S : in STD_LOGIC;
    PHS33_irq1_S2L : in STD_LOGIC;
    PHS33_irq0_clr : out STD_LOGIC;
    PHS33_irq1_clr : out STD_LOGIC;
    PHS33_vld_out : out STD_LOGIC;
    PHS33_vld_in : in STD_LOGIC;
    PHS34_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS34_status : in STD_LOGIC;
    PHS34_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS34_irq0_L2S : in STD_LOGIC;
    PHS34_irq1_S2L : in STD_LOGIC;
    PHS34_irq0_clr : out STD_LOGIC;
    PHS34_irq1_clr : out STD_LOGIC;
    PHS34_vld_out : out STD_LOGIC;
    PHS34_vld_in : in STD_LOGIC;
    PHS35_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS35_status : in STD_LOGIC;
    PHS35_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS35_irq0_L2S : in STD_LOGIC;
    PHS35_irq1_S2L : in STD_LOGIC;
    PHS35_irq0_clr : out STD_LOGIC;
    PHS35_irq1_clr : out STD_LOGIC;
    PHS35_vld_out : out STD_LOGIC;
    PHS35_vld_in : in STD_LOGIC;
    PHS36_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS36_status : in STD_LOGIC;
    PHS36_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS36_irq0_L2S : in STD_LOGIC;
    PHS36_irq1_S2L : in STD_LOGIC;
    PHS36_irq0_clr : out STD_LOGIC;
    PHS36_irq1_clr : out STD_LOGIC;
    PHS36_vld_out : out STD_LOGIC;
    PHS36_vld_in : in STD_LOGIC;
    PHS37_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS37_status : in STD_LOGIC;
    PHS37_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS37_irq0_L2S : in STD_LOGIC;
    PHS37_irq1_S2L : in STD_LOGIC;
    PHS37_irq0_clr : out STD_LOGIC;
    PHS37_irq1_clr : out STD_LOGIC;
    PHS37_vld_out : out STD_LOGIC;
    PHS37_vld_in : in STD_LOGIC;
    PHS38_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS38_status : in STD_LOGIC;
    PHS38_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS38_irq0_L2S : in STD_LOGIC;
    PHS38_irq1_S2L : in STD_LOGIC;
    PHS38_irq0_clr : out STD_LOGIC;
    PHS38_irq1_clr : out STD_LOGIC;
    PHS38_vld_out : out STD_LOGIC;
    PHS38_vld_in : in STD_LOGIC;
    PHS39_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS39_status : in STD_LOGIC;
    PHS39_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS39_irq0_L2S : in STD_LOGIC;
    PHS39_irq1_S2L : in STD_LOGIC;
    PHS39_irq0_clr : out STD_LOGIC;
    PHS39_irq1_clr : out STD_LOGIC;
    PHS39_vld_out : out STD_LOGIC;
    PHS39_vld_in : in STD_LOGIC;
    PHS40_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS40_status : in STD_LOGIC;
    PHS40_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS40_irq0_L2S : in STD_LOGIC;
    PHS40_irq1_S2L : in STD_LOGIC;
    PHS40_irq0_clr : out STD_LOGIC;
    PHS40_irq1_clr : out STD_LOGIC;
    PHS40_vld_out : out STD_LOGIC;
    PHS40_vld_in : in STD_LOGIC;
    PHS41_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS41_status : in STD_LOGIC;
    PHS41_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS41_irq0_L2S : in STD_LOGIC;
    PHS41_irq1_S2L : in STD_LOGIC;
    PHS41_irq0_clr : out STD_LOGIC;
    PHS41_irq1_clr : out STD_LOGIC;
    PHS41_vld_out : out STD_LOGIC;
    PHS41_vld_in : in STD_LOGIC;
    PHS42_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS42_status : in STD_LOGIC;
    PHS42_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS42_irq0_L2S : in STD_LOGIC;
    PHS42_irq1_S2L : in STD_LOGIC;
    PHS42_irq0_clr : out STD_LOGIC;
    PHS42_irq1_clr : out STD_LOGIC;
    PHS42_vld_out : out STD_LOGIC;
    PHS42_vld_in : in STD_LOGIC;
    PHS43_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS43_status : in STD_LOGIC;
    PHS43_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS43_irq0_L2S : in STD_LOGIC;
    PHS43_irq1_S2L : in STD_LOGIC;
    PHS43_irq0_clr : out STD_LOGIC;
    PHS43_irq1_clr : out STD_LOGIC;
    PHS43_vld_out : out STD_LOGIC;
    PHS43_vld_in : in STD_LOGIC;
    PHS44_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS44_status : in STD_LOGIC;
    PHS44_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS44_irq0_L2S : in STD_LOGIC;
    PHS44_irq1_S2L : in STD_LOGIC;
    PHS44_irq0_clr : out STD_LOGIC;
    PHS44_irq1_clr : out STD_LOGIC;
    PHS44_vld_out : out STD_LOGIC;
    PHS44_vld_in : in STD_LOGIC;
    PHS45_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS45_status : in STD_LOGIC;
    PHS45_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS45_irq0_L2S : in STD_LOGIC;
    PHS45_irq1_S2L : in STD_LOGIC;
    PHS45_irq0_clr : out STD_LOGIC;
    PHS45_irq1_clr : out STD_LOGIC;
    PHS45_vld_out : out STD_LOGIC;
    PHS45_vld_in : in STD_LOGIC;
    PHS46_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS46_status : in STD_LOGIC;
    PHS46_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS46_irq0_L2S : in STD_LOGIC;
    PHS46_irq1_S2L : in STD_LOGIC;
    PHS46_irq0_clr : out STD_LOGIC;
    PHS46_irq1_clr : out STD_LOGIC;
    PHS46_vld_out : out STD_LOGIC;
    PHS46_vld_in : in STD_LOGIC;
    PHS47_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS47_status : in STD_LOGIC;
    PHS47_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS47_irq0_L2S : in STD_LOGIC;
    PHS47_irq1_S2L : in STD_LOGIC;
    PHS47_irq0_clr : out STD_LOGIC;
    PHS47_irq1_clr : out STD_LOGIC;
    PHS47_vld_out : out STD_LOGIC;
    PHS47_vld_in : in STD_LOGIC;
    PHS48_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS48_status : in STD_LOGIC;
    PHS48_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS48_irq0_L2S : in STD_LOGIC;
    PHS48_irq1_S2L : in STD_LOGIC;
    PHS48_irq0_clr : out STD_LOGIC;
    PHS48_irq1_clr : out STD_LOGIC;
    PHS48_vld_out : out STD_LOGIC;
    PHS48_vld_in : in STD_LOGIC;
    PHS49_pwm_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PHS49_status : in STD_LOGIC;
    PHS49_irq_mask : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PHS49_irq0_L2S : in STD_LOGIC;
    PHS49_irq1_S2L : in STD_LOGIC;
    PHS49_irq0_clr : out STD_LOGIC;
    PHS49_irq1_clr : out STD_LOGIC;
    PHS49_vld_out : out STD_LOGIC;
    PHS49_vld_in : in STD_LOGIC;
    PHS_irqs_L2S_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_L2S_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irq_L2S_0 : out STD_LOGIC;
    PHS_irq_L2S_1 : out STD_LOGIC;
    PHS_irqs_S2L_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irqs_S2L_1 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    PHS_irq_S2L_0 : out STD_LOGIC;
    PHS_irq_S2L_1 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component S7_PHS_regs_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PHS_ctrl_0_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_0_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_0_ena_out : STD_LOGIC;
  signal PHS_ctrl_10_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_10_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_10_ena_out : STD_LOGIC;
  signal PHS_ctrl_11_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_11_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_11_ena_out : STD_LOGIC;
  signal PHS_ctrl_12_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_12_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_12_ena_out : STD_LOGIC;
  signal PHS_ctrl_13_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_13_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_13_ena_out : STD_LOGIC;
  signal PHS_ctrl_14_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_14_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_14_ena_out : STD_LOGIC;
  signal PHS_ctrl_15_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_15_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_15_ena_out : STD_LOGIC;
  signal PHS_ctrl_16_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_16_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_16_ena_out : STD_LOGIC;
  signal PHS_ctrl_17_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_17_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_17_ena_out : STD_LOGIC;
  signal PHS_ctrl_18_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_18_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_18_ena_out : STD_LOGIC;
  signal PHS_ctrl_19_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_19_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_19_ena_out : STD_LOGIC;
  signal PHS_ctrl_1_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_1_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_1_ena_out : STD_LOGIC;
  signal PHS_ctrl_20_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_20_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_20_ena_out : STD_LOGIC;
  signal PHS_ctrl_21_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_21_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_21_ena_out : STD_LOGIC;
  signal PHS_ctrl_22_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_22_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_22_ena_out : STD_LOGIC;
  signal PHS_ctrl_23_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_23_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_23_ena_out : STD_LOGIC;
  signal PHS_ctrl_24_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_24_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_24_ena_out : STD_LOGIC;
  signal PHS_ctrl_25_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_25_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_25_ena_out : STD_LOGIC;
  signal PHS_ctrl_26_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_26_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_26_ena_out : STD_LOGIC;
  signal PHS_ctrl_27_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_27_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_27_ena_out : STD_LOGIC;
  signal PHS_ctrl_28_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_28_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_28_ena_out : STD_LOGIC;
  signal PHS_ctrl_29_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_29_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_29_ena_out : STD_LOGIC;
  signal PHS_ctrl_2_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_2_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_2_ena_out : STD_LOGIC;
  signal PHS_ctrl_30_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_30_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_30_ena_out : STD_LOGIC;
  signal PHS_ctrl_31_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_31_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_31_ena_out : STD_LOGIC;
  signal PHS_ctrl_32_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_32_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_32_ena_out : STD_LOGIC;
  signal PHS_ctrl_33_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_33_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_33_ena_out : STD_LOGIC;
  signal PHS_ctrl_34_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_34_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_34_ena_out : STD_LOGIC;
  signal PHS_ctrl_35_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_35_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_35_ena_out : STD_LOGIC;
  signal PHS_ctrl_36_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_36_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_36_ena_out : STD_LOGIC;
  signal PHS_ctrl_37_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_37_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_37_ena_out : STD_LOGIC;
  signal PHS_ctrl_38_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_38_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_38_ena_out : STD_LOGIC;
  signal PHS_ctrl_39_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_39_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_39_ena_out : STD_LOGIC;
  signal PHS_ctrl_3_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_3_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_3_ena_out : STD_LOGIC;
  signal PHS_ctrl_40_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_40_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_40_ena_out : STD_LOGIC;
  signal PHS_ctrl_41_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_41_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_41_ena_out : STD_LOGIC;
  signal PHS_ctrl_42_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_42_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_42_ena_out : STD_LOGIC;
  signal PHS_ctrl_43_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_43_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_43_ena_out : STD_LOGIC;
  signal PHS_ctrl_44_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_44_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_44_ena_out : STD_LOGIC;
  signal PHS_ctrl_45_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_45_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_45_ena_out : STD_LOGIC;
  signal PHS_ctrl_46_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_46_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_46_ena_out : STD_LOGIC;
  signal PHS_ctrl_47_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_47_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_47_ena_out : STD_LOGIC;
  signal PHS_ctrl_48_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_48_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_48_ena_out : STD_LOGIC;
  signal PHS_ctrl_49_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_49_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_49_ena_out : STD_LOGIC;
  signal PHS_ctrl_4_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_4_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_4_ena_out : STD_LOGIC;
  signal PHS_ctrl_5_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_5_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_5_ena_out : STD_LOGIC;
  signal PHS_ctrl_6_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_6_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_6_ena_out : STD_LOGIC;
  signal PHS_ctrl_7_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_7_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_7_ena_out : STD_LOGIC;
  signal PHS_ctrl_8_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_8_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_8_ena_out : STD_LOGIC;
  signal PHS_ctrl_9_PHS_ios_phs_in : STD_LOGIC;
  signal PHS_ctrl_9_PHS_ios_pwm_out : STD_LOGIC;
  signal PHS_ctrl_9_ena_out : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS0_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS0_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS0_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS10_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS10_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS10_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS11_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS11_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS11_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS12_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS12_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS12_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS13_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS13_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS13_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS14_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS14_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS14_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS15_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS15_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS15_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS16_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS16_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS16_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS17_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS17_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS17_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS18_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS18_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS18_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS19_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS19_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS19_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS1_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS1_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS1_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS20_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS20_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS20_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS21_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS21_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS21_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS22_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS22_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS22_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS23_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS23_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS23_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS24_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS24_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS24_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS25_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS25_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS25_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS26_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS26_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS26_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS27_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS27_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS27_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS28_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS28_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS28_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS29_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS29_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS29_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS2_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS2_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS2_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS30_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS30_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS30_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS31_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS31_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS31_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS32_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS32_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS32_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS33_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS33_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS33_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS34_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS34_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS34_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS35_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS35_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS35_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS36_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS36_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS36_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS37_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS37_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS37_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS38_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS38_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS38_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS39_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS39_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS39_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS3_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS3_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS3_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS40_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS40_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS40_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS41_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS41_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS41_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS42_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS42_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS42_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS43_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS43_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS43_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS44_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS44_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS44_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS45_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS45_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS45_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS46_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS46_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS46_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS47_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS47_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS47_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS48_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS48_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS48_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS49_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS49_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS49_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS4_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS4_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS4_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS5_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS5_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS5_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS6_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS6_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS6_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS7_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS7_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS7_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS8_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS8_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS8_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_irq0_L2S : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_irq0_L2S_clr : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_irq1_S2L : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_irq1_S2L_clr : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_irq_mask : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PHS_regs_0_PHS9_regs_pwm_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PHS_regs_0_PHS9_regs_status : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_valid_in : STD_LOGIC;
  signal PHS_regs_0_PHS9_regs_vld_out : STD_LOGIC;
  signal PHS_regs_0_PHS_irq_L2S_0 : STD_LOGIC;
  signal PHS_regs_0_PHS_irq_L2S_1 : STD_LOGIC;
  signal PHS_regs_0_PHS_irq_S2L_0 : STD_LOGIC;
  signal PHS_regs_0_PHS_irq_S2L_1 : STD_LOGIC;
  signal PHS_regs_0_PHS_irqs_L2S_0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_regs_0_PHS_irqs_L2S_1 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_regs_0_PHS_irqs_S2L_0 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal PHS_regs_0_PHS_irqs_S2L_1 : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal RT_timebase_0_ena_PHS : STD_LOGIC;
  signal s00_axi_aclk_1_1 : STD_LOGIC;
  signal s00_axi_aresetn_1_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn1_ARVALID(0) <= S00_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn1_AWVALID(0) <= S00_AXI_awvalid(0);
  Conn1_BREADY(0) <= S00_AXI_bready(0);
  Conn1_RREADY(0) <= S00_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S00_AXI_wvalid(0);
  PHS0_pwm_out <= PHS_ctrl_0_PHS_ios_pwm_out;
  PHS10_pwm_out <= PHS_ctrl_10_PHS_ios_pwm_out;
  PHS11_pwm_out <= PHS_ctrl_11_PHS_ios_pwm_out;
  PHS12_pwm_out <= PHS_ctrl_12_PHS_ios_pwm_out;
  PHS13_pwm_out <= PHS_ctrl_13_PHS_ios_pwm_out;
  PHS14_pwm_out <= PHS_ctrl_14_PHS_ios_pwm_out;
  PHS15_pwm_out <= PHS_ctrl_15_PHS_ios_pwm_out;
  PHS16_pwm_out <= PHS_ctrl_16_PHS_ios_pwm_out;
  PHS17_pwm_out <= PHS_ctrl_17_PHS_ios_pwm_out;
  PHS18_pwm_out <= PHS_ctrl_18_PHS_ios_pwm_out;
  PHS19_pwm_out <= PHS_ctrl_19_PHS_ios_pwm_out;
  PHS1_pwm_out <= PHS_ctrl_1_PHS_ios_pwm_out;
  PHS20_pwm_out <= PHS_ctrl_20_PHS_ios_pwm_out;
  PHS21_pwm_out <= PHS_ctrl_21_PHS_ios_pwm_out;
  PHS22_pwm_out <= PHS_ctrl_22_PHS_ios_pwm_out;
  PHS23_pwm_out <= PHS_ctrl_23_PHS_ios_pwm_out;
  PHS24_pwm_out <= PHS_ctrl_24_PHS_ios_pwm_out;
  PHS25_pwm_out <= PHS_ctrl_25_PHS_ios_pwm_out;
  PHS26_pwm_out <= PHS_ctrl_26_PHS_ios_pwm_out;
  PHS27_pwm_out <= PHS_ctrl_27_PHS_ios_pwm_out;
  PHS28_pwm_out <= PHS_ctrl_28_PHS_ios_pwm_out;
  PHS29_pwm_out <= PHS_ctrl_29_PHS_ios_pwm_out;
  PHS2_pwm_out <= PHS_ctrl_2_PHS_ios_pwm_out;
  PHS30_pwm_out <= PHS_ctrl_30_PHS_ios_pwm_out;
  PHS31_pwm_out <= PHS_ctrl_31_PHS_ios_pwm_out;
  PHS32_pwm_out <= PHS_ctrl_32_PHS_ios_pwm_out;
  PHS33_pwm_out <= PHS_ctrl_33_PHS_ios_pwm_out;
  PHS34_pwm_out <= PHS_ctrl_34_PHS_ios_pwm_out;
  PHS35_pwm_out <= PHS_ctrl_35_PHS_ios_pwm_out;
  PHS36_pwm_out <= PHS_ctrl_36_PHS_ios_pwm_out;
  PHS37_pwm_out <= PHS_ctrl_37_PHS_ios_pwm_out;
  PHS38_pwm_out <= PHS_ctrl_38_PHS_ios_pwm_out;
  PHS39_pwm_out <= PHS_ctrl_39_PHS_ios_pwm_out;
  PHS3_pwm_out <= PHS_ctrl_3_PHS_ios_pwm_out;
  PHS40_pwm_out <= PHS_ctrl_40_PHS_ios_pwm_out;
  PHS41_pwm_out <= PHS_ctrl_41_PHS_ios_pwm_out;
  PHS42_pwm_out <= PHS_ctrl_42_PHS_ios_pwm_out;
  PHS43_pwm_out <= PHS_ctrl_43_PHS_ios_pwm_out;
  PHS44_pwm_out <= PHS_ctrl_44_PHS_ios_pwm_out;
  PHS45_pwm_out <= PHS_ctrl_45_PHS_ios_pwm_out;
  PHS46_pwm_out <= PHS_ctrl_46_PHS_ios_pwm_out;
  PHS47_pwm_out <= PHS_ctrl_47_PHS_ios_pwm_out;
  PHS48_pwm_out <= PHS_ctrl_48_PHS_ios_pwm_out;
  PHS49_pwm_out <= PHS_ctrl_49_PHS_ios_pwm_out;
  PHS4_pwm_out <= PHS_ctrl_4_PHS_ios_pwm_out;
  PHS5_pwm_out <= PHS_ctrl_5_PHS_ios_pwm_out;
  PHS6_pwm_out <= PHS_ctrl_6_PHS_ios_pwm_out;
  PHS7_pwm_out <= PHS_ctrl_7_PHS_ios_pwm_out;
  PHS8_pwm_out <= PHS_ctrl_8_PHS_ios_pwm_out;
  PHS9_pwm_out <= PHS_ctrl_9_PHS_ios_pwm_out;
  PHS_ctrl_0_PHS_ios_phs_in <= PHS0_phs_in;
  PHS_ctrl_10_PHS_ios_phs_in <= PHS10_phs_in;
  PHS_ctrl_11_PHS_ios_phs_in <= PHS11_phs_in;
  PHS_ctrl_12_PHS_ios_phs_in <= PHS12_phs_in;
  PHS_ctrl_13_PHS_ios_phs_in <= PHS13_phs_in;
  PHS_ctrl_14_PHS_ios_phs_in <= PHS14_phs_in;
  PHS_ctrl_15_PHS_ios_phs_in <= PHS15_phs_in;
  PHS_ctrl_16_PHS_ios_phs_in <= PHS16_phs_in;
  PHS_ctrl_17_PHS_ios_phs_in <= PHS17_phs_in;
  PHS_ctrl_18_PHS_ios_phs_in <= PHS18_phs_in;
  PHS_ctrl_19_PHS_ios_phs_in <= PHS19_phs_in;
  PHS_ctrl_1_PHS_ios_phs_in <= PHS1_phs_in;
  PHS_ctrl_20_PHS_ios_phs_in <= PHS20_phs_in;
  PHS_ctrl_21_PHS_ios_phs_in <= PHS21_phs_in;
  PHS_ctrl_22_PHS_ios_phs_in <= PHS22_phs_in;
  PHS_ctrl_23_PHS_ios_phs_in <= PHS23_phs_in;
  PHS_ctrl_24_PHS_ios_phs_in <= PHS24_phs_in;
  PHS_ctrl_25_PHS_ios_phs_in <= PHS25_phs_in;
  PHS_ctrl_26_PHS_ios_phs_in <= PHS26_phs_in;
  PHS_ctrl_27_PHS_ios_phs_in <= PHS27_phs_in;
  PHS_ctrl_28_PHS_ios_phs_in <= PHS28_phs_in;
  PHS_ctrl_29_PHS_ios_phs_in <= PHS29_phs_in;
  PHS_ctrl_2_PHS_ios_phs_in <= PHS2_phs_in;
  PHS_ctrl_30_PHS_ios_phs_in <= PHS30_phs_in;
  PHS_ctrl_31_PHS_ios_phs_in <= PHS31_phs_in;
  PHS_ctrl_32_PHS_ios_phs_in <= PHS32_phs_in;
  PHS_ctrl_33_PHS_ios_phs_in <= PHS33_phs_in;
  PHS_ctrl_34_PHS_ios_phs_in <= PHS34_phs_in;
  PHS_ctrl_35_PHS_ios_phs_in <= PHS35_phs_in;
  PHS_ctrl_36_PHS_ios_phs_in <= PHS36_phs_in;
  PHS_ctrl_37_PHS_ios_phs_in <= PHS37_phs_in;
  PHS_ctrl_38_PHS_ios_phs_in <= PHS38_phs_in;
  PHS_ctrl_39_PHS_ios_phs_in <= PHS39_phs_in;
  PHS_ctrl_3_PHS_ios_phs_in <= PHS3_phs_in;
  PHS_ctrl_40_PHS_ios_phs_in <= PHS40_phs_in;
  PHS_ctrl_41_PHS_ios_phs_in <= PHS41_phs_in;
  PHS_ctrl_42_PHS_ios_phs_in <= PHS42_phs_in;
  PHS_ctrl_43_PHS_ios_phs_in <= PHS43_phs_in;
  PHS_ctrl_44_PHS_ios_phs_in <= PHS44_phs_in;
  PHS_ctrl_45_PHS_ios_phs_in <= PHS45_phs_in;
  PHS_ctrl_46_PHS_ios_phs_in <= PHS46_phs_in;
  PHS_ctrl_47_PHS_ios_phs_in <= PHS47_phs_in;
  PHS_ctrl_48_PHS_ios_phs_in <= PHS48_phs_in;
  PHS_ctrl_49_PHS_ios_phs_in <= PHS49_phs_in;
  PHS_ctrl_4_PHS_ios_phs_in <= PHS4_phs_in;
  PHS_ctrl_5_PHS_ios_phs_in <= PHS5_phs_in;
  PHS_ctrl_6_PHS_ios_phs_in <= PHS6_phs_in;
  PHS_ctrl_7_PHS_ios_phs_in <= PHS7_phs_in;
  PHS_ctrl_8_PHS_ios_phs_in <= PHS8_phs_in;
  PHS_ctrl_9_PHS_ios_phs_in <= PHS9_phs_in;
  PHS_ena_dbg <= PHS_ctrl_49_ena_out;
  PHS_irq_L2S_0 <= PHS_regs_0_PHS_irq_L2S_0;
  PHS_irq_L2S_1 <= PHS_regs_0_PHS_irq_L2S_1;
  PHS_irq_S2L_0 <= PHS_regs_0_PHS_irq_S2L_0;
  PHS_irq_S2L_1 <= PHS_regs_0_PHS_irq_S2L_1;
  PHS_irqs_L2S_0(24 downto 0) <= PHS_regs_0_PHS_irqs_L2S_0(24 downto 0);
  PHS_irqs_L2S_1(24 downto 0) <= PHS_regs_0_PHS_irqs_L2S_1(24 downto 0);
  PHS_irqs_S2L_0(24 downto 0) <= PHS_regs_0_PHS_irqs_S2L_0(24 downto 0);
  PHS_irqs_S2L_1(24 downto 0) <= PHS_regs_0_PHS_irqs_S2L_1(24 downto 0);
  S00_AXI_arready(0) <= Conn1_ARREADY;
  S00_AXI_awready(0) <= Conn1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Conn1_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Conn1_RVALID;
  S00_AXI_wready(0) <= Conn1_WREADY;
  s00_axi_aclk_1_1 <= s00_axi_aclk;
  s00_axi_aresetn_1_1 <= s00_axi_aresetn;
PHS_ctrl_0: component S7_PHS_ctrl_0_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => RT_timebase_0_ena_PHS,
      ena_out => PHS_ctrl_0_ena_out,
      irq0_L2S => PHS_regs_0_PHS0_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS0_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS0_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS0_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS0_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_0_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_0_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS0_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS0_regs_status,
      vld_in => PHS_regs_0_PHS0_regs_valid_in,
      vld_out => PHS_regs_0_PHS0_regs_vld_out
    );
PHS_ctrl_1: component S7_PHS_ctrl_1_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_0_ena_out,
      ena_out => PHS_ctrl_1_ena_out,
      irq0_L2S => PHS_regs_0_PHS1_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS1_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS1_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS1_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS1_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_1_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_1_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS1_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS1_regs_status,
      vld_in => PHS_regs_0_PHS1_regs_valid_in,
      vld_out => PHS_regs_0_PHS1_regs_vld_out
    );
PHS_ctrl_10: component S7_PHS_ctrl_10_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_9_ena_out,
      ena_out => PHS_ctrl_10_ena_out,
      irq0_L2S => PHS_regs_0_PHS10_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS10_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS10_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS10_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS10_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_10_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_10_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS10_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS10_regs_status,
      vld_in => PHS_regs_0_PHS10_regs_valid_in,
      vld_out => PHS_regs_0_PHS10_regs_vld_out
    );
PHS_ctrl_11: component S7_PHS_ctrl_11_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_10_ena_out,
      ena_out => PHS_ctrl_11_ena_out,
      irq0_L2S => PHS_regs_0_PHS11_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS11_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS11_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS11_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS11_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_11_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_11_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS11_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS11_regs_status,
      vld_in => PHS_regs_0_PHS11_regs_valid_in,
      vld_out => PHS_regs_0_PHS11_regs_vld_out
    );
PHS_ctrl_12: component S7_PHS_ctrl_12_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_11_ena_out,
      ena_out => PHS_ctrl_12_ena_out,
      irq0_L2S => PHS_regs_0_PHS12_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS12_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS12_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS12_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS12_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_12_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_12_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS12_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS12_regs_status,
      vld_in => PHS_regs_0_PHS12_regs_valid_in,
      vld_out => PHS_regs_0_PHS12_regs_vld_out
    );
PHS_ctrl_13: component S7_PHS_ctrl_13_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_12_ena_out,
      ena_out => PHS_ctrl_13_ena_out,
      irq0_L2S => PHS_regs_0_PHS13_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS13_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS13_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS13_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS13_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_13_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_13_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS13_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS13_regs_status,
      vld_in => PHS_regs_0_PHS13_regs_valid_in,
      vld_out => PHS_regs_0_PHS13_regs_vld_out
    );
PHS_ctrl_14: component S7_PHS_ctrl_14_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_13_ena_out,
      ena_out => PHS_ctrl_14_ena_out,
      irq0_L2S => PHS_regs_0_PHS14_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS14_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS14_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS14_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS14_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_14_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_14_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS14_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS14_regs_status,
      vld_in => PHS_regs_0_PHS14_regs_valid_in,
      vld_out => PHS_regs_0_PHS14_regs_vld_out
    );
PHS_ctrl_15: component S7_PHS_ctrl_15_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_14_ena_out,
      ena_out => PHS_ctrl_15_ena_out,
      irq0_L2S => PHS_regs_0_PHS15_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS15_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS15_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS15_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS15_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_15_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_15_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS15_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS15_regs_status,
      vld_in => PHS_regs_0_PHS15_regs_valid_in,
      vld_out => PHS_regs_0_PHS15_regs_vld_out
    );
PHS_ctrl_16: component S7_PHS_ctrl_16_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_15_ena_out,
      ena_out => PHS_ctrl_16_ena_out,
      irq0_L2S => PHS_regs_0_PHS16_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS16_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS16_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS16_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS16_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_16_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_16_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS16_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS16_regs_status,
      vld_in => PHS_regs_0_PHS16_regs_valid_in,
      vld_out => PHS_regs_0_PHS16_regs_vld_out
    );
PHS_ctrl_17: component S7_PHS_ctrl_17_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_16_ena_out,
      ena_out => PHS_ctrl_17_ena_out,
      irq0_L2S => PHS_regs_0_PHS17_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS17_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS17_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS17_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS17_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_17_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_17_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS17_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS17_regs_status,
      vld_in => PHS_regs_0_PHS17_regs_valid_in,
      vld_out => PHS_regs_0_PHS17_regs_vld_out
    );
PHS_ctrl_18: component S7_PHS_ctrl_18_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_17_ena_out,
      ena_out => PHS_ctrl_18_ena_out,
      irq0_L2S => PHS_regs_0_PHS18_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS18_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS18_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS18_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS18_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_18_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_18_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS18_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS18_regs_status,
      vld_in => PHS_regs_0_PHS18_regs_valid_in,
      vld_out => PHS_regs_0_PHS18_regs_vld_out
    );
PHS_ctrl_19: component S7_PHS_ctrl_19_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_18_ena_out,
      ena_out => PHS_ctrl_19_ena_out,
      irq0_L2S => PHS_regs_0_PHS19_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS19_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS19_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS19_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS19_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_19_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_19_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS19_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS19_regs_status,
      vld_in => PHS_regs_0_PHS19_regs_valid_in,
      vld_out => PHS_regs_0_PHS19_regs_vld_out
    );
PHS_ctrl_2: component S7_PHS_ctrl_2_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_1_ena_out,
      ena_out => PHS_ctrl_2_ena_out,
      irq0_L2S => PHS_regs_0_PHS2_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS2_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS2_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS2_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS2_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_2_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_2_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS2_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS2_regs_status,
      vld_in => PHS_regs_0_PHS2_regs_valid_in,
      vld_out => PHS_regs_0_PHS2_regs_vld_out
    );
PHS_ctrl_20: component S7_PHS_ctrl_20_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_19_ena_out,
      ena_out => PHS_ctrl_20_ena_out,
      irq0_L2S => PHS_regs_0_PHS20_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS20_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS20_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS20_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS20_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_20_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_20_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS20_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS20_regs_status,
      vld_in => PHS_regs_0_PHS20_regs_valid_in,
      vld_out => PHS_regs_0_PHS20_regs_vld_out
    );
PHS_ctrl_21: component S7_PHS_ctrl_21_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_20_ena_out,
      ena_out => PHS_ctrl_21_ena_out,
      irq0_L2S => PHS_regs_0_PHS21_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS21_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS21_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS21_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS21_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_21_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_21_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS21_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS21_regs_status,
      vld_in => PHS_regs_0_PHS21_regs_valid_in,
      vld_out => PHS_regs_0_PHS21_regs_vld_out
    );
PHS_ctrl_22: component S7_PHS_ctrl_22_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_21_ena_out,
      ena_out => PHS_ctrl_22_ena_out,
      irq0_L2S => PHS_regs_0_PHS22_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS22_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS22_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS22_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS22_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_22_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_22_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS22_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS22_regs_status,
      vld_in => PHS_regs_0_PHS22_regs_valid_in,
      vld_out => PHS_regs_0_PHS22_regs_vld_out
    );
PHS_ctrl_23: component S7_PHS_ctrl_23_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_22_ena_out,
      ena_out => PHS_ctrl_23_ena_out,
      irq0_L2S => PHS_regs_0_PHS23_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS23_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS23_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS23_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS23_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_23_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_23_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS23_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS23_regs_status,
      vld_in => PHS_regs_0_PHS23_regs_valid_in,
      vld_out => PHS_regs_0_PHS23_regs_vld_out
    );
PHS_ctrl_24: component S7_PHS_ctrl_24_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_23_ena_out,
      ena_out => PHS_ctrl_24_ena_out,
      irq0_L2S => PHS_regs_0_PHS24_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS24_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS24_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS24_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS24_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_24_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_24_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS24_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS24_regs_status,
      vld_in => PHS_regs_0_PHS24_regs_valid_in,
      vld_out => PHS_regs_0_PHS24_regs_vld_out
    );
PHS_ctrl_25: component S7_PHS_ctrl_25_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_24_ena_out,
      ena_out => PHS_ctrl_25_ena_out,
      irq0_L2S => PHS_regs_0_PHS25_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS25_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS25_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS25_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS25_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_25_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_25_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS25_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS25_regs_status,
      vld_in => PHS_regs_0_PHS25_regs_valid_in,
      vld_out => PHS_regs_0_PHS25_regs_vld_out
    );
PHS_ctrl_26: component S7_PHS_ctrl_26_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_25_ena_out,
      ena_out => PHS_ctrl_26_ena_out,
      irq0_L2S => PHS_regs_0_PHS26_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS26_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS26_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS26_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS26_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_26_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_26_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS26_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS26_regs_status,
      vld_in => PHS_regs_0_PHS26_regs_valid_in,
      vld_out => PHS_regs_0_PHS26_regs_vld_out
    );
PHS_ctrl_27: component S7_PHS_ctrl_27_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_26_ena_out,
      ena_out => PHS_ctrl_27_ena_out,
      irq0_L2S => PHS_regs_0_PHS27_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS27_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS27_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS27_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS27_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_27_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_27_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS27_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS27_regs_status,
      vld_in => PHS_regs_0_PHS27_regs_valid_in,
      vld_out => PHS_regs_0_PHS27_regs_vld_out
    );
PHS_ctrl_28: component S7_PHS_ctrl_28_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_27_ena_out,
      ena_out => PHS_ctrl_28_ena_out,
      irq0_L2S => PHS_regs_0_PHS28_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS28_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS28_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS28_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS28_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_28_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_28_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS28_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS28_regs_status,
      vld_in => PHS_regs_0_PHS28_regs_valid_in,
      vld_out => PHS_regs_0_PHS28_regs_vld_out
    );
PHS_ctrl_29: component S7_PHS_ctrl_29_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_28_ena_out,
      ena_out => PHS_ctrl_29_ena_out,
      irq0_L2S => PHS_regs_0_PHS29_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS29_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS29_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS29_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS29_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_29_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_29_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS29_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS29_regs_status,
      vld_in => PHS_regs_0_PHS29_regs_valid_in,
      vld_out => PHS_regs_0_PHS29_regs_vld_out
    );
PHS_ctrl_3: component S7_PHS_ctrl_3_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_2_ena_out,
      ena_out => PHS_ctrl_3_ena_out,
      irq0_L2S => PHS_regs_0_PHS3_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS3_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS3_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS3_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS3_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_3_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_3_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS3_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS3_regs_status,
      vld_in => PHS_regs_0_PHS3_regs_valid_in,
      vld_out => PHS_regs_0_PHS3_regs_vld_out
    );
PHS_ctrl_30: component S7_PHS_ctrl_30_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_29_ena_out,
      ena_out => PHS_ctrl_30_ena_out,
      irq0_L2S => PHS_regs_0_PHS30_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS30_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS30_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS30_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS30_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_30_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_30_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS30_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS30_regs_status,
      vld_in => PHS_regs_0_PHS30_regs_valid_in,
      vld_out => PHS_regs_0_PHS30_regs_vld_out
    );
PHS_ctrl_31: component S7_PHS_ctrl_31_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_30_ena_out,
      ena_out => PHS_ctrl_31_ena_out,
      irq0_L2S => PHS_regs_0_PHS31_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS31_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS31_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS31_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS31_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_31_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_31_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS31_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS31_regs_status,
      vld_in => PHS_regs_0_PHS31_regs_valid_in,
      vld_out => PHS_regs_0_PHS31_regs_vld_out
    );
PHS_ctrl_32: component S7_PHS_ctrl_32_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_31_ena_out,
      ena_out => PHS_ctrl_32_ena_out,
      irq0_L2S => PHS_regs_0_PHS32_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS32_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS32_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS32_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS32_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_32_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_32_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS32_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS32_regs_status,
      vld_in => PHS_regs_0_PHS32_regs_valid_in,
      vld_out => PHS_regs_0_PHS32_regs_vld_out
    );
PHS_ctrl_33: component S7_PHS_ctrl_33_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_32_ena_out,
      ena_out => PHS_ctrl_33_ena_out,
      irq0_L2S => PHS_regs_0_PHS33_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS33_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS33_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS33_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS33_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_33_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_33_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS33_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS33_regs_status,
      vld_in => PHS_regs_0_PHS33_regs_valid_in,
      vld_out => PHS_regs_0_PHS33_regs_vld_out
    );
PHS_ctrl_34: component S7_PHS_ctrl_34_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_33_ena_out,
      ena_out => PHS_ctrl_34_ena_out,
      irq0_L2S => PHS_regs_0_PHS34_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS34_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS34_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS34_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS34_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_34_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_34_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS34_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS34_regs_status,
      vld_in => PHS_regs_0_PHS34_regs_valid_in,
      vld_out => PHS_regs_0_PHS34_regs_vld_out
    );
PHS_ctrl_35: component S7_PHS_ctrl_35_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_34_ena_out,
      ena_out => PHS_ctrl_35_ena_out,
      irq0_L2S => PHS_regs_0_PHS35_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS35_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS35_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS35_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS35_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_35_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_35_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS35_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS35_regs_status,
      vld_in => PHS_regs_0_PHS35_regs_valid_in,
      vld_out => PHS_regs_0_PHS35_regs_vld_out
    );
PHS_ctrl_36: component S7_PHS_ctrl_36_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_35_ena_out,
      ena_out => PHS_ctrl_36_ena_out,
      irq0_L2S => PHS_regs_0_PHS36_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS36_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS36_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS36_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS36_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_36_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_36_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS36_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS36_regs_status,
      vld_in => PHS_regs_0_PHS36_regs_valid_in,
      vld_out => PHS_regs_0_PHS36_regs_vld_out
    );
PHS_ctrl_37: component S7_PHS_ctrl_37_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_36_ena_out,
      ena_out => PHS_ctrl_37_ena_out,
      irq0_L2S => PHS_regs_0_PHS37_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS37_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS37_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS37_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS37_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_37_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_37_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS37_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS37_regs_status,
      vld_in => PHS_regs_0_PHS37_regs_valid_in,
      vld_out => PHS_regs_0_PHS37_regs_vld_out
    );
PHS_ctrl_38: component S7_PHS_ctrl_38_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_37_ena_out,
      ena_out => PHS_ctrl_38_ena_out,
      irq0_L2S => PHS_regs_0_PHS38_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS38_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS38_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS38_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS38_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_38_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_38_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS38_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS38_regs_status,
      vld_in => PHS_regs_0_PHS38_regs_valid_in,
      vld_out => PHS_regs_0_PHS38_regs_vld_out
    );
PHS_ctrl_39: component S7_PHS_ctrl_39_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_38_ena_out,
      ena_out => PHS_ctrl_39_ena_out,
      irq0_L2S => PHS_regs_0_PHS39_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS39_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS39_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS39_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS39_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_39_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_39_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS39_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS39_regs_status,
      vld_in => PHS_regs_0_PHS39_regs_valid_in,
      vld_out => PHS_regs_0_PHS39_regs_vld_out
    );
PHS_ctrl_4: component S7_PHS_ctrl_4_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_3_ena_out,
      ena_out => PHS_ctrl_4_ena_out,
      irq0_L2S => PHS_regs_0_PHS4_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS4_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS4_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS4_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS4_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_4_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_4_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS4_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS4_regs_status,
      vld_in => PHS_regs_0_PHS4_regs_valid_in,
      vld_out => PHS_regs_0_PHS4_regs_vld_out
    );
PHS_ctrl_40: component S7_PHS_ctrl_40_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_39_ena_out,
      ena_out => PHS_ctrl_40_ena_out,
      irq0_L2S => PHS_regs_0_PHS40_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS40_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS40_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS40_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS40_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_40_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_40_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS40_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS40_regs_status,
      vld_in => PHS_regs_0_PHS40_regs_valid_in,
      vld_out => PHS_regs_0_PHS40_regs_vld_out
    );
PHS_ctrl_41: component S7_PHS_ctrl_41_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_40_ena_out,
      ena_out => PHS_ctrl_41_ena_out,
      irq0_L2S => PHS_regs_0_PHS41_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS41_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS41_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS41_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS41_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_41_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_41_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS41_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS41_regs_status,
      vld_in => PHS_regs_0_PHS41_regs_valid_in,
      vld_out => PHS_regs_0_PHS41_regs_vld_out
    );
PHS_ctrl_42: component S7_PHS_ctrl_42_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_41_ena_out,
      ena_out => PHS_ctrl_42_ena_out,
      irq0_L2S => PHS_regs_0_PHS42_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS42_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS42_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS42_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS42_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_42_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_42_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS42_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS42_regs_status,
      vld_in => PHS_regs_0_PHS42_regs_valid_in,
      vld_out => PHS_regs_0_PHS42_regs_vld_out
    );
PHS_ctrl_43: component S7_PHS_ctrl_43_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_42_ena_out,
      ena_out => PHS_ctrl_43_ena_out,
      irq0_L2S => PHS_regs_0_PHS43_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS43_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS43_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS43_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS43_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_43_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_43_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS43_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS43_regs_status,
      vld_in => PHS_regs_0_PHS43_regs_valid_in,
      vld_out => PHS_regs_0_PHS43_regs_vld_out
    );
PHS_ctrl_44: component S7_PHS_ctrl_44_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_43_ena_out,
      ena_out => PHS_ctrl_44_ena_out,
      irq0_L2S => PHS_regs_0_PHS44_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS44_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS44_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS44_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS44_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_44_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_44_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS44_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS44_regs_status,
      vld_in => PHS_regs_0_PHS44_regs_valid_in,
      vld_out => PHS_regs_0_PHS44_regs_vld_out
    );
PHS_ctrl_45: component S7_PHS_ctrl_45_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_44_ena_out,
      ena_out => PHS_ctrl_45_ena_out,
      irq0_L2S => PHS_regs_0_PHS45_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS45_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS45_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS45_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS45_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_45_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_45_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS45_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS45_regs_status,
      vld_in => PHS_regs_0_PHS45_regs_valid_in,
      vld_out => PHS_regs_0_PHS45_regs_vld_out
    );
PHS_ctrl_46: component S7_PHS_ctrl_46_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_45_ena_out,
      ena_out => PHS_ctrl_46_ena_out,
      irq0_L2S => PHS_regs_0_PHS46_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS46_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS46_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS46_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS46_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_46_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_46_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS46_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS46_regs_status,
      vld_in => PHS_regs_0_PHS46_regs_valid_in,
      vld_out => PHS_regs_0_PHS46_regs_vld_out
    );
PHS_ctrl_47: component S7_PHS_ctrl_47_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_46_ena_out,
      ena_out => PHS_ctrl_47_ena_out,
      irq0_L2S => PHS_regs_0_PHS47_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS47_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS47_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS47_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS47_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_47_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_47_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS47_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS47_regs_status,
      vld_in => PHS_regs_0_PHS47_regs_valid_in,
      vld_out => PHS_regs_0_PHS47_regs_vld_out
    );
PHS_ctrl_48: component S7_PHS_ctrl_48_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_47_ena_out,
      ena_out => PHS_ctrl_48_ena_out,
      irq0_L2S => PHS_regs_0_PHS48_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS48_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS48_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS48_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS48_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_48_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_48_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS48_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS48_regs_status,
      vld_in => PHS_regs_0_PHS48_regs_valid_in,
      vld_out => PHS_regs_0_PHS48_regs_vld_out
    );
PHS_ctrl_49: component S7_PHS_ctrl_49_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_48_ena_out,
      ena_out => PHS_ctrl_49_ena_out,
      irq0_L2S => PHS_regs_0_PHS49_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS49_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS49_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS49_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS49_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_49_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_49_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS49_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS49_regs_status,
      vld_in => PHS_regs_0_PHS49_regs_valid_in,
      vld_out => PHS_regs_0_PHS49_regs_vld_out
    );
PHS_ctrl_5: component S7_PHS_ctrl_5_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_4_ena_out,
      ena_out => PHS_ctrl_5_ena_out,
      irq0_L2S => PHS_regs_0_PHS5_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS5_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS5_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS5_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS5_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_5_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_5_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS5_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS5_regs_status,
      vld_in => PHS_regs_0_PHS5_regs_valid_in,
      vld_out => PHS_regs_0_PHS5_regs_vld_out
    );
PHS_ctrl_6: component S7_PHS_ctrl_6_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_5_ena_out,
      ena_out => PHS_ctrl_6_ena_out,
      irq0_L2S => PHS_regs_0_PHS6_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS6_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS6_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS6_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS6_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_6_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_6_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS6_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS6_regs_status,
      vld_in => PHS_regs_0_PHS6_regs_valid_in,
      vld_out => PHS_regs_0_PHS6_regs_vld_out
    );
PHS_ctrl_7: component S7_PHS_ctrl_7_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_6_ena_out,
      ena_out => PHS_ctrl_7_ena_out,
      irq0_L2S => PHS_regs_0_PHS7_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS7_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS7_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS7_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS7_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_7_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_7_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS7_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS7_regs_status,
      vld_in => PHS_regs_0_PHS7_regs_valid_in,
      vld_out => PHS_regs_0_PHS7_regs_vld_out
    );
PHS_ctrl_8: component S7_PHS_ctrl_8_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_7_ena_out,
      ena_out => PHS_ctrl_8_ena_out,
      irq0_L2S => PHS_regs_0_PHS8_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS8_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS8_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS8_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS8_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_8_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_8_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS8_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS8_regs_status,
      vld_in => PHS_regs_0_PHS8_regs_valid_in,
      vld_out => PHS_regs_0_PHS8_regs_vld_out
    );
PHS_ctrl_9: component S7_PHS_ctrl_9_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_in => PHS_ctrl_8_ena_out,
      ena_out => PHS_ctrl_9_ena_out,
      irq0_L2S => PHS_regs_0_PHS9_regs_irq0_L2S,
      irq0_clr => PHS_regs_0_PHS9_regs_irq0_L2S_clr,
      irq1_S2L => PHS_regs_0_PHS9_regs_irq1_S2L,
      irq1_clr => PHS_regs_0_PHS9_regs_irq1_S2L_clr,
      irq_mask(1 downto 0) => PHS_regs_0_PHS9_regs_irq_mask(1 downto 0),
      port_phs_in => PHS_ctrl_9_PHS_ios_phs_in,
      port_pwm_out => PHS_ctrl_9_PHS_ios_pwm_out,
      pwm_val(9 downto 0) => PHS_regs_0_PHS9_regs_pwm_val(9 downto 0),
      status => PHS_regs_0_PHS9_regs_status,
      vld_in => PHS_regs_0_PHS9_regs_valid_in,
      vld_out => PHS_regs_0_PHS9_regs_vld_out
    );
PHS_regs_0: component S7_PHS_regs_0_0
     port map (
      PHS0_irq0_L2S => PHS_regs_0_PHS0_regs_irq0_L2S,
      PHS0_irq0_clr => PHS_regs_0_PHS0_regs_irq0_L2S_clr,
      PHS0_irq1_S2L => PHS_regs_0_PHS0_regs_irq1_S2L,
      PHS0_irq1_clr => PHS_regs_0_PHS0_regs_irq1_S2L_clr,
      PHS0_irq_mask(1 downto 0) => PHS_regs_0_PHS0_regs_irq_mask(1 downto 0),
      PHS0_pwm_val(9 downto 0) => PHS_regs_0_PHS0_regs_pwm_val(9 downto 0),
      PHS0_status => PHS_regs_0_PHS0_regs_status,
      PHS0_vld_in => PHS_regs_0_PHS0_regs_valid_in,
      PHS0_vld_out => PHS_regs_0_PHS0_regs_vld_out,
      PHS10_irq0_L2S => PHS_regs_0_PHS10_regs_irq0_L2S,
      PHS10_irq0_clr => PHS_regs_0_PHS10_regs_irq0_L2S_clr,
      PHS10_irq1_S2L => PHS_regs_0_PHS10_regs_irq1_S2L,
      PHS10_irq1_clr => PHS_regs_0_PHS10_regs_irq1_S2L_clr,
      PHS10_irq_mask(1 downto 0) => PHS_regs_0_PHS10_regs_irq_mask(1 downto 0),
      PHS10_pwm_val(9 downto 0) => PHS_regs_0_PHS10_regs_pwm_val(9 downto 0),
      PHS10_status => PHS_regs_0_PHS10_regs_status,
      PHS10_vld_in => PHS_regs_0_PHS10_regs_valid_in,
      PHS10_vld_out => PHS_regs_0_PHS10_regs_vld_out,
      PHS11_irq0_L2S => PHS_regs_0_PHS11_regs_irq0_L2S,
      PHS11_irq0_clr => PHS_regs_0_PHS11_regs_irq0_L2S_clr,
      PHS11_irq1_S2L => PHS_regs_0_PHS11_regs_irq1_S2L,
      PHS11_irq1_clr => PHS_regs_0_PHS11_regs_irq1_S2L_clr,
      PHS11_irq_mask(1 downto 0) => PHS_regs_0_PHS11_regs_irq_mask(1 downto 0),
      PHS11_pwm_val(9 downto 0) => PHS_regs_0_PHS11_regs_pwm_val(9 downto 0),
      PHS11_status => PHS_regs_0_PHS11_regs_status,
      PHS11_vld_in => PHS_regs_0_PHS11_regs_valid_in,
      PHS11_vld_out => PHS_regs_0_PHS11_regs_vld_out,
      PHS12_irq0_L2S => PHS_regs_0_PHS12_regs_irq0_L2S,
      PHS12_irq0_clr => PHS_regs_0_PHS12_regs_irq0_L2S_clr,
      PHS12_irq1_S2L => PHS_regs_0_PHS12_regs_irq1_S2L,
      PHS12_irq1_clr => PHS_regs_0_PHS12_regs_irq1_S2L_clr,
      PHS12_irq_mask(1 downto 0) => PHS_regs_0_PHS12_regs_irq_mask(1 downto 0),
      PHS12_pwm_val(9 downto 0) => PHS_regs_0_PHS12_regs_pwm_val(9 downto 0),
      PHS12_status => PHS_regs_0_PHS12_regs_status,
      PHS12_vld_in => PHS_regs_0_PHS12_regs_valid_in,
      PHS12_vld_out => PHS_regs_0_PHS12_regs_vld_out,
      PHS13_irq0_L2S => PHS_regs_0_PHS13_regs_irq0_L2S,
      PHS13_irq0_clr => PHS_regs_0_PHS13_regs_irq0_L2S_clr,
      PHS13_irq1_S2L => PHS_regs_0_PHS13_regs_irq1_S2L,
      PHS13_irq1_clr => PHS_regs_0_PHS13_regs_irq1_S2L_clr,
      PHS13_irq_mask(1 downto 0) => PHS_regs_0_PHS13_regs_irq_mask(1 downto 0),
      PHS13_pwm_val(9 downto 0) => PHS_regs_0_PHS13_regs_pwm_val(9 downto 0),
      PHS13_status => PHS_regs_0_PHS13_regs_status,
      PHS13_vld_in => PHS_regs_0_PHS13_regs_valid_in,
      PHS13_vld_out => PHS_regs_0_PHS13_regs_vld_out,
      PHS14_irq0_L2S => PHS_regs_0_PHS14_regs_irq0_L2S,
      PHS14_irq0_clr => PHS_regs_0_PHS14_regs_irq0_L2S_clr,
      PHS14_irq1_S2L => PHS_regs_0_PHS14_regs_irq1_S2L,
      PHS14_irq1_clr => PHS_regs_0_PHS14_regs_irq1_S2L_clr,
      PHS14_irq_mask(1 downto 0) => PHS_regs_0_PHS14_regs_irq_mask(1 downto 0),
      PHS14_pwm_val(9 downto 0) => PHS_regs_0_PHS14_regs_pwm_val(9 downto 0),
      PHS14_status => PHS_regs_0_PHS14_regs_status,
      PHS14_vld_in => PHS_regs_0_PHS14_regs_valid_in,
      PHS14_vld_out => PHS_regs_0_PHS14_regs_vld_out,
      PHS15_irq0_L2S => PHS_regs_0_PHS15_regs_irq0_L2S,
      PHS15_irq0_clr => PHS_regs_0_PHS15_regs_irq0_L2S_clr,
      PHS15_irq1_S2L => PHS_regs_0_PHS15_regs_irq1_S2L,
      PHS15_irq1_clr => PHS_regs_0_PHS15_regs_irq1_S2L_clr,
      PHS15_irq_mask(1 downto 0) => PHS_regs_0_PHS15_regs_irq_mask(1 downto 0),
      PHS15_pwm_val(9 downto 0) => PHS_regs_0_PHS15_regs_pwm_val(9 downto 0),
      PHS15_status => PHS_regs_0_PHS15_regs_status,
      PHS15_vld_in => PHS_regs_0_PHS15_regs_valid_in,
      PHS15_vld_out => PHS_regs_0_PHS15_regs_vld_out,
      PHS16_irq0_L2S => PHS_regs_0_PHS16_regs_irq0_L2S,
      PHS16_irq0_clr => PHS_regs_0_PHS16_regs_irq0_L2S_clr,
      PHS16_irq1_S2L => PHS_regs_0_PHS16_regs_irq1_S2L,
      PHS16_irq1_clr => PHS_regs_0_PHS16_regs_irq1_S2L_clr,
      PHS16_irq_mask(1 downto 0) => PHS_regs_0_PHS16_regs_irq_mask(1 downto 0),
      PHS16_pwm_val(9 downto 0) => PHS_regs_0_PHS16_regs_pwm_val(9 downto 0),
      PHS16_status => PHS_regs_0_PHS16_regs_status,
      PHS16_vld_in => PHS_regs_0_PHS16_regs_valid_in,
      PHS16_vld_out => PHS_regs_0_PHS16_regs_vld_out,
      PHS17_irq0_L2S => PHS_regs_0_PHS17_regs_irq0_L2S,
      PHS17_irq0_clr => PHS_regs_0_PHS17_regs_irq0_L2S_clr,
      PHS17_irq1_S2L => PHS_regs_0_PHS17_regs_irq1_S2L,
      PHS17_irq1_clr => PHS_regs_0_PHS17_regs_irq1_S2L_clr,
      PHS17_irq_mask(1 downto 0) => PHS_regs_0_PHS17_regs_irq_mask(1 downto 0),
      PHS17_pwm_val(9 downto 0) => PHS_regs_0_PHS17_regs_pwm_val(9 downto 0),
      PHS17_status => PHS_regs_0_PHS17_regs_status,
      PHS17_vld_in => PHS_regs_0_PHS17_regs_valid_in,
      PHS17_vld_out => PHS_regs_0_PHS17_regs_vld_out,
      PHS18_irq0_L2S => PHS_regs_0_PHS18_regs_irq0_L2S,
      PHS18_irq0_clr => PHS_regs_0_PHS18_regs_irq0_L2S_clr,
      PHS18_irq1_S2L => PHS_regs_0_PHS18_regs_irq1_S2L,
      PHS18_irq1_clr => PHS_regs_0_PHS18_regs_irq1_S2L_clr,
      PHS18_irq_mask(1 downto 0) => PHS_regs_0_PHS18_regs_irq_mask(1 downto 0),
      PHS18_pwm_val(9 downto 0) => PHS_regs_0_PHS18_regs_pwm_val(9 downto 0),
      PHS18_status => PHS_regs_0_PHS18_regs_status,
      PHS18_vld_in => PHS_regs_0_PHS18_regs_valid_in,
      PHS18_vld_out => PHS_regs_0_PHS18_regs_vld_out,
      PHS19_irq0_L2S => PHS_regs_0_PHS19_regs_irq0_L2S,
      PHS19_irq0_clr => PHS_regs_0_PHS19_regs_irq0_L2S_clr,
      PHS19_irq1_S2L => PHS_regs_0_PHS19_regs_irq1_S2L,
      PHS19_irq1_clr => PHS_regs_0_PHS19_regs_irq1_S2L_clr,
      PHS19_irq_mask(1 downto 0) => PHS_regs_0_PHS19_regs_irq_mask(1 downto 0),
      PHS19_pwm_val(9 downto 0) => PHS_regs_0_PHS19_regs_pwm_val(9 downto 0),
      PHS19_status => PHS_regs_0_PHS19_regs_status,
      PHS19_vld_in => PHS_regs_0_PHS19_regs_valid_in,
      PHS19_vld_out => PHS_regs_0_PHS19_regs_vld_out,
      PHS1_irq0_L2S => PHS_regs_0_PHS1_regs_irq0_L2S,
      PHS1_irq0_clr => PHS_regs_0_PHS1_regs_irq0_L2S_clr,
      PHS1_irq1_S2L => PHS_regs_0_PHS1_regs_irq1_S2L,
      PHS1_irq1_clr => PHS_regs_0_PHS1_regs_irq1_S2L_clr,
      PHS1_irq_mask(1 downto 0) => PHS_regs_0_PHS1_regs_irq_mask(1 downto 0),
      PHS1_pwm_val(9 downto 0) => PHS_regs_0_PHS1_regs_pwm_val(9 downto 0),
      PHS1_status => PHS_regs_0_PHS1_regs_status,
      PHS1_vld_in => PHS_regs_0_PHS1_regs_valid_in,
      PHS1_vld_out => PHS_regs_0_PHS1_regs_vld_out,
      PHS20_irq0_L2S => PHS_regs_0_PHS20_regs_irq0_L2S,
      PHS20_irq0_clr => PHS_regs_0_PHS20_regs_irq0_L2S_clr,
      PHS20_irq1_S2L => PHS_regs_0_PHS20_regs_irq1_S2L,
      PHS20_irq1_clr => PHS_regs_0_PHS20_regs_irq1_S2L_clr,
      PHS20_irq_mask(1 downto 0) => PHS_regs_0_PHS20_regs_irq_mask(1 downto 0),
      PHS20_pwm_val(9 downto 0) => PHS_regs_0_PHS20_regs_pwm_val(9 downto 0),
      PHS20_status => PHS_regs_0_PHS20_regs_status,
      PHS20_vld_in => PHS_regs_0_PHS20_regs_valid_in,
      PHS20_vld_out => PHS_regs_0_PHS20_regs_vld_out,
      PHS21_irq0_L2S => PHS_regs_0_PHS21_regs_irq0_L2S,
      PHS21_irq0_clr => PHS_regs_0_PHS21_regs_irq0_L2S_clr,
      PHS21_irq1_S2L => PHS_regs_0_PHS21_regs_irq1_S2L,
      PHS21_irq1_clr => PHS_regs_0_PHS21_regs_irq1_S2L_clr,
      PHS21_irq_mask(1 downto 0) => PHS_regs_0_PHS21_regs_irq_mask(1 downto 0),
      PHS21_pwm_val(9 downto 0) => PHS_regs_0_PHS21_regs_pwm_val(9 downto 0),
      PHS21_status => PHS_regs_0_PHS21_regs_status,
      PHS21_vld_in => PHS_regs_0_PHS21_regs_valid_in,
      PHS21_vld_out => PHS_regs_0_PHS21_regs_vld_out,
      PHS22_irq0_L2S => PHS_regs_0_PHS22_regs_irq0_L2S,
      PHS22_irq0_clr => PHS_regs_0_PHS22_regs_irq0_L2S_clr,
      PHS22_irq1_S2L => PHS_regs_0_PHS22_regs_irq1_S2L,
      PHS22_irq1_clr => PHS_regs_0_PHS22_regs_irq1_S2L_clr,
      PHS22_irq_mask(1 downto 0) => PHS_regs_0_PHS22_regs_irq_mask(1 downto 0),
      PHS22_pwm_val(9 downto 0) => PHS_regs_0_PHS22_regs_pwm_val(9 downto 0),
      PHS22_status => PHS_regs_0_PHS22_regs_status,
      PHS22_vld_in => PHS_regs_0_PHS22_regs_valid_in,
      PHS22_vld_out => PHS_regs_0_PHS22_regs_vld_out,
      PHS23_irq0_L2S => PHS_regs_0_PHS23_regs_irq0_L2S,
      PHS23_irq0_clr => PHS_regs_0_PHS23_regs_irq0_L2S_clr,
      PHS23_irq1_S2L => PHS_regs_0_PHS23_regs_irq1_S2L,
      PHS23_irq1_clr => PHS_regs_0_PHS23_regs_irq1_S2L_clr,
      PHS23_irq_mask(1 downto 0) => PHS_regs_0_PHS23_regs_irq_mask(1 downto 0),
      PHS23_pwm_val(9 downto 0) => PHS_regs_0_PHS23_regs_pwm_val(9 downto 0),
      PHS23_status => PHS_regs_0_PHS23_regs_status,
      PHS23_vld_in => PHS_regs_0_PHS23_regs_valid_in,
      PHS23_vld_out => PHS_regs_0_PHS23_regs_vld_out,
      PHS24_irq0_L2S => PHS_regs_0_PHS24_regs_irq0_L2S,
      PHS24_irq0_clr => PHS_regs_0_PHS24_regs_irq0_L2S_clr,
      PHS24_irq1_S2L => PHS_regs_0_PHS24_regs_irq1_S2L,
      PHS24_irq1_clr => PHS_regs_0_PHS24_regs_irq1_S2L_clr,
      PHS24_irq_mask(1 downto 0) => PHS_regs_0_PHS24_regs_irq_mask(1 downto 0),
      PHS24_pwm_val(9 downto 0) => PHS_regs_0_PHS24_regs_pwm_val(9 downto 0),
      PHS24_status => PHS_regs_0_PHS24_regs_status,
      PHS24_vld_in => PHS_regs_0_PHS24_regs_valid_in,
      PHS24_vld_out => PHS_regs_0_PHS24_regs_vld_out,
      PHS25_irq0_L2S => PHS_regs_0_PHS25_regs_irq0_L2S,
      PHS25_irq0_clr => PHS_regs_0_PHS25_regs_irq0_L2S_clr,
      PHS25_irq1_S2L => PHS_regs_0_PHS25_regs_irq1_S2L,
      PHS25_irq1_clr => PHS_regs_0_PHS25_regs_irq1_S2L_clr,
      PHS25_irq_mask(1 downto 0) => PHS_regs_0_PHS25_regs_irq_mask(1 downto 0),
      PHS25_pwm_val(9 downto 0) => PHS_regs_0_PHS25_regs_pwm_val(9 downto 0),
      PHS25_status => PHS_regs_0_PHS25_regs_status,
      PHS25_vld_in => PHS_regs_0_PHS25_regs_valid_in,
      PHS25_vld_out => PHS_regs_0_PHS25_regs_vld_out,
      PHS26_irq0_L2S => PHS_regs_0_PHS26_regs_irq0_L2S,
      PHS26_irq0_clr => PHS_regs_0_PHS26_regs_irq0_L2S_clr,
      PHS26_irq1_S2L => PHS_regs_0_PHS26_regs_irq1_S2L,
      PHS26_irq1_clr => PHS_regs_0_PHS26_regs_irq1_S2L_clr,
      PHS26_irq_mask(1 downto 0) => PHS_regs_0_PHS26_regs_irq_mask(1 downto 0),
      PHS26_pwm_val(9 downto 0) => PHS_regs_0_PHS26_regs_pwm_val(9 downto 0),
      PHS26_status => PHS_regs_0_PHS26_regs_status,
      PHS26_vld_in => PHS_regs_0_PHS26_regs_valid_in,
      PHS26_vld_out => PHS_regs_0_PHS26_regs_vld_out,
      PHS27_irq0_L2S => PHS_regs_0_PHS27_regs_irq0_L2S,
      PHS27_irq0_clr => PHS_regs_0_PHS27_regs_irq0_L2S_clr,
      PHS27_irq1_S2L => PHS_regs_0_PHS27_regs_irq1_S2L,
      PHS27_irq1_clr => PHS_regs_0_PHS27_regs_irq1_S2L_clr,
      PHS27_irq_mask(1 downto 0) => PHS_regs_0_PHS27_regs_irq_mask(1 downto 0),
      PHS27_pwm_val(9 downto 0) => PHS_regs_0_PHS27_regs_pwm_val(9 downto 0),
      PHS27_status => PHS_regs_0_PHS27_regs_status,
      PHS27_vld_in => PHS_regs_0_PHS27_regs_valid_in,
      PHS27_vld_out => PHS_regs_0_PHS27_regs_vld_out,
      PHS28_irq0_L2S => PHS_regs_0_PHS28_regs_irq0_L2S,
      PHS28_irq0_clr => PHS_regs_0_PHS28_regs_irq0_L2S_clr,
      PHS28_irq1_S2L => PHS_regs_0_PHS28_regs_irq1_S2L,
      PHS28_irq1_clr => PHS_regs_0_PHS28_regs_irq1_S2L_clr,
      PHS28_irq_mask(1 downto 0) => PHS_regs_0_PHS28_regs_irq_mask(1 downto 0),
      PHS28_pwm_val(9 downto 0) => PHS_regs_0_PHS28_regs_pwm_val(9 downto 0),
      PHS28_status => PHS_regs_0_PHS28_regs_status,
      PHS28_vld_in => PHS_regs_0_PHS28_regs_valid_in,
      PHS28_vld_out => PHS_regs_0_PHS28_regs_vld_out,
      PHS29_irq0_L2S => PHS_regs_0_PHS29_regs_irq0_L2S,
      PHS29_irq0_clr => PHS_regs_0_PHS29_regs_irq0_L2S_clr,
      PHS29_irq1_S2L => PHS_regs_0_PHS29_regs_irq1_S2L,
      PHS29_irq1_clr => PHS_regs_0_PHS29_regs_irq1_S2L_clr,
      PHS29_irq_mask(1 downto 0) => PHS_regs_0_PHS29_regs_irq_mask(1 downto 0),
      PHS29_pwm_val(9 downto 0) => PHS_regs_0_PHS29_regs_pwm_val(9 downto 0),
      PHS29_status => PHS_regs_0_PHS29_regs_status,
      PHS29_vld_in => PHS_regs_0_PHS29_regs_valid_in,
      PHS29_vld_out => PHS_regs_0_PHS29_regs_vld_out,
      PHS2_irq0_L2S => PHS_regs_0_PHS2_regs_irq0_L2S,
      PHS2_irq0_clr => PHS_regs_0_PHS2_regs_irq0_L2S_clr,
      PHS2_irq1_S2L => PHS_regs_0_PHS2_regs_irq1_S2L,
      PHS2_irq1_clr => PHS_regs_0_PHS2_regs_irq1_S2L_clr,
      PHS2_irq_mask(1 downto 0) => PHS_regs_0_PHS2_regs_irq_mask(1 downto 0),
      PHS2_pwm_val(9 downto 0) => PHS_regs_0_PHS2_regs_pwm_val(9 downto 0),
      PHS2_status => PHS_regs_0_PHS2_regs_status,
      PHS2_vld_in => PHS_regs_0_PHS2_regs_valid_in,
      PHS2_vld_out => PHS_regs_0_PHS2_regs_vld_out,
      PHS30_irq0_L2S => PHS_regs_0_PHS30_regs_irq0_L2S,
      PHS30_irq0_clr => PHS_regs_0_PHS30_regs_irq0_L2S_clr,
      PHS30_irq1_S2L => PHS_regs_0_PHS30_regs_irq1_S2L,
      PHS30_irq1_clr => PHS_regs_0_PHS30_regs_irq1_S2L_clr,
      PHS30_irq_mask(1 downto 0) => PHS_regs_0_PHS30_regs_irq_mask(1 downto 0),
      PHS30_pwm_val(9 downto 0) => PHS_regs_0_PHS30_regs_pwm_val(9 downto 0),
      PHS30_status => PHS_regs_0_PHS30_regs_status,
      PHS30_vld_in => PHS_regs_0_PHS30_regs_valid_in,
      PHS30_vld_out => PHS_regs_0_PHS30_regs_vld_out,
      PHS31_irq0_L2S => PHS_regs_0_PHS31_regs_irq0_L2S,
      PHS31_irq0_clr => PHS_regs_0_PHS31_regs_irq0_L2S_clr,
      PHS31_irq1_S2L => PHS_regs_0_PHS31_regs_irq1_S2L,
      PHS31_irq1_clr => PHS_regs_0_PHS31_regs_irq1_S2L_clr,
      PHS31_irq_mask(1 downto 0) => PHS_regs_0_PHS31_regs_irq_mask(1 downto 0),
      PHS31_pwm_val(9 downto 0) => PHS_regs_0_PHS31_regs_pwm_val(9 downto 0),
      PHS31_status => PHS_regs_0_PHS31_regs_status,
      PHS31_vld_in => PHS_regs_0_PHS31_regs_valid_in,
      PHS31_vld_out => PHS_regs_0_PHS31_regs_vld_out,
      PHS32_irq0_L2S => PHS_regs_0_PHS32_regs_irq0_L2S,
      PHS32_irq0_clr => PHS_regs_0_PHS32_regs_irq0_L2S_clr,
      PHS32_irq1_S2L => PHS_regs_0_PHS32_regs_irq1_S2L,
      PHS32_irq1_clr => PHS_regs_0_PHS32_regs_irq1_S2L_clr,
      PHS32_irq_mask(1 downto 0) => PHS_regs_0_PHS32_regs_irq_mask(1 downto 0),
      PHS32_pwm_val(9 downto 0) => PHS_regs_0_PHS32_regs_pwm_val(9 downto 0),
      PHS32_status => PHS_regs_0_PHS32_regs_status,
      PHS32_vld_in => PHS_regs_0_PHS32_regs_valid_in,
      PHS32_vld_out => PHS_regs_0_PHS32_regs_vld_out,
      PHS33_irq0_L2S => PHS_regs_0_PHS33_regs_irq0_L2S,
      PHS33_irq0_clr => PHS_regs_0_PHS33_regs_irq0_L2S_clr,
      PHS33_irq1_S2L => PHS_regs_0_PHS33_regs_irq1_S2L,
      PHS33_irq1_clr => PHS_regs_0_PHS33_regs_irq1_S2L_clr,
      PHS33_irq_mask(1 downto 0) => PHS_regs_0_PHS33_regs_irq_mask(1 downto 0),
      PHS33_pwm_val(9 downto 0) => PHS_regs_0_PHS33_regs_pwm_val(9 downto 0),
      PHS33_status => PHS_regs_0_PHS33_regs_status,
      PHS33_vld_in => PHS_regs_0_PHS33_regs_valid_in,
      PHS33_vld_out => PHS_regs_0_PHS33_regs_vld_out,
      PHS34_irq0_L2S => PHS_regs_0_PHS34_regs_irq0_L2S,
      PHS34_irq0_clr => PHS_regs_0_PHS34_regs_irq0_L2S_clr,
      PHS34_irq1_S2L => PHS_regs_0_PHS34_regs_irq1_S2L,
      PHS34_irq1_clr => PHS_regs_0_PHS34_regs_irq1_S2L_clr,
      PHS34_irq_mask(1 downto 0) => PHS_regs_0_PHS34_regs_irq_mask(1 downto 0),
      PHS34_pwm_val(9 downto 0) => PHS_regs_0_PHS34_regs_pwm_val(9 downto 0),
      PHS34_status => PHS_regs_0_PHS34_regs_status,
      PHS34_vld_in => PHS_regs_0_PHS34_regs_valid_in,
      PHS34_vld_out => PHS_regs_0_PHS34_regs_vld_out,
      PHS35_irq0_L2S => PHS_regs_0_PHS35_regs_irq0_L2S,
      PHS35_irq0_clr => PHS_regs_0_PHS35_regs_irq0_L2S_clr,
      PHS35_irq1_S2L => PHS_regs_0_PHS35_regs_irq1_S2L,
      PHS35_irq1_clr => PHS_regs_0_PHS35_regs_irq1_S2L_clr,
      PHS35_irq_mask(1 downto 0) => PHS_regs_0_PHS35_regs_irq_mask(1 downto 0),
      PHS35_pwm_val(9 downto 0) => PHS_regs_0_PHS35_regs_pwm_val(9 downto 0),
      PHS35_status => PHS_regs_0_PHS35_regs_status,
      PHS35_vld_in => PHS_regs_0_PHS35_regs_valid_in,
      PHS35_vld_out => PHS_regs_0_PHS35_regs_vld_out,
      PHS36_irq0_L2S => PHS_regs_0_PHS36_regs_irq0_L2S,
      PHS36_irq0_clr => PHS_regs_0_PHS36_regs_irq0_L2S_clr,
      PHS36_irq1_S2L => PHS_regs_0_PHS36_regs_irq1_S2L,
      PHS36_irq1_clr => PHS_regs_0_PHS36_regs_irq1_S2L_clr,
      PHS36_irq_mask(1 downto 0) => PHS_regs_0_PHS36_regs_irq_mask(1 downto 0),
      PHS36_pwm_val(9 downto 0) => PHS_regs_0_PHS36_regs_pwm_val(9 downto 0),
      PHS36_status => PHS_regs_0_PHS36_regs_status,
      PHS36_vld_in => PHS_regs_0_PHS36_regs_valid_in,
      PHS36_vld_out => PHS_regs_0_PHS36_regs_vld_out,
      PHS37_irq0_L2S => PHS_regs_0_PHS37_regs_irq0_L2S,
      PHS37_irq0_clr => PHS_regs_0_PHS37_regs_irq0_L2S_clr,
      PHS37_irq1_S2L => PHS_regs_0_PHS37_regs_irq1_S2L,
      PHS37_irq1_clr => PHS_regs_0_PHS37_regs_irq1_S2L_clr,
      PHS37_irq_mask(1 downto 0) => PHS_regs_0_PHS37_regs_irq_mask(1 downto 0),
      PHS37_pwm_val(9 downto 0) => PHS_regs_0_PHS37_regs_pwm_val(9 downto 0),
      PHS37_status => PHS_regs_0_PHS37_regs_status,
      PHS37_vld_in => PHS_regs_0_PHS37_regs_valid_in,
      PHS37_vld_out => PHS_regs_0_PHS37_regs_vld_out,
      PHS38_irq0_L2S => PHS_regs_0_PHS38_regs_irq0_L2S,
      PHS38_irq0_clr => PHS_regs_0_PHS38_regs_irq0_L2S_clr,
      PHS38_irq1_S2L => PHS_regs_0_PHS38_regs_irq1_S2L,
      PHS38_irq1_clr => PHS_regs_0_PHS38_regs_irq1_S2L_clr,
      PHS38_irq_mask(1 downto 0) => PHS_regs_0_PHS38_regs_irq_mask(1 downto 0),
      PHS38_pwm_val(9 downto 0) => PHS_regs_0_PHS38_regs_pwm_val(9 downto 0),
      PHS38_status => PHS_regs_0_PHS38_regs_status,
      PHS38_vld_in => PHS_regs_0_PHS38_regs_valid_in,
      PHS38_vld_out => PHS_regs_0_PHS38_regs_vld_out,
      PHS39_irq0_L2S => PHS_regs_0_PHS39_regs_irq0_L2S,
      PHS39_irq0_clr => PHS_regs_0_PHS39_regs_irq0_L2S_clr,
      PHS39_irq1_S2L => PHS_regs_0_PHS39_regs_irq1_S2L,
      PHS39_irq1_clr => PHS_regs_0_PHS39_regs_irq1_S2L_clr,
      PHS39_irq_mask(1 downto 0) => PHS_regs_0_PHS39_regs_irq_mask(1 downto 0),
      PHS39_pwm_val(9 downto 0) => PHS_regs_0_PHS39_regs_pwm_val(9 downto 0),
      PHS39_status => PHS_regs_0_PHS39_regs_status,
      PHS39_vld_in => PHS_regs_0_PHS39_regs_valid_in,
      PHS39_vld_out => PHS_regs_0_PHS39_regs_vld_out,
      PHS3_irq0_L2S => PHS_regs_0_PHS3_regs_irq0_L2S,
      PHS3_irq0_clr => PHS_regs_0_PHS3_regs_irq0_L2S_clr,
      PHS3_irq1_S2L => PHS_regs_0_PHS3_regs_irq1_S2L,
      PHS3_irq1_clr => PHS_regs_0_PHS3_regs_irq1_S2L_clr,
      PHS3_irq_mask(1 downto 0) => PHS_regs_0_PHS3_regs_irq_mask(1 downto 0),
      PHS3_pwm_val(9 downto 0) => PHS_regs_0_PHS3_regs_pwm_val(9 downto 0),
      PHS3_status => PHS_regs_0_PHS3_regs_status,
      PHS3_vld_in => PHS_regs_0_PHS3_regs_valid_in,
      PHS3_vld_out => PHS_regs_0_PHS3_regs_vld_out,
      PHS40_irq0_L2S => PHS_regs_0_PHS40_regs_irq0_L2S,
      PHS40_irq0_clr => PHS_regs_0_PHS40_regs_irq0_L2S_clr,
      PHS40_irq1_S2L => PHS_regs_0_PHS40_regs_irq1_S2L,
      PHS40_irq1_clr => PHS_regs_0_PHS40_regs_irq1_S2L_clr,
      PHS40_irq_mask(1 downto 0) => PHS_regs_0_PHS40_regs_irq_mask(1 downto 0),
      PHS40_pwm_val(9 downto 0) => PHS_regs_0_PHS40_regs_pwm_val(9 downto 0),
      PHS40_status => PHS_regs_0_PHS40_regs_status,
      PHS40_vld_in => PHS_regs_0_PHS40_regs_valid_in,
      PHS40_vld_out => PHS_regs_0_PHS40_regs_vld_out,
      PHS41_irq0_L2S => PHS_regs_0_PHS41_regs_irq0_L2S,
      PHS41_irq0_clr => PHS_regs_0_PHS41_regs_irq0_L2S_clr,
      PHS41_irq1_S2L => PHS_regs_0_PHS41_regs_irq1_S2L,
      PHS41_irq1_clr => PHS_regs_0_PHS41_regs_irq1_S2L_clr,
      PHS41_irq_mask(1 downto 0) => PHS_regs_0_PHS41_regs_irq_mask(1 downto 0),
      PHS41_pwm_val(9 downto 0) => PHS_regs_0_PHS41_regs_pwm_val(9 downto 0),
      PHS41_status => PHS_regs_0_PHS41_regs_status,
      PHS41_vld_in => PHS_regs_0_PHS41_regs_valid_in,
      PHS41_vld_out => PHS_regs_0_PHS41_regs_vld_out,
      PHS42_irq0_L2S => PHS_regs_0_PHS42_regs_irq0_L2S,
      PHS42_irq0_clr => PHS_regs_0_PHS42_regs_irq0_L2S_clr,
      PHS42_irq1_S2L => PHS_regs_0_PHS42_regs_irq1_S2L,
      PHS42_irq1_clr => PHS_regs_0_PHS42_regs_irq1_S2L_clr,
      PHS42_irq_mask(1 downto 0) => PHS_regs_0_PHS42_regs_irq_mask(1 downto 0),
      PHS42_pwm_val(9 downto 0) => PHS_regs_0_PHS42_regs_pwm_val(9 downto 0),
      PHS42_status => PHS_regs_0_PHS42_regs_status,
      PHS42_vld_in => PHS_regs_0_PHS42_regs_valid_in,
      PHS42_vld_out => PHS_regs_0_PHS42_regs_vld_out,
      PHS43_irq0_L2S => PHS_regs_0_PHS43_regs_irq0_L2S,
      PHS43_irq0_clr => PHS_regs_0_PHS43_regs_irq0_L2S_clr,
      PHS43_irq1_S2L => PHS_regs_0_PHS43_regs_irq1_S2L,
      PHS43_irq1_clr => PHS_regs_0_PHS43_regs_irq1_S2L_clr,
      PHS43_irq_mask(1 downto 0) => PHS_regs_0_PHS43_regs_irq_mask(1 downto 0),
      PHS43_pwm_val(9 downto 0) => PHS_regs_0_PHS43_regs_pwm_val(9 downto 0),
      PHS43_status => PHS_regs_0_PHS43_regs_status,
      PHS43_vld_in => PHS_regs_0_PHS43_regs_valid_in,
      PHS43_vld_out => PHS_regs_0_PHS43_regs_vld_out,
      PHS44_irq0_L2S => PHS_regs_0_PHS44_regs_irq0_L2S,
      PHS44_irq0_clr => PHS_regs_0_PHS44_regs_irq0_L2S_clr,
      PHS44_irq1_S2L => PHS_regs_0_PHS44_regs_irq1_S2L,
      PHS44_irq1_clr => PHS_regs_0_PHS44_regs_irq1_S2L_clr,
      PHS44_irq_mask(1 downto 0) => PHS_regs_0_PHS44_regs_irq_mask(1 downto 0),
      PHS44_pwm_val(9 downto 0) => PHS_regs_0_PHS44_regs_pwm_val(9 downto 0),
      PHS44_status => PHS_regs_0_PHS44_regs_status,
      PHS44_vld_in => PHS_regs_0_PHS44_regs_valid_in,
      PHS44_vld_out => PHS_regs_0_PHS44_regs_vld_out,
      PHS45_irq0_L2S => PHS_regs_0_PHS45_regs_irq0_L2S,
      PHS45_irq0_clr => PHS_regs_0_PHS45_regs_irq0_L2S_clr,
      PHS45_irq1_S2L => PHS_regs_0_PHS45_regs_irq1_S2L,
      PHS45_irq1_clr => PHS_regs_0_PHS45_regs_irq1_S2L_clr,
      PHS45_irq_mask(1 downto 0) => PHS_regs_0_PHS45_regs_irq_mask(1 downto 0),
      PHS45_pwm_val(9 downto 0) => PHS_regs_0_PHS45_regs_pwm_val(9 downto 0),
      PHS45_status => PHS_regs_0_PHS45_regs_status,
      PHS45_vld_in => PHS_regs_0_PHS45_regs_valid_in,
      PHS45_vld_out => PHS_regs_0_PHS45_regs_vld_out,
      PHS46_irq0_L2S => PHS_regs_0_PHS46_regs_irq0_L2S,
      PHS46_irq0_clr => PHS_regs_0_PHS46_regs_irq0_L2S_clr,
      PHS46_irq1_S2L => PHS_regs_0_PHS46_regs_irq1_S2L,
      PHS46_irq1_clr => PHS_regs_0_PHS46_regs_irq1_S2L_clr,
      PHS46_irq_mask(1 downto 0) => PHS_regs_0_PHS46_regs_irq_mask(1 downto 0),
      PHS46_pwm_val(9 downto 0) => PHS_regs_0_PHS46_regs_pwm_val(9 downto 0),
      PHS46_status => PHS_regs_0_PHS46_regs_status,
      PHS46_vld_in => PHS_regs_0_PHS46_regs_valid_in,
      PHS46_vld_out => PHS_regs_0_PHS46_regs_vld_out,
      PHS47_irq0_L2S => PHS_regs_0_PHS47_regs_irq0_L2S,
      PHS47_irq0_clr => PHS_regs_0_PHS47_regs_irq0_L2S_clr,
      PHS47_irq1_S2L => PHS_regs_0_PHS47_regs_irq1_S2L,
      PHS47_irq1_clr => PHS_regs_0_PHS47_regs_irq1_S2L_clr,
      PHS47_irq_mask(1 downto 0) => PHS_regs_0_PHS47_regs_irq_mask(1 downto 0),
      PHS47_pwm_val(9 downto 0) => PHS_regs_0_PHS47_regs_pwm_val(9 downto 0),
      PHS47_status => PHS_regs_0_PHS47_regs_status,
      PHS47_vld_in => PHS_regs_0_PHS47_regs_valid_in,
      PHS47_vld_out => PHS_regs_0_PHS47_regs_vld_out,
      PHS48_irq0_L2S => PHS_regs_0_PHS48_regs_irq0_L2S,
      PHS48_irq0_clr => PHS_regs_0_PHS48_regs_irq0_L2S_clr,
      PHS48_irq1_S2L => PHS_regs_0_PHS48_regs_irq1_S2L,
      PHS48_irq1_clr => PHS_regs_0_PHS48_regs_irq1_S2L_clr,
      PHS48_irq_mask(1 downto 0) => PHS_regs_0_PHS48_regs_irq_mask(1 downto 0),
      PHS48_pwm_val(9 downto 0) => PHS_regs_0_PHS48_regs_pwm_val(9 downto 0),
      PHS48_status => PHS_regs_0_PHS48_regs_status,
      PHS48_vld_in => PHS_regs_0_PHS48_regs_valid_in,
      PHS48_vld_out => PHS_regs_0_PHS48_regs_vld_out,
      PHS49_irq0_L2S => PHS_regs_0_PHS49_regs_irq0_L2S,
      PHS49_irq0_clr => PHS_regs_0_PHS49_regs_irq0_L2S_clr,
      PHS49_irq1_S2L => PHS_regs_0_PHS49_regs_irq1_S2L,
      PHS49_irq1_clr => PHS_regs_0_PHS49_regs_irq1_S2L_clr,
      PHS49_irq_mask(1 downto 0) => PHS_regs_0_PHS49_regs_irq_mask(1 downto 0),
      PHS49_pwm_val(9 downto 0) => PHS_regs_0_PHS49_regs_pwm_val(9 downto 0),
      PHS49_status => PHS_regs_0_PHS49_regs_status,
      PHS49_vld_in => PHS_regs_0_PHS49_regs_valid_in,
      PHS49_vld_out => PHS_regs_0_PHS49_regs_vld_out,
      PHS4_irq0_L2S => PHS_regs_0_PHS4_regs_irq0_L2S,
      PHS4_irq0_clr => PHS_regs_0_PHS4_regs_irq0_L2S_clr,
      PHS4_irq1_S2L => PHS_regs_0_PHS4_regs_irq1_S2L,
      PHS4_irq1_clr => PHS_regs_0_PHS4_regs_irq1_S2L_clr,
      PHS4_irq_mask(1 downto 0) => PHS_regs_0_PHS4_regs_irq_mask(1 downto 0),
      PHS4_pwm_val(9 downto 0) => PHS_regs_0_PHS4_regs_pwm_val(9 downto 0),
      PHS4_status => PHS_regs_0_PHS4_regs_status,
      PHS4_vld_in => PHS_regs_0_PHS4_regs_valid_in,
      PHS4_vld_out => PHS_regs_0_PHS4_regs_vld_out,
      PHS5_irq0_L2S => PHS_regs_0_PHS5_regs_irq0_L2S,
      PHS5_irq0_clr => PHS_regs_0_PHS5_regs_irq0_L2S_clr,
      PHS5_irq1_S2L => PHS_regs_0_PHS5_regs_irq1_S2L,
      PHS5_irq1_clr => PHS_regs_0_PHS5_regs_irq1_S2L_clr,
      PHS5_irq_mask(1 downto 0) => PHS_regs_0_PHS5_regs_irq_mask(1 downto 0),
      PHS5_pwm_val(9 downto 0) => PHS_regs_0_PHS5_regs_pwm_val(9 downto 0),
      PHS5_status => PHS_regs_0_PHS5_regs_status,
      PHS5_vld_in => PHS_regs_0_PHS5_regs_valid_in,
      PHS5_vld_out => PHS_regs_0_PHS5_regs_vld_out,
      PHS6_irq0_L2S => PHS_regs_0_PHS6_regs_irq0_L2S,
      PHS6_irq0_clr => PHS_regs_0_PHS6_regs_irq0_L2S_clr,
      PHS6_irq1_S2L => PHS_regs_0_PHS6_regs_irq1_S2L,
      PHS6_irq1_clr => PHS_regs_0_PHS6_regs_irq1_S2L_clr,
      PHS6_irq_mask(1 downto 0) => PHS_regs_0_PHS6_regs_irq_mask(1 downto 0),
      PHS6_pwm_val(9 downto 0) => PHS_regs_0_PHS6_regs_pwm_val(9 downto 0),
      PHS6_status => PHS_regs_0_PHS6_regs_status,
      PHS6_vld_in => PHS_regs_0_PHS6_regs_valid_in,
      PHS6_vld_out => PHS_regs_0_PHS6_regs_vld_out,
      PHS7_irq0_L2S => PHS_regs_0_PHS7_regs_irq0_L2S,
      PHS7_irq0_clr => PHS_regs_0_PHS7_regs_irq0_L2S_clr,
      PHS7_irq1_S2L => PHS_regs_0_PHS7_regs_irq1_S2L,
      PHS7_irq1_clr => PHS_regs_0_PHS7_regs_irq1_S2L_clr,
      PHS7_irq_mask(1 downto 0) => PHS_regs_0_PHS7_regs_irq_mask(1 downto 0),
      PHS7_pwm_val(9 downto 0) => PHS_regs_0_PHS7_regs_pwm_val(9 downto 0),
      PHS7_status => PHS_regs_0_PHS7_regs_status,
      PHS7_vld_in => PHS_regs_0_PHS7_regs_valid_in,
      PHS7_vld_out => PHS_regs_0_PHS7_regs_vld_out,
      PHS8_irq0_L2S => PHS_regs_0_PHS8_regs_irq0_L2S,
      PHS8_irq0_clr => PHS_regs_0_PHS8_regs_irq0_L2S_clr,
      PHS8_irq1_S2L => PHS_regs_0_PHS8_regs_irq1_S2L,
      PHS8_irq1_clr => PHS_regs_0_PHS8_regs_irq1_S2L_clr,
      PHS8_irq_mask(1 downto 0) => PHS_regs_0_PHS8_regs_irq_mask(1 downto 0),
      PHS8_pwm_val(9 downto 0) => PHS_regs_0_PHS8_regs_pwm_val(9 downto 0),
      PHS8_status => PHS_regs_0_PHS8_regs_status,
      PHS8_vld_in => PHS_regs_0_PHS8_regs_valid_in,
      PHS8_vld_out => PHS_regs_0_PHS8_regs_vld_out,
      PHS9_irq0_L2S => PHS_regs_0_PHS9_regs_irq0_L2S,
      PHS9_irq0_clr => PHS_regs_0_PHS9_regs_irq0_L2S_clr,
      PHS9_irq1_S2L => PHS_regs_0_PHS9_regs_irq1_S2L,
      PHS9_irq1_clr => PHS_regs_0_PHS9_regs_irq1_S2L_clr,
      PHS9_irq_mask(1 downto 0) => PHS_regs_0_PHS9_regs_irq_mask(1 downto 0),
      PHS9_pwm_val(9 downto 0) => PHS_regs_0_PHS9_regs_pwm_val(9 downto 0),
      PHS9_status => PHS_regs_0_PHS9_regs_status,
      PHS9_vld_in => PHS_regs_0_PHS9_regs_valid_in,
      PHS9_vld_out => PHS_regs_0_PHS9_regs_vld_out,
      PHS_irq_L2S_0 => PHS_regs_0_PHS_irq_L2S_0,
      PHS_irq_L2S_1 => PHS_regs_0_PHS_irq_L2S_1,
      PHS_irq_S2L_0 => PHS_regs_0_PHS_irq_S2L_0,
      PHS_irq_S2L_1 => PHS_regs_0_PHS_irq_S2L_1,
      PHS_irqs_L2S_0(24 downto 0) => PHS_regs_0_PHS_irqs_L2S_0(24 downto 0),
      PHS_irqs_L2S_1(24 downto 0) => PHS_regs_0_PHS_irqs_L2S_1(24 downto 0),
      PHS_irqs_S2L_0(24 downto 0) => PHS_regs_0_PHS_irqs_S2L_0(24 downto 0),
      PHS_irqs_S2L_1(24 downto 0) => PHS_regs_0_PHS_irqs_S2L_1(24 downto 0),
      s00_axi_aclk => s00_axi_aclk_1_1,
      s00_axi_araddr(9 downto 0) => Conn1_ARADDR(9 downto 0),
      s00_axi_aresetn => s00_axi_aresetn_1_1,
      s00_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s00_axi_arready => Conn1_ARREADY,
      s00_axi_arvalid => Conn1_ARVALID(0),
      s00_axi_awaddr(9 downto 0) => Conn1_AWADDR(9 downto 0),
      s00_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s00_axi_awready => Conn1_AWREADY,
      s00_axi_awvalid => Conn1_AWVALID(0),
      s00_axi_bready => Conn1_BREADY(0),
      s00_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s00_axi_bvalid => Conn1_BVALID,
      s00_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s00_axi_rready => Conn1_RREADY(0),
      s00_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s00_axi_rvalid => Conn1_RVALID,
      s00_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s00_axi_wready => Conn1_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn1_WVALID(0)
    );
RT_timebase_0: component S7_RT_timebase_0_0
     port map (
      aclk => s00_axi_aclk_1_1,
      aresetn => s00_axi_aresetn_1_1,
      ena_PHS => RT_timebase_0_ena_PHS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SM_20_imp_2OPAUR is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SM0_clk : out STD_LOGIC;
    SM0_dir : out STD_LOGIC;
    SM0_ena : out STD_LOGIC;
    SM0_m1p : out STD_LOGIC;
    SM0_m2p : out STD_LOGIC;
    SM0_ref : out STD_LOGIC;
    SM10_clk : out STD_LOGIC;
    SM10_dir : out STD_LOGIC;
    SM10_ena : out STD_LOGIC;
    SM10_m1p : out STD_LOGIC;
    SM10_m2p : out STD_LOGIC;
    SM10_ref : out STD_LOGIC;
    SM11_clk : out STD_LOGIC;
    SM11_dir : out STD_LOGIC;
    SM11_ena : out STD_LOGIC;
    SM11_m1p : out STD_LOGIC;
    SM11_m2p : out STD_LOGIC;
    SM11_ref : out STD_LOGIC;
    SM12_clk : out STD_LOGIC;
    SM12_dir : out STD_LOGIC;
    SM12_ena : out STD_LOGIC;
    SM12_m1p : out STD_LOGIC;
    SM12_m2p : out STD_LOGIC;
    SM12_ref : out STD_LOGIC;
    SM13_clk : out STD_LOGIC;
    SM13_dir : out STD_LOGIC;
    SM13_ena : out STD_LOGIC;
    SM13_m1p : out STD_LOGIC;
    SM13_m2p : out STD_LOGIC;
    SM13_ref : out STD_LOGIC;
    SM14_clk : out STD_LOGIC;
    SM14_dir : out STD_LOGIC;
    SM14_ena : out STD_LOGIC;
    SM14_m1p : out STD_LOGIC;
    SM14_m2p : out STD_LOGIC;
    SM14_ref : out STD_LOGIC;
    SM15_clk : out STD_LOGIC;
    SM15_dir : out STD_LOGIC;
    SM15_ena : out STD_LOGIC;
    SM15_m1p : out STD_LOGIC;
    SM15_m2p : out STD_LOGIC;
    SM15_ref : out STD_LOGIC;
    SM16_clk : out STD_LOGIC;
    SM16_dir : out STD_LOGIC;
    SM16_ena : out STD_LOGIC;
    SM16_m1p : out STD_LOGIC;
    SM16_m2p : out STD_LOGIC;
    SM16_ref : out STD_LOGIC;
    SM17_clk : out STD_LOGIC;
    SM17_dir : out STD_LOGIC;
    SM17_ena : out STD_LOGIC;
    SM17_m1p : out STD_LOGIC;
    SM17_m2p : out STD_LOGIC;
    SM17_ref : out STD_LOGIC;
    SM18_clk : out STD_LOGIC;
    SM18_dir : out STD_LOGIC;
    SM18_ena : out STD_LOGIC;
    SM18_m1p : out STD_LOGIC;
    SM18_m2p : out STD_LOGIC;
    SM18_ref : out STD_LOGIC;
    SM19_clk : out STD_LOGIC;
    SM19_dir : out STD_LOGIC;
    SM19_ena : out STD_LOGIC;
    SM19_m1p : out STD_LOGIC;
    SM19_m2p : out STD_LOGIC;
    SM19_ref : out STD_LOGIC;
    SM1_clk : out STD_LOGIC;
    SM1_dir : out STD_LOGIC;
    SM1_ena : out STD_LOGIC;
    SM1_m1p : out STD_LOGIC;
    SM1_m2p : out STD_LOGIC;
    SM1_ref : out STD_LOGIC;
    SM2_clk : out STD_LOGIC;
    SM2_dir : out STD_LOGIC;
    SM2_ena : out STD_LOGIC;
    SM2_m1p : out STD_LOGIC;
    SM2_m2p : out STD_LOGIC;
    SM2_ref : out STD_LOGIC;
    SM3_clk : out STD_LOGIC;
    SM3_dir : out STD_LOGIC;
    SM3_ena : out STD_LOGIC;
    SM3_m1p : out STD_LOGIC;
    SM3_m2p : out STD_LOGIC;
    SM3_ref : out STD_LOGIC;
    SM4_clk : out STD_LOGIC;
    SM4_dir : out STD_LOGIC;
    SM4_ena : out STD_LOGIC;
    SM4_m1p : out STD_LOGIC;
    SM4_m2p : out STD_LOGIC;
    SM4_ref : out STD_LOGIC;
    SM5_clk : out STD_LOGIC;
    SM5_dir : out STD_LOGIC;
    SM5_ena : out STD_LOGIC;
    SM5_m1p : out STD_LOGIC;
    SM5_m2p : out STD_LOGIC;
    SM5_ref : out STD_LOGIC;
    SM6_clk : out STD_LOGIC;
    SM6_dir : out STD_LOGIC;
    SM6_ena : out STD_LOGIC;
    SM6_m1p : out STD_LOGIC;
    SM6_m2p : out STD_LOGIC;
    SM6_ref : out STD_LOGIC;
    SM7_clk : out STD_LOGIC;
    SM7_dir : out STD_LOGIC;
    SM7_ena : out STD_LOGIC;
    SM7_m1p : out STD_LOGIC;
    SM7_m2p : out STD_LOGIC;
    SM7_ref : out STD_LOGIC;
    SM8_clk : out STD_LOGIC;
    SM8_dir : out STD_LOGIC;
    SM8_ena : out STD_LOGIC;
    SM8_m1p : out STD_LOGIC;
    SM8_m2p : out STD_LOGIC;
    SM8_ref : out STD_LOGIC;
    SM9_clk : out STD_LOGIC;
    SM9_dir : out STD_LOGIC;
    SM9_ena : out STD_LOGIC;
    SM9_m1p : out STD_LOGIC;
    SM9_m2p : out STD_LOGIC;
    SM9_ref : out STD_LOGIC;
    SM_irq : out STD_LOGIC;
    SM_irqs : out STD_LOGIC_VECTOR ( 19 downto 0 );
    clk200 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end SM_20_imp_2OPAUR;

architecture STRUCTURE of SM_20_imp_2OPAUR is
  component S7_SM_alg_server_0_0 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    smc_0_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_0_req : in STD_LOGIC;
    smc_0_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_0_ack : out STD_LOGIC;
    smc_1_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_1_req : in STD_LOGIC;
    smc_1_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_1_ack : out STD_LOGIC;
    smc_2_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_2_req : in STD_LOGIC;
    smc_2_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_2_ack : out STD_LOGIC;
    smc_3_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_3_req : in STD_LOGIC;
    smc_3_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_3_ack : out STD_LOGIC;
    smc_4_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_4_req : in STD_LOGIC;
    smc_4_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_4_ack : out STD_LOGIC;
    smc_5_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_5_req : in STD_LOGIC;
    smc_5_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_5_ack : out STD_LOGIC;
    smc_6_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_6_req : in STD_LOGIC;
    smc_6_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_6_ack : out STD_LOGIC;
    smc_7_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_7_req : in STD_LOGIC;
    smc_7_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_7_ack : out STD_LOGIC;
    smc_8_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_8_req : in STD_LOGIC;
    smc_8_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_8_ack : out STD_LOGIC;
    smc_9_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_9_req : in STD_LOGIC;
    smc_9_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_9_ack : out STD_LOGIC
  );
  end component S7_SM_alg_server_0_0;
  component S7_SM_alg_server_1_1 is
  port (
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    smc_0_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_0_req : in STD_LOGIC;
    smc_0_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_0_ack : out STD_LOGIC;
    smc_1_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_1_req : in STD_LOGIC;
    smc_1_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_1_ack : out STD_LOGIC;
    smc_2_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_2_req : in STD_LOGIC;
    smc_2_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_2_ack : out STD_LOGIC;
    smc_3_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_3_req : in STD_LOGIC;
    smc_3_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_3_ack : out STD_LOGIC;
    smc_4_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_4_req : in STD_LOGIC;
    smc_4_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_4_ack : out STD_LOGIC;
    smc_5_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_5_req : in STD_LOGIC;
    smc_5_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_5_ack : out STD_LOGIC;
    smc_6_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_6_req : in STD_LOGIC;
    smc_6_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_6_ack : out STD_LOGIC;
    smc_7_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_7_req : in STD_LOGIC;
    smc_7_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_7_ack : out STD_LOGIC;
    smc_8_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_8_req : in STD_LOGIC;
    smc_8_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_8_ack : out STD_LOGIC;
    smc_9_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_9_req : in STD_LOGIC;
    smc_9_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_9_ack : out STD_LOGIC
  );
  end component S7_SM_alg_server_1_1;
  component S7_SM_ctrl_0_0 is
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
  end component S7_SM_ctrl_0_0;
  component S7_SM_ctrl_10_0 is
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
  end component S7_SM_ctrl_10_0;
  component S7_SM_ctrl_11_0 is
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
  end component S7_SM_ctrl_11_0;
  component S7_SM_ctrl_12_0 is
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
  end component S7_SM_ctrl_12_0;
  component S7_SM_ctrl_13_0 is
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
  end component S7_SM_ctrl_13_0;
  component S7_SM_ctrl_14_0 is
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
  end component S7_SM_ctrl_14_0;
  component S7_SM_ctrl_15_0 is
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
  end component S7_SM_ctrl_15_0;
  component S7_SM_ctrl_16_0 is
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
  end component S7_SM_ctrl_16_0;
  component S7_SM_ctrl_17_0 is
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
  end component S7_SM_ctrl_17_0;
  component S7_SM_ctrl_18_0 is
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
  end component S7_SM_ctrl_18_0;
  component S7_SM_ctrl_19_0 is
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
  end component S7_SM_ctrl_19_0;
  component S7_SM_ctrl_1_0 is
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
  end component S7_SM_ctrl_1_0;
  component S7_SM_ctrl_2_0 is
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
  end component S7_SM_ctrl_2_0;
  component S7_SM_ctrl_3_0 is
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
  end component S7_SM_ctrl_3_0;
  component S7_SM_ctrl_4_0 is
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
  end component S7_SM_ctrl_4_0;
  component S7_SM_ctrl_5_0 is
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
  end component S7_SM_ctrl_5_0;
  component S7_SM_ctrl_6_0 is
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
  end component S7_SM_ctrl_6_0;
  component S7_SM_ctrl_7_0 is
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
  end component S7_SM_ctrl_7_0;
  component S7_SM_ctrl_8_0 is
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
  end component S7_SM_ctrl_8_0;
  component S7_SM_ctrl_9_0 is
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
  end component S7_SM_ctrl_9_0;
  component S7_SM_regs_0_0 is
  port (
    SM0_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM0_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM0_dir : out STD_LOGIC;
    SM0_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM0_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM0_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM0_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM0_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM0_ramp_up : out STD_LOGIC;
    SM0_ramp_dwn : out STD_LOGIC;
    SM0_spd_chg : out STD_LOGIC;
    SM0_slw_stps : out STD_LOGIC;
    SM0_fst_stps : out STD_LOGIC;
    SM0_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM0_irq_mask : out STD_LOGIC;
    SM0_irq_in : in STD_LOGIC;
    SM0_irq_clr : out STD_LOGIC;
    SM0_vld_in : in STD_LOGIC;
    SM0_vld_out : out STD_LOGIC;
    SM1_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM1_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM1_dir : out STD_LOGIC;
    SM1_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM1_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM1_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM1_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM1_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM1_ramp_up : out STD_LOGIC;
    SM1_ramp_dwn : out STD_LOGIC;
    SM1_spd_chg : out STD_LOGIC;
    SM1_slw_stps : out STD_LOGIC;
    SM1_fst_stps : out STD_LOGIC;
    SM1_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM1_irq_mask : out STD_LOGIC;
    SM1_irq_in : in STD_LOGIC;
    SM1_irq_clr : out STD_LOGIC;
    SM1_vld_in : in STD_LOGIC;
    SM1_vld_out : out STD_LOGIC;
    SM2_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM2_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM2_dir : out STD_LOGIC;
    SM2_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM2_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM2_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM2_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM2_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM2_ramp_up : out STD_LOGIC;
    SM2_ramp_dwn : out STD_LOGIC;
    SM2_spd_chg : out STD_LOGIC;
    SM2_slw_stps : out STD_LOGIC;
    SM2_fst_stps : out STD_LOGIC;
    SM2_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM2_irq_mask : out STD_LOGIC;
    SM2_irq_in : in STD_LOGIC;
    SM2_irq_clr : out STD_LOGIC;
    SM2_vld_in : in STD_LOGIC;
    SM2_vld_out : out STD_LOGIC;
    SM3_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM3_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM3_dir : out STD_LOGIC;
    SM3_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM3_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM3_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM3_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM3_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM3_ramp_up : out STD_LOGIC;
    SM3_ramp_dwn : out STD_LOGIC;
    SM3_spd_chg : out STD_LOGIC;
    SM3_slw_stps : out STD_LOGIC;
    SM3_fst_stps : out STD_LOGIC;
    SM3_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM3_irq_mask : out STD_LOGIC;
    SM3_irq_in : in STD_LOGIC;
    SM3_irq_clr : out STD_LOGIC;
    SM3_vld_in : in STD_LOGIC;
    SM3_vld_out : out STD_LOGIC;
    SM4_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM4_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM4_dir : out STD_LOGIC;
    SM4_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM4_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM4_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM4_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM4_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM4_ramp_up : out STD_LOGIC;
    SM4_ramp_dwn : out STD_LOGIC;
    SM4_spd_chg : out STD_LOGIC;
    SM4_slw_stps : out STD_LOGIC;
    SM4_fst_stps : out STD_LOGIC;
    SM4_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM4_irq_mask : out STD_LOGIC;
    SM4_irq_in : in STD_LOGIC;
    SM4_irq_clr : out STD_LOGIC;
    SM4_vld_in : in STD_LOGIC;
    SM4_vld_out : out STD_LOGIC;
    SM5_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM5_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM5_dir : out STD_LOGIC;
    SM5_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM5_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM5_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM5_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM5_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM5_ramp_up : out STD_LOGIC;
    SM5_ramp_dwn : out STD_LOGIC;
    SM5_spd_chg : out STD_LOGIC;
    SM5_slw_stps : out STD_LOGIC;
    SM5_fst_stps : out STD_LOGIC;
    SM5_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM5_irq_mask : out STD_LOGIC;
    SM5_irq_in : in STD_LOGIC;
    SM5_irq_clr : out STD_LOGIC;
    SM5_vld_in : in STD_LOGIC;
    SM5_vld_out : out STD_LOGIC;
    SM6_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM6_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM6_dir : out STD_LOGIC;
    SM6_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM6_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM6_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM6_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM6_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM6_ramp_up : out STD_LOGIC;
    SM6_ramp_dwn : out STD_LOGIC;
    SM6_spd_chg : out STD_LOGIC;
    SM6_slw_stps : out STD_LOGIC;
    SM6_fst_stps : out STD_LOGIC;
    SM6_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM6_irq_mask : out STD_LOGIC;
    SM6_irq_in : in STD_LOGIC;
    SM6_irq_clr : out STD_LOGIC;
    SM6_vld_in : in STD_LOGIC;
    SM6_vld_out : out STD_LOGIC;
    SM7_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM7_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM7_dir : out STD_LOGIC;
    SM7_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM7_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM7_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM7_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM7_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM7_ramp_up : out STD_LOGIC;
    SM7_ramp_dwn : out STD_LOGIC;
    SM7_spd_chg : out STD_LOGIC;
    SM7_slw_stps : out STD_LOGIC;
    SM7_fst_stps : out STD_LOGIC;
    SM7_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM7_irq_mask : out STD_LOGIC;
    SM7_irq_in : in STD_LOGIC;
    SM7_irq_clr : out STD_LOGIC;
    SM7_vld_in : in STD_LOGIC;
    SM7_vld_out : out STD_LOGIC;
    SM8_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM8_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM8_dir : out STD_LOGIC;
    SM8_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM8_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM8_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM8_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM8_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM8_ramp_up : out STD_LOGIC;
    SM8_ramp_dwn : out STD_LOGIC;
    SM8_spd_chg : out STD_LOGIC;
    SM8_slw_stps : out STD_LOGIC;
    SM8_fst_stps : out STD_LOGIC;
    SM8_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM8_irq_mask : out STD_LOGIC;
    SM8_irq_in : in STD_LOGIC;
    SM8_irq_clr : out STD_LOGIC;
    SM8_vld_in : in STD_LOGIC;
    SM8_vld_out : out STD_LOGIC;
    SM9_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM9_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM9_dir : out STD_LOGIC;
    SM9_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM9_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM9_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM9_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM9_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM9_ramp_up : out STD_LOGIC;
    SM9_ramp_dwn : out STD_LOGIC;
    SM9_spd_chg : out STD_LOGIC;
    SM9_slw_stps : out STD_LOGIC;
    SM9_fst_stps : out STD_LOGIC;
    SM9_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM9_irq_mask : out STD_LOGIC;
    SM9_irq_in : in STD_LOGIC;
    SM9_irq_clr : out STD_LOGIC;
    SM9_vld_in : in STD_LOGIC;
    SM9_vld_out : out STD_LOGIC;
    SM10_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM10_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM10_dir : out STD_LOGIC;
    SM10_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM10_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM10_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM10_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM10_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM10_ramp_up : out STD_LOGIC;
    SM10_ramp_dwn : out STD_LOGIC;
    SM10_spd_chg : out STD_LOGIC;
    SM10_slw_stps : out STD_LOGIC;
    SM10_fst_stps : out STD_LOGIC;
    SM10_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM10_irq_mask : out STD_LOGIC;
    SM10_irq_in : in STD_LOGIC;
    SM10_irq_clr : out STD_LOGIC;
    SM10_vld_in : in STD_LOGIC;
    SM10_vld_out : out STD_LOGIC;
    SM11_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM11_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM11_dir : out STD_LOGIC;
    SM11_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM11_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM11_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM11_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM11_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM11_ramp_up : out STD_LOGIC;
    SM11_ramp_dwn : out STD_LOGIC;
    SM11_spd_chg : out STD_LOGIC;
    SM11_slw_stps : out STD_LOGIC;
    SM11_fst_stps : out STD_LOGIC;
    SM11_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM11_irq_mask : out STD_LOGIC;
    SM11_irq_in : in STD_LOGIC;
    SM11_irq_clr : out STD_LOGIC;
    SM11_vld_in : in STD_LOGIC;
    SM11_vld_out : out STD_LOGIC;
    SM12_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM12_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM12_dir : out STD_LOGIC;
    SM12_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM12_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM12_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM12_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM12_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM12_ramp_up : out STD_LOGIC;
    SM12_ramp_dwn : out STD_LOGIC;
    SM12_spd_chg : out STD_LOGIC;
    SM12_slw_stps : out STD_LOGIC;
    SM12_fst_stps : out STD_LOGIC;
    SM12_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM12_irq_mask : out STD_LOGIC;
    SM12_irq_in : in STD_LOGIC;
    SM12_irq_clr : out STD_LOGIC;
    SM12_vld_in : in STD_LOGIC;
    SM12_vld_out : out STD_LOGIC;
    SM13_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM13_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM13_dir : out STD_LOGIC;
    SM13_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM13_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM13_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM13_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM13_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM13_ramp_up : out STD_LOGIC;
    SM13_ramp_dwn : out STD_LOGIC;
    SM13_spd_chg : out STD_LOGIC;
    SM13_slw_stps : out STD_LOGIC;
    SM13_fst_stps : out STD_LOGIC;
    SM13_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM13_irq_mask : out STD_LOGIC;
    SM13_irq_in : in STD_LOGIC;
    SM13_irq_clr : out STD_LOGIC;
    SM13_vld_in : in STD_LOGIC;
    SM13_vld_out : out STD_LOGIC;
    SM14_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM14_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM14_dir : out STD_LOGIC;
    SM14_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM14_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM14_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM14_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM14_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM14_ramp_up : out STD_LOGIC;
    SM14_ramp_dwn : out STD_LOGIC;
    SM14_spd_chg : out STD_LOGIC;
    SM14_slw_stps : out STD_LOGIC;
    SM14_fst_stps : out STD_LOGIC;
    SM14_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM14_irq_mask : out STD_LOGIC;
    SM14_irq_in : in STD_LOGIC;
    SM14_irq_clr : out STD_LOGIC;
    SM14_vld_in : in STD_LOGIC;
    SM14_vld_out : out STD_LOGIC;
    SM15_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM15_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM15_dir : out STD_LOGIC;
    SM15_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM15_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM15_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM15_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM15_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM15_ramp_up : out STD_LOGIC;
    SM15_ramp_dwn : out STD_LOGIC;
    SM15_spd_chg : out STD_LOGIC;
    SM15_slw_stps : out STD_LOGIC;
    SM15_fst_stps : out STD_LOGIC;
    SM15_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM15_irq_mask : out STD_LOGIC;
    SM15_irq_in : in STD_LOGIC;
    SM15_irq_clr : out STD_LOGIC;
    SM15_vld_in : in STD_LOGIC;
    SM15_vld_out : out STD_LOGIC;
    SM16_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM16_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM16_dir : out STD_LOGIC;
    SM16_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM16_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM16_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM16_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM16_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM16_ramp_up : out STD_LOGIC;
    SM16_ramp_dwn : out STD_LOGIC;
    SM16_spd_chg : out STD_LOGIC;
    SM16_slw_stps : out STD_LOGIC;
    SM16_fst_stps : out STD_LOGIC;
    SM16_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM16_irq_mask : out STD_LOGIC;
    SM16_irq_in : in STD_LOGIC;
    SM16_irq_clr : out STD_LOGIC;
    SM16_vld_in : in STD_LOGIC;
    SM16_vld_out : out STD_LOGIC;
    SM17_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM17_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM17_dir : out STD_LOGIC;
    SM17_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM17_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM17_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM17_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM17_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM17_ramp_up : out STD_LOGIC;
    SM17_ramp_dwn : out STD_LOGIC;
    SM17_spd_chg : out STD_LOGIC;
    SM17_slw_stps : out STD_LOGIC;
    SM17_fst_stps : out STD_LOGIC;
    SM17_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM17_irq_mask : out STD_LOGIC;
    SM17_irq_in : in STD_LOGIC;
    SM17_irq_clr : out STD_LOGIC;
    SM17_vld_in : in STD_LOGIC;
    SM17_vld_out : out STD_LOGIC;
    SM18_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM18_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM18_dir : out STD_LOGIC;
    SM18_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM18_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM18_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM18_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM18_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM18_ramp_up : out STD_LOGIC;
    SM18_ramp_dwn : out STD_LOGIC;
    SM18_spd_chg : out STD_LOGIC;
    SM18_slw_stps : out STD_LOGIC;
    SM18_fst_stps : out STD_LOGIC;
    SM18_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM18_irq_mask : out STD_LOGIC;
    SM18_irq_in : in STD_LOGIC;
    SM18_irq_clr : out STD_LOGIC;
    SM18_vld_in : in STD_LOGIC;
    SM18_vld_out : out STD_LOGIC;
    SM19_tgt_ACC : out STD_LOGIC_VECTOR ( 23 downto 0 );
    SM19_tgt_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM19_dir : out STD_LOGIC;
    SM19_load : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM19_res : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SM19_init_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    SM19_cnt_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SM19_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SM19_ramp_up : out STD_LOGIC;
    SM19_ramp_dwn : out STD_LOGIC;
    SM19_spd_chg : out STD_LOGIC;
    SM19_slw_stps : out STD_LOGIC;
    SM19_fst_stps : out STD_LOGIC;
    SM19_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SM19_irq_mask : out STD_LOGIC;
    SM19_irq_in : in STD_LOGIC;
    SM19_irq_clr : out STD_LOGIC;
    SM19_vld_in : in STD_LOGIC;
    SM19_vld_out : out STD_LOGIC;
    SM_irqs : out STD_LOGIC_VECTOR ( 19 downto 0 );
    SM_irq : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component S7_SM_regs_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SM_alg_server_0_smc_0_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_0_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_0_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_0_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_0_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_0_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_0_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_1_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_1_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_1_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_1_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_1_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_1_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_1_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_2_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_2_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_2_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_2_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_2_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_2_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_2_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_3_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_3_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_3_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_3_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_3_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_3_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_3_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_4_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_4_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_4_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_4_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_4_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_4_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_4_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_5_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_5_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_5_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_5_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_5_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_5_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_5_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_6_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_6_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_6_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_6_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_6_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_6_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_6_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_7_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_7_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_7_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_7_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_7_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_7_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_7_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_8_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_8_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_8_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_8_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_8_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_8_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_8_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_9_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_9_ACK : STD_LOGIC;
  signal SM_alg_server_0_smc_9_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_9_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_0_smc_9_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_0_smc_9_REQ : STD_LOGIC;
  signal SM_alg_server_0_smc_9_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_0_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_0_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_0_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_0_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_0_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_0_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_0_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_1_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_1_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_1_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_1_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_1_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_1_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_1_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_2_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_2_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_2_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_2_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_2_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_2_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_2_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_3_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_3_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_3_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_3_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_3_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_3_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_3_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_4_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_4_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_4_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_4_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_4_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_4_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_4_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_5_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_5_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_5_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_5_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_5_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_5_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_5_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_6_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_6_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_6_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_6_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_6_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_6_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_6_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_7_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_7_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_7_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_7_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_7_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_7_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_7_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_8_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_8_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_8_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_8_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_8_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_8_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_8_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_9_ACC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_9_ACK : STD_LOGIC;
  signal SM_alg_server_1_smc_9_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_9_Next_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_alg_server_1_smc_9_Next_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_alg_server_1_smc_9_REQ : STD_LOGIC;
  signal SM_alg_server_1_smc_9_RM : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal SM_ctrl_11_SM_IO_clk : STD_LOGIC;
  signal SM_ctrl_11_SM_IO_dir : STD_LOGIC;
  signal SM_ctrl_11_SM_IO_ena : STD_LOGIC;
  signal SM_ctrl_11_SM_IO_m1p : STD_LOGIC;
  signal SM_ctrl_11_SM_IO_m2p : STD_LOGIC;
  signal SM_ctrl_11_SM_IO_ref : STD_LOGIC;
  signal SM_ctrl_12_SM_IO_clk : STD_LOGIC;
  signal SM_ctrl_12_SM_IO_dir : STD_LOGIC;
  signal SM_ctrl_12_SM_IO_ena : STD_LOGIC;
  signal SM_ctrl_12_SM_IO_m1p : STD_LOGIC;
  signal SM_ctrl_12_SM_IO_m2p : STD_LOGIC;
  signal SM_ctrl_12_SM_IO_ref : STD_LOGIC;
  signal SM_regs_0_SM0_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM0_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM0_dir : STD_LOGIC;
  signal SM_regs_0_SM0_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM0_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM0_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM0_irq_in : STD_LOGIC;
  signal SM_regs_0_SM0_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM0_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM0_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM0_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM0_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM0_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM0_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM0_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM0_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM0_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM0_vld_in : STD_LOGIC;
  signal SM_regs_0_SM0_vld_out : STD_LOGIC;
  signal SM_regs_0_SM10_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM10_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM10_dir : STD_LOGIC;
  signal SM_regs_0_SM10_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM10_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM10_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM10_irq_in : STD_LOGIC;
  signal SM_regs_0_SM10_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM10_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM10_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM10_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM10_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM10_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM10_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM10_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM10_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM10_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM10_vld_in : STD_LOGIC;
  signal SM_regs_0_SM10_vld_out : STD_LOGIC;
  signal SM_regs_0_SM11_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM11_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM11_dir : STD_LOGIC;
  signal SM_regs_0_SM11_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM11_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM11_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM11_irq_in : STD_LOGIC;
  signal SM_regs_0_SM11_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM11_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM11_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM11_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM11_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM11_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM11_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM11_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM11_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM11_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM11_vld_in : STD_LOGIC;
  signal SM_regs_0_SM11_vld_out : STD_LOGIC;
  signal SM_regs_0_SM12_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM12_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM12_dir : STD_LOGIC;
  signal SM_regs_0_SM12_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM12_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM12_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM12_irq_in : STD_LOGIC;
  signal SM_regs_0_SM12_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM12_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM12_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM12_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM12_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM12_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM12_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM12_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM12_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM12_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM12_vld_in : STD_LOGIC;
  signal SM_regs_0_SM12_vld_out : STD_LOGIC;
  signal SM_regs_0_SM13_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM13_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM13_dir : STD_LOGIC;
  signal SM_regs_0_SM13_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM13_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM13_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM13_irq_in : STD_LOGIC;
  signal SM_regs_0_SM13_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM13_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM13_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM13_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM13_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM13_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM13_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM13_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM13_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM13_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM13_vld_in : STD_LOGIC;
  signal SM_regs_0_SM13_vld_out : STD_LOGIC;
  signal SM_regs_0_SM14_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM14_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM14_dir : STD_LOGIC;
  signal SM_regs_0_SM14_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM14_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM14_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM14_irq_in : STD_LOGIC;
  signal SM_regs_0_SM14_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM14_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM14_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM14_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM14_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM14_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM14_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM14_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM14_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM14_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM14_vld_in : STD_LOGIC;
  signal SM_regs_0_SM14_vld_out : STD_LOGIC;
  signal SM_regs_0_SM15_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM15_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM15_dir : STD_LOGIC;
  signal SM_regs_0_SM15_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM15_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM15_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM15_irq_in : STD_LOGIC;
  signal SM_regs_0_SM15_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM15_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM15_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM15_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM15_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM15_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM15_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM15_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM15_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM15_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM15_vld_in : STD_LOGIC;
  signal SM_regs_0_SM15_vld_out : STD_LOGIC;
  signal SM_regs_0_SM16_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM16_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM16_dir : STD_LOGIC;
  signal SM_regs_0_SM16_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM16_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM16_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM16_irq_in : STD_LOGIC;
  signal SM_regs_0_SM16_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM16_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM16_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM16_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM16_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM16_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM16_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM16_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM16_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM16_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM16_vld_in : STD_LOGIC;
  signal SM_regs_0_SM16_vld_out : STD_LOGIC;
  signal SM_regs_0_SM17_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM17_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM17_dir : STD_LOGIC;
  signal SM_regs_0_SM17_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM17_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM17_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM17_irq_in : STD_LOGIC;
  signal SM_regs_0_SM17_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM17_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM17_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM17_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM17_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM17_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM17_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM17_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM17_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM17_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM17_vld_in : STD_LOGIC;
  signal SM_regs_0_SM17_vld_out : STD_LOGIC;
  signal SM_regs_0_SM18_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM18_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM18_dir : STD_LOGIC;
  signal SM_regs_0_SM18_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM18_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM18_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM18_irq_in : STD_LOGIC;
  signal SM_regs_0_SM18_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM18_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM18_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM18_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM18_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM18_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM18_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM18_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM18_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM18_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM18_vld_in : STD_LOGIC;
  signal SM_regs_0_SM18_vld_out : STD_LOGIC;
  signal SM_regs_0_SM19_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM19_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM19_dir : STD_LOGIC;
  signal SM_regs_0_SM19_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM19_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM19_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM19_irq_in : STD_LOGIC;
  signal SM_regs_0_SM19_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM19_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM19_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM19_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM19_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM19_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM19_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM19_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM19_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM19_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM19_vld_in : STD_LOGIC;
  signal SM_regs_0_SM19_vld_out : STD_LOGIC;
  signal SM_regs_0_SM1_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM1_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM1_dir : STD_LOGIC;
  signal SM_regs_0_SM1_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM1_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM1_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM1_irq_in : STD_LOGIC;
  signal SM_regs_0_SM1_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM1_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM1_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM1_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM1_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM1_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM1_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM1_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM1_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM1_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM1_vld_in : STD_LOGIC;
  signal SM_regs_0_SM1_vld_out : STD_LOGIC;
  signal SM_regs_0_SM2_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM2_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM2_dir : STD_LOGIC;
  signal SM_regs_0_SM2_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM2_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM2_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM2_irq_in : STD_LOGIC;
  signal SM_regs_0_SM2_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM2_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM2_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM2_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM2_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM2_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM2_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM2_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM2_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM2_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM2_vld_in : STD_LOGIC;
  signal SM_regs_0_SM2_vld_out : STD_LOGIC;
  signal SM_regs_0_SM3_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM3_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM3_dir : STD_LOGIC;
  signal SM_regs_0_SM3_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM3_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM3_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM3_irq_in : STD_LOGIC;
  signal SM_regs_0_SM3_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM3_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM3_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM3_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM3_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM3_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM3_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM3_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM3_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM3_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM3_vld_in : STD_LOGIC;
  signal SM_regs_0_SM3_vld_out : STD_LOGIC;
  signal SM_regs_0_SM4_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM4_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM4_dir : STD_LOGIC;
  signal SM_regs_0_SM4_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM4_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM4_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM4_irq_in : STD_LOGIC;
  signal SM_regs_0_SM4_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM4_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM4_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM4_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM4_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM4_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM4_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM4_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM4_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM4_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM4_vld_in : STD_LOGIC;
  signal SM_regs_0_SM4_vld_out : STD_LOGIC;
  signal SM_regs_0_SM5_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM5_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM5_dir : STD_LOGIC;
  signal SM_regs_0_SM5_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM5_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM5_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM5_irq_in : STD_LOGIC;
  signal SM_regs_0_SM5_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM5_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM5_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM5_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM5_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM5_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM5_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM5_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM5_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM5_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM5_vld_in : STD_LOGIC;
  signal SM_regs_0_SM5_vld_out : STD_LOGIC;
  signal SM_regs_0_SM6_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM6_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM6_dir : STD_LOGIC;
  signal SM_regs_0_SM6_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM6_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM6_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM6_irq_in : STD_LOGIC;
  signal SM_regs_0_SM6_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM6_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM6_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM6_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM6_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM6_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM6_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM6_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM6_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM6_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM6_vld_in : STD_LOGIC;
  signal SM_regs_0_SM6_vld_out : STD_LOGIC;
  signal SM_regs_0_SM7_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM7_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM7_dir : STD_LOGIC;
  signal SM_regs_0_SM7_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM7_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM7_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM7_irq_in : STD_LOGIC;
  signal SM_regs_0_SM7_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM7_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM7_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM7_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM7_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM7_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM7_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM7_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM7_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM7_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM7_vld_in : STD_LOGIC;
  signal SM_regs_0_SM7_vld_out : STD_LOGIC;
  signal SM_regs_0_SM8_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM8_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM8_dir : STD_LOGIC;
  signal SM_regs_0_SM8_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM8_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM8_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM8_irq_in : STD_LOGIC;
  signal SM_regs_0_SM8_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM8_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM8_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM8_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM8_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM8_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM8_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM8_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM8_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM8_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM8_vld_in : STD_LOGIC;
  signal SM_regs_0_SM8_vld_out : STD_LOGIC;
  signal SM_regs_0_SM9_cnt_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM9_cnt_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SM_regs_0_SM9_dir : STD_LOGIC;
  signal SM_regs_0_SM9_fst_stps : STD_LOGIC;
  signal SM_regs_0_SM9_init_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM9_irq_clr : STD_LOGIC;
  signal SM_regs_0_SM9_irq_in : STD_LOGIC;
  signal SM_regs_0_SM9_irq_mask : STD_LOGIC;
  signal SM_regs_0_SM9_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM9_ramp_dwn : STD_LOGIC;
  signal SM_regs_0_SM9_ramp_up : STD_LOGIC;
  signal SM_regs_0_SM9_res : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM9_running : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SM_regs_0_SM9_slw_stps : STD_LOGIC;
  signal SM_regs_0_SM9_spd_chg : STD_LOGIC;
  signal SM_regs_0_SM9_tgt_ACC : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal SM_regs_0_SM9_tgt_EC : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal SM_regs_0_SM9_vld_in : STD_LOGIC;
  signal SM_regs_0_SM9_vld_out : STD_LOGIC;
  signal SM_regs_0_SM_irq : STD_LOGIC;
  signal SM_regs_0_SM_irqs : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal s00_axi_aclk_0_1 : STD_LOGIC;
  signal s00_axi_aresetn_0_1 : STD_LOGIC;
  signal NLW_SM_ctrl_0_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_0_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_0_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_0_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_0_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_0_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_1_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_1_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_1_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_1_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_1_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_1_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_10_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_10_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_10_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_10_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_10_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_10_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_11_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_11_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_11_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_11_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_11_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_11_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_12_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_12_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_12_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_12_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_12_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_12_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_13_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_13_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_13_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_13_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_13_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_13_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_14_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_14_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_14_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_14_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_14_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_14_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_15_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_15_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_15_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_15_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_15_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_15_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_16_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_16_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_16_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_16_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_16_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_16_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_17_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_17_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_17_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_17_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_17_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_17_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_18_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_18_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_18_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_18_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_18_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_18_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_19_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_19_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_19_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_19_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_19_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_19_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_2_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_2_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_2_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_2_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_2_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_2_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_3_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_3_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_3_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_3_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_3_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_3_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_4_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_4_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_4_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_4_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_4_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_4_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_5_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_5_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_5_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_5_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_5_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_5_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_6_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_6_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_6_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_6_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_6_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_6_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_7_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_7_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_7_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_7_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_7_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_7_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_8_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_8_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_8_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_8_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_8_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_8_dbg_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_9_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_9_dbg_dir_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_9_dbg_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_9_dbg_m1P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_9_dbg_m2P_UNCONNECTED : STD_LOGIC;
  signal NLW_SM_ctrl_9_dbg_ref_UNCONNECTED : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn1_ARVALID(0) <= S00_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn1_AWVALID(0) <= S00_AXI_awvalid(0);
  Conn1_BREADY(0) <= S00_AXI_bready(0);
  Conn1_RREADY(0) <= S00_AXI_rready(0);
  Conn1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= S00_AXI_wvalid(0);
  S00_AXI_arready(0) <= Conn1_ARREADY;
  S00_AXI_awready(0) <= Conn1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= Conn1_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= Conn1_RVALID;
  S00_AXI_wready(0) <= Conn1_WREADY;
  SM11_clk <= SM_ctrl_11_SM_IO_clk;
  SM11_dir <= SM_ctrl_11_SM_IO_dir;
  SM11_ena <= SM_ctrl_11_SM_IO_ena;
  SM11_m1p <= SM_ctrl_11_SM_IO_m1p;
  SM11_m2p <= SM_ctrl_11_SM_IO_m2p;
  SM11_ref <= SM_ctrl_11_SM_IO_ref;
  SM12_clk <= SM_ctrl_12_SM_IO_clk;
  SM12_dir <= SM_ctrl_12_SM_IO_dir;
  SM12_ena <= SM_ctrl_12_SM_IO_ena;
  SM12_m1p <= SM_ctrl_12_SM_IO_m1p;
  SM12_m2p <= SM_ctrl_12_SM_IO_m2p;
  SM12_ref <= SM_ctrl_12_SM_IO_ref;
  SM_irq <= SM_regs_0_SM_irq;
  SM_irqs(19 downto 0) <= SM_regs_0_SM_irqs(19 downto 0);
  s00_axi_aclk_0_1 <= s00_axi_aclk;
  s00_axi_aresetn_0_1 <= s00_axi_aresetn;
SM_alg_server_0: component S7_SM_alg_server_0_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      smc_0_ACC(21 downto 0) => SM_alg_server_0_smc_0_ACC(21 downto 0),
      smc_0_EC(21 downto 0) => SM_alg_server_0_smc_0_EC(21 downto 0),
      smc_0_Next_EC(21 downto 0) => SM_alg_server_0_smc_0_Next_EC(21 downto 0),
      smc_0_Next_RM(15 downto 0) => SM_alg_server_0_smc_0_Next_RM(15 downto 0),
      smc_0_RM(15 downto 0) => SM_alg_server_0_smc_0_RM(15 downto 0),
      smc_0_ack => SM_alg_server_0_smc_0_ACK,
      smc_0_req => SM_alg_server_0_smc_0_REQ,
      smc_1_ACC(21 downto 0) => SM_alg_server_0_smc_1_ACC(21 downto 0),
      smc_1_EC(21 downto 0) => SM_alg_server_0_smc_1_EC(21 downto 0),
      smc_1_Next_EC(21 downto 0) => SM_alg_server_0_smc_1_Next_EC(21 downto 0),
      smc_1_Next_RM(15 downto 0) => SM_alg_server_0_smc_1_Next_RM(15 downto 0),
      smc_1_RM(15 downto 0) => SM_alg_server_0_smc_1_RM(15 downto 0),
      smc_1_ack => SM_alg_server_0_smc_1_ACK,
      smc_1_req => SM_alg_server_0_smc_1_REQ,
      smc_2_ACC(21 downto 0) => SM_alg_server_0_smc_2_ACC(21 downto 0),
      smc_2_EC(21 downto 0) => SM_alg_server_0_smc_2_EC(21 downto 0),
      smc_2_Next_EC(21 downto 0) => SM_alg_server_0_smc_2_Next_EC(21 downto 0),
      smc_2_Next_RM(15 downto 0) => SM_alg_server_0_smc_2_Next_RM(15 downto 0),
      smc_2_RM(15 downto 0) => SM_alg_server_0_smc_2_RM(15 downto 0),
      smc_2_ack => SM_alg_server_0_smc_2_ACK,
      smc_2_req => SM_alg_server_0_smc_2_REQ,
      smc_3_ACC(21 downto 0) => SM_alg_server_0_smc_3_ACC(21 downto 0),
      smc_3_EC(21 downto 0) => SM_alg_server_0_smc_3_EC(21 downto 0),
      smc_3_Next_EC(21 downto 0) => SM_alg_server_0_smc_3_Next_EC(21 downto 0),
      smc_3_Next_RM(15 downto 0) => SM_alg_server_0_smc_3_Next_RM(15 downto 0),
      smc_3_RM(15 downto 0) => SM_alg_server_0_smc_3_RM(15 downto 0),
      smc_3_ack => SM_alg_server_0_smc_3_ACK,
      smc_3_req => SM_alg_server_0_smc_3_REQ,
      smc_4_ACC(21 downto 0) => SM_alg_server_0_smc_4_ACC(21 downto 0),
      smc_4_EC(21 downto 0) => SM_alg_server_0_smc_4_EC(21 downto 0),
      smc_4_Next_EC(21 downto 0) => SM_alg_server_0_smc_4_Next_EC(21 downto 0),
      smc_4_Next_RM(15 downto 0) => SM_alg_server_0_smc_4_Next_RM(15 downto 0),
      smc_4_RM(15 downto 0) => SM_alg_server_0_smc_4_RM(15 downto 0),
      smc_4_ack => SM_alg_server_0_smc_4_ACK,
      smc_4_req => SM_alg_server_0_smc_4_REQ,
      smc_5_ACC(21 downto 0) => SM_alg_server_0_smc_5_ACC(21 downto 0),
      smc_5_EC(21 downto 0) => SM_alg_server_0_smc_5_EC(21 downto 0),
      smc_5_Next_EC(21 downto 0) => SM_alg_server_0_smc_5_Next_EC(21 downto 0),
      smc_5_Next_RM(15 downto 0) => SM_alg_server_0_smc_5_Next_RM(15 downto 0),
      smc_5_RM(15 downto 0) => SM_alg_server_0_smc_5_RM(15 downto 0),
      smc_5_ack => SM_alg_server_0_smc_5_ACK,
      smc_5_req => SM_alg_server_0_smc_5_REQ,
      smc_6_ACC(21 downto 0) => SM_alg_server_0_smc_6_ACC(21 downto 0),
      smc_6_EC(21 downto 0) => SM_alg_server_0_smc_6_EC(21 downto 0),
      smc_6_Next_EC(21 downto 0) => SM_alg_server_0_smc_6_Next_EC(21 downto 0),
      smc_6_Next_RM(15 downto 0) => SM_alg_server_0_smc_6_Next_RM(15 downto 0),
      smc_6_RM(15 downto 0) => SM_alg_server_0_smc_6_RM(15 downto 0),
      smc_6_ack => SM_alg_server_0_smc_6_ACK,
      smc_6_req => SM_alg_server_0_smc_6_REQ,
      smc_7_ACC(21 downto 0) => SM_alg_server_0_smc_7_ACC(21 downto 0),
      smc_7_EC(21 downto 0) => SM_alg_server_0_smc_7_EC(21 downto 0),
      smc_7_Next_EC(21 downto 0) => SM_alg_server_0_smc_7_Next_EC(21 downto 0),
      smc_7_Next_RM(15 downto 0) => SM_alg_server_0_smc_7_Next_RM(15 downto 0),
      smc_7_RM(15 downto 0) => SM_alg_server_0_smc_7_RM(15 downto 0),
      smc_7_ack => SM_alg_server_0_smc_7_ACK,
      smc_7_req => SM_alg_server_0_smc_7_REQ,
      smc_8_ACC(21 downto 0) => SM_alg_server_0_smc_8_ACC(21 downto 0),
      smc_8_EC(21 downto 0) => SM_alg_server_0_smc_8_EC(21 downto 0),
      smc_8_Next_EC(21 downto 0) => SM_alg_server_0_smc_8_Next_EC(21 downto 0),
      smc_8_Next_RM(15 downto 0) => SM_alg_server_0_smc_8_Next_RM(15 downto 0),
      smc_8_RM(15 downto 0) => SM_alg_server_0_smc_8_RM(15 downto 0),
      smc_8_ack => SM_alg_server_0_smc_8_ACK,
      smc_8_req => SM_alg_server_0_smc_8_REQ,
      smc_9_ACC(21 downto 0) => SM_alg_server_0_smc_9_ACC(21 downto 0),
      smc_9_EC(21 downto 0) => SM_alg_server_0_smc_9_EC(21 downto 0),
      smc_9_Next_EC(21 downto 0) => SM_alg_server_0_smc_9_Next_EC(21 downto 0),
      smc_9_Next_RM(15 downto 0) => SM_alg_server_0_smc_9_Next_RM(15 downto 0),
      smc_9_RM(15 downto 0) => SM_alg_server_0_smc_9_RM(15 downto 0),
      smc_9_ack => SM_alg_server_0_smc_9_ACK,
      smc_9_req => SM_alg_server_0_smc_9_REQ
    );
SM_alg_server_1: component S7_SM_alg_server_1_1
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      smc_0_ACC(21 downto 0) => SM_alg_server_1_smc_0_ACC(21 downto 0),
      smc_0_EC(21 downto 0) => SM_alg_server_1_smc_0_EC(21 downto 0),
      smc_0_Next_EC(21 downto 0) => SM_alg_server_1_smc_0_Next_EC(21 downto 0),
      smc_0_Next_RM(15 downto 0) => SM_alg_server_1_smc_0_Next_RM(15 downto 0),
      smc_0_RM(15 downto 0) => SM_alg_server_1_smc_0_RM(15 downto 0),
      smc_0_ack => SM_alg_server_1_smc_0_ACK,
      smc_0_req => SM_alg_server_1_smc_0_REQ,
      smc_1_ACC(21 downto 0) => SM_alg_server_1_smc_1_ACC(21 downto 0),
      smc_1_EC(21 downto 0) => SM_alg_server_1_smc_1_EC(21 downto 0),
      smc_1_Next_EC(21 downto 0) => SM_alg_server_1_smc_1_Next_EC(21 downto 0),
      smc_1_Next_RM(15 downto 0) => SM_alg_server_1_smc_1_Next_RM(15 downto 0),
      smc_1_RM(15 downto 0) => SM_alg_server_1_smc_1_RM(15 downto 0),
      smc_1_ack => SM_alg_server_1_smc_1_ACK,
      smc_1_req => SM_alg_server_1_smc_1_REQ,
      smc_2_ACC(21 downto 0) => SM_alg_server_1_smc_2_ACC(21 downto 0),
      smc_2_EC(21 downto 0) => SM_alg_server_1_smc_2_EC(21 downto 0),
      smc_2_Next_EC(21 downto 0) => SM_alg_server_1_smc_2_Next_EC(21 downto 0),
      smc_2_Next_RM(15 downto 0) => SM_alg_server_1_smc_2_Next_RM(15 downto 0),
      smc_2_RM(15 downto 0) => SM_alg_server_1_smc_2_RM(15 downto 0),
      smc_2_ack => SM_alg_server_1_smc_2_ACK,
      smc_2_req => SM_alg_server_1_smc_2_REQ,
      smc_3_ACC(21 downto 0) => SM_alg_server_1_smc_3_ACC(21 downto 0),
      smc_3_EC(21 downto 0) => SM_alg_server_1_smc_3_EC(21 downto 0),
      smc_3_Next_EC(21 downto 0) => SM_alg_server_1_smc_3_Next_EC(21 downto 0),
      smc_3_Next_RM(15 downto 0) => SM_alg_server_1_smc_3_Next_RM(15 downto 0),
      smc_3_RM(15 downto 0) => SM_alg_server_1_smc_3_RM(15 downto 0),
      smc_3_ack => SM_alg_server_1_smc_3_ACK,
      smc_3_req => SM_alg_server_1_smc_3_REQ,
      smc_4_ACC(21 downto 0) => SM_alg_server_1_smc_4_ACC(21 downto 0),
      smc_4_EC(21 downto 0) => SM_alg_server_1_smc_4_EC(21 downto 0),
      smc_4_Next_EC(21 downto 0) => SM_alg_server_1_smc_4_Next_EC(21 downto 0),
      smc_4_Next_RM(15 downto 0) => SM_alg_server_1_smc_4_Next_RM(15 downto 0),
      smc_4_RM(15 downto 0) => SM_alg_server_1_smc_4_RM(15 downto 0),
      smc_4_ack => SM_alg_server_1_smc_4_ACK,
      smc_4_req => SM_alg_server_1_smc_4_REQ,
      smc_5_ACC(21 downto 0) => SM_alg_server_1_smc_5_ACC(21 downto 0),
      smc_5_EC(21 downto 0) => SM_alg_server_1_smc_5_EC(21 downto 0),
      smc_5_Next_EC(21 downto 0) => SM_alg_server_1_smc_5_Next_EC(21 downto 0),
      smc_5_Next_RM(15 downto 0) => SM_alg_server_1_smc_5_Next_RM(15 downto 0),
      smc_5_RM(15 downto 0) => SM_alg_server_1_smc_5_RM(15 downto 0),
      smc_5_ack => SM_alg_server_1_smc_5_ACK,
      smc_5_req => SM_alg_server_1_smc_5_REQ,
      smc_6_ACC(21 downto 0) => SM_alg_server_1_smc_6_ACC(21 downto 0),
      smc_6_EC(21 downto 0) => SM_alg_server_1_smc_6_EC(21 downto 0),
      smc_6_Next_EC(21 downto 0) => SM_alg_server_1_smc_6_Next_EC(21 downto 0),
      smc_6_Next_RM(15 downto 0) => SM_alg_server_1_smc_6_Next_RM(15 downto 0),
      smc_6_RM(15 downto 0) => SM_alg_server_1_smc_6_RM(15 downto 0),
      smc_6_ack => SM_alg_server_1_smc_6_ACK,
      smc_6_req => SM_alg_server_1_smc_6_REQ,
      smc_7_ACC(21 downto 0) => SM_alg_server_1_smc_7_ACC(21 downto 0),
      smc_7_EC(21 downto 0) => SM_alg_server_1_smc_7_EC(21 downto 0),
      smc_7_Next_EC(21 downto 0) => SM_alg_server_1_smc_7_Next_EC(21 downto 0),
      smc_7_Next_RM(15 downto 0) => SM_alg_server_1_smc_7_Next_RM(15 downto 0),
      smc_7_RM(15 downto 0) => SM_alg_server_1_smc_7_RM(15 downto 0),
      smc_7_ack => SM_alg_server_1_smc_7_ACK,
      smc_7_req => SM_alg_server_1_smc_7_REQ,
      smc_8_ACC(21 downto 0) => SM_alg_server_1_smc_8_ACC(21 downto 0),
      smc_8_EC(21 downto 0) => SM_alg_server_1_smc_8_EC(21 downto 0),
      smc_8_Next_EC(21 downto 0) => SM_alg_server_1_smc_8_Next_EC(21 downto 0),
      smc_8_Next_RM(15 downto 0) => SM_alg_server_1_smc_8_Next_RM(15 downto 0),
      smc_8_RM(15 downto 0) => SM_alg_server_1_smc_8_RM(15 downto 0),
      smc_8_ack => SM_alg_server_1_smc_8_ACK,
      smc_8_req => SM_alg_server_1_smc_8_REQ,
      smc_9_ACC(21 downto 0) => SM_alg_server_1_smc_9_ACC(21 downto 0),
      smc_9_EC(21 downto 0) => SM_alg_server_1_smc_9_EC(21 downto 0),
      smc_9_Next_EC(21 downto 0) => SM_alg_server_1_smc_9_Next_EC(21 downto 0),
      smc_9_Next_RM(15 downto 0) => SM_alg_server_1_smc_9_Next_RM(15 downto 0),
      smc_9_RM(15 downto 0) => SM_alg_server_1_smc_9_RM(15 downto 0),
      smc_9_ack => SM_alg_server_1_smc_9_ACK,
      smc_9_req => SM_alg_server_1_smc_9_REQ
    );
SM_ctrl_0: component S7_SM_ctrl_0_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM0_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM0_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_0_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_0_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_0_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_0_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_0_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_0_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM0_dir,
      ena_load(1 downto 0) => SM_regs_0_SM0_load(1 downto 0),
      fst_stps => SM_regs_0_SM0_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM0_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM0_irq_clr,
      irq_in => SM_regs_0_SM0_irq_in,
      irq_mask => SM_regs_0_SM0_irq_mask,
      port_clk => SM0_clk,
      port_dir => SM0_dir,
      port_ena => SM0_ena,
      port_m1P => SM0_m1p,
      port_m2P => SM0_m2p,
      port_ref => SM0_ref,
      ramp_dwn => SM_regs_0_SM0_ramp_dwn,
      ramp_up => SM_regs_0_SM0_ramp_up,
      res(1 downto 0) => SM_regs_0_SM0_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM0_running(1 downto 0),
      slw_stps => SM_regs_0_SM0_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_0_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_0_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_0_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_0_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_0_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_0_ACK,
      smc_req => SM_alg_server_0_smc_0_REQ,
      spd_chg => SM_regs_0_SM0_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM0_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM0_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM0_vld_in,
      vld_out => SM_regs_0_SM0_vld_out
    );
SM_ctrl_1: component S7_SM_ctrl_1_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM1_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM1_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_1_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_1_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_1_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_1_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_1_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_1_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM1_dir,
      ena_load(1 downto 0) => SM_regs_0_SM1_load(1 downto 0),
      fst_stps => SM_regs_0_SM1_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM1_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM1_irq_clr,
      irq_in => SM_regs_0_SM1_irq_in,
      irq_mask => SM_regs_0_SM1_irq_mask,
      port_clk => SM1_clk,
      port_dir => SM1_dir,
      port_ena => SM1_ena,
      port_m1P => SM1_m1p,
      port_m2P => SM1_m2p,
      port_ref => SM1_ref,
      ramp_dwn => SM_regs_0_SM1_ramp_dwn,
      ramp_up => SM_regs_0_SM1_ramp_up,
      res(1 downto 0) => SM_regs_0_SM1_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM1_running(1 downto 0),
      slw_stps => SM_regs_0_SM1_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_1_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_1_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_1_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_1_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_1_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_1_ACK,
      smc_req => SM_alg_server_0_smc_1_REQ,
      spd_chg => SM_regs_0_SM1_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM1_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM1_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM1_vld_in,
      vld_out => SM_regs_0_SM1_vld_out
    );
SM_ctrl_10: component S7_SM_ctrl_10_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM10_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM10_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_10_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_10_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_10_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_10_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_10_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_10_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM10_dir,
      ena_load(1 downto 0) => SM_regs_0_SM10_load(1 downto 0),
      fst_stps => SM_regs_0_SM10_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM10_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM10_irq_clr,
      irq_in => SM_regs_0_SM10_irq_in,
      irq_mask => SM_regs_0_SM10_irq_mask,
      port_clk => SM10_clk,
      port_dir => SM10_dir,
      port_ena => SM10_ena,
      port_m1P => SM10_m1p,
      port_m2P => SM10_m2p,
      port_ref => SM10_ref,
      ramp_dwn => SM_regs_0_SM10_ramp_dwn,
      ramp_up => SM_regs_0_SM10_ramp_up,
      res(1 downto 0) => SM_regs_0_SM10_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM10_running(1 downto 0),
      slw_stps => SM_regs_0_SM10_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_0_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_0_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_0_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_0_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_0_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_0_ACK,
      smc_req => SM_alg_server_1_smc_0_REQ,
      spd_chg => SM_regs_0_SM10_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM10_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM10_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM10_vld_in,
      vld_out => SM_regs_0_SM10_vld_out
    );
SM_ctrl_11: component S7_SM_ctrl_11_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM11_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM11_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_11_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_11_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_11_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_11_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_11_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_11_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM11_dir,
      ena_load(1 downto 0) => SM_regs_0_SM11_load(1 downto 0),
      fst_stps => SM_regs_0_SM11_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM11_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM11_irq_clr,
      irq_in => SM_regs_0_SM11_irq_in,
      irq_mask => SM_regs_0_SM11_irq_mask,
      port_clk => SM_ctrl_11_SM_IO_clk,
      port_dir => SM_ctrl_11_SM_IO_dir,
      port_ena => SM_ctrl_11_SM_IO_ena,
      port_m1P => SM_ctrl_11_SM_IO_m1p,
      port_m2P => SM_ctrl_11_SM_IO_m2p,
      port_ref => SM_ctrl_11_SM_IO_ref,
      ramp_dwn => SM_regs_0_SM11_ramp_dwn,
      ramp_up => SM_regs_0_SM11_ramp_up,
      res(1 downto 0) => SM_regs_0_SM11_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM11_running(1 downto 0),
      slw_stps => SM_regs_0_SM11_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_1_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_1_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_1_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_1_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_1_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_1_ACK,
      smc_req => SM_alg_server_1_smc_1_REQ,
      spd_chg => SM_regs_0_SM11_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM11_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM11_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM11_vld_in,
      vld_out => SM_regs_0_SM11_vld_out
    );
SM_ctrl_12: component S7_SM_ctrl_12_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM12_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM12_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_12_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_12_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_12_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_12_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_12_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_12_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM12_dir,
      ena_load(1 downto 0) => SM_regs_0_SM12_load(1 downto 0),
      fst_stps => SM_regs_0_SM12_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM12_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM12_irq_clr,
      irq_in => SM_regs_0_SM12_irq_in,
      irq_mask => SM_regs_0_SM12_irq_mask,
      port_clk => SM_ctrl_12_SM_IO_clk,
      port_dir => SM_ctrl_12_SM_IO_dir,
      port_ena => SM_ctrl_12_SM_IO_ena,
      port_m1P => SM_ctrl_12_SM_IO_m1p,
      port_m2P => SM_ctrl_12_SM_IO_m2p,
      port_ref => SM_ctrl_12_SM_IO_ref,
      ramp_dwn => SM_regs_0_SM12_ramp_dwn,
      ramp_up => SM_regs_0_SM12_ramp_up,
      res(1 downto 0) => SM_regs_0_SM12_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM12_running(1 downto 0),
      slw_stps => SM_regs_0_SM12_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_2_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_2_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_2_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_2_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_2_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_2_ACK,
      smc_req => SM_alg_server_1_smc_2_REQ,
      spd_chg => SM_regs_0_SM12_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM12_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM12_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM12_vld_in,
      vld_out => SM_regs_0_SM12_vld_out
    );
SM_ctrl_13: component S7_SM_ctrl_13_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM13_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM13_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_13_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_13_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_13_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_13_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_13_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_13_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM13_dir,
      ena_load(1 downto 0) => SM_regs_0_SM13_load(1 downto 0),
      fst_stps => SM_regs_0_SM13_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM13_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM13_irq_clr,
      irq_in => SM_regs_0_SM13_irq_in,
      irq_mask => SM_regs_0_SM13_irq_mask,
      port_clk => SM13_clk,
      port_dir => SM13_dir,
      port_ena => SM13_ena,
      port_m1P => SM13_m1p,
      port_m2P => SM13_m2p,
      port_ref => SM13_ref,
      ramp_dwn => SM_regs_0_SM13_ramp_dwn,
      ramp_up => SM_regs_0_SM13_ramp_up,
      res(1 downto 0) => SM_regs_0_SM13_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM13_running(1 downto 0),
      slw_stps => SM_regs_0_SM13_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_3_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_3_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_3_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_3_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_3_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_3_ACK,
      smc_req => SM_alg_server_1_smc_3_REQ,
      spd_chg => SM_regs_0_SM13_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM13_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM13_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM13_vld_in,
      vld_out => SM_regs_0_SM13_vld_out
    );
SM_ctrl_14: component S7_SM_ctrl_14_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM14_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM14_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_14_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_14_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_14_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_14_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_14_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_14_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM14_dir,
      ena_load(1 downto 0) => SM_regs_0_SM14_load(1 downto 0),
      fst_stps => SM_regs_0_SM14_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM14_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM14_irq_clr,
      irq_in => SM_regs_0_SM14_irq_in,
      irq_mask => SM_regs_0_SM14_irq_mask,
      port_clk => SM14_clk,
      port_dir => SM14_dir,
      port_ena => SM14_ena,
      port_m1P => SM14_m1p,
      port_m2P => SM14_m2p,
      port_ref => SM14_ref,
      ramp_dwn => SM_regs_0_SM14_ramp_dwn,
      ramp_up => SM_regs_0_SM14_ramp_up,
      res(1 downto 0) => SM_regs_0_SM14_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM14_running(1 downto 0),
      slw_stps => SM_regs_0_SM14_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_4_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_4_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_4_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_4_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_4_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_4_ACK,
      smc_req => SM_alg_server_1_smc_4_REQ,
      spd_chg => SM_regs_0_SM14_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM14_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM14_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM14_vld_in,
      vld_out => SM_regs_0_SM14_vld_out
    );
SM_ctrl_15: component S7_SM_ctrl_15_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM15_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM15_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_15_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_15_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_15_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_15_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_15_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_15_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM15_dir,
      ena_load(1 downto 0) => SM_regs_0_SM15_load(1 downto 0),
      fst_stps => SM_regs_0_SM15_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM15_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM15_irq_clr,
      irq_in => SM_regs_0_SM15_irq_in,
      irq_mask => SM_regs_0_SM15_irq_mask,
      port_clk => SM15_clk,
      port_dir => SM15_dir,
      port_ena => SM15_ena,
      port_m1P => SM15_m1p,
      port_m2P => SM15_m2p,
      port_ref => SM15_ref,
      ramp_dwn => SM_regs_0_SM15_ramp_dwn,
      ramp_up => SM_regs_0_SM15_ramp_up,
      res(1 downto 0) => SM_regs_0_SM15_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM15_running(1 downto 0),
      slw_stps => SM_regs_0_SM15_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_5_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_5_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_5_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_5_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_5_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_5_ACK,
      smc_req => SM_alg_server_1_smc_5_REQ,
      spd_chg => SM_regs_0_SM15_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM15_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM15_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM15_vld_in,
      vld_out => SM_regs_0_SM15_vld_out
    );
SM_ctrl_16: component S7_SM_ctrl_16_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM16_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM16_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_16_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_16_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_16_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_16_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_16_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_16_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM16_dir,
      ena_load(1 downto 0) => SM_regs_0_SM16_load(1 downto 0),
      fst_stps => SM_regs_0_SM16_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM16_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM16_irq_clr,
      irq_in => SM_regs_0_SM16_irq_in,
      irq_mask => SM_regs_0_SM16_irq_mask,
      port_clk => SM16_clk,
      port_dir => SM16_dir,
      port_ena => SM16_ena,
      port_m1P => SM16_m1p,
      port_m2P => SM16_m2p,
      port_ref => SM16_ref,
      ramp_dwn => SM_regs_0_SM16_ramp_dwn,
      ramp_up => SM_regs_0_SM16_ramp_up,
      res(1 downto 0) => SM_regs_0_SM16_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM16_running(1 downto 0),
      slw_stps => SM_regs_0_SM16_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_6_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_6_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_6_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_6_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_6_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_6_ACK,
      smc_req => SM_alg_server_1_smc_6_REQ,
      spd_chg => SM_regs_0_SM16_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM16_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM16_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM16_vld_in,
      vld_out => SM_regs_0_SM16_vld_out
    );
SM_ctrl_17: component S7_SM_ctrl_17_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM17_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM17_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_17_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_17_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_17_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_17_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_17_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_17_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM17_dir,
      ena_load(1 downto 0) => SM_regs_0_SM17_load(1 downto 0),
      fst_stps => SM_regs_0_SM17_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM17_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM17_irq_clr,
      irq_in => SM_regs_0_SM17_irq_in,
      irq_mask => SM_regs_0_SM17_irq_mask,
      port_clk => SM17_clk,
      port_dir => SM17_dir,
      port_ena => SM17_ena,
      port_m1P => SM17_m1p,
      port_m2P => SM17_m2p,
      port_ref => SM17_ref,
      ramp_dwn => SM_regs_0_SM17_ramp_dwn,
      ramp_up => SM_regs_0_SM17_ramp_up,
      res(1 downto 0) => SM_regs_0_SM17_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM17_running(1 downto 0),
      slw_stps => SM_regs_0_SM17_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_7_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_7_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_7_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_7_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_7_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_7_ACK,
      smc_req => SM_alg_server_1_smc_7_REQ,
      spd_chg => SM_regs_0_SM17_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM17_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM17_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM17_vld_in,
      vld_out => SM_regs_0_SM17_vld_out
    );
SM_ctrl_18: component S7_SM_ctrl_18_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM18_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM18_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_18_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_18_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_18_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_18_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_18_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_18_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM18_dir,
      ena_load(1 downto 0) => SM_regs_0_SM18_load(1 downto 0),
      fst_stps => SM_regs_0_SM18_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM18_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM18_irq_clr,
      irq_in => SM_regs_0_SM18_irq_in,
      irq_mask => SM_regs_0_SM18_irq_mask,
      port_clk => SM18_clk,
      port_dir => SM18_dir,
      port_ena => SM18_ena,
      port_m1P => SM18_m1p,
      port_m2P => SM18_m2p,
      port_ref => SM18_ref,
      ramp_dwn => SM_regs_0_SM18_ramp_dwn,
      ramp_up => SM_regs_0_SM18_ramp_up,
      res(1 downto 0) => SM_regs_0_SM18_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM18_running(1 downto 0),
      slw_stps => SM_regs_0_SM18_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_8_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_8_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_8_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_8_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_8_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_8_ACK,
      smc_req => SM_alg_server_1_smc_8_REQ,
      spd_chg => SM_regs_0_SM18_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM18_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM18_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM18_vld_in,
      vld_out => SM_regs_0_SM18_vld_out
    );
SM_ctrl_19: component S7_SM_ctrl_19_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM19_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM19_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_19_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_19_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_19_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_19_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_19_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_19_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM19_dir,
      ena_load(1 downto 0) => SM_regs_0_SM19_load(1 downto 0),
      fst_stps => SM_regs_0_SM19_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM19_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM19_irq_clr,
      irq_in => SM_regs_0_SM19_irq_in,
      irq_mask => SM_regs_0_SM19_irq_mask,
      port_clk => SM19_clk,
      port_dir => SM19_dir,
      port_ena => SM19_ena,
      port_m1P => SM19_m1p,
      port_m2P => SM19_m2p,
      port_ref => SM19_ref,
      ramp_dwn => SM_regs_0_SM19_ramp_dwn,
      ramp_up => SM_regs_0_SM19_ramp_up,
      res(1 downto 0) => SM_regs_0_SM19_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM19_running(1 downto 0),
      slw_stps => SM_regs_0_SM19_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_1_smc_9_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_1_smc_9_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_1_smc_9_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_1_smc_9_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_1_smc_9_RM(15 downto 0),
      smc_ack => SM_alg_server_1_smc_9_ACK,
      smc_req => SM_alg_server_1_smc_9_REQ,
      spd_chg => SM_regs_0_SM19_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM19_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM19_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM19_vld_in,
      vld_out => SM_regs_0_SM19_vld_out
    );
SM_ctrl_2: component S7_SM_ctrl_2_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM2_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM2_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_2_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_2_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_2_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_2_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_2_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_2_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM2_dir,
      ena_load(1 downto 0) => SM_regs_0_SM2_load(1 downto 0),
      fst_stps => SM_regs_0_SM2_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM2_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM2_irq_clr,
      irq_in => SM_regs_0_SM2_irq_in,
      irq_mask => SM_regs_0_SM2_irq_mask,
      port_clk => SM2_clk,
      port_dir => SM2_dir,
      port_ena => SM2_ena,
      port_m1P => SM2_m1p,
      port_m2P => SM2_m2p,
      port_ref => SM2_ref,
      ramp_dwn => SM_regs_0_SM2_ramp_dwn,
      ramp_up => SM_regs_0_SM2_ramp_up,
      res(1 downto 0) => SM_regs_0_SM2_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM2_running(1 downto 0),
      slw_stps => SM_regs_0_SM2_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_2_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_2_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_2_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_2_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_2_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_2_ACK,
      smc_req => SM_alg_server_0_smc_2_REQ,
      spd_chg => SM_regs_0_SM2_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM2_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM2_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM2_vld_in,
      vld_out => SM_regs_0_SM2_vld_out
    );
SM_ctrl_3: component S7_SM_ctrl_3_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM3_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM3_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_3_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_3_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_3_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_3_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_3_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_3_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM3_dir,
      ena_load(1 downto 0) => SM_regs_0_SM3_load(1 downto 0),
      fst_stps => SM_regs_0_SM3_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM3_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM3_irq_clr,
      irq_in => SM_regs_0_SM3_irq_in,
      irq_mask => SM_regs_0_SM3_irq_mask,
      port_clk => SM3_clk,
      port_dir => SM3_dir,
      port_ena => SM3_ena,
      port_m1P => SM3_m1p,
      port_m2P => SM3_m2p,
      port_ref => SM3_ref,
      ramp_dwn => SM_regs_0_SM3_ramp_dwn,
      ramp_up => SM_regs_0_SM3_ramp_up,
      res(1 downto 0) => SM_regs_0_SM3_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM3_running(1 downto 0),
      slw_stps => SM_regs_0_SM3_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_3_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_3_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_3_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_3_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_3_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_3_ACK,
      smc_req => SM_alg_server_0_smc_3_REQ,
      spd_chg => SM_regs_0_SM3_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM3_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM3_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM3_vld_in,
      vld_out => SM_regs_0_SM3_vld_out
    );
SM_ctrl_4: component S7_SM_ctrl_4_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM4_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM4_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_4_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_4_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_4_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_4_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_4_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_4_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM4_dir,
      ena_load(1 downto 0) => SM_regs_0_SM4_load(1 downto 0),
      fst_stps => SM_regs_0_SM4_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM4_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM4_irq_clr,
      irq_in => SM_regs_0_SM4_irq_in,
      irq_mask => SM_regs_0_SM4_irq_mask,
      port_clk => SM4_clk,
      port_dir => SM4_dir,
      port_ena => SM4_ena,
      port_m1P => SM4_m1p,
      port_m2P => SM4_m2p,
      port_ref => SM4_ref,
      ramp_dwn => SM_regs_0_SM4_ramp_dwn,
      ramp_up => SM_regs_0_SM4_ramp_up,
      res(1 downto 0) => SM_regs_0_SM4_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM4_running(1 downto 0),
      slw_stps => SM_regs_0_SM4_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_4_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_4_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_4_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_4_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_4_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_4_ACK,
      smc_req => SM_alg_server_0_smc_4_REQ,
      spd_chg => SM_regs_0_SM4_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM4_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM4_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM4_vld_in,
      vld_out => SM_regs_0_SM4_vld_out
    );
SM_ctrl_5: component S7_SM_ctrl_5_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM5_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM5_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_5_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_5_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_5_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_5_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_5_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_5_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM5_dir,
      ena_load(1 downto 0) => SM_regs_0_SM5_load(1 downto 0),
      fst_stps => SM_regs_0_SM5_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM5_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM5_irq_clr,
      irq_in => SM_regs_0_SM5_irq_in,
      irq_mask => SM_regs_0_SM5_irq_mask,
      port_clk => SM5_clk,
      port_dir => SM5_dir,
      port_ena => SM5_ena,
      port_m1P => SM5_m1p,
      port_m2P => SM5_m2p,
      port_ref => SM5_ref,
      ramp_dwn => SM_regs_0_SM5_ramp_dwn,
      ramp_up => SM_regs_0_SM5_ramp_up,
      res(1 downto 0) => SM_regs_0_SM5_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM5_running(1 downto 0),
      slw_stps => SM_regs_0_SM5_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_5_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_5_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_5_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_5_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_5_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_5_ACK,
      smc_req => SM_alg_server_0_smc_5_REQ,
      spd_chg => SM_regs_0_SM5_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM5_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM5_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM5_vld_in,
      vld_out => SM_regs_0_SM5_vld_out
    );
SM_ctrl_6: component S7_SM_ctrl_6_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM6_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM6_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_6_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_6_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_6_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_6_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_6_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_6_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM6_dir,
      ena_load(1 downto 0) => SM_regs_0_SM6_load(1 downto 0),
      fst_stps => SM_regs_0_SM6_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM6_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM6_irq_clr,
      irq_in => SM_regs_0_SM6_irq_in,
      irq_mask => SM_regs_0_SM6_irq_mask,
      port_clk => SM6_clk,
      port_dir => SM6_dir,
      port_ena => SM6_ena,
      port_m1P => SM6_m1p,
      port_m2P => SM6_m2p,
      port_ref => SM6_ref,
      ramp_dwn => SM_regs_0_SM6_ramp_dwn,
      ramp_up => SM_regs_0_SM6_ramp_up,
      res(1 downto 0) => SM_regs_0_SM6_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM6_running(1 downto 0),
      slw_stps => SM_regs_0_SM6_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_6_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_6_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_6_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_6_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_6_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_6_ACK,
      smc_req => SM_alg_server_0_smc_6_REQ,
      spd_chg => SM_regs_0_SM6_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM6_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM6_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM6_vld_in,
      vld_out => SM_regs_0_SM6_vld_out
    );
SM_ctrl_7: component S7_SM_ctrl_7_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM7_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM7_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_7_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_7_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_7_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_7_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_7_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_7_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM7_dir,
      ena_load(1 downto 0) => SM_regs_0_SM7_load(1 downto 0),
      fst_stps => SM_regs_0_SM7_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM7_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM7_irq_clr,
      irq_in => SM_regs_0_SM7_irq_in,
      irq_mask => SM_regs_0_SM7_irq_mask,
      port_clk => SM7_clk,
      port_dir => SM7_dir,
      port_ena => SM7_ena,
      port_m1P => SM7_m1p,
      port_m2P => SM7_m2p,
      port_ref => SM7_ref,
      ramp_dwn => SM_regs_0_SM7_ramp_dwn,
      ramp_up => SM_regs_0_SM7_ramp_up,
      res(1 downto 0) => SM_regs_0_SM7_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM7_running(1 downto 0),
      slw_stps => SM_regs_0_SM7_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_7_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_7_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_7_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_7_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_7_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_7_ACK,
      smc_req => SM_alg_server_0_smc_7_REQ,
      spd_chg => SM_regs_0_SM7_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM7_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM7_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM7_vld_in,
      vld_out => SM_regs_0_SM7_vld_out
    );
SM_ctrl_8: component S7_SM_ctrl_8_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM8_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM8_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_8_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_8_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_8_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_8_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_8_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_8_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM8_dir,
      ena_load(1 downto 0) => SM_regs_0_SM8_load(1 downto 0),
      fst_stps => SM_regs_0_SM8_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM8_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM8_irq_clr,
      irq_in => SM_regs_0_SM8_irq_in,
      irq_mask => SM_regs_0_SM8_irq_mask,
      port_clk => SM8_clk,
      port_dir => SM8_dir,
      port_ena => SM8_ena,
      port_m1P => SM8_m1p,
      port_m2P => SM8_m2p,
      port_ref => SM8_ref,
      ramp_dwn => SM_regs_0_SM8_ramp_dwn,
      ramp_up => SM_regs_0_SM8_ramp_up,
      res(1 downto 0) => SM_regs_0_SM8_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM8_running(1 downto 0),
      slw_stps => SM_regs_0_SM8_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_8_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_8_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_8_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_8_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_8_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_8_ACK,
      smc_req => SM_alg_server_0_smc_8_REQ,
      spd_chg => SM_regs_0_SM8_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM8_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM8_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM8_vld_in,
      vld_out => SM_regs_0_SM8_vld_out
    );
SM_ctrl_9: component S7_SM_ctrl_9_0
     port map (
      aclk => s00_axi_aclk_0_1,
      aresetn => s00_axi_aresetn_0_1,
      clk200 => clk200,
      cnt_i(31 downto 0) => SM_regs_0_SM9_cnt_i(31 downto 0),
      cnt_o(31 downto 0) => SM_regs_0_SM9_cnt_o(31 downto 0),
      dbg_clk => NLW_SM_ctrl_9_dbg_clk_UNCONNECTED,
      dbg_dir => NLW_SM_ctrl_9_dbg_dir_UNCONNECTED,
      dbg_ena => NLW_SM_ctrl_9_dbg_ena_UNCONNECTED,
      dbg_m1P => NLW_SM_ctrl_9_dbg_m1P_UNCONNECTED,
      dbg_m2P => NLW_SM_ctrl_9_dbg_m2P_UNCONNECTED,
      dbg_ref => NLW_SM_ctrl_9_dbg_ref_UNCONNECTED,
      dir => SM_regs_0_SM9_dir,
      ena_load(1 downto 0) => SM_regs_0_SM9_load(1 downto 0),
      fst_stps => SM_regs_0_SM9_fst_stps,
      init_EC(21 downto 0) => SM_regs_0_SM9_init_EC(21 downto 0),
      irq_clr => SM_regs_0_SM9_irq_clr,
      irq_in => SM_regs_0_SM9_irq_in,
      irq_mask => SM_regs_0_SM9_irq_mask,
      port_clk => SM9_clk,
      port_dir => SM9_dir,
      port_ena => SM9_ena,
      port_m1P => SM9_m1p,
      port_m2P => SM9_m2p,
      port_ref => SM9_ref,
      ramp_dwn => SM_regs_0_SM9_ramp_dwn,
      ramp_up => SM_regs_0_SM9_ramp_up,
      res(1 downto 0) => SM_regs_0_SM9_res(1 downto 0),
      running(1 downto 0) => SM_regs_0_SM9_running(1 downto 0),
      slw_stps => SM_regs_0_SM9_slw_stps,
      smc_ACC(21 downto 0) => SM_alg_server_0_smc_9_ACC(21 downto 0),
      smc_EC(21 downto 0) => SM_alg_server_0_smc_9_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => SM_alg_server_0_smc_9_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => SM_alg_server_0_smc_9_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => SM_alg_server_0_smc_9_RM(15 downto 0),
      smc_ack => SM_alg_server_0_smc_9_ACK,
      smc_req => SM_alg_server_0_smc_9_REQ,
      spd_chg => SM_regs_0_SM9_spd_chg,
      tgt_ACC(23 downto 0) => SM_regs_0_SM9_tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => SM_regs_0_SM9_tgt_EC(21 downto 0),
      vld_in => SM_regs_0_SM9_vld_in,
      vld_out => SM_regs_0_SM9_vld_out
    );
SM_regs_0: component S7_SM_regs_0_0
     port map (
      SM0_cnt_i(31 downto 0) => SM_regs_0_SM0_cnt_i(31 downto 0),
      SM0_cnt_o(31 downto 0) => SM_regs_0_SM0_cnt_o(31 downto 0),
      SM0_dir => SM_regs_0_SM0_dir,
      SM0_fst_stps => SM_regs_0_SM0_fst_stps,
      SM0_init_EC(21 downto 0) => SM_regs_0_SM0_init_EC(21 downto 0),
      SM0_irq_clr => SM_regs_0_SM0_irq_clr,
      SM0_irq_in => SM_regs_0_SM0_irq_in,
      SM0_irq_mask => SM_regs_0_SM0_irq_mask,
      SM0_load(1 downto 0) => SM_regs_0_SM0_load(1 downto 0),
      SM0_ramp_dwn => SM_regs_0_SM0_ramp_dwn,
      SM0_ramp_up => SM_regs_0_SM0_ramp_up,
      SM0_res(1 downto 0) => SM_regs_0_SM0_res(1 downto 0),
      SM0_running(1 downto 0) => SM_regs_0_SM0_running(1 downto 0),
      SM0_slw_stps => SM_regs_0_SM0_slw_stps,
      SM0_spd_chg => SM_regs_0_SM0_spd_chg,
      SM0_tgt_ACC(23 downto 0) => SM_regs_0_SM0_tgt_ACC(23 downto 0),
      SM0_tgt_EC(21 downto 0) => SM_regs_0_SM0_tgt_EC(21 downto 0),
      SM0_vld_in => SM_regs_0_SM0_vld_in,
      SM0_vld_out => SM_regs_0_SM0_vld_out,
      SM10_cnt_i(31 downto 0) => SM_regs_0_SM10_cnt_i(31 downto 0),
      SM10_cnt_o(31 downto 0) => SM_regs_0_SM10_cnt_o(31 downto 0),
      SM10_dir => SM_regs_0_SM10_dir,
      SM10_fst_stps => SM_regs_0_SM10_fst_stps,
      SM10_init_EC(21 downto 0) => SM_regs_0_SM10_init_EC(21 downto 0),
      SM10_irq_clr => SM_regs_0_SM10_irq_clr,
      SM10_irq_in => SM_regs_0_SM10_irq_in,
      SM10_irq_mask => SM_regs_0_SM10_irq_mask,
      SM10_load(1 downto 0) => SM_regs_0_SM10_load(1 downto 0),
      SM10_ramp_dwn => SM_regs_0_SM10_ramp_dwn,
      SM10_ramp_up => SM_regs_0_SM10_ramp_up,
      SM10_res(1 downto 0) => SM_regs_0_SM10_res(1 downto 0),
      SM10_running(1 downto 0) => SM_regs_0_SM10_running(1 downto 0),
      SM10_slw_stps => SM_regs_0_SM10_slw_stps,
      SM10_spd_chg => SM_regs_0_SM10_spd_chg,
      SM10_tgt_ACC(23 downto 0) => SM_regs_0_SM10_tgt_ACC(23 downto 0),
      SM10_tgt_EC(21 downto 0) => SM_regs_0_SM10_tgt_EC(21 downto 0),
      SM10_vld_in => SM_regs_0_SM10_vld_in,
      SM10_vld_out => SM_regs_0_SM10_vld_out,
      SM11_cnt_i(31 downto 0) => SM_regs_0_SM11_cnt_i(31 downto 0),
      SM11_cnt_o(31 downto 0) => SM_regs_0_SM11_cnt_o(31 downto 0),
      SM11_dir => SM_regs_0_SM11_dir,
      SM11_fst_stps => SM_regs_0_SM11_fst_stps,
      SM11_init_EC(21 downto 0) => SM_regs_0_SM11_init_EC(21 downto 0),
      SM11_irq_clr => SM_regs_0_SM11_irq_clr,
      SM11_irq_in => SM_regs_0_SM11_irq_in,
      SM11_irq_mask => SM_regs_0_SM11_irq_mask,
      SM11_load(1 downto 0) => SM_regs_0_SM11_load(1 downto 0),
      SM11_ramp_dwn => SM_regs_0_SM11_ramp_dwn,
      SM11_ramp_up => SM_regs_0_SM11_ramp_up,
      SM11_res(1 downto 0) => SM_regs_0_SM11_res(1 downto 0),
      SM11_running(1 downto 0) => SM_regs_0_SM11_running(1 downto 0),
      SM11_slw_stps => SM_regs_0_SM11_slw_stps,
      SM11_spd_chg => SM_regs_0_SM11_spd_chg,
      SM11_tgt_ACC(23 downto 0) => SM_regs_0_SM11_tgt_ACC(23 downto 0),
      SM11_tgt_EC(21 downto 0) => SM_regs_0_SM11_tgt_EC(21 downto 0),
      SM11_vld_in => SM_regs_0_SM11_vld_in,
      SM11_vld_out => SM_regs_0_SM11_vld_out,
      SM12_cnt_i(31 downto 0) => SM_regs_0_SM12_cnt_i(31 downto 0),
      SM12_cnt_o(31 downto 0) => SM_regs_0_SM12_cnt_o(31 downto 0),
      SM12_dir => SM_regs_0_SM12_dir,
      SM12_fst_stps => SM_regs_0_SM12_fst_stps,
      SM12_init_EC(21 downto 0) => SM_regs_0_SM12_init_EC(21 downto 0),
      SM12_irq_clr => SM_regs_0_SM12_irq_clr,
      SM12_irq_in => SM_regs_0_SM12_irq_in,
      SM12_irq_mask => SM_regs_0_SM12_irq_mask,
      SM12_load(1 downto 0) => SM_regs_0_SM12_load(1 downto 0),
      SM12_ramp_dwn => SM_regs_0_SM12_ramp_dwn,
      SM12_ramp_up => SM_regs_0_SM12_ramp_up,
      SM12_res(1 downto 0) => SM_regs_0_SM12_res(1 downto 0),
      SM12_running(1 downto 0) => SM_regs_0_SM12_running(1 downto 0),
      SM12_slw_stps => SM_regs_0_SM12_slw_stps,
      SM12_spd_chg => SM_regs_0_SM12_spd_chg,
      SM12_tgt_ACC(23 downto 0) => SM_regs_0_SM12_tgt_ACC(23 downto 0),
      SM12_tgt_EC(21 downto 0) => SM_regs_0_SM12_tgt_EC(21 downto 0),
      SM12_vld_in => SM_regs_0_SM12_vld_in,
      SM12_vld_out => SM_regs_0_SM12_vld_out,
      SM13_cnt_i(31 downto 0) => SM_regs_0_SM13_cnt_i(31 downto 0),
      SM13_cnt_o(31 downto 0) => SM_regs_0_SM13_cnt_o(31 downto 0),
      SM13_dir => SM_regs_0_SM13_dir,
      SM13_fst_stps => SM_regs_0_SM13_fst_stps,
      SM13_init_EC(21 downto 0) => SM_regs_0_SM13_init_EC(21 downto 0),
      SM13_irq_clr => SM_regs_0_SM13_irq_clr,
      SM13_irq_in => SM_regs_0_SM13_irq_in,
      SM13_irq_mask => SM_regs_0_SM13_irq_mask,
      SM13_load(1 downto 0) => SM_regs_0_SM13_load(1 downto 0),
      SM13_ramp_dwn => SM_regs_0_SM13_ramp_dwn,
      SM13_ramp_up => SM_regs_0_SM13_ramp_up,
      SM13_res(1 downto 0) => SM_regs_0_SM13_res(1 downto 0),
      SM13_running(1 downto 0) => SM_regs_0_SM13_running(1 downto 0),
      SM13_slw_stps => SM_regs_0_SM13_slw_stps,
      SM13_spd_chg => SM_regs_0_SM13_spd_chg,
      SM13_tgt_ACC(23 downto 0) => SM_regs_0_SM13_tgt_ACC(23 downto 0),
      SM13_tgt_EC(21 downto 0) => SM_regs_0_SM13_tgt_EC(21 downto 0),
      SM13_vld_in => SM_regs_0_SM13_vld_in,
      SM13_vld_out => SM_regs_0_SM13_vld_out,
      SM14_cnt_i(31 downto 0) => SM_regs_0_SM14_cnt_i(31 downto 0),
      SM14_cnt_o(31 downto 0) => SM_regs_0_SM14_cnt_o(31 downto 0),
      SM14_dir => SM_regs_0_SM14_dir,
      SM14_fst_stps => SM_regs_0_SM14_fst_stps,
      SM14_init_EC(21 downto 0) => SM_regs_0_SM14_init_EC(21 downto 0),
      SM14_irq_clr => SM_regs_0_SM14_irq_clr,
      SM14_irq_in => SM_regs_0_SM14_irq_in,
      SM14_irq_mask => SM_regs_0_SM14_irq_mask,
      SM14_load(1 downto 0) => SM_regs_0_SM14_load(1 downto 0),
      SM14_ramp_dwn => SM_regs_0_SM14_ramp_dwn,
      SM14_ramp_up => SM_regs_0_SM14_ramp_up,
      SM14_res(1 downto 0) => SM_regs_0_SM14_res(1 downto 0),
      SM14_running(1 downto 0) => SM_regs_0_SM14_running(1 downto 0),
      SM14_slw_stps => SM_regs_0_SM14_slw_stps,
      SM14_spd_chg => SM_regs_0_SM14_spd_chg,
      SM14_tgt_ACC(23 downto 0) => SM_regs_0_SM14_tgt_ACC(23 downto 0),
      SM14_tgt_EC(21 downto 0) => SM_regs_0_SM14_tgt_EC(21 downto 0),
      SM14_vld_in => SM_regs_0_SM14_vld_in,
      SM14_vld_out => SM_regs_0_SM14_vld_out,
      SM15_cnt_i(31 downto 0) => SM_regs_0_SM15_cnt_i(31 downto 0),
      SM15_cnt_o(31 downto 0) => SM_regs_0_SM15_cnt_o(31 downto 0),
      SM15_dir => SM_regs_0_SM15_dir,
      SM15_fst_stps => SM_regs_0_SM15_fst_stps,
      SM15_init_EC(21 downto 0) => SM_regs_0_SM15_init_EC(21 downto 0),
      SM15_irq_clr => SM_regs_0_SM15_irq_clr,
      SM15_irq_in => SM_regs_0_SM15_irq_in,
      SM15_irq_mask => SM_regs_0_SM15_irq_mask,
      SM15_load(1 downto 0) => SM_regs_0_SM15_load(1 downto 0),
      SM15_ramp_dwn => SM_regs_0_SM15_ramp_dwn,
      SM15_ramp_up => SM_regs_0_SM15_ramp_up,
      SM15_res(1 downto 0) => SM_regs_0_SM15_res(1 downto 0),
      SM15_running(1 downto 0) => SM_regs_0_SM15_running(1 downto 0),
      SM15_slw_stps => SM_regs_0_SM15_slw_stps,
      SM15_spd_chg => SM_regs_0_SM15_spd_chg,
      SM15_tgt_ACC(23 downto 0) => SM_regs_0_SM15_tgt_ACC(23 downto 0),
      SM15_tgt_EC(21 downto 0) => SM_regs_0_SM15_tgt_EC(21 downto 0),
      SM15_vld_in => SM_regs_0_SM15_vld_in,
      SM15_vld_out => SM_regs_0_SM15_vld_out,
      SM16_cnt_i(31 downto 0) => SM_regs_0_SM16_cnt_i(31 downto 0),
      SM16_cnt_o(31 downto 0) => SM_regs_0_SM16_cnt_o(31 downto 0),
      SM16_dir => SM_regs_0_SM16_dir,
      SM16_fst_stps => SM_regs_0_SM16_fst_stps,
      SM16_init_EC(21 downto 0) => SM_regs_0_SM16_init_EC(21 downto 0),
      SM16_irq_clr => SM_regs_0_SM16_irq_clr,
      SM16_irq_in => SM_regs_0_SM16_irq_in,
      SM16_irq_mask => SM_regs_0_SM16_irq_mask,
      SM16_load(1 downto 0) => SM_regs_0_SM16_load(1 downto 0),
      SM16_ramp_dwn => SM_regs_0_SM16_ramp_dwn,
      SM16_ramp_up => SM_regs_0_SM16_ramp_up,
      SM16_res(1 downto 0) => SM_regs_0_SM16_res(1 downto 0),
      SM16_running(1 downto 0) => SM_regs_0_SM16_running(1 downto 0),
      SM16_slw_stps => SM_regs_0_SM16_slw_stps,
      SM16_spd_chg => SM_regs_0_SM16_spd_chg,
      SM16_tgt_ACC(23 downto 0) => SM_regs_0_SM16_tgt_ACC(23 downto 0),
      SM16_tgt_EC(21 downto 0) => SM_regs_0_SM16_tgt_EC(21 downto 0),
      SM16_vld_in => SM_regs_0_SM16_vld_in,
      SM16_vld_out => SM_regs_0_SM16_vld_out,
      SM17_cnt_i(31 downto 0) => SM_regs_0_SM17_cnt_i(31 downto 0),
      SM17_cnt_o(31 downto 0) => SM_regs_0_SM17_cnt_o(31 downto 0),
      SM17_dir => SM_regs_0_SM17_dir,
      SM17_fst_stps => SM_regs_0_SM17_fst_stps,
      SM17_init_EC(21 downto 0) => SM_regs_0_SM17_init_EC(21 downto 0),
      SM17_irq_clr => SM_regs_0_SM17_irq_clr,
      SM17_irq_in => SM_regs_0_SM17_irq_in,
      SM17_irq_mask => SM_regs_0_SM17_irq_mask,
      SM17_load(1 downto 0) => SM_regs_0_SM17_load(1 downto 0),
      SM17_ramp_dwn => SM_regs_0_SM17_ramp_dwn,
      SM17_ramp_up => SM_regs_0_SM17_ramp_up,
      SM17_res(1 downto 0) => SM_regs_0_SM17_res(1 downto 0),
      SM17_running(1 downto 0) => SM_regs_0_SM17_running(1 downto 0),
      SM17_slw_stps => SM_regs_0_SM17_slw_stps,
      SM17_spd_chg => SM_regs_0_SM17_spd_chg,
      SM17_tgt_ACC(23 downto 0) => SM_regs_0_SM17_tgt_ACC(23 downto 0),
      SM17_tgt_EC(21 downto 0) => SM_regs_0_SM17_tgt_EC(21 downto 0),
      SM17_vld_in => SM_regs_0_SM17_vld_in,
      SM17_vld_out => SM_regs_0_SM17_vld_out,
      SM18_cnt_i(31 downto 0) => SM_regs_0_SM18_cnt_i(31 downto 0),
      SM18_cnt_o(31 downto 0) => SM_regs_0_SM18_cnt_o(31 downto 0),
      SM18_dir => SM_regs_0_SM18_dir,
      SM18_fst_stps => SM_regs_0_SM18_fst_stps,
      SM18_init_EC(21 downto 0) => SM_regs_0_SM18_init_EC(21 downto 0),
      SM18_irq_clr => SM_regs_0_SM18_irq_clr,
      SM18_irq_in => SM_regs_0_SM18_irq_in,
      SM18_irq_mask => SM_regs_0_SM18_irq_mask,
      SM18_load(1 downto 0) => SM_regs_0_SM18_load(1 downto 0),
      SM18_ramp_dwn => SM_regs_0_SM18_ramp_dwn,
      SM18_ramp_up => SM_regs_0_SM18_ramp_up,
      SM18_res(1 downto 0) => SM_regs_0_SM18_res(1 downto 0),
      SM18_running(1 downto 0) => SM_regs_0_SM18_running(1 downto 0),
      SM18_slw_stps => SM_regs_0_SM18_slw_stps,
      SM18_spd_chg => SM_regs_0_SM18_spd_chg,
      SM18_tgt_ACC(23 downto 0) => SM_regs_0_SM18_tgt_ACC(23 downto 0),
      SM18_tgt_EC(21 downto 0) => SM_regs_0_SM18_tgt_EC(21 downto 0),
      SM18_vld_in => SM_regs_0_SM18_vld_in,
      SM18_vld_out => SM_regs_0_SM18_vld_out,
      SM19_cnt_i(31 downto 0) => SM_regs_0_SM19_cnt_i(31 downto 0),
      SM19_cnt_o(31 downto 0) => SM_regs_0_SM19_cnt_o(31 downto 0),
      SM19_dir => SM_regs_0_SM19_dir,
      SM19_fst_stps => SM_regs_0_SM19_fst_stps,
      SM19_init_EC(21 downto 0) => SM_regs_0_SM19_init_EC(21 downto 0),
      SM19_irq_clr => SM_regs_0_SM19_irq_clr,
      SM19_irq_in => SM_regs_0_SM19_irq_in,
      SM19_irq_mask => SM_regs_0_SM19_irq_mask,
      SM19_load(1 downto 0) => SM_regs_0_SM19_load(1 downto 0),
      SM19_ramp_dwn => SM_regs_0_SM19_ramp_dwn,
      SM19_ramp_up => SM_regs_0_SM19_ramp_up,
      SM19_res(1 downto 0) => SM_regs_0_SM19_res(1 downto 0),
      SM19_running(1 downto 0) => SM_regs_0_SM19_running(1 downto 0),
      SM19_slw_stps => SM_regs_0_SM19_slw_stps,
      SM19_spd_chg => SM_regs_0_SM19_spd_chg,
      SM19_tgt_ACC(23 downto 0) => SM_regs_0_SM19_tgt_ACC(23 downto 0),
      SM19_tgt_EC(21 downto 0) => SM_regs_0_SM19_tgt_EC(21 downto 0),
      SM19_vld_in => SM_regs_0_SM19_vld_in,
      SM19_vld_out => SM_regs_0_SM19_vld_out,
      SM1_cnt_i(31 downto 0) => SM_regs_0_SM1_cnt_i(31 downto 0),
      SM1_cnt_o(31 downto 0) => SM_regs_0_SM1_cnt_o(31 downto 0),
      SM1_dir => SM_regs_0_SM1_dir,
      SM1_fst_stps => SM_regs_0_SM1_fst_stps,
      SM1_init_EC(21 downto 0) => SM_regs_0_SM1_init_EC(21 downto 0),
      SM1_irq_clr => SM_regs_0_SM1_irq_clr,
      SM1_irq_in => SM_regs_0_SM1_irq_in,
      SM1_irq_mask => SM_regs_0_SM1_irq_mask,
      SM1_load(1 downto 0) => SM_regs_0_SM1_load(1 downto 0),
      SM1_ramp_dwn => SM_regs_0_SM1_ramp_dwn,
      SM1_ramp_up => SM_regs_0_SM1_ramp_up,
      SM1_res(1 downto 0) => SM_regs_0_SM1_res(1 downto 0),
      SM1_running(1 downto 0) => SM_regs_0_SM1_running(1 downto 0),
      SM1_slw_stps => SM_regs_0_SM1_slw_stps,
      SM1_spd_chg => SM_regs_0_SM1_spd_chg,
      SM1_tgt_ACC(23 downto 0) => SM_regs_0_SM1_tgt_ACC(23 downto 0),
      SM1_tgt_EC(21 downto 0) => SM_regs_0_SM1_tgt_EC(21 downto 0),
      SM1_vld_in => SM_regs_0_SM1_vld_in,
      SM1_vld_out => SM_regs_0_SM1_vld_out,
      SM2_cnt_i(31 downto 0) => SM_regs_0_SM2_cnt_i(31 downto 0),
      SM2_cnt_o(31 downto 0) => SM_regs_0_SM2_cnt_o(31 downto 0),
      SM2_dir => SM_regs_0_SM2_dir,
      SM2_fst_stps => SM_regs_0_SM2_fst_stps,
      SM2_init_EC(21 downto 0) => SM_regs_0_SM2_init_EC(21 downto 0),
      SM2_irq_clr => SM_regs_0_SM2_irq_clr,
      SM2_irq_in => SM_regs_0_SM2_irq_in,
      SM2_irq_mask => SM_regs_0_SM2_irq_mask,
      SM2_load(1 downto 0) => SM_regs_0_SM2_load(1 downto 0),
      SM2_ramp_dwn => SM_regs_0_SM2_ramp_dwn,
      SM2_ramp_up => SM_regs_0_SM2_ramp_up,
      SM2_res(1 downto 0) => SM_regs_0_SM2_res(1 downto 0),
      SM2_running(1 downto 0) => SM_regs_0_SM2_running(1 downto 0),
      SM2_slw_stps => SM_regs_0_SM2_slw_stps,
      SM2_spd_chg => SM_regs_0_SM2_spd_chg,
      SM2_tgt_ACC(23 downto 0) => SM_regs_0_SM2_tgt_ACC(23 downto 0),
      SM2_tgt_EC(21 downto 0) => SM_regs_0_SM2_tgt_EC(21 downto 0),
      SM2_vld_in => SM_regs_0_SM2_vld_in,
      SM2_vld_out => SM_regs_0_SM2_vld_out,
      SM3_cnt_i(31 downto 0) => SM_regs_0_SM3_cnt_i(31 downto 0),
      SM3_cnt_o(31 downto 0) => SM_regs_0_SM3_cnt_o(31 downto 0),
      SM3_dir => SM_regs_0_SM3_dir,
      SM3_fst_stps => SM_regs_0_SM3_fst_stps,
      SM3_init_EC(21 downto 0) => SM_regs_0_SM3_init_EC(21 downto 0),
      SM3_irq_clr => SM_regs_0_SM3_irq_clr,
      SM3_irq_in => SM_regs_0_SM3_irq_in,
      SM3_irq_mask => SM_regs_0_SM3_irq_mask,
      SM3_load(1 downto 0) => SM_regs_0_SM3_load(1 downto 0),
      SM3_ramp_dwn => SM_regs_0_SM3_ramp_dwn,
      SM3_ramp_up => SM_regs_0_SM3_ramp_up,
      SM3_res(1 downto 0) => SM_regs_0_SM3_res(1 downto 0),
      SM3_running(1 downto 0) => SM_regs_0_SM3_running(1 downto 0),
      SM3_slw_stps => SM_regs_0_SM3_slw_stps,
      SM3_spd_chg => SM_regs_0_SM3_spd_chg,
      SM3_tgt_ACC(23 downto 0) => SM_regs_0_SM3_tgt_ACC(23 downto 0),
      SM3_tgt_EC(21 downto 0) => SM_regs_0_SM3_tgt_EC(21 downto 0),
      SM3_vld_in => SM_regs_0_SM3_vld_in,
      SM3_vld_out => SM_regs_0_SM3_vld_out,
      SM4_cnt_i(31 downto 0) => SM_regs_0_SM4_cnt_i(31 downto 0),
      SM4_cnt_o(31 downto 0) => SM_regs_0_SM4_cnt_o(31 downto 0),
      SM4_dir => SM_regs_0_SM4_dir,
      SM4_fst_stps => SM_regs_0_SM4_fst_stps,
      SM4_init_EC(21 downto 0) => SM_regs_0_SM4_init_EC(21 downto 0),
      SM4_irq_clr => SM_regs_0_SM4_irq_clr,
      SM4_irq_in => SM_regs_0_SM4_irq_in,
      SM4_irq_mask => SM_regs_0_SM4_irq_mask,
      SM4_load(1 downto 0) => SM_regs_0_SM4_load(1 downto 0),
      SM4_ramp_dwn => SM_regs_0_SM4_ramp_dwn,
      SM4_ramp_up => SM_regs_0_SM4_ramp_up,
      SM4_res(1 downto 0) => SM_regs_0_SM4_res(1 downto 0),
      SM4_running(1 downto 0) => SM_regs_0_SM4_running(1 downto 0),
      SM4_slw_stps => SM_regs_0_SM4_slw_stps,
      SM4_spd_chg => SM_regs_0_SM4_spd_chg,
      SM4_tgt_ACC(23 downto 0) => SM_regs_0_SM4_tgt_ACC(23 downto 0),
      SM4_tgt_EC(21 downto 0) => SM_regs_0_SM4_tgt_EC(21 downto 0),
      SM4_vld_in => SM_regs_0_SM4_vld_in,
      SM4_vld_out => SM_regs_0_SM4_vld_out,
      SM5_cnt_i(31 downto 0) => SM_regs_0_SM5_cnt_i(31 downto 0),
      SM5_cnt_o(31 downto 0) => SM_regs_0_SM5_cnt_o(31 downto 0),
      SM5_dir => SM_regs_0_SM5_dir,
      SM5_fst_stps => SM_regs_0_SM5_fst_stps,
      SM5_init_EC(21 downto 0) => SM_regs_0_SM5_init_EC(21 downto 0),
      SM5_irq_clr => SM_regs_0_SM5_irq_clr,
      SM5_irq_in => SM_regs_0_SM5_irq_in,
      SM5_irq_mask => SM_regs_0_SM5_irq_mask,
      SM5_load(1 downto 0) => SM_regs_0_SM5_load(1 downto 0),
      SM5_ramp_dwn => SM_regs_0_SM5_ramp_dwn,
      SM5_ramp_up => SM_regs_0_SM5_ramp_up,
      SM5_res(1 downto 0) => SM_regs_0_SM5_res(1 downto 0),
      SM5_running(1 downto 0) => SM_regs_0_SM5_running(1 downto 0),
      SM5_slw_stps => SM_regs_0_SM5_slw_stps,
      SM5_spd_chg => SM_regs_0_SM5_spd_chg,
      SM5_tgt_ACC(23 downto 0) => SM_regs_0_SM5_tgt_ACC(23 downto 0),
      SM5_tgt_EC(21 downto 0) => SM_regs_0_SM5_tgt_EC(21 downto 0),
      SM5_vld_in => SM_regs_0_SM5_vld_in,
      SM5_vld_out => SM_regs_0_SM5_vld_out,
      SM6_cnt_i(31 downto 0) => SM_regs_0_SM6_cnt_i(31 downto 0),
      SM6_cnt_o(31 downto 0) => SM_regs_0_SM6_cnt_o(31 downto 0),
      SM6_dir => SM_regs_0_SM6_dir,
      SM6_fst_stps => SM_regs_0_SM6_fst_stps,
      SM6_init_EC(21 downto 0) => SM_regs_0_SM6_init_EC(21 downto 0),
      SM6_irq_clr => SM_regs_0_SM6_irq_clr,
      SM6_irq_in => SM_regs_0_SM6_irq_in,
      SM6_irq_mask => SM_regs_0_SM6_irq_mask,
      SM6_load(1 downto 0) => SM_regs_0_SM6_load(1 downto 0),
      SM6_ramp_dwn => SM_regs_0_SM6_ramp_dwn,
      SM6_ramp_up => SM_regs_0_SM6_ramp_up,
      SM6_res(1 downto 0) => SM_regs_0_SM6_res(1 downto 0),
      SM6_running(1 downto 0) => SM_regs_0_SM6_running(1 downto 0),
      SM6_slw_stps => SM_regs_0_SM6_slw_stps,
      SM6_spd_chg => SM_regs_0_SM6_spd_chg,
      SM6_tgt_ACC(23 downto 0) => SM_regs_0_SM6_tgt_ACC(23 downto 0),
      SM6_tgt_EC(21 downto 0) => SM_regs_0_SM6_tgt_EC(21 downto 0),
      SM6_vld_in => SM_regs_0_SM6_vld_in,
      SM6_vld_out => SM_regs_0_SM6_vld_out,
      SM7_cnt_i(31 downto 0) => SM_regs_0_SM7_cnt_i(31 downto 0),
      SM7_cnt_o(31 downto 0) => SM_regs_0_SM7_cnt_o(31 downto 0),
      SM7_dir => SM_regs_0_SM7_dir,
      SM7_fst_stps => SM_regs_0_SM7_fst_stps,
      SM7_init_EC(21 downto 0) => SM_regs_0_SM7_init_EC(21 downto 0),
      SM7_irq_clr => SM_regs_0_SM7_irq_clr,
      SM7_irq_in => SM_regs_0_SM7_irq_in,
      SM7_irq_mask => SM_regs_0_SM7_irq_mask,
      SM7_load(1 downto 0) => SM_regs_0_SM7_load(1 downto 0),
      SM7_ramp_dwn => SM_regs_0_SM7_ramp_dwn,
      SM7_ramp_up => SM_regs_0_SM7_ramp_up,
      SM7_res(1 downto 0) => SM_regs_0_SM7_res(1 downto 0),
      SM7_running(1 downto 0) => SM_regs_0_SM7_running(1 downto 0),
      SM7_slw_stps => SM_regs_0_SM7_slw_stps,
      SM7_spd_chg => SM_regs_0_SM7_spd_chg,
      SM7_tgt_ACC(23 downto 0) => SM_regs_0_SM7_tgt_ACC(23 downto 0),
      SM7_tgt_EC(21 downto 0) => SM_regs_0_SM7_tgt_EC(21 downto 0),
      SM7_vld_in => SM_regs_0_SM7_vld_in,
      SM7_vld_out => SM_regs_0_SM7_vld_out,
      SM8_cnt_i(31 downto 0) => SM_regs_0_SM8_cnt_i(31 downto 0),
      SM8_cnt_o(31 downto 0) => SM_regs_0_SM8_cnt_o(31 downto 0),
      SM8_dir => SM_regs_0_SM8_dir,
      SM8_fst_stps => SM_regs_0_SM8_fst_stps,
      SM8_init_EC(21 downto 0) => SM_regs_0_SM8_init_EC(21 downto 0),
      SM8_irq_clr => SM_regs_0_SM8_irq_clr,
      SM8_irq_in => SM_regs_0_SM8_irq_in,
      SM8_irq_mask => SM_regs_0_SM8_irq_mask,
      SM8_load(1 downto 0) => SM_regs_0_SM8_load(1 downto 0),
      SM8_ramp_dwn => SM_regs_0_SM8_ramp_dwn,
      SM8_ramp_up => SM_regs_0_SM8_ramp_up,
      SM8_res(1 downto 0) => SM_regs_0_SM8_res(1 downto 0),
      SM8_running(1 downto 0) => SM_regs_0_SM8_running(1 downto 0),
      SM8_slw_stps => SM_regs_0_SM8_slw_stps,
      SM8_spd_chg => SM_regs_0_SM8_spd_chg,
      SM8_tgt_ACC(23 downto 0) => SM_regs_0_SM8_tgt_ACC(23 downto 0),
      SM8_tgt_EC(21 downto 0) => SM_regs_0_SM8_tgt_EC(21 downto 0),
      SM8_vld_in => SM_regs_0_SM8_vld_in,
      SM8_vld_out => SM_regs_0_SM8_vld_out,
      SM9_cnt_i(31 downto 0) => SM_regs_0_SM9_cnt_i(31 downto 0),
      SM9_cnt_o(31 downto 0) => SM_regs_0_SM9_cnt_o(31 downto 0),
      SM9_dir => SM_regs_0_SM9_dir,
      SM9_fst_stps => SM_regs_0_SM9_fst_stps,
      SM9_init_EC(21 downto 0) => SM_regs_0_SM9_init_EC(21 downto 0),
      SM9_irq_clr => SM_regs_0_SM9_irq_clr,
      SM9_irq_in => SM_regs_0_SM9_irq_in,
      SM9_irq_mask => SM_regs_0_SM9_irq_mask,
      SM9_load(1 downto 0) => SM_regs_0_SM9_load(1 downto 0),
      SM9_ramp_dwn => SM_regs_0_SM9_ramp_dwn,
      SM9_ramp_up => SM_regs_0_SM9_ramp_up,
      SM9_res(1 downto 0) => SM_regs_0_SM9_res(1 downto 0),
      SM9_running(1 downto 0) => SM_regs_0_SM9_running(1 downto 0),
      SM9_slw_stps => SM_regs_0_SM9_slw_stps,
      SM9_spd_chg => SM_regs_0_SM9_spd_chg,
      SM9_tgt_ACC(23 downto 0) => SM_regs_0_SM9_tgt_ACC(23 downto 0),
      SM9_tgt_EC(21 downto 0) => SM_regs_0_SM9_tgt_EC(21 downto 0),
      SM9_vld_in => SM_regs_0_SM9_vld_in,
      SM9_vld_out => SM_regs_0_SM9_vld_out,
      SM_irq => SM_regs_0_SM_irq,
      SM_irqs(19 downto 0) => SM_regs_0_SM_irqs(19 downto 0),
      s00_axi_aclk => s00_axi_aclk_0_1,
      s00_axi_araddr(10 downto 0) => Conn1_ARADDR(10 downto 0),
      s00_axi_aresetn => s00_axi_aresetn_0_1,
      s00_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s00_axi_arready => Conn1_ARREADY,
      s00_axi_arvalid => Conn1_ARVALID(0),
      s00_axi_awaddr(10 downto 0) => Conn1_AWADDR(10 downto 0),
      s00_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s00_axi_awready => Conn1_AWREADY,
      s00_axi_awvalid => Conn1_AWVALID(0),
      s00_axi_bready => Conn1_BREADY(0),
      s00_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s00_axi_bvalid => Conn1_BVALID,
      s00_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s00_axi_rready => Conn1_RREADY(0),
      s00_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s00_axi_rvalid => Conn1_RVALID,
      s00_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s00_axi_wready => Conn1_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn1_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SOL_10_imp_NRIJS8 is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    SOL0_port_pwm : out STD_LOGIC;
    SOL1_port_pwm : out STD_LOGIC;
    SOL2_port_pwm : out STD_LOGIC;
    SOL3_port_pwm : out STD_LOGIC;
    SOL4_port_pwm : out STD_LOGIC;
    SOL5_port_pwm : out STD_LOGIC;
    SOL6_port_pwm : out STD_LOGIC;
    SOL7_port_pwm : out STD_LOGIC;
    SOL8_port_pwm : out STD_LOGIC;
    SOL9_port_pwm : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end SOL_10_imp_NRIJS8;

architecture STRUCTURE of SOL_10_imp_NRIJS8 is
  component S7_SOL_regs_0_0 is
  port (
    SOL0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL0_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL0_run : out STD_LOGIC;
    SOL0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL0_vld_in : in STD_LOGIC;
    SOL0_vld_out : out STD_LOGIC;
    SOL1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL1_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL1_run : out STD_LOGIC;
    SOL1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL1_vld_in : in STD_LOGIC;
    SOL1_vld_out : out STD_LOGIC;
    SOL2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL2_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL2_run : out STD_LOGIC;
    SOL2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL2_vld_in : in STD_LOGIC;
    SOL2_vld_out : out STD_LOGIC;
    SOL3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL3_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL3_run : out STD_LOGIC;
    SOL3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL3_vld_in : in STD_LOGIC;
    SOL3_vld_out : out STD_LOGIC;
    SOL4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL4_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL4_run : out STD_LOGIC;
    SOL4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL4_vld_in : in STD_LOGIC;
    SOL4_vld_out : out STD_LOGIC;
    SOL5_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL5_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL5_run : out STD_LOGIC;
    SOL5_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL5_vld_in : in STD_LOGIC;
    SOL5_vld_out : out STD_LOGIC;
    SOL6_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL6_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL6_run : out STD_LOGIC;
    SOL6_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL6_vld_in : in STD_LOGIC;
    SOL6_vld_out : out STD_LOGIC;
    SOL7_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL7_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL7_run : out STD_LOGIC;
    SOL7_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL7_vld_in : in STD_LOGIC;
    SOL7_vld_out : out STD_LOGIC;
    SOL8_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL8_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL8_run : out STD_LOGIC;
    SOL8_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL8_vld_in : in STD_LOGIC;
    SOL8_vld_out : out STD_LOGIC;
    SOL9_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL9_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL9_run : out STD_LOGIC;
    SOL9_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL9_vld_in : in STD_LOGIC;
    SOL9_vld_out : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component S7_SOL_regs_0_0;
  component S7_SOL_ctrl_0_0 is
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
  end component S7_SOL_ctrl_0_0;
  component S7_SOL_ctrl_1_0 is
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
  end component S7_SOL_ctrl_1_0;
  component S7_SOL_ctrl_2_0 is
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
  end component S7_SOL_ctrl_2_0;
  component S7_SOL_ctrl_3_0 is
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
  end component S7_SOL_ctrl_3_0;
  component S7_SOL_ctrl_4_0 is
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
  end component S7_SOL_ctrl_4_0;
  component S7_SOL_ctrl_5_0 is
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
  end component S7_SOL_ctrl_5_0;
  component S7_SOL_ctrl_6_0 is
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
  end component S7_SOL_ctrl_6_0;
  component S7_SOL_ctrl_7_0 is
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
  end component S7_SOL_ctrl_7_0;
  component S7_SOL_ctrl_8_0 is
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
  end component S7_SOL_ctrl_8_0;
  component S7_SOL_ctrl_9_0 is
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
  end component S7_SOL_ctrl_9_0;
  signal Conn10_port_pwm : STD_LOGIC;
  signal Conn11_port_pwm : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC;
  signal Conn1_BREADY : STD_LOGIC;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC;
  signal Conn2_port_pwm : STD_LOGIC;
  signal Conn3_port_pwm : STD_LOGIC;
  signal Conn4_port_pwm : STD_LOGIC;
  signal Conn5_port_pwm : STD_LOGIC;
  signal Conn6_port_pwm : STD_LOGIC;
  signal Conn7_port_pwm : STD_LOGIC;
  signal Conn8_port_pwm : STD_LOGIC;
  signal Conn9_port_pwm : STD_LOGIC;
  signal SOL_regs_0_SOL0_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL0_run : STD_LOGIC;
  signal SOL_regs_0_SOL0_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL0_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL0_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL0_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL1_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL1_run : STD_LOGIC;
  signal SOL_regs_0_SOL1_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL1_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL1_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL1_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL2_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL2_run : STD_LOGIC;
  signal SOL_regs_0_SOL2_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL2_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL2_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL2_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL3_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL3_run : STD_LOGIC;
  signal SOL_regs_0_SOL3_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL3_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL3_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL3_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL4_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL4_run : STD_LOGIC;
  signal SOL_regs_0_SOL4_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL4_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL4_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL4_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL5_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL5_run : STD_LOGIC;
  signal SOL_regs_0_SOL5_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL5_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL5_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL5_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL6_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL6_run : STD_LOGIC;
  signal SOL_regs_0_SOL6_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL6_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL6_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL6_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL7_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL7_run : STD_LOGIC;
  signal SOL_regs_0_SOL7_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL7_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL7_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL7_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL8_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL8_run : STD_LOGIC;
  signal SOL_regs_0_SOL8_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL8_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL8_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL8_vld_out : STD_LOGIC;
  signal SOL_regs_0_SOL9_pwm_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SOL_regs_0_SOL9_run : STD_LOGIC;
  signal SOL_regs_0_SOL9_status : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SOL_regs_0_SOL9_time_full : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL_regs_0_SOL9_vld_in : STD_LOGIC;
  signal SOL_regs_0_SOL9_vld_out : STD_LOGIC;
  signal s00_axi_aclk_3_1 : STD_LOGIC;
  signal s00_axi_aresetn_3_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  Conn1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  Conn1_ARVALID <= S00_AXI_arvalid;
  Conn1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  Conn1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  Conn1_AWVALID <= S00_AXI_awvalid;
  Conn1_BREADY <= S00_AXI_bready;
  Conn1_RREADY <= S00_AXI_rready;
  Conn1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  Conn1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= Conn1_ARREADY;
  S00_AXI_awready <= Conn1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  S00_AXI_bvalid <= Conn1_BVALID;
  S00_AXI_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  S00_AXI_rvalid <= Conn1_RVALID;
  S00_AXI_wready <= Conn1_WREADY;
  SOL0_port_pwm <= Conn2_port_pwm;
  SOL1_port_pwm <= Conn3_port_pwm;
  SOL2_port_pwm <= Conn4_port_pwm;
  SOL3_port_pwm <= Conn5_port_pwm;
  SOL4_port_pwm <= Conn6_port_pwm;
  SOL5_port_pwm <= Conn7_port_pwm;
  SOL6_port_pwm <= Conn8_port_pwm;
  SOL7_port_pwm <= Conn9_port_pwm;
  SOL8_port_pwm <= Conn10_port_pwm;
  SOL9_port_pwm <= Conn11_port_pwm;
  s00_axi_aclk_3_1 <= s00_axi_aclk;
  s00_axi_aresetn_3_1 <= s00_axi_aresetn;
SOL_ctrl_0: component S7_SOL_ctrl_0_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn2_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL0_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL0_run,
      status(1 downto 0) => SOL_regs_0_SOL0_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL0_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL0_vld_in,
      vld_out => SOL_regs_0_SOL0_vld_out
    );
SOL_ctrl_1: component S7_SOL_ctrl_1_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn3_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL1_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL1_run,
      status(1 downto 0) => SOL_regs_0_SOL1_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL1_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL1_vld_in,
      vld_out => SOL_regs_0_SOL1_vld_out
    );
SOL_ctrl_2: component S7_SOL_ctrl_2_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn4_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL2_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL2_run,
      status(1 downto 0) => SOL_regs_0_SOL2_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL2_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL2_vld_in,
      vld_out => SOL_regs_0_SOL2_vld_out
    );
SOL_ctrl_3: component S7_SOL_ctrl_3_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn5_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL3_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL3_run,
      status(1 downto 0) => SOL_regs_0_SOL3_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL3_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL3_vld_in,
      vld_out => SOL_regs_0_SOL3_vld_out
    );
SOL_ctrl_4: component S7_SOL_ctrl_4_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn6_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL4_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL4_run,
      status(1 downto 0) => SOL_regs_0_SOL4_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL4_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL4_vld_in,
      vld_out => SOL_regs_0_SOL4_vld_out
    );
SOL_ctrl_5: component S7_SOL_ctrl_5_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn7_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL5_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL5_run,
      status(1 downto 0) => SOL_regs_0_SOL5_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL5_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL5_vld_in,
      vld_out => SOL_regs_0_SOL5_vld_out
    );
SOL_ctrl_6: component S7_SOL_ctrl_6_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn8_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL6_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL6_run,
      status(1 downto 0) => SOL_regs_0_SOL6_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL6_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL6_vld_in,
      vld_out => SOL_regs_0_SOL6_vld_out
    );
SOL_ctrl_7: component S7_SOL_ctrl_7_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn9_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL7_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL7_run,
      status(1 downto 0) => SOL_regs_0_SOL7_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL7_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL7_vld_in,
      vld_out => SOL_regs_0_SOL7_vld_out
    );
SOL_ctrl_8: component S7_SOL_ctrl_8_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn10_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL8_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL8_run,
      status(1 downto 0) => SOL_regs_0_SOL8_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL8_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL8_vld_in,
      vld_out => SOL_regs_0_SOL8_vld_out
    );
SOL_ctrl_9: component S7_SOL_ctrl_9_0
     port map (
      aclk => s00_axi_aclk_3_1,
      aresetn => s00_axi_aresetn_3_1,
      port_pwm => Conn11_port_pwm,
      pwm_val(7 downto 0) => SOL_regs_0_SOL9_pwm_val(7 downto 0),
      run => SOL_regs_0_SOL9_run,
      status(1 downto 0) => SOL_regs_0_SOL9_status(1 downto 0),
      time_full(10 downto 0) => SOL_regs_0_SOL9_time_full(10 downto 0),
      vld_in => SOL_regs_0_SOL9_vld_in,
      vld_out => SOL_regs_0_SOL9_vld_out
    );
SOL_regs_0: component S7_SOL_regs_0_0
     port map (
      SOL0_pwm_val(7 downto 0) => SOL_regs_0_SOL0_pwm_val(7 downto 0),
      SOL0_run => SOL_regs_0_SOL0_run,
      SOL0_status(1 downto 0) => SOL_regs_0_SOL0_status(1 downto 0),
      SOL0_time_full(10 downto 0) => SOL_regs_0_SOL0_time_full(10 downto 0),
      SOL0_vld_in => SOL_regs_0_SOL0_vld_in,
      SOL0_vld_out => SOL_regs_0_SOL0_vld_out,
      SOL1_pwm_val(7 downto 0) => SOL_regs_0_SOL1_pwm_val(7 downto 0),
      SOL1_run => SOL_regs_0_SOL1_run,
      SOL1_status(1 downto 0) => SOL_regs_0_SOL1_status(1 downto 0),
      SOL1_time_full(10 downto 0) => SOL_regs_0_SOL1_time_full(10 downto 0),
      SOL1_vld_in => SOL_regs_0_SOL1_vld_in,
      SOL1_vld_out => SOL_regs_0_SOL1_vld_out,
      SOL2_pwm_val(7 downto 0) => SOL_regs_0_SOL2_pwm_val(7 downto 0),
      SOL2_run => SOL_regs_0_SOL2_run,
      SOL2_status(1 downto 0) => SOL_regs_0_SOL2_status(1 downto 0),
      SOL2_time_full(10 downto 0) => SOL_regs_0_SOL2_time_full(10 downto 0),
      SOL2_vld_in => SOL_regs_0_SOL2_vld_in,
      SOL2_vld_out => SOL_regs_0_SOL2_vld_out,
      SOL3_pwm_val(7 downto 0) => SOL_regs_0_SOL3_pwm_val(7 downto 0),
      SOL3_run => SOL_regs_0_SOL3_run,
      SOL3_status(1 downto 0) => SOL_regs_0_SOL3_status(1 downto 0),
      SOL3_time_full(10 downto 0) => SOL_regs_0_SOL3_time_full(10 downto 0),
      SOL3_vld_in => SOL_regs_0_SOL3_vld_in,
      SOL3_vld_out => SOL_regs_0_SOL3_vld_out,
      SOL4_pwm_val(7 downto 0) => SOL_regs_0_SOL4_pwm_val(7 downto 0),
      SOL4_run => SOL_regs_0_SOL4_run,
      SOL4_status(1 downto 0) => SOL_regs_0_SOL4_status(1 downto 0),
      SOL4_time_full(10 downto 0) => SOL_regs_0_SOL4_time_full(10 downto 0),
      SOL4_vld_in => SOL_regs_0_SOL4_vld_in,
      SOL4_vld_out => SOL_regs_0_SOL4_vld_out,
      SOL5_pwm_val(7 downto 0) => SOL_regs_0_SOL5_pwm_val(7 downto 0),
      SOL5_run => SOL_regs_0_SOL5_run,
      SOL5_status(1 downto 0) => SOL_regs_0_SOL5_status(1 downto 0),
      SOL5_time_full(10 downto 0) => SOL_regs_0_SOL5_time_full(10 downto 0),
      SOL5_vld_in => SOL_regs_0_SOL5_vld_in,
      SOL5_vld_out => SOL_regs_0_SOL5_vld_out,
      SOL6_pwm_val(7 downto 0) => SOL_regs_0_SOL6_pwm_val(7 downto 0),
      SOL6_run => SOL_regs_0_SOL6_run,
      SOL6_status(1 downto 0) => SOL_regs_0_SOL6_status(1 downto 0),
      SOL6_time_full(10 downto 0) => SOL_regs_0_SOL6_time_full(10 downto 0),
      SOL6_vld_in => SOL_regs_0_SOL6_vld_in,
      SOL6_vld_out => SOL_regs_0_SOL6_vld_out,
      SOL7_pwm_val(7 downto 0) => SOL_regs_0_SOL7_pwm_val(7 downto 0),
      SOL7_run => SOL_regs_0_SOL7_run,
      SOL7_status(1 downto 0) => SOL_regs_0_SOL7_status(1 downto 0),
      SOL7_time_full(10 downto 0) => SOL_regs_0_SOL7_time_full(10 downto 0),
      SOL7_vld_in => SOL_regs_0_SOL7_vld_in,
      SOL7_vld_out => SOL_regs_0_SOL7_vld_out,
      SOL8_pwm_val(7 downto 0) => SOL_regs_0_SOL8_pwm_val(7 downto 0),
      SOL8_run => SOL_regs_0_SOL8_run,
      SOL8_status(1 downto 0) => SOL_regs_0_SOL8_status(1 downto 0),
      SOL8_time_full(10 downto 0) => SOL_regs_0_SOL8_time_full(10 downto 0),
      SOL8_vld_in => SOL_regs_0_SOL8_vld_in,
      SOL8_vld_out => SOL_regs_0_SOL8_vld_out,
      SOL9_pwm_val(7 downto 0) => SOL_regs_0_SOL9_pwm_val(7 downto 0),
      SOL9_run => SOL_regs_0_SOL9_run,
      SOL9_status(1 downto 0) => SOL_regs_0_SOL9_status(1 downto 0),
      SOL9_time_full(10 downto 0) => SOL_regs_0_SOL9_time_full(10 downto 0),
      SOL9_vld_in => SOL_regs_0_SOL9_vld_in,
      SOL9_vld_out => SOL_regs_0_SOL9_vld_out,
      s00_axi_aclk => s00_axi_aclk_3_1,
      s00_axi_araddr(7 downto 0) => Conn1_ARADDR(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn_3_1,
      s00_axi_arprot(2 downto 0) => Conn1_ARPROT(2 downto 0),
      s00_axi_arready => Conn1_ARREADY,
      s00_axi_arvalid => Conn1_ARVALID,
      s00_axi_awaddr(7 downto 0) => Conn1_AWADDR(7 downto 0),
      s00_axi_awprot(2 downto 0) => Conn1_AWPROT(2 downto 0),
      s00_axi_awready => Conn1_AWREADY,
      s00_axi_awvalid => Conn1_AWVALID,
      s00_axi_bready => Conn1_BREADY,
      s00_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s00_axi_bvalid => Conn1_BVALID,
      s00_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s00_axi_rready => Conn1_RREADY,
      s00_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s00_axi_rvalid => Conn1_RVALID,
      s00_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s00_axi_wready => Conn1_WREADY,
      s00_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s00_axi_wvalid => Conn1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_WKOZDQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_WKOZDQ;

architecture STRUCTURE of m00_couplers_imp_WKOZDQ is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_Z97FEH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_Z97FEH;

architecture STRUCTURE of m00_couplers_imp_Z97FEH is
  component S7_m00_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component S7_m00_data_fifo_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_data_fifo_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_data_fifo_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_data_fifo_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_data_fifo_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_data_fifo_WVALID : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_data_fifo_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_data_fifo_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_data_fifo_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_data_fifo_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_data_fifo_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_data_fifo_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_data_fifo_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_data_fifo_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_data_fifo_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_data_fifo_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_m00_data_fifo_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_data_fifo_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m00_data_fifo_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_data_fifo_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_data_fifo_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_data_fifo_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m00_data_fifo_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_data_fifo_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_data_fifo_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_data_fifo_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_data_fifo_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arid(0) <= m00_data_fifo_to_m00_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= m00_data_fifo_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_data_fifo_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_data_fifo_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_data_fifo_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_data_fifo_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awid(0) <= m00_data_fifo_to_m00_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= m00_data_fifo_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_data_fifo_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_data_fifo_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_data_fifo_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_data_fifo_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_data_fifo_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m00_data_fifo_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m00_data_fifo_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_data_fifo_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_m00_data_fifo_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_data_fifo_AWREADY;
  S_AXI_bid(0) <= m00_couplers_to_m00_data_fifo_BID(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_data_fifo_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_data_fifo_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_data_fifo_RDATA(31 downto 0);
  S_AXI_rid(0) <= m00_couplers_to_m00_data_fifo_RID(0);
  S_AXI_rlast <= m00_couplers_to_m00_data_fifo_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_data_fifo_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_data_fifo_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_data_fifo_WREADY;
  m00_couplers_to_m00_data_fifo_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_data_fifo_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_data_fifo_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARID(0) <= S_AXI_arid(0);
  m00_couplers_to_m00_data_fifo_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_data_fifo_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_m00_data_fifo_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_data_fifo_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_m00_data_fifo_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_data_fifo_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_data_fifo_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_data_fifo_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_data_fifo_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWID(0) <= S_AXI_awid(0);
  m00_couplers_to_m00_data_fifo_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_data_fifo_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_m00_data_fifo_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_data_fifo_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_m00_data_fifo_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_data_fifo_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_data_fifo_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_data_fifo_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_data_fifo_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_data_fifo_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_data_fifo_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_data_fifo_WVALID <= S_AXI_wvalid;
  m00_data_fifo_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_data_fifo_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_data_fifo_to_m00_couplers_BID(11 downto 0) <= M_AXI_bid(11 downto 0);
  m00_data_fifo_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_data_fifo_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_data_fifo_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_data_fifo_to_m00_couplers_RID(11 downto 0) <= M_AXI_rid(11 downto 0);
  m00_data_fifo_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_data_fifo_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_data_fifo_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_data_fifo_to_m00_couplers_WREADY <= M_AXI_wready;
m00_data_fifo: component S7_m00_data_fifo_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => m00_data_fifo_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => m00_data_fifo_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_m00_data_fifo_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => m00_data_fifo_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => m00_data_fifo_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => NLW_m00_data_fifo_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_m00_data_fifo_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_m00_data_fifo_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m00_data_fifo_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_m00_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m00_data_fifo_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => m00_data_fifo_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => m00_data_fifo_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => m00_data_fifo_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_m00_data_fifo_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => m00_data_fifo_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => m00_data_fifo_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => NLW_m00_data_fifo_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_m00_data_fifo_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_m00_data_fifo_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m00_data_fifo_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_m00_data_fifo_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m00_data_fifo_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => m00_data_fifo_to_m00_couplers_AWVALID,
      m_axi_bid(0) => m00_data_fifo_to_m00_couplers_BID(0),
      m_axi_bready => m00_data_fifo_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => m00_data_fifo_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => m00_data_fifo_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => m00_data_fifo_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(0) => m00_data_fifo_to_m00_couplers_RID(0),
      m_axi_rlast => m00_data_fifo_to_m00_couplers_RLAST,
      m_axi_rready => m00_data_fifo_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => m00_data_fifo_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => m00_data_fifo_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => m00_data_fifo_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast => m00_data_fifo_to_m00_couplers_WLAST,
      m_axi_wready => m00_data_fifo_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => m00_data_fifo_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => m00_data_fifo_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_m00_data_fifo_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_m00_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_m00_data_fifo_ARCACHE(3 downto 0),
      s_axi_arid(0) => m00_couplers_to_m00_data_fifo_ARID(0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_m00_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_m00_data_fifo_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_m00_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_m00_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_m00_data_fifo_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_m00_data_fifo_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_m00_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_m00_data_fifo_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_m00_data_fifo_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_m00_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_m00_data_fifo_AWCACHE(3 downto 0),
      s_axi_awid(0) => m00_couplers_to_m00_data_fifo_AWID(0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_m00_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_m00_data_fifo_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_m00_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_m00_data_fifo_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_m00_data_fifo_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_m00_data_fifo_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_m00_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_m00_data_fifo_AWVALID,
      s_axi_bid(0) => m00_couplers_to_m00_data_fifo_BID(0),
      s_axi_bready => m00_couplers_to_m00_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_m00_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_m00_data_fifo_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_m00_data_fifo_RDATA(31 downto 0),
      s_axi_rid(0) => m00_couplers_to_m00_data_fifo_RID(0),
      s_axi_rlast => m00_couplers_to_m00_data_fifo_RLAST,
      s_axi_rready => m00_couplers_to_m00_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_m00_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_m00_data_fifo_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_m00_data_fifo_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_m00_data_fifo_WLAST,
      s_axi_wready => m00_couplers_to_m00_data_fifo_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_m00_data_fifo_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_m00_data_fifo_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1U8Y2K1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_1U8Y2K1;

architecture STRUCTURE of m01_couplers_imp_1U8Y2K1 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_16JWVPD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_16JWVPD;

architecture STRUCTURE of m02_couplers_imp_16JWVPD is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_TNMR2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_TNMR2;

architecture STRUCTURE of m03_couplers_imp_TNMR2 is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_WUG76P is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_WUG76P;

architecture STRUCTURE of m04_couplers_imp_WUG76P is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1TZ1F66 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1TZ1F66;

architecture STRUCTURE of m05_couplers_imp_1TZ1F66 is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m05_couplers_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m05_couplers_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_16TTYIM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_16TTYIM;

architecture STRUCTURE of m06_couplers_imp_16TTYIM is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1MBV3O5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1MBV3O5;

architecture STRUCTURE of s00_couplers_imp_1MBV3O5 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s00_couplers_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s00_couplers_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= s00_couplers_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= s00_couplers_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rlast(0) <= s00_couplers_to_s00_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_s00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_s00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RLAST(0) <= M_AXI_rlast(0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1O0O99U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1O0O99U;

architecture STRUCTURE of s00_couplers_imp_1O0O99U is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(1 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(1 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(1 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(1 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(1 downto 0) <= S_AXI_arprot(1 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(1 downto 0) <= S_AXI_awprot(1 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_KFA5VE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_KFA5VE;

architecture STRUCTURE of s01_couplers_imp_KFA5VE is
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s01_couplers_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s01_couplers_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= s01_couplers_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= s01_couplers_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s01_couplers_to_s01_couplers_AWVALID(0);
  M_AXI_bready(0) <= s01_couplers_to_s01_couplers_BREADY(0);
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s01_couplers_to_s01_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s01_couplers_to_s01_couplers_WVALID(0);
  S_AXI_awready(0) <= s01_couplers_to_s01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s01_couplers_to_s01_couplers_BVALID(0);
  S_AXI_wready(0) <= s01_couplers_to_s01_couplers_WREADY(0);
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_s01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_s01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY(0) <= M_AXI_awready(0);
  s01_couplers_to_s01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_s01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s01_couplers_to_s01_couplers_BREADY(0) <= S_AXI_bready(0);
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WLAST(0) <= S_AXI_wlast(0);
  s01_couplers_to_s01_couplers_WREADY(0) <= M_AXI_wready(0);
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end S7_axi_interconnect_0_0;

architecture STRUCTURE of S7_axi_interconnect_0_0 is
  component S7_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component S7_xbar_3;
  signal axi_interconnect_0_ACLK_net : STD_LOGIC;
  signal axi_interconnect_0_ARESETN_net : STD_LOGIC;
  signal axi_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_to_s01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_axi_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_interconnect_0_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0);
  M00_AXI_arid(0) <= m00_couplers_to_axi_interconnect_0_ARID(0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_interconnect_0_ARLEN(7 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0);
  M00_AXI_awid(0) <= m00_couplers_to_axi_interconnect_0_AWID(0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_interconnect_0_AWLEN(7 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_interconnect_0_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_interconnect_0_WVALID;
  S00_AXI_arready(0) <= axi_interconnect_0_to_s00_couplers_ARREADY(0);
  S00_AXI_rdata(31 downto 0) <= axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast(0) <= axi_interconnect_0_to_s00_couplers_RLAST(0);
  S00_AXI_rresp(1 downto 0) <= axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= axi_interconnect_0_to_s00_couplers_RVALID(0);
  S01_AXI_awready(0) <= axi_interconnect_0_to_s01_couplers_AWREADY(0);
  S01_AXI_bresp(1 downto 0) <= axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid(0) <= axi_interconnect_0_to_s01_couplers_BVALID(0);
  S01_AXI_wready(0) <= axi_interconnect_0_to_s01_couplers_WREADY(0);
  axi_interconnect_0_ACLK_net <= ACLK;
  axi_interconnect_0_ARESETN_net <= ARESETN;
  axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_interconnect_0_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  axi_interconnect_0_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  axi_interconnect_0_to_s01_couplers_AWVALID(0) <= S01_AXI_awvalid(0);
  axi_interconnect_0_to_s01_couplers_BREADY(0) <= S01_AXI_bready(0);
  axi_interconnect_0_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  axi_interconnect_0_to_s01_couplers_WLAST(0) <= S01_AXI_wlast(0);
  axi_interconnect_0_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  axi_interconnect_0_to_s01_couplers_WVALID(0) <= S01_AXI_wvalid(0);
  m00_couplers_to_axi_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_interconnect_0_BID(11 downto 0) <= M00_AXI_bid(11 downto 0);
  m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_axi_interconnect_0_RID(11 downto 0) <= M00_AXI_rid(11 downto 0);
  m00_couplers_to_axi_interconnect_0_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_interconnect_0_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_Z97FEH
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arid(0) => m00_couplers_to_axi_interconnect_0_ARID(0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arready => m00_couplers_to_axi_interconnect_0_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awid(0) => m00_couplers_to_axi_interconnect_0_AWID(0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awready => m00_couplers_to_axi_interconnect_0_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_interconnect_0_AWVALID,
      M_AXI_bid(11 downto 0) => m00_couplers_to_axi_interconnect_0_BID(11 downto 0),
      M_AXI_bready => m00_couplers_to_axi_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_RDATA(31 downto 0),
      M_AXI_rid(11 downto 0) => m00_couplers_to_axi_interconnect_0_RID(11 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_interconnect_0_RLAST,
      M_AXI_rready => m00_couplers_to_axi_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_axi_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_interconnect_0_WLAST,
      M_AXI_wready => m00_couplers_to_axi_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_axi_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_interconnect_0_WVALID,
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(0) => xbar_to_m00_couplers_BID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID(0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1MBV3O5
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => axi_interconnect_0_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_interconnect_0_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_interconnect_0_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_interconnect_0_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => axi_interconnect_0_to_s00_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => axi_interconnect_0_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => axi_interconnect_0_to_s00_couplers_ARVALID(0),
      S_AXI_rdata(31 downto 0) => axi_interconnect_0_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast(0) => axi_interconnect_0_to_s00_couplers_RLAST(0),
      S_AXI_rready(0) => axi_interconnect_0_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => axi_interconnect_0_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => axi_interconnect_0_to_s00_couplers_RVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_KFA5VE
     port map (
      M_ACLK => axi_interconnect_0_ACLK_net,
      M_ARESETN => axi_interconnect_0_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s01_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s01_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid(0) => s01_couplers_to_xbar_BVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s01_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s01_couplers_to_xbar_WVALID(0),
      S_ACLK => axi_interconnect_0_ACLK_net,
      S_ARESETN => axi_interconnect_0_ARESETN_net,
      S_AXI_awaddr(31 downto 0) => axi_interconnect_0_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_interconnect_0_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_interconnect_0_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_interconnect_0_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => axi_interconnect_0_to_s01_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => axi_interconnect_0_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => axi_interconnect_0_to_s01_couplers_AWVALID(0),
      S_AXI_bready(0) => axi_interconnect_0_to_s01_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => axi_interconnect_0_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => axi_interconnect_0_to_s01_couplers_BVALID(0),
      S_AXI_wdata(31 downto 0) => axi_interconnect_0_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => axi_interconnect_0_to_s01_couplers_WLAST(0),
      S_AXI_wready(0) => axi_interconnect_0_to_s01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => axi_interconnect_0_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => axi_interconnect_0_to_s01_couplers_WVALID(0)
    );
xbar: component S7_xbar_3
     port map (
      aclk => axi_interconnect_0_ACLK_net,
      aresetn => axi_interconnect_0_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID(0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID(0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(0) => xbar_to_m00_couplers_BID(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID(0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 0) => B"00000000",
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5 downto 3) => B"001",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(7 downto 0) => B"00000000",
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => NLW_xbar_s_axi_awready_UNCONNECTED(0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(0) => '0',
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY(0),
      s_axi_bready(0) => '0',
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => NLW_xbar_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => NLW_xbar_s_axi_bvalid_UNCONNECTED(0),
      s_axi_rdata(63 downto 32) => NLW_xbar_s_axi_rdata_UNCONNECTED(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST(0),
      s_axi_wlast(0) => '0',
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => NLW_xbar_s_axi_wready_UNCONNECTED(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_microblaze_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end S7_microblaze_0_axi_periph_0;

architecture STRUCTURE of S7_microblaze_0_axi_periph_0 is
  component S7_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component S7_xbar_2;
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 27 downto 24 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_microblaze_0_axi_periph_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_microblaze_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_microblaze_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_microblaze_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_microblaze_0_axi_periph_WVALID;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_microblaze_0_axi_periph_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_microblaze_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_microblaze_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_microblaze_0_axi_periph_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_microblaze_0_axi_periph_WVALID;
  S00_AXI_arready <= microblaze_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= microblaze_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= microblaze_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= microblaze_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= microblaze_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_microblaze_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_microblaze_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_microblaze_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_microblaze_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_microblaze_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_microblaze_0_axi_periph_WREADY <= M06_AXI_wready;
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net <= ARESETN;
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(1 downto 0) <= S00_AXI_arprot(1 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(1 downto 0) <= S00_AXI_awprot(1 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  microblaze_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  microblaze_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_WKOZDQ
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1U8Y2K1
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_16JWVPD
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m02_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_TNMR2
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m03_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m03_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready(0) => xbar_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready(0) => xbar_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => xbar_to_m03_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid(0) => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_WUG76P
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m04_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m04_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1TZ1F66
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m05_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m05_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_16TTYIM
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m06_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m06_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m06_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m06_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wvalid => m06_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_1O0O99U
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(1 downto 0) => s00_couplers_to_xbar_ARPROT(1 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(1 downto 0) => s00_couplers_to_xbar_AWPROT(1 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(1 downto 0),
      S_AXI_arready => microblaze_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arvalid => microblaze_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(1 downto 0),
      S_AXI_awready => microblaze_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awvalid => microblaze_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bready => microblaze_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => microblaze_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => microblaze_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => microblaze_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => microblaze_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => microblaze_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component S7_xbar_2
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(20 downto 18) => NLW_xbar_m_axi_arprot_UNCONNECTED(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(20 downto 18) => NLW_xbar_m_axi_awprot_UNCONNECTED(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(27 downto 24) => NLW_xbar_m_axi_wstrb_UNCONNECTED(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2) => '0',
      s_axi_arprot(1 downto 0) => s00_couplers_to_xbar_ARPROT(1 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2) => '0',
      s_axi_awprot(1 downto 0) => s00_couplers_to_xbar_AWPROT(1 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7 is
  port (
    DCM0_in1 : out STD_LOGIC;
    DCM0_in2 : out STD_LOGIC;
    DCM0_pwm : out STD_LOGIC;
    DCM1_in1 : out STD_LOGIC;
    DCM1_in2 : out STD_LOGIC;
    DCM1_pwm : out STD_LOGIC;
    DCM2_in1 : out STD_LOGIC;
    DCM2_in2 : out STD_LOGIC;
    DCM2_pwm : out STD_LOGIC;
    DCM3_in1 : out STD_LOGIC;
    DCM3_in2 : out STD_LOGIC;
    DCM3_pwm : out STD_LOGIC;
    DCM4_in1 : out STD_LOGIC;
    DCM4_in2 : out STD_LOGIC;
    DCM4_pwm : out STD_LOGIC;
    PHS0_phs_in : in STD_LOGIC;
    PHS0_pwm_out : out STD_LOGIC;
    PHS10_phs_in : in STD_LOGIC;
    PHS10_pwm_out : out STD_LOGIC;
    PHS11_phs_in : in STD_LOGIC;
    PHS11_pwm_out : out STD_LOGIC;
    PHS12_phs_in : in STD_LOGIC;
    PHS12_pwm_out : out STD_LOGIC;
    PHS13_phs_in : in STD_LOGIC;
    PHS13_pwm_out : out STD_LOGIC;
    PHS14_phs_in : in STD_LOGIC;
    PHS14_pwm_out : out STD_LOGIC;
    PHS15_phs_in : in STD_LOGIC;
    PHS15_pwm_out : out STD_LOGIC;
    PHS16_phs_in : in STD_LOGIC;
    PHS16_pwm_out : out STD_LOGIC;
    PHS17_phs_in : in STD_LOGIC;
    PHS17_pwm_out : out STD_LOGIC;
    PHS18_phs_in : in STD_LOGIC;
    PHS18_pwm_out : out STD_LOGIC;
    PHS19_phs_in : in STD_LOGIC;
    PHS19_pwm_out : out STD_LOGIC;
    PHS1_phs_in : in STD_LOGIC;
    PHS1_pwm_out : out STD_LOGIC;
    PHS20_phs_in : in STD_LOGIC;
    PHS20_pwm_out : out STD_LOGIC;
    PHS21_phs_in : in STD_LOGIC;
    PHS21_pwm_out : out STD_LOGIC;
    PHS22_phs_in : in STD_LOGIC;
    PHS22_pwm_out : out STD_LOGIC;
    PHS23_phs_in : in STD_LOGIC;
    PHS23_pwm_out : out STD_LOGIC;
    PHS24_phs_in : in STD_LOGIC;
    PHS24_pwm_out : out STD_LOGIC;
    PHS25_phs_in : in STD_LOGIC;
    PHS25_pwm_out : out STD_LOGIC;
    PHS26_phs_in : in STD_LOGIC;
    PHS26_pwm_out : out STD_LOGIC;
    PHS27_phs_in : in STD_LOGIC;
    PHS27_pwm_out : out STD_LOGIC;
    PHS28_phs_in : in STD_LOGIC;
    PHS28_pwm_out : out STD_LOGIC;
    PHS29_phs_in : in STD_LOGIC;
    PHS29_pwm_out : out STD_LOGIC;
    PHS2_phs_in : in STD_LOGIC;
    PHS2_pwm_out : out STD_LOGIC;
    PHS30_phs_in : in STD_LOGIC;
    PHS30_pwm_out : out STD_LOGIC;
    PHS31_phs_in : in STD_LOGIC;
    PHS31_pwm_out : out STD_LOGIC;
    PHS32_phs_in : in STD_LOGIC;
    PHS32_pwm_out : out STD_LOGIC;
    PHS33_phs_in : in STD_LOGIC;
    PHS33_pwm_out : out STD_LOGIC;
    PHS34_phs_in : in STD_LOGIC;
    PHS34_pwm_out : out STD_LOGIC;
    PHS35_phs_in : in STD_LOGIC;
    PHS35_pwm_out : out STD_LOGIC;
    PHS36_phs_in : in STD_LOGIC;
    PHS36_pwm_out : out STD_LOGIC;
    PHS37_phs_in : in STD_LOGIC;
    PHS37_pwm_out : out STD_LOGIC;
    PHS38_phs_in : in STD_LOGIC;
    PHS38_pwm_out : out STD_LOGIC;
    PHS39_phs_in : in STD_LOGIC;
    PHS39_pwm_out : out STD_LOGIC;
    PHS3_phs_in : in STD_LOGIC;
    PHS3_pwm_out : out STD_LOGIC;
    PHS40_phs_in : in STD_LOGIC;
    PHS40_pwm_out : out STD_LOGIC;
    PHS41_phs_in : in STD_LOGIC;
    PHS41_pwm_out : out STD_LOGIC;
    PHS42_phs_in : in STD_LOGIC;
    PHS42_pwm_out : out STD_LOGIC;
    PHS43_phs_in : in STD_LOGIC;
    PHS43_pwm_out : out STD_LOGIC;
    PHS44_phs_in : in STD_LOGIC;
    PHS44_pwm_out : out STD_LOGIC;
    PHS45_phs_in : in STD_LOGIC;
    PHS45_pwm_out : out STD_LOGIC;
    PHS46_phs_in : in STD_LOGIC;
    PHS46_pwm_out : out STD_LOGIC;
    PHS47_phs_in : in STD_LOGIC;
    PHS47_pwm_out : out STD_LOGIC;
    PHS48_phs_in : in STD_LOGIC;
    PHS48_pwm_out : out STD_LOGIC;
    PHS49_phs_in : in STD_LOGIC;
    PHS49_pwm_out : out STD_LOGIC;
    PHS4_phs_in : in STD_LOGIC;
    PHS4_pwm_out : out STD_LOGIC;
    PHS5_phs_in : in STD_LOGIC;
    PHS5_pwm_out : out STD_LOGIC;
    PHS6_phs_in : in STD_LOGIC;
    PHS6_pwm_out : out STD_LOGIC;
    PHS7_phs_in : in STD_LOGIC;
    PHS7_pwm_out : out STD_LOGIC;
    PHS8_phs_in : in STD_LOGIC;
    PHS8_pwm_out : out STD_LOGIC;
    PHS9_phs_in : in STD_LOGIC;
    PHS9_pwm_out : out STD_LOGIC;
    QSPI_cs : in STD_LOGIC;
    QSPI_d0 : in STD_LOGIC;
    QSPI_d1 : in STD_LOGIC;
    QSPI_d2 : in STD_LOGIC;
    QSPI_d3 : in STD_LOGIC;
    SM0_clk : out STD_LOGIC;
    SM0_dir : out STD_LOGIC;
    SM0_ena : out STD_LOGIC;
    SM0_m1p : out STD_LOGIC;
    SM0_m2p : out STD_LOGIC;
    SM0_ref : out STD_LOGIC;
    SM10_clk : out STD_LOGIC;
    SM10_dir : out STD_LOGIC;
    SM10_ena : out STD_LOGIC;
    SM10_m1p : out STD_LOGIC;
    SM10_m2p : out STD_LOGIC;
    SM10_ref : out STD_LOGIC;
    SM11_clk : out STD_LOGIC;
    SM11_dir : out STD_LOGIC;
    SM11_ena : out STD_LOGIC;
    SM11_m1p : out STD_LOGIC;
    SM11_m2p : out STD_LOGIC;
    SM11_ref : out STD_LOGIC;
    SM12_clk : out STD_LOGIC;
    SM12_dir : out STD_LOGIC;
    SM12_ena : out STD_LOGIC;
    SM12_m1p : out STD_LOGIC;
    SM12_m2p : out STD_LOGIC;
    SM12_ref : out STD_LOGIC;
    SM13_clk : out STD_LOGIC;
    SM13_dir : out STD_LOGIC;
    SM13_ena : out STD_LOGIC;
    SM13_m1p : out STD_LOGIC;
    SM13_m2p : out STD_LOGIC;
    SM13_ref : out STD_LOGIC;
    SM14_clk : out STD_LOGIC;
    SM14_dir : out STD_LOGIC;
    SM14_ena : out STD_LOGIC;
    SM14_m1p : out STD_LOGIC;
    SM14_m2p : out STD_LOGIC;
    SM14_ref : out STD_LOGIC;
    SM15_clk : out STD_LOGIC;
    SM15_dir : out STD_LOGIC;
    SM15_ena : out STD_LOGIC;
    SM15_m1p : out STD_LOGIC;
    SM15_m2p : out STD_LOGIC;
    SM15_ref : out STD_LOGIC;
    SM16_clk : out STD_LOGIC;
    SM16_dir : out STD_LOGIC;
    SM16_ena : out STD_LOGIC;
    SM16_m1p : out STD_LOGIC;
    SM16_m2p : out STD_LOGIC;
    SM16_ref : out STD_LOGIC;
    SM17_clk : out STD_LOGIC;
    SM17_dir : out STD_LOGIC;
    SM17_ena : out STD_LOGIC;
    SM17_m1p : out STD_LOGIC;
    SM17_m2p : out STD_LOGIC;
    SM17_ref : out STD_LOGIC;
    SM18_clk : out STD_LOGIC;
    SM18_dir : out STD_LOGIC;
    SM18_ena : out STD_LOGIC;
    SM18_m1p : out STD_LOGIC;
    SM18_m2p : out STD_LOGIC;
    SM18_ref : out STD_LOGIC;
    SM19_clk : out STD_LOGIC;
    SM19_dir : out STD_LOGIC;
    SM19_ena : out STD_LOGIC;
    SM19_m1p : out STD_LOGIC;
    SM19_m2p : out STD_LOGIC;
    SM19_ref : out STD_LOGIC;
    SM1_clk : out STD_LOGIC;
    SM1_dir : out STD_LOGIC;
    SM1_ena : out STD_LOGIC;
    SM1_m1p : out STD_LOGIC;
    SM1_m2p : out STD_LOGIC;
    SM1_ref : out STD_LOGIC;
    SM2_clk : out STD_LOGIC;
    SM2_dir : out STD_LOGIC;
    SM2_ena : out STD_LOGIC;
    SM2_m1p : out STD_LOGIC;
    SM2_m2p : out STD_LOGIC;
    SM2_ref : out STD_LOGIC;
    SM3_clk : out STD_LOGIC;
    SM3_dir : out STD_LOGIC;
    SM3_ena : out STD_LOGIC;
    SM3_m1p : out STD_LOGIC;
    SM3_m2p : out STD_LOGIC;
    SM3_ref : out STD_LOGIC;
    SM4_clk : out STD_LOGIC;
    SM4_dir : out STD_LOGIC;
    SM4_ena : out STD_LOGIC;
    SM4_m1p : out STD_LOGIC;
    SM4_m2p : out STD_LOGIC;
    SM4_ref : out STD_LOGIC;
    SM5_clk : out STD_LOGIC;
    SM5_dir : out STD_LOGIC;
    SM5_ena : out STD_LOGIC;
    SM5_m1p : out STD_LOGIC;
    SM5_m2p : out STD_LOGIC;
    SM5_ref : out STD_LOGIC;
    SM6_clk : out STD_LOGIC;
    SM6_dir : out STD_LOGIC;
    SM6_ena : out STD_LOGIC;
    SM6_m1p : out STD_LOGIC;
    SM6_m2p : out STD_LOGIC;
    SM6_ref : out STD_LOGIC;
    SM7_clk : out STD_LOGIC;
    SM7_dir : out STD_LOGIC;
    SM7_ena : out STD_LOGIC;
    SM7_m1p : out STD_LOGIC;
    SM7_m2p : out STD_LOGIC;
    SM7_ref : out STD_LOGIC;
    SM8_clk : out STD_LOGIC;
    SM8_dir : out STD_LOGIC;
    SM8_ena : out STD_LOGIC;
    SM8_m1p : out STD_LOGIC;
    SM8_m2p : out STD_LOGIC;
    SM8_ref : out STD_LOGIC;
    SM9_clk : out STD_LOGIC;
    SM9_dir : out STD_LOGIC;
    SM9_ena : out STD_LOGIC;
    SM9_m1p : out STD_LOGIC;
    SM9_m2p : out STD_LOGIC;
    SM9_ref : out STD_LOGIC;
    SM_IRQ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SOL0_port_pwm : out STD_LOGIC;
    SOL1_port_pwm : out STD_LOGIC;
    SOL2_port_pwm : out STD_LOGIC;
    SOL3_port_pwm : out STD_LOGIC;
    SOL4_port_pwm : out STD_LOGIC;
    SOL5_port_pwm : out STD_LOGIC;
    SOL6_port_pwm : out STD_LOGIC;
    SOL7_port_pwm : out STD_LOGIC;
    SOL8_port_pwm : out STD_LOGIC;
    SOL9_port_pwm : out STD_LOGIC;
    S_c2c_rxclk_in_n : in STD_LOGIC;
    S_c2c_rxclk_in_p : in STD_LOGIC;
    S_c2c_rxclk_out_n : out STD_LOGIC;
    S_c2c_rxclk_out_p : out STD_LOGIC;
    S_c2c_rxd_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S_c2c_txd_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    keep_out : out STD_LOGIC;
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_irq : out STD_LOGIC;
    reset : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    s2mm_irq : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_diff_clock_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of S7 : entity is "S7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=S7,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=128,numReposBlks=111,numNonXlnxBlks=1,numHierBlks=17,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of S7 : entity is "S7.hwdef";
end S7;

architecture STRUCTURE of S7 is
  component S7_rst_clk_wiz_1_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component S7_rst_clk_wiz_1_100M_0;
  component S7_util_idelay_ctrl_0_0 is
  port (
    rst : in STD_LOGIC;
    rdy : out STD_LOGIC;
    ref_clk : in STD_LOGIC
  );
  end component S7_util_idelay_ctrl_0_0;
  component S7_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component S7_axi_gpio_0_0;
  component S7_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component S7_axi_uartlite_0_0;
  component S7_clk_wiz_1_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component S7_clk_wiz_1_0;
  component S7_util_ds_buf_0_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component S7_util_ds_buf_0_0;
  component S7_util_ds_buf_0_1 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component S7_util_ds_buf_0_1;
  component S7_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component S7_xlconcat_0_1;
  component S7_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component S7_util_vector_logic_0_0;
  component S7_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component S7_axi_dma_0_0;
  component S7_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component S7_axis_data_fifo_0_0;
  component S7_axis_data_fifo_0_1 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component S7_axis_data_fifo_0_1;
  component S7_AXI4_Stream_Inverter_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    file_dimension : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component S7_AXI4_Stream_Inverter_0_0;
  component S7_xlconcat_0_2 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component S7_xlconcat_0_2;
  component S7_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Res : out STD_LOGIC
  );
  end component S7_util_reduced_logic_0_0;
  component S7_axi_chip2chip_0_0 is
  port (
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_c2c_m2s_intr_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_s2m_intr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    idelay_ref_clk : in STD_LOGIC;
    axi_c2c_phy_clk : in STD_LOGIC;
    axi_c2c_selio_tx_data_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_c2c_selio_rx_data_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_c2c_selio_tx_diff_clk_out_p : out STD_LOGIC;
    axi_c2c_selio_tx_diff_clk_out_n : out STD_LOGIC;
    axi_c2c_selio_rx_diff_clk_in_p : in STD_LOGIC;
    axi_c2c_selio_rx_diff_clk_in_n : in STD_LOGIC;
    axi_c2c_link_status_out : out STD_LOGIC;
    axi_c2c_multi_bit_error_out : out STD_LOGIC;
    axi_c2c_link_error_out : out STD_LOGIC;
    m_axi_lite_aclk : in STD_LOGIC;
    m_axi_lite_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_awprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_awvalid : out STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_lite_wvalid : out STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_bvalid : in STD_LOGIC;
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_arprot : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_arvalid : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rready : out STD_LOGIC
  );
  end component S7_axi_chip2chip_0_0;
  signal AXI4_Stream_Inverter_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI4_Stream_Inverter_0_M00_AXIS_TLAST : STD_LOGIC;
  signal AXI4_Stream_Inverter_0_M00_AXIS_TREADY : STD_LOGIC;
  signal AXI4_Stream_Inverter_0_M00_AXIS_TVALID : STD_LOGIC;
  signal DCM_5_DCM0_in1 : STD_LOGIC;
  signal DCM_5_DCM0_in2 : STD_LOGIC;
  signal DCM_5_DCM0_pwm : STD_LOGIC;
  signal DCM_5_DCM1_in1 : STD_LOGIC;
  signal DCM_5_DCM1_in2 : STD_LOGIC;
  signal DCM_5_DCM1_pwm : STD_LOGIC;
  signal DCM_5_DCM2_in1 : STD_LOGIC;
  signal DCM_5_DCM2_in2 : STD_LOGIC;
  signal DCM_5_DCM2_pwm : STD_LOGIC;
  signal DCM_5_DCM3_in1 : STD_LOGIC;
  signal DCM_5_DCM3_in2 : STD_LOGIC;
  signal DCM_5_DCM3_pwm : STD_LOGIC;
  signal DCM_5_DCM4_in1 : STD_LOGIC;
  signal DCM_5_DCM4_in2 : STD_LOGIC;
  signal DCM_5_DCM4_pwm : STD_LOGIC;
  signal PHS_50_PHS0_phs_in : STD_LOGIC;
  signal PHS_50_PHS0_pwm_out : STD_LOGIC;
  signal PHS_50_PHS10_phs_in : STD_LOGIC;
  signal PHS_50_PHS10_pwm_out : STD_LOGIC;
  signal PHS_50_PHS11_phs_in : STD_LOGIC;
  signal PHS_50_PHS11_pwm_out : STD_LOGIC;
  signal PHS_50_PHS12_phs_in : STD_LOGIC;
  signal PHS_50_PHS12_pwm_out : STD_LOGIC;
  signal PHS_50_PHS13_phs_in : STD_LOGIC;
  signal PHS_50_PHS13_pwm_out : STD_LOGIC;
  signal PHS_50_PHS14_phs_in : STD_LOGIC;
  signal PHS_50_PHS14_pwm_out : STD_LOGIC;
  signal PHS_50_PHS15_phs_in : STD_LOGIC;
  signal PHS_50_PHS15_pwm_out : STD_LOGIC;
  signal PHS_50_PHS16_phs_in : STD_LOGIC;
  signal PHS_50_PHS16_pwm_out : STD_LOGIC;
  signal PHS_50_PHS17_phs_in : STD_LOGIC;
  signal PHS_50_PHS17_pwm_out : STD_LOGIC;
  signal PHS_50_PHS18_phs_in : STD_LOGIC;
  signal PHS_50_PHS18_pwm_out : STD_LOGIC;
  signal PHS_50_PHS19_phs_in : STD_LOGIC;
  signal PHS_50_PHS19_pwm_out : STD_LOGIC;
  signal PHS_50_PHS1_phs_in : STD_LOGIC;
  signal PHS_50_PHS1_pwm_out : STD_LOGIC;
  signal PHS_50_PHS20_phs_in : STD_LOGIC;
  signal PHS_50_PHS20_pwm_out : STD_LOGIC;
  signal PHS_50_PHS21_phs_in : STD_LOGIC;
  signal PHS_50_PHS21_pwm_out : STD_LOGIC;
  signal PHS_50_PHS22_phs_in : STD_LOGIC;
  signal PHS_50_PHS22_pwm_out : STD_LOGIC;
  signal PHS_50_PHS23_phs_in : STD_LOGIC;
  signal PHS_50_PHS23_pwm_out : STD_LOGIC;
  signal PHS_50_PHS24_phs_in : STD_LOGIC;
  signal PHS_50_PHS24_pwm_out : STD_LOGIC;
  signal PHS_50_PHS25_phs_in : STD_LOGIC;
  signal PHS_50_PHS25_pwm_out : STD_LOGIC;
  signal PHS_50_PHS26_phs_in : STD_LOGIC;
  signal PHS_50_PHS26_pwm_out : STD_LOGIC;
  signal PHS_50_PHS27_phs_in : STD_LOGIC;
  signal PHS_50_PHS27_pwm_out : STD_LOGIC;
  signal PHS_50_PHS28_phs_in : STD_LOGIC;
  signal PHS_50_PHS28_pwm_out : STD_LOGIC;
  signal PHS_50_PHS29_phs_in : STD_LOGIC;
  signal PHS_50_PHS29_pwm_out : STD_LOGIC;
  signal PHS_50_PHS2_phs_in : STD_LOGIC;
  signal PHS_50_PHS2_pwm_out : STD_LOGIC;
  signal PHS_50_PHS30_phs_in : STD_LOGIC;
  signal PHS_50_PHS30_pwm_out : STD_LOGIC;
  signal PHS_50_PHS31_phs_in : STD_LOGIC;
  signal PHS_50_PHS31_pwm_out : STD_LOGIC;
  signal PHS_50_PHS32_phs_in : STD_LOGIC;
  signal PHS_50_PHS32_pwm_out : STD_LOGIC;
  signal PHS_50_PHS33_phs_in : STD_LOGIC;
  signal PHS_50_PHS33_pwm_out : STD_LOGIC;
  signal PHS_50_PHS34_phs_in : STD_LOGIC;
  signal PHS_50_PHS34_pwm_out : STD_LOGIC;
  signal PHS_50_PHS35_phs_in : STD_LOGIC;
  signal PHS_50_PHS35_pwm_out : STD_LOGIC;
  signal PHS_50_PHS36_phs_in : STD_LOGIC;
  signal PHS_50_PHS36_pwm_out : STD_LOGIC;
  signal PHS_50_PHS37_phs_in : STD_LOGIC;
  signal PHS_50_PHS37_pwm_out : STD_LOGIC;
  signal PHS_50_PHS38_phs_in : STD_LOGIC;
  signal PHS_50_PHS38_pwm_out : STD_LOGIC;
  signal PHS_50_PHS39_phs_in : STD_LOGIC;
  signal PHS_50_PHS39_pwm_out : STD_LOGIC;
  signal PHS_50_PHS3_phs_in : STD_LOGIC;
  signal PHS_50_PHS3_pwm_out : STD_LOGIC;
  signal PHS_50_PHS40_phs_in : STD_LOGIC;
  signal PHS_50_PHS40_pwm_out : STD_LOGIC;
  signal PHS_50_PHS41_phs_in : STD_LOGIC;
  signal PHS_50_PHS41_pwm_out : STD_LOGIC;
  signal PHS_50_PHS42_phs_in : STD_LOGIC;
  signal PHS_50_PHS42_pwm_out : STD_LOGIC;
  signal PHS_50_PHS43_phs_in : STD_LOGIC;
  signal PHS_50_PHS43_pwm_out : STD_LOGIC;
  signal PHS_50_PHS44_phs_in : STD_LOGIC;
  signal PHS_50_PHS44_pwm_out : STD_LOGIC;
  signal PHS_50_PHS45_phs_in : STD_LOGIC;
  signal PHS_50_PHS45_pwm_out : STD_LOGIC;
  signal PHS_50_PHS46_phs_in : STD_LOGIC;
  signal PHS_50_PHS46_pwm_out : STD_LOGIC;
  signal PHS_50_PHS47_phs_in : STD_LOGIC;
  signal PHS_50_PHS47_pwm_out : STD_LOGIC;
  signal PHS_50_PHS48_phs_in : STD_LOGIC;
  signal PHS_50_PHS48_pwm_out : STD_LOGIC;
  signal PHS_50_PHS49_phs_in : STD_LOGIC;
  signal PHS_50_PHS49_pwm_out : STD_LOGIC;
  signal PHS_50_PHS4_phs_in : STD_LOGIC;
  signal PHS_50_PHS4_pwm_out : STD_LOGIC;
  signal PHS_50_PHS5_phs_in : STD_LOGIC;
  signal PHS_50_PHS5_pwm_out : STD_LOGIC;
  signal PHS_50_PHS6_phs_in : STD_LOGIC;
  signal PHS_50_PHS6_pwm_out : STD_LOGIC;
  signal PHS_50_PHS7_phs_in : STD_LOGIC;
  signal PHS_50_PHS7_pwm_out : STD_LOGIC;
  signal PHS_50_PHS8_phs_in : STD_LOGIC;
  signal PHS_50_PHS8_pwm_out : STD_LOGIC;
  signal PHS_50_PHS9_phs_in : STD_LOGIC;
  signal PHS_50_PHS9_pwm_out : STD_LOGIC;
  signal PHS_irq_L2S_0 : STD_LOGIC;
  signal PHS_irq_L2S_1 : STD_LOGIC;
  signal PHS_irq_S2L_0 : STD_LOGIC;
  signal PHS_irq_S2L_1 : STD_LOGIC;
  signal QSPI_clk_1 : STD_LOGIC;
  signal QSPI_cs_1 : STD_LOGIC;
  signal QSPI_d0_1 : STD_LOGIC;
  signal QSPI_d2_1 : STD_LOGIC;
  signal QSPI_d3_1 : STD_LOGIC;
  signal S00_AXI_0_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_0_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_0_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_0_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_0_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_0_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_0_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_0_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_2_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_2_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_3_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_3_1_ARREADY : STD_LOGIC;
  signal S00_AXI_3_1_ARVALID : STD_LOGIC;
  signal S00_AXI_3_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_3_1_AWREADY : STD_LOGIC;
  signal S00_AXI_3_1_AWVALID : STD_LOGIC;
  signal S00_AXI_3_1_BREADY : STD_LOGIC;
  signal S00_AXI_3_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_3_1_BVALID : STD_LOGIC;
  signal S00_AXI_3_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_1_RREADY : STD_LOGIC;
  signal S00_AXI_3_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_3_1_RVALID : STD_LOGIC;
  signal S00_AXI_3_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_3_1_WREADY : STD_LOGIC;
  signal S00_AXI_3_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_3_1_WVALID : STD_LOGIC;
  signal S2L1_L2S1_S2L0_L2S0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SM_20_SM0_clk : STD_LOGIC;
  signal SM_20_SM0_dir : STD_LOGIC;
  signal SM_20_SM0_ena : STD_LOGIC;
  signal SM_20_SM0_m1p : STD_LOGIC;
  signal SM_20_SM0_m2p : STD_LOGIC;
  signal SM_20_SM0_ref : STD_LOGIC;
  signal SM_20_SM10_clk : STD_LOGIC;
  signal SM_20_SM10_dir : STD_LOGIC;
  signal SM_20_SM10_ena : STD_LOGIC;
  signal SM_20_SM10_m1p : STD_LOGIC;
  signal SM_20_SM10_m2p : STD_LOGIC;
  signal SM_20_SM10_ref : STD_LOGIC;
  signal SM_20_SM11_clk : STD_LOGIC;
  signal SM_20_SM11_dir : STD_LOGIC;
  signal SM_20_SM11_ena : STD_LOGIC;
  signal SM_20_SM11_m1p : STD_LOGIC;
  signal SM_20_SM11_m2p : STD_LOGIC;
  signal SM_20_SM11_ref : STD_LOGIC;
  signal SM_20_SM12_clk : STD_LOGIC;
  signal SM_20_SM12_dir : STD_LOGIC;
  signal SM_20_SM12_ena : STD_LOGIC;
  signal SM_20_SM12_m1p : STD_LOGIC;
  signal SM_20_SM12_m2p : STD_LOGIC;
  signal SM_20_SM12_ref : STD_LOGIC;
  signal SM_20_SM13_clk : STD_LOGIC;
  signal SM_20_SM13_dir : STD_LOGIC;
  signal SM_20_SM13_ena : STD_LOGIC;
  signal SM_20_SM13_m1p : STD_LOGIC;
  signal SM_20_SM13_m2p : STD_LOGIC;
  signal SM_20_SM13_ref : STD_LOGIC;
  signal SM_20_SM14_clk : STD_LOGIC;
  signal SM_20_SM14_dir : STD_LOGIC;
  signal SM_20_SM14_ena : STD_LOGIC;
  signal SM_20_SM14_m1p : STD_LOGIC;
  signal SM_20_SM14_m2p : STD_LOGIC;
  signal SM_20_SM14_ref : STD_LOGIC;
  signal SM_20_SM15_clk : STD_LOGIC;
  signal SM_20_SM15_dir : STD_LOGIC;
  signal SM_20_SM15_ena : STD_LOGIC;
  signal SM_20_SM15_m1p : STD_LOGIC;
  signal SM_20_SM15_m2p : STD_LOGIC;
  signal SM_20_SM15_ref : STD_LOGIC;
  signal SM_20_SM16_clk : STD_LOGIC;
  signal SM_20_SM16_dir : STD_LOGIC;
  signal SM_20_SM16_ena : STD_LOGIC;
  signal SM_20_SM16_m1p : STD_LOGIC;
  signal SM_20_SM16_m2p : STD_LOGIC;
  signal SM_20_SM16_ref : STD_LOGIC;
  signal SM_20_SM17_clk : STD_LOGIC;
  signal SM_20_SM17_dir : STD_LOGIC;
  signal SM_20_SM17_ena : STD_LOGIC;
  signal SM_20_SM17_m1p : STD_LOGIC;
  signal SM_20_SM17_m2p : STD_LOGIC;
  signal SM_20_SM17_ref : STD_LOGIC;
  signal SM_20_SM18_clk : STD_LOGIC;
  signal SM_20_SM18_dir : STD_LOGIC;
  signal SM_20_SM18_ena : STD_LOGIC;
  signal SM_20_SM18_m1p : STD_LOGIC;
  signal SM_20_SM18_m2p : STD_LOGIC;
  signal SM_20_SM18_ref : STD_LOGIC;
  signal SM_20_SM19_clk : STD_LOGIC;
  signal SM_20_SM19_dir : STD_LOGIC;
  signal SM_20_SM19_ena : STD_LOGIC;
  signal SM_20_SM19_m1p : STD_LOGIC;
  signal SM_20_SM19_m2p : STD_LOGIC;
  signal SM_20_SM19_ref : STD_LOGIC;
  signal SM_20_SM1_clk : STD_LOGIC;
  signal SM_20_SM1_dir : STD_LOGIC;
  signal SM_20_SM1_ena : STD_LOGIC;
  signal SM_20_SM1_m1p : STD_LOGIC;
  signal SM_20_SM1_m2p : STD_LOGIC;
  signal SM_20_SM1_ref : STD_LOGIC;
  signal SM_20_SM2_clk : STD_LOGIC;
  signal SM_20_SM2_dir : STD_LOGIC;
  signal SM_20_SM2_ena : STD_LOGIC;
  signal SM_20_SM2_m1p : STD_LOGIC;
  signal SM_20_SM2_m2p : STD_LOGIC;
  signal SM_20_SM2_ref : STD_LOGIC;
  signal SM_20_SM3_clk : STD_LOGIC;
  signal SM_20_SM3_dir : STD_LOGIC;
  signal SM_20_SM3_ena : STD_LOGIC;
  signal SM_20_SM3_m1p : STD_LOGIC;
  signal SM_20_SM3_m2p : STD_LOGIC;
  signal SM_20_SM3_ref : STD_LOGIC;
  signal SM_20_SM4_clk : STD_LOGIC;
  signal SM_20_SM4_dir : STD_LOGIC;
  signal SM_20_SM4_ena : STD_LOGIC;
  signal SM_20_SM4_m1p : STD_LOGIC;
  signal SM_20_SM4_m2p : STD_LOGIC;
  signal SM_20_SM4_ref : STD_LOGIC;
  signal SM_20_SM5_clk : STD_LOGIC;
  signal SM_20_SM5_dir : STD_LOGIC;
  signal SM_20_SM5_ena : STD_LOGIC;
  signal SM_20_SM5_m1p : STD_LOGIC;
  signal SM_20_SM5_m2p : STD_LOGIC;
  signal SM_20_SM5_ref : STD_LOGIC;
  signal SM_20_SM6_clk : STD_LOGIC;
  signal SM_20_SM6_dir : STD_LOGIC;
  signal SM_20_SM6_ena : STD_LOGIC;
  signal SM_20_SM6_m1p : STD_LOGIC;
  signal SM_20_SM6_m2p : STD_LOGIC;
  signal SM_20_SM6_ref : STD_LOGIC;
  signal SM_20_SM7_clk : STD_LOGIC;
  signal SM_20_SM7_dir : STD_LOGIC;
  signal SM_20_SM7_ena : STD_LOGIC;
  signal SM_20_SM7_m1p : STD_LOGIC;
  signal SM_20_SM7_m2p : STD_LOGIC;
  signal SM_20_SM7_ref : STD_LOGIC;
  signal SM_20_SM8_clk : STD_LOGIC;
  signal SM_20_SM8_dir : STD_LOGIC;
  signal SM_20_SM8_ena : STD_LOGIC;
  signal SM_20_SM8_m1p : STD_LOGIC;
  signal SM_20_SM8_m2p : STD_LOGIC;
  signal SM_20_SM8_ref : STD_LOGIC;
  signal SM_20_SM9_clk : STD_LOGIC;
  signal SM_20_SM9_dir : STD_LOGIC;
  signal SM_20_SM9_ena : STD_LOGIC;
  signal SM_20_SM9_m1p : STD_LOGIC;
  signal SM_20_SM9_m2p : STD_LOGIC;
  signal SM_20_SM9_ref : STD_LOGIC;
  signal SM_20_SM_irq : STD_LOGIC;
  signal SOL_10_SOL0_port_pwm : STD_LOGIC;
  signal SOL_10_SOL1_port_pwm : STD_LOGIC;
  signal SOL_10_SOL2_port_pwm : STD_LOGIC;
  signal SOL_10_SOL3_port_pwm : STD_LOGIC;
  signal SOL_10_SOL4_port_pwm : STD_LOGIC;
  signal SOL_10_SOL5_port_pwm : STD_LOGIC;
  signal SOL_10_SOL6_port_pwm : STD_LOGIC;
  signal SOL_10_SOL7_port_pwm : STD_LOGIC;
  signal SOL_10_SOL8_port_pwm : STD_LOGIC;
  signal SOL_10_SOL9_port_pwm : STD_LOGIC;
  signal S_c2c_rxclk_in_n_1 : STD_LOGIC;
  signal S_c2c_rxclk_in_p_1 : STD_LOGIC;
  signal S_c2c_txd_in_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_c2c_s_m_axi_lite_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_c2c_s_m_axi_lite_ARPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_c2c_s_m_axi_lite_ARREADY : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_ARVALID : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_c2c_s_m_axi_lite_AWPROT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_c2c_s_m_axi_lite_AWREADY : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_AWVALID : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_BREADY : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_c2c_s_m_axi_lite_BVALID : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_c2c_s_m_axi_lite_RREADY : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_c2c_s_m_axi_lite_RVALID : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_c2c_s_m_axi_lite_WREADY : STD_LOGIC;
  signal axi_c2c_s_m_axi_lite_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_c2c_s_m_axi_lite_WVALID : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_selio_tx_data_out : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_n : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_p : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_1_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_MM2S_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_1_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_1_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_1_M_AXI_S2MM_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_dma_1_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_1_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal clk_100_MB : STD_LOGIC;
  signal clk_200 : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
  signal ibufgds_200_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal reset_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_2 : STD_LOGIC;
  signal rst_clk_wiz_1_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_diff_clk_ibufds_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_diff_clock_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_diff_clock_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_reduced_logic_0_Res : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_AXI4_Stream_Inverter_0_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_AXI4_Stream_Inverter_0_file_dimension_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PHS_50_PHS_ena_dbg_UNCONNECTED : STD_LOGIC;
  signal NLW_PHS_50_PHS_irqs_L2S_0_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_PHS_50_PHS_irqs_L2S_1_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_PHS_50_PHS_irqs_S2L_0_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_PHS_50_PHS_irqs_S2L_1_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal NLW_SM_20_SM_irqs_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal NLW_axi_c2c_s_axi_c2c_link_error_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_c2c_s_axi_c2c_link_status_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_c2c_s_axi_c2c_multi_bit_error_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_c2c_s_axi_c2c_s2m_intr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_dma_1_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_1_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axis_data_fifo_0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axis_data_fifo_1_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_clk_wiz_1_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_1_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_1_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_1_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_util_idelay_ctrl_0_rdy_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DCM0_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM0 in1";
  attribute X_INTERFACE_INFO of DCM0_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM0 in2";
  attribute X_INTERFACE_INFO of DCM0_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM0 pwm";
  attribute X_INTERFACE_INFO of DCM1_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM1 in1";
  attribute X_INTERFACE_INFO of DCM1_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM1 in2";
  attribute X_INTERFACE_INFO of DCM1_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM1 pwm";
  attribute X_INTERFACE_INFO of DCM2_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM2 in1";
  attribute X_INTERFACE_INFO of DCM2_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM2 in2";
  attribute X_INTERFACE_INFO of DCM2_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM2 pwm";
  attribute X_INTERFACE_INFO of DCM3_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM3 in1";
  attribute X_INTERFACE_INFO of DCM3_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM3 in2";
  attribute X_INTERFACE_INFO of DCM3_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM3 pwm";
  attribute X_INTERFACE_INFO of DCM4_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM4 in1";
  attribute X_INTERFACE_INFO of DCM4_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM4 in2";
  attribute X_INTERFACE_INFO of DCM4_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM4 pwm";
  attribute X_INTERFACE_INFO of PHS0_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS0 phs_in";
  attribute X_INTERFACE_INFO of PHS0_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS0 pwm_out";
  attribute X_INTERFACE_INFO of PHS10_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS10 phs_in";
  attribute X_INTERFACE_INFO of PHS10_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS10 pwm_out";
  attribute X_INTERFACE_INFO of PHS11_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS11 phs_in";
  attribute X_INTERFACE_INFO of PHS11_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS11 pwm_out";
  attribute X_INTERFACE_INFO of PHS12_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS12 phs_in";
  attribute X_INTERFACE_INFO of PHS12_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS12 pwm_out";
  attribute X_INTERFACE_INFO of PHS13_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS13 phs_in";
  attribute X_INTERFACE_INFO of PHS13_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS13 pwm_out";
  attribute X_INTERFACE_INFO of PHS14_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS14 phs_in";
  attribute X_INTERFACE_INFO of PHS14_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS14 pwm_out";
  attribute X_INTERFACE_INFO of PHS15_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS15 phs_in";
  attribute X_INTERFACE_INFO of PHS15_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS15 pwm_out";
  attribute X_INTERFACE_INFO of PHS16_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS16 phs_in";
  attribute X_INTERFACE_INFO of PHS16_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS16 pwm_out";
  attribute X_INTERFACE_INFO of PHS17_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS17 phs_in";
  attribute X_INTERFACE_INFO of PHS17_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS17 pwm_out";
  attribute X_INTERFACE_INFO of PHS18_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS18 phs_in";
  attribute X_INTERFACE_INFO of PHS18_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS18 pwm_out";
  attribute X_INTERFACE_INFO of PHS19_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS19 phs_in";
  attribute X_INTERFACE_INFO of PHS19_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS19 pwm_out";
  attribute X_INTERFACE_INFO of PHS1_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS1 phs_in";
  attribute X_INTERFACE_INFO of PHS1_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS1 pwm_out";
  attribute X_INTERFACE_INFO of PHS20_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS20 phs_in";
  attribute X_INTERFACE_INFO of PHS20_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS20 pwm_out";
  attribute X_INTERFACE_INFO of PHS21_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS21 phs_in";
  attribute X_INTERFACE_INFO of PHS21_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS21 pwm_out";
  attribute X_INTERFACE_INFO of PHS22_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS22 phs_in";
  attribute X_INTERFACE_INFO of PHS22_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS22 pwm_out";
  attribute X_INTERFACE_INFO of PHS23_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS23 phs_in";
  attribute X_INTERFACE_INFO of PHS23_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS23 pwm_out";
  attribute X_INTERFACE_INFO of PHS24_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS24 phs_in";
  attribute X_INTERFACE_INFO of PHS24_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS24 pwm_out";
  attribute X_INTERFACE_INFO of PHS25_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS25 phs_in";
  attribute X_INTERFACE_INFO of PHS25_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS25 pwm_out";
  attribute X_INTERFACE_INFO of PHS26_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS26 phs_in";
  attribute X_INTERFACE_INFO of PHS26_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS26 pwm_out";
  attribute X_INTERFACE_INFO of PHS27_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS27 phs_in";
  attribute X_INTERFACE_INFO of PHS27_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS27 pwm_out";
  attribute X_INTERFACE_INFO of PHS28_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS28 phs_in";
  attribute X_INTERFACE_INFO of PHS28_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS28 pwm_out";
  attribute X_INTERFACE_INFO of PHS29_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS29 phs_in";
  attribute X_INTERFACE_INFO of PHS29_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS29 pwm_out";
  attribute X_INTERFACE_INFO of PHS2_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS2 phs_in";
  attribute X_INTERFACE_INFO of PHS2_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS2 pwm_out";
  attribute X_INTERFACE_INFO of PHS30_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS30 phs_in";
  attribute X_INTERFACE_INFO of PHS30_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS30 pwm_out";
  attribute X_INTERFACE_INFO of PHS31_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS31 phs_in";
  attribute X_INTERFACE_INFO of PHS31_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS31 pwm_out";
  attribute X_INTERFACE_INFO of PHS32_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS32 phs_in";
  attribute X_INTERFACE_INFO of PHS32_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS32 pwm_out";
  attribute X_INTERFACE_INFO of PHS33_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS33 phs_in";
  attribute X_INTERFACE_INFO of PHS33_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS33 pwm_out";
  attribute X_INTERFACE_INFO of PHS34_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS34 phs_in";
  attribute X_INTERFACE_INFO of PHS34_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS34 pwm_out";
  attribute X_INTERFACE_INFO of PHS35_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS35 phs_in";
  attribute X_INTERFACE_INFO of PHS35_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS35 pwm_out";
  attribute X_INTERFACE_INFO of PHS36_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS36 phs_in";
  attribute X_INTERFACE_INFO of PHS36_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS36 pwm_out";
  attribute X_INTERFACE_INFO of PHS37_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS37 phs_in";
  attribute X_INTERFACE_INFO of PHS37_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS37 pwm_out";
  attribute X_INTERFACE_INFO of PHS38_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS38 phs_in";
  attribute X_INTERFACE_INFO of PHS38_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS38 pwm_out";
  attribute X_INTERFACE_INFO of PHS39_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS39 phs_in";
  attribute X_INTERFACE_INFO of PHS39_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS39 pwm_out";
  attribute X_INTERFACE_INFO of PHS3_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS3 phs_in";
  attribute X_INTERFACE_INFO of PHS3_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS3 pwm_out";
  attribute X_INTERFACE_INFO of PHS40_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS40 phs_in";
  attribute X_INTERFACE_INFO of PHS40_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS40 pwm_out";
  attribute X_INTERFACE_INFO of PHS41_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS41 phs_in";
  attribute X_INTERFACE_INFO of PHS41_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS41 pwm_out";
  attribute X_INTERFACE_INFO of PHS42_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS42 phs_in";
  attribute X_INTERFACE_INFO of PHS42_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS42 pwm_out";
  attribute X_INTERFACE_INFO of PHS43_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS43 phs_in";
  attribute X_INTERFACE_INFO of PHS43_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS43 pwm_out";
  attribute X_INTERFACE_INFO of PHS44_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS44 phs_in";
  attribute X_INTERFACE_INFO of PHS44_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS44 pwm_out";
  attribute X_INTERFACE_INFO of PHS45_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS45 phs_in";
  attribute X_INTERFACE_INFO of PHS45_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS45 pwm_out";
  attribute X_INTERFACE_INFO of PHS46_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS46 phs_in";
  attribute X_INTERFACE_INFO of PHS46_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS46 pwm_out";
  attribute X_INTERFACE_INFO of PHS47_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS47 phs_in";
  attribute X_INTERFACE_INFO of PHS47_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS47 pwm_out";
  attribute X_INTERFACE_INFO of PHS48_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS48 phs_in";
  attribute X_INTERFACE_INFO of PHS48_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS48 pwm_out";
  attribute X_INTERFACE_INFO of PHS49_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS49 phs_in";
  attribute X_INTERFACE_INFO of PHS49_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS49 pwm_out";
  attribute X_INTERFACE_INFO of PHS4_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS4 phs_in";
  attribute X_INTERFACE_INFO of PHS4_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS4 pwm_out";
  attribute X_INTERFACE_INFO of PHS5_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS5 phs_in";
  attribute X_INTERFACE_INFO of PHS5_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS5 pwm_out";
  attribute X_INTERFACE_INFO of PHS6_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS6 phs_in";
  attribute X_INTERFACE_INFO of PHS6_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS6 pwm_out";
  attribute X_INTERFACE_INFO of PHS7_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS7 phs_in";
  attribute X_INTERFACE_INFO of PHS7_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS7 pwm_out";
  attribute X_INTERFACE_INFO of PHS8_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS8 phs_in";
  attribute X_INTERFACE_INFO of PHS8_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS8 pwm_out";
  attribute X_INTERFACE_INFO of PHS9_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS9 phs_in";
  attribute X_INTERFACE_INFO of PHS9_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS9 pwm_out";
  attribute X_INTERFACE_INFO of SM0_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM0 clk";
  attribute X_INTERFACE_INFO of SM0_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM0 dir";
  attribute X_INTERFACE_INFO of SM0_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM0 ena";
  attribute X_INTERFACE_INFO of SM0_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM0 m1p";
  attribute X_INTERFACE_INFO of SM0_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM0 m2p";
  attribute X_INTERFACE_INFO of SM0_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM0 ref";
  attribute X_INTERFACE_INFO of SM10_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM10 clk";
  attribute X_INTERFACE_INFO of SM10_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM10 dir";
  attribute X_INTERFACE_INFO of SM10_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM10 ena";
  attribute X_INTERFACE_INFO of SM10_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM10 m1p";
  attribute X_INTERFACE_INFO of SM10_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM10 m2p";
  attribute X_INTERFACE_INFO of SM10_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM10 ref";
  attribute X_INTERFACE_INFO of SM11_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM11 clk";
  attribute X_INTERFACE_INFO of SM11_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM11 dir";
  attribute X_INTERFACE_INFO of SM11_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM11 ena";
  attribute X_INTERFACE_INFO of SM11_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM11 m1p";
  attribute X_INTERFACE_INFO of SM11_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM11 m2p";
  attribute X_INTERFACE_INFO of SM11_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM11 ref";
  attribute X_INTERFACE_INFO of SM12_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM12 clk";
  attribute X_INTERFACE_INFO of SM12_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM12 dir";
  attribute X_INTERFACE_INFO of SM12_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM12 ena";
  attribute X_INTERFACE_INFO of SM12_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM12 m1p";
  attribute X_INTERFACE_INFO of SM12_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM12 m2p";
  attribute X_INTERFACE_INFO of SM12_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM12 ref";
  attribute X_INTERFACE_INFO of SM13_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM13 clk";
  attribute X_INTERFACE_INFO of SM13_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM13 dir";
  attribute X_INTERFACE_INFO of SM13_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM13 ena";
  attribute X_INTERFACE_INFO of SM13_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM13 m1p";
  attribute X_INTERFACE_INFO of SM13_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM13 m2p";
  attribute X_INTERFACE_INFO of SM13_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM13 ref";
  attribute X_INTERFACE_INFO of SM14_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM14 clk";
  attribute X_INTERFACE_INFO of SM14_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM14 dir";
  attribute X_INTERFACE_INFO of SM14_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM14 ena";
  attribute X_INTERFACE_INFO of SM14_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM14 m1p";
  attribute X_INTERFACE_INFO of SM14_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM14 m2p";
  attribute X_INTERFACE_INFO of SM14_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM14 ref";
  attribute X_INTERFACE_INFO of SM15_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM15 clk";
  attribute X_INTERFACE_INFO of SM15_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM15 dir";
  attribute X_INTERFACE_INFO of SM15_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM15 ena";
  attribute X_INTERFACE_INFO of SM15_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM15 m1p";
  attribute X_INTERFACE_INFO of SM15_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM15 m2p";
  attribute X_INTERFACE_INFO of SM15_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM15 ref";
  attribute X_INTERFACE_INFO of SM16_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM16 clk";
  attribute X_INTERFACE_INFO of SM16_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM16 dir";
  attribute X_INTERFACE_INFO of SM16_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM16 ena";
  attribute X_INTERFACE_INFO of SM16_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM16 m1p";
  attribute X_INTERFACE_INFO of SM16_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM16 m2p";
  attribute X_INTERFACE_INFO of SM16_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM16 ref";
  attribute X_INTERFACE_INFO of SM17_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM17 clk";
  attribute X_INTERFACE_INFO of SM17_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM17 dir";
  attribute X_INTERFACE_INFO of SM17_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM17 ena";
  attribute X_INTERFACE_INFO of SM17_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM17 m1p";
  attribute X_INTERFACE_INFO of SM17_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM17 m2p";
  attribute X_INTERFACE_INFO of SM17_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM17 ref";
  attribute X_INTERFACE_INFO of SM18_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM18 clk";
  attribute X_INTERFACE_INFO of SM18_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM18 dir";
  attribute X_INTERFACE_INFO of SM18_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM18 ena";
  attribute X_INTERFACE_INFO of SM18_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM18 m1p";
  attribute X_INTERFACE_INFO of SM18_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM18 m2p";
  attribute X_INTERFACE_INFO of SM18_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM18 ref";
  attribute X_INTERFACE_INFO of SM19_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM19 clk";
  attribute X_INTERFACE_INFO of SM19_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM19 dir";
  attribute X_INTERFACE_INFO of SM19_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM19 ena";
  attribute X_INTERFACE_INFO of SM19_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM19 m1p";
  attribute X_INTERFACE_INFO of SM19_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM19 m2p";
  attribute X_INTERFACE_INFO of SM19_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM19 ref";
  attribute X_INTERFACE_INFO of SM1_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM1 clk";
  attribute X_INTERFACE_INFO of SM1_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM1 dir";
  attribute X_INTERFACE_INFO of SM1_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM1 ena";
  attribute X_INTERFACE_INFO of SM1_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM1 m1p";
  attribute X_INTERFACE_INFO of SM1_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM1 m2p";
  attribute X_INTERFACE_INFO of SM1_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM1 ref";
  attribute X_INTERFACE_INFO of SM2_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM2 clk";
  attribute X_INTERFACE_INFO of SM2_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM2 dir";
  attribute X_INTERFACE_INFO of SM2_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM2 ena";
  attribute X_INTERFACE_INFO of SM2_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM2 m1p";
  attribute X_INTERFACE_INFO of SM2_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM2 m2p";
  attribute X_INTERFACE_INFO of SM2_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM2 ref";
  attribute X_INTERFACE_INFO of SM3_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM3 clk";
  attribute X_INTERFACE_INFO of SM3_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM3 dir";
  attribute X_INTERFACE_INFO of SM3_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM3 ena";
  attribute X_INTERFACE_INFO of SM3_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM3 m1p";
  attribute X_INTERFACE_INFO of SM3_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM3 m2p";
  attribute X_INTERFACE_INFO of SM3_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM3 ref";
  attribute X_INTERFACE_INFO of SM4_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM4 clk";
  attribute X_INTERFACE_INFO of SM4_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM4 dir";
  attribute X_INTERFACE_INFO of SM4_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM4 ena";
  attribute X_INTERFACE_INFO of SM4_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM4 m1p";
  attribute X_INTERFACE_INFO of SM4_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM4 m2p";
  attribute X_INTERFACE_INFO of SM4_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM4 ref";
  attribute X_INTERFACE_INFO of SM5_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM5 clk";
  attribute X_INTERFACE_INFO of SM5_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM5 dir";
  attribute X_INTERFACE_INFO of SM5_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM5 ena";
  attribute X_INTERFACE_INFO of SM5_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM5 m1p";
  attribute X_INTERFACE_INFO of SM5_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM5 m2p";
  attribute X_INTERFACE_INFO of SM5_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM5 ref";
  attribute X_INTERFACE_INFO of SM6_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM6 clk";
  attribute X_INTERFACE_INFO of SM6_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM6 dir";
  attribute X_INTERFACE_INFO of SM6_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM6 ena";
  attribute X_INTERFACE_INFO of SM6_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM6 m1p";
  attribute X_INTERFACE_INFO of SM6_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM6 m2p";
  attribute X_INTERFACE_INFO of SM6_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM6 ref";
  attribute X_INTERFACE_INFO of SM7_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM7 clk";
  attribute X_INTERFACE_INFO of SM7_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM7 dir";
  attribute X_INTERFACE_INFO of SM7_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM7 ena";
  attribute X_INTERFACE_INFO of SM7_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM7 m1p";
  attribute X_INTERFACE_INFO of SM7_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM7 m2p";
  attribute X_INTERFACE_INFO of SM7_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM7 ref";
  attribute X_INTERFACE_INFO of SM8_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM8 clk";
  attribute X_INTERFACE_INFO of SM8_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM8 dir";
  attribute X_INTERFACE_INFO of SM8_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM8 ena";
  attribute X_INTERFACE_INFO of SM8_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM8 m1p";
  attribute X_INTERFACE_INFO of SM8_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM8 m2p";
  attribute X_INTERFACE_INFO of SM8_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM8 ref";
  attribute X_INTERFACE_INFO of SM9_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM9 clk";
  attribute X_INTERFACE_INFO of SM9_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM9 dir";
  attribute X_INTERFACE_INFO of SM9_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM9 ena";
  attribute X_INTERFACE_INFO of SM9_m1p : signal is "xilinx.com:user:SM_IOs:1.0 SM9 m1p";
  attribute X_INTERFACE_INFO of SM9_m2p : signal is "xilinx.com:user:SM_IOs:1.0 SM9 m2p";
  attribute X_INTERFACE_INFO of SM9_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM9 ref";
  attribute X_INTERFACE_INFO of SOL0_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL0 port_pwm";
  attribute X_INTERFACE_INFO of SOL1_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL1 port_pwm";
  attribute X_INTERFACE_INFO of SOL2_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL2 port_pwm";
  attribute X_INTERFACE_INFO of SOL3_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL3 port_pwm";
  attribute X_INTERFACE_INFO of SOL4_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL4 port_pwm";
  attribute X_INTERFACE_INFO of SOL5_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL5 port_pwm";
  attribute X_INTERFACE_INFO of SOL6_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL6 port_pwm";
  attribute X_INTERFACE_INFO of SOL7_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL7 port_pwm";
  attribute X_INTERFACE_INFO of SOL8_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL8 port_pwm";
  attribute X_INTERFACE_INFO of SOL9_port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL9 port_pwm";
  attribute X_INTERFACE_INFO of S_c2c_rxclk_in_n : signal is "xilinx.com:signal:clock:1.0 CLK.S_C2C_RXCLK_IN_N CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_c2c_rxclk_in_n : signal is "XIL_INTERFACENAME CLK.S_C2C_RXCLK_IN_N, CLK_DOMAIN S7_S_c2c_rxclk_in_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of S_c2c_rxclk_in_p : signal is "xilinx.com:signal:clock:1.0 CLK.S_C2C_RXCLK_IN_P CLK";
  attribute X_INTERFACE_PARAMETER of S_c2c_rxclk_in_p : signal is "XIL_INTERFACENAME CLK.S_C2C_RXCLK_IN_P, CLK_DOMAIN S7_S_c2c_rxclk_in_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of S_c2c_rxclk_out_n : signal is "xilinx.com:signal:clock:1.0 CLK.S_C2C_RXCLK_OUT_N CLK";
  attribute X_INTERFACE_PARAMETER of S_c2c_rxclk_out_n : signal is "XIL_INTERFACENAME CLK.S_C2C_RXCLK_OUT_N, CLK_DOMAIN S7_axi_chip2chip_0_0_axi_c2c_selio_tx_diff_clk_out_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of S_c2c_rxclk_out_p : signal is "xilinx.com:signal:clock:1.0 CLK.S_C2C_RXCLK_OUT_P CLK";
  attribute X_INTERFACE_PARAMETER of S_c2c_rxclk_out_p : signal is "XIL_INTERFACENAME CLK.S_C2C_RXCLK_OUT_P, CLK_DOMAIN S7_axi_chip2chip_0_0_axi_c2c_selio_tx_diff_clk_out_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of mm2s_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.MM2S_IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER of mm2s_irq : signal is "XIL_INTERFACENAME INTR.MM2S_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of rs232_uart_rxd : signal is "xilinx.com:interface:uart:1.0 rs232_uart RxD";
  attribute X_INTERFACE_INFO of rs232_uart_txd : signal is "xilinx.com:interface:uart:1.0 rs232_uart TxD";
  attribute X_INTERFACE_INFO of s2mm_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.S2MM_IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER of s2mm_irq : signal is "XIL_INTERFACENAME INTR.S2MM_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of SM_IRQ : signal is "xilinx.com:signal:interrupt:1.0 INTR.SM_IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER of SM_IRQ : signal is "XIL_INTERFACENAME INTR.SM_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of led_4bits_tri_o : signal is "xilinx.com:interface:gpio:1.0 led_4bits TRI_O";
  attribute X_INTERFACE_INFO of sys_diff_clock_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N";
  attribute X_INTERFACE_PARAMETER of sys_diff_clock_clk_n : signal is "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000";
  attribute X_INTERFACE_INFO of sys_diff_clock_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P";
begin
  DCM0_in1 <= DCM_5_DCM0_in1;
  DCM0_in2 <= DCM_5_DCM0_in2;
  DCM0_pwm <= DCM_5_DCM0_pwm;
  DCM1_in1 <= DCM_5_DCM1_in1;
  DCM1_in2 <= DCM_5_DCM1_in2;
  DCM1_pwm <= DCM_5_DCM1_pwm;
  DCM2_in1 <= DCM_5_DCM2_in1;
  DCM2_in2 <= DCM_5_DCM2_in2;
  DCM2_pwm <= DCM_5_DCM2_pwm;
  DCM3_in1 <= DCM_5_DCM3_in1;
  DCM3_in2 <= DCM_5_DCM3_in2;
  DCM3_pwm <= DCM_5_DCM3_pwm;
  DCM4_in1 <= DCM_5_DCM4_in1;
  DCM4_in2 <= DCM_5_DCM4_in2;
  DCM4_pwm <= DCM_5_DCM4_pwm;
  PHS0_pwm_out <= PHS_50_PHS0_pwm_out;
  PHS10_pwm_out <= PHS_50_PHS10_pwm_out;
  PHS11_pwm_out <= PHS_50_PHS11_pwm_out;
  PHS12_pwm_out <= PHS_50_PHS12_pwm_out;
  PHS13_pwm_out <= PHS_50_PHS13_pwm_out;
  PHS14_pwm_out <= PHS_50_PHS14_pwm_out;
  PHS15_pwm_out <= PHS_50_PHS15_pwm_out;
  PHS16_pwm_out <= PHS_50_PHS16_pwm_out;
  PHS17_pwm_out <= PHS_50_PHS17_pwm_out;
  PHS18_pwm_out <= PHS_50_PHS18_pwm_out;
  PHS19_pwm_out <= PHS_50_PHS19_pwm_out;
  PHS1_pwm_out <= PHS_50_PHS1_pwm_out;
  PHS20_pwm_out <= PHS_50_PHS20_pwm_out;
  PHS21_pwm_out <= PHS_50_PHS21_pwm_out;
  PHS22_pwm_out <= PHS_50_PHS22_pwm_out;
  PHS23_pwm_out <= PHS_50_PHS23_pwm_out;
  PHS24_pwm_out <= PHS_50_PHS24_pwm_out;
  PHS25_pwm_out <= PHS_50_PHS25_pwm_out;
  PHS26_pwm_out <= PHS_50_PHS26_pwm_out;
  PHS27_pwm_out <= PHS_50_PHS27_pwm_out;
  PHS28_pwm_out <= PHS_50_PHS28_pwm_out;
  PHS29_pwm_out <= PHS_50_PHS29_pwm_out;
  PHS2_pwm_out <= PHS_50_PHS2_pwm_out;
  PHS30_pwm_out <= PHS_50_PHS30_pwm_out;
  PHS31_pwm_out <= PHS_50_PHS31_pwm_out;
  PHS32_pwm_out <= PHS_50_PHS32_pwm_out;
  PHS33_pwm_out <= PHS_50_PHS33_pwm_out;
  PHS34_pwm_out <= PHS_50_PHS34_pwm_out;
  PHS35_pwm_out <= PHS_50_PHS35_pwm_out;
  PHS36_pwm_out <= PHS_50_PHS36_pwm_out;
  PHS37_pwm_out <= PHS_50_PHS37_pwm_out;
  PHS38_pwm_out <= PHS_50_PHS38_pwm_out;
  PHS39_pwm_out <= PHS_50_PHS39_pwm_out;
  PHS3_pwm_out <= PHS_50_PHS3_pwm_out;
  PHS40_pwm_out <= PHS_50_PHS40_pwm_out;
  PHS41_pwm_out <= PHS_50_PHS41_pwm_out;
  PHS42_pwm_out <= PHS_50_PHS42_pwm_out;
  PHS43_pwm_out <= PHS_50_PHS43_pwm_out;
  PHS44_pwm_out <= PHS_50_PHS44_pwm_out;
  PHS45_pwm_out <= PHS_50_PHS45_pwm_out;
  PHS46_pwm_out <= PHS_50_PHS46_pwm_out;
  PHS47_pwm_out <= PHS_50_PHS47_pwm_out;
  PHS48_pwm_out <= PHS_50_PHS48_pwm_out;
  PHS49_pwm_out <= PHS_50_PHS49_pwm_out;
  PHS4_pwm_out <= PHS_50_PHS4_pwm_out;
  PHS5_pwm_out <= PHS_50_PHS5_pwm_out;
  PHS6_pwm_out <= PHS_50_PHS6_pwm_out;
  PHS7_pwm_out <= PHS_50_PHS7_pwm_out;
  PHS8_pwm_out <= PHS_50_PHS8_pwm_out;
  PHS9_pwm_out <= PHS_50_PHS9_pwm_out;
  PHS_50_PHS0_phs_in <= PHS0_phs_in;
  PHS_50_PHS10_phs_in <= PHS10_phs_in;
  PHS_50_PHS11_phs_in <= PHS11_phs_in;
  PHS_50_PHS12_phs_in <= PHS12_phs_in;
  PHS_50_PHS13_phs_in <= PHS13_phs_in;
  PHS_50_PHS14_phs_in <= PHS14_phs_in;
  PHS_50_PHS15_phs_in <= PHS15_phs_in;
  PHS_50_PHS16_phs_in <= PHS16_phs_in;
  PHS_50_PHS17_phs_in <= PHS17_phs_in;
  PHS_50_PHS18_phs_in <= PHS18_phs_in;
  PHS_50_PHS19_phs_in <= PHS19_phs_in;
  PHS_50_PHS1_phs_in <= PHS1_phs_in;
  PHS_50_PHS20_phs_in <= PHS20_phs_in;
  PHS_50_PHS21_phs_in <= PHS21_phs_in;
  PHS_50_PHS22_phs_in <= PHS22_phs_in;
  PHS_50_PHS23_phs_in <= PHS23_phs_in;
  PHS_50_PHS24_phs_in <= PHS24_phs_in;
  PHS_50_PHS25_phs_in <= PHS25_phs_in;
  PHS_50_PHS26_phs_in <= PHS26_phs_in;
  PHS_50_PHS27_phs_in <= PHS27_phs_in;
  PHS_50_PHS28_phs_in <= PHS28_phs_in;
  PHS_50_PHS29_phs_in <= PHS29_phs_in;
  PHS_50_PHS2_phs_in <= PHS2_phs_in;
  PHS_50_PHS30_phs_in <= PHS30_phs_in;
  PHS_50_PHS31_phs_in <= PHS31_phs_in;
  PHS_50_PHS32_phs_in <= PHS32_phs_in;
  PHS_50_PHS33_phs_in <= PHS33_phs_in;
  PHS_50_PHS34_phs_in <= PHS34_phs_in;
  PHS_50_PHS35_phs_in <= PHS35_phs_in;
  PHS_50_PHS36_phs_in <= PHS36_phs_in;
  PHS_50_PHS37_phs_in <= PHS37_phs_in;
  PHS_50_PHS38_phs_in <= PHS38_phs_in;
  PHS_50_PHS39_phs_in <= PHS39_phs_in;
  PHS_50_PHS3_phs_in <= PHS3_phs_in;
  PHS_50_PHS40_phs_in <= PHS40_phs_in;
  PHS_50_PHS41_phs_in <= PHS41_phs_in;
  PHS_50_PHS42_phs_in <= PHS42_phs_in;
  PHS_50_PHS43_phs_in <= PHS43_phs_in;
  PHS_50_PHS44_phs_in <= PHS44_phs_in;
  PHS_50_PHS45_phs_in <= PHS45_phs_in;
  PHS_50_PHS46_phs_in <= PHS46_phs_in;
  PHS_50_PHS47_phs_in <= PHS47_phs_in;
  PHS_50_PHS48_phs_in <= PHS48_phs_in;
  PHS_50_PHS49_phs_in <= PHS49_phs_in;
  PHS_50_PHS4_phs_in <= PHS4_phs_in;
  PHS_50_PHS5_phs_in <= PHS5_phs_in;
  PHS_50_PHS6_phs_in <= PHS6_phs_in;
  PHS_50_PHS7_phs_in <= PHS7_phs_in;
  PHS_50_PHS8_phs_in <= PHS8_phs_in;
  PHS_50_PHS9_phs_in <= PHS9_phs_in;
  QSPI_clk_1 <= QSPI_d0;
  QSPI_cs_1 <= QSPI_cs;
  QSPI_d0_1 <= QSPI_d1;
  QSPI_d2_1 <= QSPI_d2;
  QSPI_d3_1 <= QSPI_d3;
  SM0_clk <= SM_20_SM0_clk;
  SM0_dir <= SM_20_SM0_dir;
  SM0_ena <= SM_20_SM0_ena;
  SM0_m1p <= SM_20_SM0_m1p;
  SM0_m2p <= SM_20_SM0_m2p;
  SM0_ref <= SM_20_SM0_ref;
  SM10_clk <= SM_20_SM10_clk;
  SM10_dir <= SM_20_SM10_dir;
  SM10_ena <= SM_20_SM10_ena;
  SM10_m1p <= SM_20_SM10_m1p;
  SM10_m2p <= SM_20_SM10_m2p;
  SM10_ref <= SM_20_SM10_ref;
  SM11_clk <= SM_20_SM11_clk;
  SM11_dir <= SM_20_SM11_dir;
  SM11_ena <= SM_20_SM11_ena;
  SM11_m1p <= SM_20_SM11_m1p;
  SM11_m2p <= SM_20_SM11_m2p;
  SM11_ref <= SM_20_SM11_ref;
  SM12_clk <= SM_20_SM12_clk;
  SM12_dir <= SM_20_SM12_dir;
  SM12_ena <= SM_20_SM12_ena;
  SM12_m1p <= SM_20_SM12_m1p;
  SM12_m2p <= SM_20_SM12_m2p;
  SM12_ref <= SM_20_SM12_ref;
  SM13_clk <= SM_20_SM13_clk;
  SM13_dir <= SM_20_SM13_dir;
  SM13_ena <= SM_20_SM13_ena;
  SM13_m1p <= SM_20_SM13_m1p;
  SM13_m2p <= SM_20_SM13_m2p;
  SM13_ref <= SM_20_SM13_ref;
  SM14_clk <= SM_20_SM14_clk;
  SM14_dir <= SM_20_SM14_dir;
  SM14_ena <= SM_20_SM14_ena;
  SM14_m1p <= SM_20_SM14_m1p;
  SM14_m2p <= SM_20_SM14_m2p;
  SM14_ref <= SM_20_SM14_ref;
  SM15_clk <= SM_20_SM15_clk;
  SM15_dir <= SM_20_SM15_dir;
  SM15_ena <= SM_20_SM15_ena;
  SM15_m1p <= SM_20_SM15_m1p;
  SM15_m2p <= SM_20_SM15_m2p;
  SM15_ref <= SM_20_SM15_ref;
  SM16_clk <= SM_20_SM16_clk;
  SM16_dir <= SM_20_SM16_dir;
  SM16_ena <= SM_20_SM16_ena;
  SM16_m1p <= SM_20_SM16_m1p;
  SM16_m2p <= SM_20_SM16_m2p;
  SM16_ref <= SM_20_SM16_ref;
  SM17_clk <= SM_20_SM17_clk;
  SM17_dir <= SM_20_SM17_dir;
  SM17_ena <= SM_20_SM17_ena;
  SM17_m1p <= SM_20_SM17_m1p;
  SM17_m2p <= SM_20_SM17_m2p;
  SM17_ref <= SM_20_SM17_ref;
  SM18_clk <= SM_20_SM18_clk;
  SM18_dir <= SM_20_SM18_dir;
  SM18_ena <= SM_20_SM18_ena;
  SM18_m1p <= SM_20_SM18_m1p;
  SM18_m2p <= SM_20_SM18_m2p;
  SM18_ref <= SM_20_SM18_ref;
  SM19_clk <= SM_20_SM19_clk;
  SM19_dir <= SM_20_SM19_dir;
  SM19_ena <= SM_20_SM19_ena;
  SM19_m1p <= SM_20_SM19_m1p;
  SM19_m2p <= SM_20_SM19_m2p;
  SM19_ref <= SM_20_SM19_ref;
  SM1_clk <= SM_20_SM1_clk;
  SM1_dir <= SM_20_SM1_dir;
  SM1_ena <= SM_20_SM1_ena;
  SM1_m1p <= SM_20_SM1_m1p;
  SM1_m2p <= SM_20_SM1_m2p;
  SM1_ref <= SM_20_SM1_ref;
  SM2_clk <= SM_20_SM2_clk;
  SM2_dir <= SM_20_SM2_dir;
  SM2_ena <= SM_20_SM2_ena;
  SM2_m1p <= SM_20_SM2_m1p;
  SM2_m2p <= SM_20_SM2_m2p;
  SM2_ref <= SM_20_SM2_ref;
  SM3_clk <= SM_20_SM3_clk;
  SM3_dir <= SM_20_SM3_dir;
  SM3_ena <= SM_20_SM3_ena;
  SM3_m1p <= SM_20_SM3_m1p;
  SM3_m2p <= SM_20_SM3_m2p;
  SM3_ref <= SM_20_SM3_ref;
  SM4_clk <= SM_20_SM4_clk;
  SM4_dir <= SM_20_SM4_dir;
  SM4_ena <= SM_20_SM4_ena;
  SM4_m1p <= SM_20_SM4_m1p;
  SM4_m2p <= SM_20_SM4_m2p;
  SM4_ref <= SM_20_SM4_ref;
  SM5_clk <= SM_20_SM5_clk;
  SM5_dir <= SM_20_SM5_dir;
  SM5_ena <= SM_20_SM5_ena;
  SM5_m1p <= SM_20_SM5_m1p;
  SM5_m2p <= SM_20_SM5_m2p;
  SM5_ref <= SM_20_SM5_ref;
  SM6_clk <= SM_20_SM6_clk;
  SM6_dir <= SM_20_SM6_dir;
  SM6_ena <= SM_20_SM6_ena;
  SM6_m1p <= SM_20_SM6_m1p;
  SM6_m2p <= SM_20_SM6_m2p;
  SM6_ref <= SM_20_SM6_ref;
  SM7_clk <= SM_20_SM7_clk;
  SM7_dir <= SM_20_SM7_dir;
  SM7_ena <= SM_20_SM7_ena;
  SM7_m1p <= SM_20_SM7_m1p;
  SM7_m2p <= SM_20_SM7_m2p;
  SM7_ref <= SM_20_SM7_ref;
  SM8_clk <= SM_20_SM8_clk;
  SM8_dir <= SM_20_SM8_dir;
  SM8_ena <= SM_20_SM8_ena;
  SM8_m1p <= SM_20_SM8_m1p;
  SM8_m2p <= SM_20_SM8_m2p;
  SM8_ref <= SM_20_SM8_ref;
  SM9_clk <= SM_20_SM9_clk;
  SM9_dir <= SM_20_SM9_dir;
  SM9_ena <= SM_20_SM9_ena;
  SM9_m1p <= SM_20_SM9_m1p;
  SM9_m2p <= SM_20_SM9_m2p;
  SM9_ref <= SM_20_SM9_ref;
  SM_IRQ(0) <= SM_20_SM_irq;
  SOL0_port_pwm <= SOL_10_SOL0_port_pwm;
  SOL1_port_pwm <= SOL_10_SOL1_port_pwm;
  SOL2_port_pwm <= SOL_10_SOL2_port_pwm;
  SOL3_port_pwm <= SOL_10_SOL3_port_pwm;
  SOL4_port_pwm <= SOL_10_SOL4_port_pwm;
  SOL5_port_pwm <= SOL_10_SOL5_port_pwm;
  SOL6_port_pwm <= SOL_10_SOL6_port_pwm;
  SOL7_port_pwm <= SOL_10_SOL7_port_pwm;
  SOL8_port_pwm <= SOL_10_SOL8_port_pwm;
  SOL9_port_pwm <= SOL_10_SOL9_port_pwm;
  S_c2c_rxclk_in_n_1 <= S_c2c_rxclk_in_n;
  S_c2c_rxclk_in_p_1 <= S_c2c_rxclk_in_p;
  S_c2c_rxclk_out_n <= axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_n;
  S_c2c_rxclk_out_p <= axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_p;
  S_c2c_rxd_out(16 downto 0) <= axi_chip2chip_0_axi_c2c_selio_tx_data_out(16 downto 0);
  S_c2c_txd_in_1(16 downto 0) <= S_c2c_txd_in(16 downto 0);
  axi_uartlite_0_UART_RxD <= rs232_uart_rxd;
  keep_out <= util_reduced_logic_0_Res;
  led_4bits_tri_o(3 downto 0) <= axi_gpio_0_GPIO_TRI_O(3 downto 0);
  mm2s_irq <= axi_dma_0_mm2s_introut;
  reset_2 <= reset;
  rs232_uart_txd <= axi_uartlite_0_UART_TxD;
  s2mm_irq <= axi_dma_0_s2mm_introut;
  sys_diff_clock_1_CLK_N(0) <= sys_diff_clock_clk_n(0);
  sys_diff_clock_1_CLK_P(0) <= sys_diff_clock_clk_p(0);
AXI4_Stream_Inverter_0: component S7_AXI4_Stream_Inverter_0_0
     port map (
      clk => clk_100_MB,
      counter(31 downto 0) => NLW_AXI4_Stream_Inverter_0_counter_UNCONNECTED(31 downto 0),
      file_dimension(31 downto 0) => NLW_AXI4_Stream_Inverter_0_file_dimension_UNCONNECTED(31 downto 0),
      m00_axis_tdata(31 downto 0) => AXI4_Stream_Inverter_0_M00_AXIS_TDATA(31 downto 0),
      m00_axis_tlast => AXI4_Stream_Inverter_0_M00_AXIS_TLAST,
      m00_axis_tready => AXI4_Stream_Inverter_0_M00_AXIS_TREADY,
      m00_axis_tvalid => AXI4_Stream_Inverter_0_M00_AXIS_TVALID,
      resetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s00_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      s00_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      s00_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      s00_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID
    );
DCM_5: entity work.DCM_5_imp_J00IJ8
     port map (
      DCM0_in1 => DCM_5_DCM0_in1,
      DCM0_in2 => DCM_5_DCM0_in2,
      DCM0_pwm => DCM_5_DCM0_pwm,
      DCM1_in1 => DCM_5_DCM1_in1,
      DCM1_in2 => DCM_5_DCM1_in2,
      DCM1_pwm => DCM_5_DCM1_pwm,
      DCM2_in1 => DCM_5_DCM2_in1,
      DCM2_in2 => DCM_5_DCM2_in2,
      DCM2_pwm => DCM_5_DCM2_pwm,
      DCM3_in1 => DCM_5_DCM3_in1,
      DCM3_in2 => DCM_5_DCM3_in2,
      DCM3_pwm => DCM_5_DCM3_pwm,
      DCM4_in1 => DCM_5_DCM4_in1,
      DCM4_in2 => DCM_5_DCM4_in2,
      DCM4_pwm => DCM_5_DCM4_pwm,
      S00_AXI_araddr(31 downto 0) => S00_AXI_2_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_2_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => S00_AXI_2_1_ARREADY(0),
      S00_AXI_arvalid(0) => S00_AXI_2_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_2_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_2_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_2_1_AWREADY(0),
      S00_AXI_awvalid(0) => S00_AXI_2_1_AWVALID(0),
      S00_AXI_bready(0) => S00_AXI_2_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_2_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_2_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_2_1_RDATA(31 downto 0),
      S00_AXI_rready(0) => S00_AXI_2_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_2_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_2_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_2_1_WDATA(31 downto 0),
      S00_AXI_wready(0) => S00_AXI_2_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_2_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_2_1_WVALID(0),
      clk200 => clk_200,
      s00_axi_aclk => clk_100_MB,
      s00_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0)
    );
PHS_50: entity work.PHS_50_imp_RL92HO
     port map (
      PHS0_phs_in => PHS_50_PHS0_phs_in,
      PHS0_pwm_out => PHS_50_PHS0_pwm_out,
      PHS10_phs_in => PHS_50_PHS10_phs_in,
      PHS10_pwm_out => PHS_50_PHS10_pwm_out,
      PHS11_phs_in => PHS_50_PHS11_phs_in,
      PHS11_pwm_out => PHS_50_PHS11_pwm_out,
      PHS12_phs_in => PHS_50_PHS12_phs_in,
      PHS12_pwm_out => PHS_50_PHS12_pwm_out,
      PHS13_phs_in => PHS_50_PHS13_phs_in,
      PHS13_pwm_out => PHS_50_PHS13_pwm_out,
      PHS14_phs_in => PHS_50_PHS14_phs_in,
      PHS14_pwm_out => PHS_50_PHS14_pwm_out,
      PHS15_phs_in => PHS_50_PHS15_phs_in,
      PHS15_pwm_out => PHS_50_PHS15_pwm_out,
      PHS16_phs_in => PHS_50_PHS16_phs_in,
      PHS16_pwm_out => PHS_50_PHS16_pwm_out,
      PHS17_phs_in => PHS_50_PHS17_phs_in,
      PHS17_pwm_out => PHS_50_PHS17_pwm_out,
      PHS18_phs_in => PHS_50_PHS18_phs_in,
      PHS18_pwm_out => PHS_50_PHS18_pwm_out,
      PHS19_phs_in => PHS_50_PHS19_phs_in,
      PHS19_pwm_out => PHS_50_PHS19_pwm_out,
      PHS1_phs_in => PHS_50_PHS1_phs_in,
      PHS1_pwm_out => PHS_50_PHS1_pwm_out,
      PHS20_phs_in => PHS_50_PHS20_phs_in,
      PHS20_pwm_out => PHS_50_PHS20_pwm_out,
      PHS21_phs_in => PHS_50_PHS21_phs_in,
      PHS21_pwm_out => PHS_50_PHS21_pwm_out,
      PHS22_phs_in => PHS_50_PHS22_phs_in,
      PHS22_pwm_out => PHS_50_PHS22_pwm_out,
      PHS23_phs_in => PHS_50_PHS23_phs_in,
      PHS23_pwm_out => PHS_50_PHS23_pwm_out,
      PHS24_phs_in => PHS_50_PHS24_phs_in,
      PHS24_pwm_out => PHS_50_PHS24_pwm_out,
      PHS25_phs_in => PHS_50_PHS25_phs_in,
      PHS25_pwm_out => PHS_50_PHS25_pwm_out,
      PHS26_phs_in => PHS_50_PHS26_phs_in,
      PHS26_pwm_out => PHS_50_PHS26_pwm_out,
      PHS27_phs_in => PHS_50_PHS27_phs_in,
      PHS27_pwm_out => PHS_50_PHS27_pwm_out,
      PHS28_phs_in => PHS_50_PHS28_phs_in,
      PHS28_pwm_out => PHS_50_PHS28_pwm_out,
      PHS29_phs_in => PHS_50_PHS29_phs_in,
      PHS29_pwm_out => PHS_50_PHS29_pwm_out,
      PHS2_phs_in => PHS_50_PHS2_phs_in,
      PHS2_pwm_out => PHS_50_PHS2_pwm_out,
      PHS30_phs_in => PHS_50_PHS30_phs_in,
      PHS30_pwm_out => PHS_50_PHS30_pwm_out,
      PHS31_phs_in => PHS_50_PHS31_phs_in,
      PHS31_pwm_out => PHS_50_PHS31_pwm_out,
      PHS32_phs_in => PHS_50_PHS32_phs_in,
      PHS32_pwm_out => PHS_50_PHS32_pwm_out,
      PHS33_phs_in => PHS_50_PHS33_phs_in,
      PHS33_pwm_out => PHS_50_PHS33_pwm_out,
      PHS34_phs_in => PHS_50_PHS34_phs_in,
      PHS34_pwm_out => PHS_50_PHS34_pwm_out,
      PHS35_phs_in => PHS_50_PHS35_phs_in,
      PHS35_pwm_out => PHS_50_PHS35_pwm_out,
      PHS36_phs_in => PHS_50_PHS36_phs_in,
      PHS36_pwm_out => PHS_50_PHS36_pwm_out,
      PHS37_phs_in => PHS_50_PHS37_phs_in,
      PHS37_pwm_out => PHS_50_PHS37_pwm_out,
      PHS38_phs_in => PHS_50_PHS38_phs_in,
      PHS38_pwm_out => PHS_50_PHS38_pwm_out,
      PHS39_phs_in => PHS_50_PHS39_phs_in,
      PHS39_pwm_out => PHS_50_PHS39_pwm_out,
      PHS3_phs_in => PHS_50_PHS3_phs_in,
      PHS3_pwm_out => PHS_50_PHS3_pwm_out,
      PHS40_phs_in => PHS_50_PHS40_phs_in,
      PHS40_pwm_out => PHS_50_PHS40_pwm_out,
      PHS41_phs_in => PHS_50_PHS41_phs_in,
      PHS41_pwm_out => PHS_50_PHS41_pwm_out,
      PHS42_phs_in => PHS_50_PHS42_phs_in,
      PHS42_pwm_out => PHS_50_PHS42_pwm_out,
      PHS43_phs_in => PHS_50_PHS43_phs_in,
      PHS43_pwm_out => PHS_50_PHS43_pwm_out,
      PHS44_phs_in => PHS_50_PHS44_phs_in,
      PHS44_pwm_out => PHS_50_PHS44_pwm_out,
      PHS45_phs_in => PHS_50_PHS45_phs_in,
      PHS45_pwm_out => PHS_50_PHS45_pwm_out,
      PHS46_phs_in => PHS_50_PHS46_phs_in,
      PHS46_pwm_out => PHS_50_PHS46_pwm_out,
      PHS47_phs_in => PHS_50_PHS47_phs_in,
      PHS47_pwm_out => PHS_50_PHS47_pwm_out,
      PHS48_phs_in => PHS_50_PHS48_phs_in,
      PHS48_pwm_out => PHS_50_PHS48_pwm_out,
      PHS49_phs_in => PHS_50_PHS49_phs_in,
      PHS49_pwm_out => PHS_50_PHS49_pwm_out,
      PHS4_phs_in => PHS_50_PHS4_phs_in,
      PHS4_pwm_out => PHS_50_PHS4_pwm_out,
      PHS5_phs_in => PHS_50_PHS5_phs_in,
      PHS5_pwm_out => PHS_50_PHS5_pwm_out,
      PHS6_phs_in => PHS_50_PHS6_phs_in,
      PHS6_pwm_out => PHS_50_PHS6_pwm_out,
      PHS7_phs_in => PHS_50_PHS7_phs_in,
      PHS7_pwm_out => PHS_50_PHS7_pwm_out,
      PHS8_phs_in => PHS_50_PHS8_phs_in,
      PHS8_pwm_out => PHS_50_PHS8_pwm_out,
      PHS9_phs_in => PHS_50_PHS9_phs_in,
      PHS9_pwm_out => PHS_50_PHS9_pwm_out,
      PHS_ena_dbg => NLW_PHS_50_PHS_ena_dbg_UNCONNECTED,
      PHS_irq_L2S_0 => PHS_irq_L2S_0,
      PHS_irq_L2S_1 => PHS_irq_L2S_1,
      PHS_irq_S2L_0 => PHS_irq_S2L_0,
      PHS_irq_S2L_1 => PHS_irq_S2L_1,
      PHS_irqs_L2S_0(24 downto 0) => NLW_PHS_50_PHS_irqs_L2S_0_UNCONNECTED(24 downto 0),
      PHS_irqs_L2S_1(24 downto 0) => NLW_PHS_50_PHS_irqs_L2S_1_UNCONNECTED(24 downto 0),
      PHS_irqs_S2L_0(24 downto 0) => NLW_PHS_50_PHS_irqs_S2L_0_UNCONNECTED(24 downto 0),
      PHS_irqs_S2L_1(24 downto 0) => NLW_PHS_50_PHS_irqs_S2L_1_UNCONNECTED(24 downto 0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => S00_AXI_1_1_ARREADY(0),
      S00_AXI_arvalid(0) => S00_AXI_1_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_1_1_AWREADY(0),
      S00_AXI_awvalid(0) => S00_AXI_1_1_AWVALID(0),
      S00_AXI_bready(0) => S00_AXI_1_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_1_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_1_RDATA(31 downto 0),
      S00_AXI_rready(0) => S00_AXI_1_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_1_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_1_WDATA(31 downto 0),
      S00_AXI_wready(0) => S00_AXI_1_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_1_1_WVALID(0),
      s00_axi_aclk => clk_100_MB,
      s00_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0)
    );
SM_20: entity work.SM_20_imp_2OPAUR
     port map (
      S00_AXI_araddr(31 downto 0) => S00_AXI_0_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_0_1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => S00_AXI_0_1_ARREADY(0),
      S00_AXI_arvalid(0) => S00_AXI_0_1_ARVALID(0),
      S00_AXI_awaddr(31 downto 0) => S00_AXI_0_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_0_1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => S00_AXI_0_1_AWREADY(0),
      S00_AXI_awvalid(0) => S00_AXI_0_1_AWVALID(0),
      S00_AXI_bready(0) => S00_AXI_0_1_BREADY(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_0_1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_0_1_BVALID(0),
      S00_AXI_rdata(31 downto 0) => S00_AXI_0_1_RDATA(31 downto 0),
      S00_AXI_rready(0) => S00_AXI_0_1_RREADY(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_0_1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_0_1_RVALID(0),
      S00_AXI_wdata(31 downto 0) => S00_AXI_0_1_WDATA(31 downto 0),
      S00_AXI_wready(0) => S00_AXI_0_1_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => S00_AXI_0_1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_0_1_WVALID(0),
      SM0_clk => SM_20_SM0_clk,
      SM0_dir => SM_20_SM0_dir,
      SM0_ena => SM_20_SM0_ena,
      SM0_m1p => SM_20_SM0_m1p,
      SM0_m2p => SM_20_SM0_m2p,
      SM0_ref => SM_20_SM0_ref,
      SM10_clk => SM_20_SM10_clk,
      SM10_dir => SM_20_SM10_dir,
      SM10_ena => SM_20_SM10_ena,
      SM10_m1p => SM_20_SM10_m1p,
      SM10_m2p => SM_20_SM10_m2p,
      SM10_ref => SM_20_SM10_ref,
      SM11_clk => SM_20_SM11_clk,
      SM11_dir => SM_20_SM11_dir,
      SM11_ena => SM_20_SM11_ena,
      SM11_m1p => SM_20_SM11_m1p,
      SM11_m2p => SM_20_SM11_m2p,
      SM11_ref => SM_20_SM11_ref,
      SM12_clk => SM_20_SM12_clk,
      SM12_dir => SM_20_SM12_dir,
      SM12_ena => SM_20_SM12_ena,
      SM12_m1p => SM_20_SM12_m1p,
      SM12_m2p => SM_20_SM12_m2p,
      SM12_ref => SM_20_SM12_ref,
      SM13_clk => SM_20_SM13_clk,
      SM13_dir => SM_20_SM13_dir,
      SM13_ena => SM_20_SM13_ena,
      SM13_m1p => SM_20_SM13_m1p,
      SM13_m2p => SM_20_SM13_m2p,
      SM13_ref => SM_20_SM13_ref,
      SM14_clk => SM_20_SM14_clk,
      SM14_dir => SM_20_SM14_dir,
      SM14_ena => SM_20_SM14_ena,
      SM14_m1p => SM_20_SM14_m1p,
      SM14_m2p => SM_20_SM14_m2p,
      SM14_ref => SM_20_SM14_ref,
      SM15_clk => SM_20_SM15_clk,
      SM15_dir => SM_20_SM15_dir,
      SM15_ena => SM_20_SM15_ena,
      SM15_m1p => SM_20_SM15_m1p,
      SM15_m2p => SM_20_SM15_m2p,
      SM15_ref => SM_20_SM15_ref,
      SM16_clk => SM_20_SM16_clk,
      SM16_dir => SM_20_SM16_dir,
      SM16_ena => SM_20_SM16_ena,
      SM16_m1p => SM_20_SM16_m1p,
      SM16_m2p => SM_20_SM16_m2p,
      SM16_ref => SM_20_SM16_ref,
      SM17_clk => SM_20_SM17_clk,
      SM17_dir => SM_20_SM17_dir,
      SM17_ena => SM_20_SM17_ena,
      SM17_m1p => SM_20_SM17_m1p,
      SM17_m2p => SM_20_SM17_m2p,
      SM17_ref => SM_20_SM17_ref,
      SM18_clk => SM_20_SM18_clk,
      SM18_dir => SM_20_SM18_dir,
      SM18_ena => SM_20_SM18_ena,
      SM18_m1p => SM_20_SM18_m1p,
      SM18_m2p => SM_20_SM18_m2p,
      SM18_ref => SM_20_SM18_ref,
      SM19_clk => SM_20_SM19_clk,
      SM19_dir => SM_20_SM19_dir,
      SM19_ena => SM_20_SM19_ena,
      SM19_m1p => SM_20_SM19_m1p,
      SM19_m2p => SM_20_SM19_m2p,
      SM19_ref => SM_20_SM19_ref,
      SM1_clk => SM_20_SM1_clk,
      SM1_dir => SM_20_SM1_dir,
      SM1_ena => SM_20_SM1_ena,
      SM1_m1p => SM_20_SM1_m1p,
      SM1_m2p => SM_20_SM1_m2p,
      SM1_ref => SM_20_SM1_ref,
      SM2_clk => SM_20_SM2_clk,
      SM2_dir => SM_20_SM2_dir,
      SM2_ena => SM_20_SM2_ena,
      SM2_m1p => SM_20_SM2_m1p,
      SM2_m2p => SM_20_SM2_m2p,
      SM2_ref => SM_20_SM2_ref,
      SM3_clk => SM_20_SM3_clk,
      SM3_dir => SM_20_SM3_dir,
      SM3_ena => SM_20_SM3_ena,
      SM3_m1p => SM_20_SM3_m1p,
      SM3_m2p => SM_20_SM3_m2p,
      SM3_ref => SM_20_SM3_ref,
      SM4_clk => SM_20_SM4_clk,
      SM4_dir => SM_20_SM4_dir,
      SM4_ena => SM_20_SM4_ena,
      SM4_m1p => SM_20_SM4_m1p,
      SM4_m2p => SM_20_SM4_m2p,
      SM4_ref => SM_20_SM4_ref,
      SM5_clk => SM_20_SM5_clk,
      SM5_dir => SM_20_SM5_dir,
      SM5_ena => SM_20_SM5_ena,
      SM5_m1p => SM_20_SM5_m1p,
      SM5_m2p => SM_20_SM5_m2p,
      SM5_ref => SM_20_SM5_ref,
      SM6_clk => SM_20_SM6_clk,
      SM6_dir => SM_20_SM6_dir,
      SM6_ena => SM_20_SM6_ena,
      SM6_m1p => SM_20_SM6_m1p,
      SM6_m2p => SM_20_SM6_m2p,
      SM6_ref => SM_20_SM6_ref,
      SM7_clk => SM_20_SM7_clk,
      SM7_dir => SM_20_SM7_dir,
      SM7_ena => SM_20_SM7_ena,
      SM7_m1p => SM_20_SM7_m1p,
      SM7_m2p => SM_20_SM7_m2p,
      SM7_ref => SM_20_SM7_ref,
      SM8_clk => SM_20_SM8_clk,
      SM8_dir => SM_20_SM8_dir,
      SM8_ena => SM_20_SM8_ena,
      SM8_m1p => SM_20_SM8_m1p,
      SM8_m2p => SM_20_SM8_m2p,
      SM8_ref => SM_20_SM8_ref,
      SM9_clk => SM_20_SM9_clk,
      SM9_dir => SM_20_SM9_dir,
      SM9_ena => SM_20_SM9_ena,
      SM9_m1p => SM_20_SM9_m1p,
      SM9_m2p => SM_20_SM9_m2p,
      SM9_ref => SM_20_SM9_ref,
      SM_irq => SM_20_SM_irq,
      SM_irqs(19 downto 0) => NLW_SM_20_SM_irqs_UNCONNECTED(19 downto 0),
      clk200 => clk_200,
      s00_axi_aclk => clk_100_MB,
      s00_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0)
    );
SOL_10: entity work.SOL_10_imp_NRIJS8
     port map (
      S00_AXI_araddr(31 downto 0) => S00_AXI_3_1_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_3_1_ARPROT(2 downto 0),
      S00_AXI_arready => S00_AXI_3_1_ARREADY,
      S00_AXI_arvalid => S00_AXI_3_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_3_1_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_3_1_AWPROT(2 downto 0),
      S00_AXI_awready => S00_AXI_3_1_AWREADY,
      S00_AXI_awvalid => S00_AXI_3_1_AWVALID,
      S00_AXI_bready => S00_AXI_3_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_3_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_3_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_3_1_RDATA(31 downto 0),
      S00_AXI_rready => S00_AXI_3_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_3_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_3_1_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_3_1_WDATA(31 downto 0),
      S00_AXI_wready => S00_AXI_3_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_3_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_3_1_WVALID,
      SOL0_port_pwm => SOL_10_SOL0_port_pwm,
      SOL1_port_pwm => SOL_10_SOL1_port_pwm,
      SOL2_port_pwm => SOL_10_SOL2_port_pwm,
      SOL3_port_pwm => SOL_10_SOL3_port_pwm,
      SOL4_port_pwm => SOL_10_SOL4_port_pwm,
      SOL5_port_pwm => SOL_10_SOL5_port_pwm,
      SOL6_port_pwm => SOL_10_SOL6_port_pwm,
      SOL7_port_pwm => SOL_10_SOL7_port_pwm,
      SOL8_port_pwm => SOL_10_SOL8_port_pwm,
      SOL9_port_pwm => SOL_10_SOL9_port_pwm,
      s00_axi_aclk => clk_100_MB,
      s00_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0)
    );
axi_c2c_s: component S7_axi_chip2chip_0_0
     port map (
      axi_c2c_link_error_out => NLW_axi_c2c_s_axi_c2c_link_error_out_UNCONNECTED,
      axi_c2c_link_status_out => NLW_axi_c2c_s_axi_c2c_link_status_out_UNCONNECTED,
      axi_c2c_m2s_intr_in(3 downto 0) => S2L1_L2S1_S2L0_L2S0(3 downto 0),
      axi_c2c_multi_bit_error_out => NLW_axi_c2c_s_axi_c2c_multi_bit_error_out_UNCONNECTED,
      axi_c2c_phy_clk => clk_100_MB,
      axi_c2c_s2m_intr_out(3 downto 0) => NLW_axi_c2c_s_axi_c2c_s2m_intr_out_UNCONNECTED(3 downto 0),
      axi_c2c_selio_rx_data_in(16 downto 0) => S_c2c_txd_in_1(16 downto 0),
      axi_c2c_selio_rx_diff_clk_in_n => S_c2c_rxclk_in_n_1,
      axi_c2c_selio_rx_diff_clk_in_p => S_c2c_rxclk_in_p_1,
      axi_c2c_selio_tx_data_out(16 downto 0) => axi_chip2chip_0_axi_c2c_selio_tx_data_out(16 downto 0),
      axi_c2c_selio_tx_diff_clk_out_n => axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_n,
      axi_c2c_selio_tx_diff_clk_out_p => axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_p,
      idelay_ref_clk => sys_diff_clk_ibufds_IBUF_OUT(0),
      m_axi_lite_aclk => clk_100_MB,
      m_axi_lite_araddr(31 downto 0) => axi_c2c_s_m_axi_lite_ARADDR(31 downto 0),
      m_axi_lite_arprot(1 downto 0) => axi_c2c_s_m_axi_lite_ARPROT(1 downto 0),
      m_axi_lite_arready => axi_c2c_s_m_axi_lite_ARREADY,
      m_axi_lite_arvalid => axi_c2c_s_m_axi_lite_ARVALID,
      m_axi_lite_awaddr(31 downto 0) => axi_c2c_s_m_axi_lite_AWADDR(31 downto 0),
      m_axi_lite_awprot(1 downto 0) => axi_c2c_s_m_axi_lite_AWPROT(1 downto 0),
      m_axi_lite_awready => axi_c2c_s_m_axi_lite_AWREADY,
      m_axi_lite_awvalid => axi_c2c_s_m_axi_lite_AWVALID,
      m_axi_lite_bready => axi_c2c_s_m_axi_lite_BREADY,
      m_axi_lite_bresp(1 downto 0) => axi_c2c_s_m_axi_lite_BRESP(1 downto 0),
      m_axi_lite_bvalid => axi_c2c_s_m_axi_lite_BVALID,
      m_axi_lite_rdata(31 downto 0) => axi_c2c_s_m_axi_lite_RDATA(31 downto 0),
      m_axi_lite_rready => axi_c2c_s_m_axi_lite_RREADY,
      m_axi_lite_rresp(1 downto 0) => axi_c2c_s_m_axi_lite_RRESP(1 downto 0),
      m_axi_lite_rvalid => axi_c2c_s_m_axi_lite_RVALID,
      m_axi_lite_wdata(31 downto 0) => axi_c2c_s_m_axi_lite_WDATA(31 downto 0),
      m_axi_lite_wready => axi_c2c_s_m_axi_lite_WREADY,
      m_axi_lite_wstrb(3 downto 0) => axi_c2c_s_m_axi_lite_WSTRB(3 downto 0),
      m_axi_lite_wvalid => axi_c2c_s_m_axi_lite_WVALID,
      s_aclk => clk_100_MB,
      s_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      s_axi_arid(11 downto 1) => B"00000000000",
      s_axi_arid(0) => axi_interconnect_0_M00_AXI_ARID(0),
      s_axi_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      s_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      s_axi_awid(11 downto 1) => B"00000000000",
      s_axi_awid(0) => axi_interconnect_0_M00_AXI_AWID(0),
      s_axi_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_bid(11 downto 0) => axi_interconnect_0_M00_AXI_BID(11 downto 0),
      s_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => axi_interconnect_0_M00_AXI_RID(11 downto 0),
      s_axi_rlast => axi_interconnect_0_M00_AXI_RLAST,
      s_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_interconnect_0_M00_AXI_WLAST,
      s_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
axi_dma_1: component S7_axi_dma_0_0
     port map (
      axi_resetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => clk_100_MB,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_1_M_AXI_MM2S_ARREADY(0),
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_1_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_1_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_1_M_AXI_MM2S_RLAST(0),
      m_axi_mm2s_rready => axi_dma_1_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_1_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_1_M_AXI_MM2S_RVALID(0),
      m_axi_s2mm_aclk => clk_100_MB,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_1_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_1_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_1_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_1_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_1_M_AXI_S2MM_AWREADY(0),
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_1_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_1_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_1_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_1_M_AXI_S2MM_BVALID(0),
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_1_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_1_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_1_M_AXI_S2MM_WREADY(0),
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_1_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_1_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_1_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_1_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => clk_100_MB,
      s_axi_lite_araddr(9 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      s_axi_lite_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      s_axi_lite_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      s_axi_lite_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      s_axi_lite_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(3 downto 0),
      s_axis_s2mm_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      s_axis_s2mm_tready => axis_data_fifo_1_M_AXIS_TREADY,
      s_axis_s2mm_tvalid => axis_data_fifo_1_M_AXIS_TVALID
    );
axi_gpio_0: component S7_axi_gpio_0_0
     port map (
      gpio_io_o(3 downto 0) => axi_gpio_0_GPIO_TRI_O(3 downto 0),
      s_axi_aclk => clk_100_MB,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID(0)
    );
axi_interconnect_0: entity work.S7_axi_interconnect_0_0
     port map (
      ACLK => clk_100_MB,
      ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M00_ACLK => clk_100_MB,
      M00_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arid(0) => axi_interconnect_0_M00_AXI_ARID(0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awid(0) => axi_interconnect_0_M00_AXI_AWID(0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bid(11 downto 0) => axi_interconnect_0_M00_AXI_BID(11 downto 0),
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(11 downto 0) => axi_interconnect_0_M00_AXI_RID(11 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => clk_100_MB,
      S00_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_dma_1_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_1_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_1_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_1_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arready(0) => axi_dma_1_M_AXI_MM2S_ARREADY(0),
      S00_AXI_arsize(2 downto 0) => axi_dma_1_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => axi_dma_1_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(31 downto 0) => axi_dma_1_M_AXI_MM2S_RDATA(31 downto 0),
      S00_AXI_rlast(0) => axi_dma_1_M_AXI_MM2S_RLAST(0),
      S00_AXI_rready(0) => axi_dma_1_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_1_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_dma_1_M_AXI_MM2S_RVALID(0),
      S01_ACLK => clk_100_MB,
      S01_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      S01_AXI_awaddr(31 downto 0) => axi_dma_1_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_dma_1_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_dma_1_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_dma_1_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awprot(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awready(0) => axi_dma_1_M_AXI_S2MM_AWREADY(0),
      S01_AXI_awsize(2 downto 0) => axi_dma_1_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid(0) => axi_dma_1_M_AXI_S2MM_AWVALID,
      S01_AXI_bready(0) => axi_dma_1_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_dma_1_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => axi_dma_1_M_AXI_S2MM_BVALID(0),
      S01_AXI_wdata(31 downto 0) => axi_dma_1_M_AXI_S2MM_WDATA(31 downto 0),
      S01_AXI_wlast(0) => axi_dma_1_M_AXI_S2MM_WLAST,
      S01_AXI_wready(0) => axi_dma_1_M_AXI_S2MM_WREADY(0),
      S01_AXI_wstrb(3 downto 0) => axi_dma_1_M_AXI_S2MM_WSTRB(3 downto 0),
      S01_AXI_wvalid(0) => axi_dma_1_M_AXI_S2MM_WVALID
    );
axi_uartlite_0: component S7_axi_uartlite_0_0
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => clk_100_MB,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M00_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M00_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M00_AXI_WVALID(0),
      tx => axi_uartlite_0_UART_TxD
    );
axis_data_fifo_0: component S7_axis_data_fifo_0_0
     port map (
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_axis_data_fifo_0_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => axis_data_fifo_0_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tstrb(3 downto 0) => NLW_axis_data_fifo_0_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => clk_100_MB,
      s_axis_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(3 downto 0),
      s_axis_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      s_axis_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID
    );
axis_data_fifo_1: component S7_axis_data_fifo_0_1
     port map (
      m_axis_tdata(31 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(31 downto 0),
      m_axis_tkeep(3 downto 0) => axis_data_fifo_1_M_AXIS_TKEEP(3 downto 0),
      m_axis_tlast => axis_data_fifo_1_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tstrb(3 downto 0) => NLW_axis_data_fifo_1_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      s_axis_aclk => clk_100_MB,
      s_axis_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => AXI4_Stream_Inverter_0_M00_AXIS_TDATA(31 downto 0),
      s_axis_tkeep(3 downto 0) => B"1111",
      s_axis_tlast => AXI4_Stream_Inverter_0_M00_AXIS_TLAST,
      s_axis_tready => AXI4_Stream_Inverter_0_M00_AXIS_TREADY,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tvalid => AXI4_Stream_Inverter_0_M00_AXIS_TVALID
    );
bufg_200: component S7_util_ds_buf_0_1
     port map (
      BUFG_I(0) => ibufgds_200_IBUF_OUT(0),
      BUFG_O(0) => sys_diff_clk_ibufds_IBUF_OUT(0)
    );
clk_wiz_1: component S7_clk_wiz_1_0
     port map (
      clk_in1 => sys_diff_clk_ibufds_IBUF_OUT(0),
      clk_out1 => clk_100_MB,
      clk_out2 => clk_200,
      locked => clk_wiz_1_locked,
      reset => reset_1(0)
    );
ibufgds_200: component S7_util_ds_buf_0_0
     port map (
      IBUF_DS_N(0) => sys_diff_clock_1_CLK_N(0),
      IBUF_DS_P(0) => sys_diff_clock_1_CLK_P(0),
      IBUF_OUT(0) => ibufgds_200_IBUF_OUT(0)
    );
inv_rst: component S7_util_vector_logic_0_0
     port map (
      Op1(0) => reset_2,
      Res(0) => reset_1(0)
    );
microblaze_0_axi_periph: entity work.S7_microblaze_0_axi_periph_0
     port map (
      ACLK => clk_100_MB,
      ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M00_ACLK => clk_100_MB,
      M00_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => microblaze_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => microblaze_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => microblaze_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => microblaze_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => microblaze_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => microblaze_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => microblaze_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => microblaze_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => microblaze_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => microblaze_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => clk_100_MB,
      M01_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => microblaze_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => microblaze_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => microblaze_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => microblaze_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => microblaze_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => microblaze_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => clk_100_MB,
      M02_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => S00_AXI_1_1_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => S00_AXI_1_1_ARPROT(2 downto 0),
      M02_AXI_arready(0) => S00_AXI_1_1_ARREADY(0),
      M02_AXI_arvalid(0) => S00_AXI_1_1_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => S00_AXI_1_1_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => S00_AXI_1_1_AWPROT(2 downto 0),
      M02_AXI_awready(0) => S00_AXI_1_1_AWREADY(0),
      M02_AXI_awvalid(0) => S00_AXI_1_1_AWVALID(0),
      M02_AXI_bready(0) => S00_AXI_1_1_BREADY(0),
      M02_AXI_bresp(1 downto 0) => S00_AXI_1_1_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => S00_AXI_1_1_BVALID(0),
      M02_AXI_rdata(31 downto 0) => S00_AXI_1_1_RDATA(31 downto 0),
      M02_AXI_rready(0) => S00_AXI_1_1_RREADY(0),
      M02_AXI_rresp(1 downto 0) => S00_AXI_1_1_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => S00_AXI_1_1_RVALID(0),
      M02_AXI_wdata(31 downto 0) => S00_AXI_1_1_WDATA(31 downto 0),
      M02_AXI_wready(0) => S00_AXI_1_1_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => S00_AXI_1_1_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => S00_AXI_1_1_WVALID(0),
      M03_ACLK => clk_100_MB,
      M03_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => S00_AXI_0_1_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => S00_AXI_0_1_ARPROT(2 downto 0),
      M03_AXI_arready(0) => S00_AXI_0_1_ARREADY(0),
      M03_AXI_arvalid(0) => S00_AXI_0_1_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => S00_AXI_0_1_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => S00_AXI_0_1_AWPROT(2 downto 0),
      M03_AXI_awready(0) => S00_AXI_0_1_AWREADY(0),
      M03_AXI_awvalid(0) => S00_AXI_0_1_AWVALID(0),
      M03_AXI_bready(0) => S00_AXI_0_1_BREADY(0),
      M03_AXI_bresp(1 downto 0) => S00_AXI_0_1_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => S00_AXI_0_1_BVALID(0),
      M03_AXI_rdata(31 downto 0) => S00_AXI_0_1_RDATA(31 downto 0),
      M03_AXI_rready(0) => S00_AXI_0_1_RREADY(0),
      M03_AXI_rresp(1 downto 0) => S00_AXI_0_1_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => S00_AXI_0_1_RVALID(0),
      M03_AXI_wdata(31 downto 0) => S00_AXI_0_1_WDATA(31 downto 0),
      M03_AXI_wready(0) => S00_AXI_0_1_WREADY(0),
      M03_AXI_wstrb(3 downto 0) => S00_AXI_0_1_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => S00_AXI_0_1_WVALID(0),
      M04_ACLK => clk_100_MB,
      M04_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => S00_AXI_2_1_ARADDR(31 downto 0),
      M04_AXI_arprot(2 downto 0) => S00_AXI_2_1_ARPROT(2 downto 0),
      M04_AXI_arready(0) => S00_AXI_2_1_ARREADY(0),
      M04_AXI_arvalid(0) => S00_AXI_2_1_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => S00_AXI_2_1_AWADDR(31 downto 0),
      M04_AXI_awprot(2 downto 0) => S00_AXI_2_1_AWPROT(2 downto 0),
      M04_AXI_awready(0) => S00_AXI_2_1_AWREADY(0),
      M04_AXI_awvalid(0) => S00_AXI_2_1_AWVALID(0),
      M04_AXI_bready(0) => S00_AXI_2_1_BREADY(0),
      M04_AXI_bresp(1 downto 0) => S00_AXI_2_1_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => S00_AXI_2_1_BVALID(0),
      M04_AXI_rdata(31 downto 0) => S00_AXI_2_1_RDATA(31 downto 0),
      M04_AXI_rready(0) => S00_AXI_2_1_RREADY(0),
      M04_AXI_rresp(1 downto 0) => S00_AXI_2_1_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => S00_AXI_2_1_RVALID(0),
      M04_AXI_wdata(31 downto 0) => S00_AXI_2_1_WDATA(31 downto 0),
      M04_AXI_wready(0) => S00_AXI_2_1_WREADY(0),
      M04_AXI_wstrb(3 downto 0) => S00_AXI_2_1_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => S00_AXI_2_1_WVALID(0),
      M05_ACLK => clk_100_MB,
      M05_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => S00_AXI_3_1_ARADDR(31 downto 0),
      M05_AXI_arprot(2 downto 0) => S00_AXI_3_1_ARPROT(2 downto 0),
      M05_AXI_arready => S00_AXI_3_1_ARREADY,
      M05_AXI_arvalid => S00_AXI_3_1_ARVALID,
      M05_AXI_awaddr(31 downto 0) => S00_AXI_3_1_AWADDR(31 downto 0),
      M05_AXI_awprot(2 downto 0) => S00_AXI_3_1_AWPROT(2 downto 0),
      M05_AXI_awready => S00_AXI_3_1_AWREADY,
      M05_AXI_awvalid => S00_AXI_3_1_AWVALID,
      M05_AXI_bready => S00_AXI_3_1_BREADY,
      M05_AXI_bresp(1 downto 0) => S00_AXI_3_1_BRESP(1 downto 0),
      M05_AXI_bvalid => S00_AXI_3_1_BVALID,
      M05_AXI_rdata(31 downto 0) => S00_AXI_3_1_RDATA(31 downto 0),
      M05_AXI_rready => S00_AXI_3_1_RREADY,
      M05_AXI_rresp(1 downto 0) => S00_AXI_3_1_RRESP(1 downto 0),
      M05_AXI_rvalid => S00_AXI_3_1_RVALID,
      M05_AXI_wdata(31 downto 0) => S00_AXI_3_1_WDATA(31 downto 0),
      M05_AXI_wready => S00_AXI_3_1_WREADY,
      M05_AXI_wstrb(3 downto 0) => S00_AXI_3_1_WSTRB(3 downto 0),
      M05_AXI_wvalid => S00_AXI_3_1_WVALID,
      M06_ACLK => clk_100_MB,
      M06_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => microblaze_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => microblaze_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID,
      S00_ACLK => clk_100_MB,
      S00_ARESETN => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_c2c_s_m_axi_lite_ARADDR(31 downto 0),
      S00_AXI_arprot(1 downto 0) => axi_c2c_s_m_axi_lite_ARPROT(1 downto 0),
      S00_AXI_arready => axi_c2c_s_m_axi_lite_ARREADY,
      S00_AXI_arvalid => axi_c2c_s_m_axi_lite_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_c2c_s_m_axi_lite_AWADDR(31 downto 0),
      S00_AXI_awprot(1 downto 0) => axi_c2c_s_m_axi_lite_AWPROT(1 downto 0),
      S00_AXI_awready => axi_c2c_s_m_axi_lite_AWREADY,
      S00_AXI_awvalid => axi_c2c_s_m_axi_lite_AWVALID,
      S00_AXI_bready => axi_c2c_s_m_axi_lite_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_c2c_s_m_axi_lite_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_c2c_s_m_axi_lite_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_c2c_s_m_axi_lite_RDATA(31 downto 0),
      S00_AXI_rready => axi_c2c_s_m_axi_lite_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_c2c_s_m_axi_lite_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_c2c_s_m_axi_lite_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_c2c_s_m_axi_lite_WDATA(31 downto 0),
      S00_AXI_wready => axi_c2c_s_m_axi_lite_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_c2c_s_m_axi_lite_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_c2c_s_m_axi_lite_WVALID
    );
rst_clk_wiz_1_100M: component S7_rst_clk_wiz_1_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_1_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_1_locked,
      ext_reset_in => reset_1(0),
      interconnect_aresetn(0) => NLW_rst_clk_wiz_1_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_1_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_1_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_100_MB
    );
util_idelay_ctrl_0: component S7_util_idelay_ctrl_0_0
     port map (
      rdy => NLW_util_idelay_ctrl_0_rdy_UNCONNECTED,
      ref_clk => sys_diff_clk_ibufds_IBUF_OUT(0),
      rst => reset_1(0)
    );
util_reduced_logic_0: component S7_util_reduced_logic_0_0
     port map (
      Op1(4 downto 0) => xlconcat_0_dout(4 downto 0),
      Res => util_reduced_logic_0_Res
    );
xlconcat_0: component S7_xlconcat_0_2
     port map (
      In0(0) => QSPI_cs_1,
      In1(0) => QSPI_clk_1,
      In2(0) => QSPI_d0_1,
      In3(0) => QSPI_d2_1,
      In4(0) => QSPI_d3_1,
      dout(4 downto 0) => xlconcat_0_dout(4 downto 0)
    );
xlconcat_1: component S7_xlconcat_0_1
     port map (
      In0(0) => PHS_irq_L2S_0,
      In1(0) => PHS_irq_S2L_0,
      In2(0) => PHS_irq_L2S_1,
      In3(0) => PHS_irq_S2L_1,
      dout(3 downto 0) => S2L1_L2S1_S2L0_L2S0(3 downto 0)
    );
end STRUCTURE;
