-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Wed Jul 29 04:12:49 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_DCM_regs_0_0_sim_netlist.vhdl
-- Design      : S7_DCM_regs_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    DCM0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM0_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM0_vld_out : out STD_LOGIC;
    DCM1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM1_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM1_vld_out : out STD_LOGIC;
    DCM2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM2_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM2_vld_out : out STD_LOGIC;
    DCM3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM3_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM3_vld_out : out STD_LOGIC;
    DCM4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM4_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM4_vld_out : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    DCM4_brake : out STD_LOGIC;
    DCM4_run : out STD_LOGIC;
    DCM4_dir : out STD_LOGIC;
    DCM3_brake : out STD_LOGIC;
    DCM3_run : out STD_LOGIC;
    DCM3_dir : out STD_LOGIC;
    DCM2_brake : out STD_LOGIC;
    DCM2_run : out STD_LOGIC;
    DCM2_dir : out STD_LOGIC;
    DCM1_brake : out STD_LOGIC;
    DCM1_run : out STD_LOGIC;
    DCM1_dir : out STD_LOGIC;
    DCM0_brake : out STD_LOGIC;
    DCM0_run : out STD_LOGIC;
    DCM0_dir : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM0_vld_in : in STD_LOGIC;
    DCM1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM1_vld_in : in STD_LOGIC;
    DCM2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM2_vld_in : in STD_LOGIC;
    DCM3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM3_vld_in : in STD_LOGIC;
    DCM4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM4_vld_in : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0_S00_AXI is
  signal \^dcm0_brake\ : STD_LOGIC;
  signal \^dcm0_dir\ : STD_LOGIC;
  signal \^dcm0_pwm_frq\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dcm0_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dcm0_run\ : STD_LOGIC;
  signal DCM0_vld_out_i_1_n_0 : STD_LOGIC;
  signal DCM0_vld_out_i_2_n_0 : STD_LOGIC;
  signal \^dcm1_brake\ : STD_LOGIC;
  signal \^dcm1_dir\ : STD_LOGIC;
  signal \^dcm1_pwm_frq\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dcm1_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dcm1_run\ : STD_LOGIC;
  signal DCM1_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^dcm2_brake\ : STD_LOGIC;
  signal \^dcm2_dir\ : STD_LOGIC;
  signal \^dcm2_pwm_frq\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dcm2_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dcm2_run\ : STD_LOGIC;
  signal DCM2_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^dcm3_brake\ : STD_LOGIC;
  signal \^dcm3_dir\ : STD_LOGIC;
  signal \^dcm3_pwm_frq\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dcm3_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dcm3_run\ : STD_LOGIC;
  signal DCM3_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^dcm4_brake\ : STD_LOGIC;
  signal \^dcm4_dir\ : STD_LOGIC;
  signal \^dcm4_pwm_frq\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^dcm4_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dcm4_run\ : STD_LOGIC;
  signal DCM4_vld_out_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \slv_reg0[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg10[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg11 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg11[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg12[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg13[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg14[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg16[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg16[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg17 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg17[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg17[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg18[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg20[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg20[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg21[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg21[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg21[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg22[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg22[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg23 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg23[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg24[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg25[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg27[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg28[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg29 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg29[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg29[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg4[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[0]_i_3_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg5[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg8[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg9[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg9[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DCM0_vld_out_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of DCM1_vld_out_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of DCM2_vld_out_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of DCM3_vld_out_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of DCM4_vld_out_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg0[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg10[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg11[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg11[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg15[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg16[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg17[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg17[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg20[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg21[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg21[0]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg22[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg23[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg23[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg26[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg27[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg29[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg29[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg3[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg3[0]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg4[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg4[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg5[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg5[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg8[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg9[0]_i_2\ : label is "soft_lutpair1";
begin
  DCM0_brake <= \^dcm0_brake\;
  DCM0_dir <= \^dcm0_dir\;
  DCM0_pwm_frq(6 downto 0) <= \^dcm0_pwm_frq\(6 downto 0);
  DCM0_pwm_val(7 downto 0) <= \^dcm0_pwm_val\(7 downto 0);
  DCM0_run <= \^dcm0_run\;
  DCM1_brake <= \^dcm1_brake\;
  DCM1_dir <= \^dcm1_dir\;
  DCM1_pwm_frq(6 downto 0) <= \^dcm1_pwm_frq\(6 downto 0);
  DCM1_pwm_val(7 downto 0) <= \^dcm1_pwm_val\(7 downto 0);
  DCM1_run <= \^dcm1_run\;
  DCM2_brake <= \^dcm2_brake\;
  DCM2_dir <= \^dcm2_dir\;
  DCM2_pwm_frq(6 downto 0) <= \^dcm2_pwm_frq\(6 downto 0);
  DCM2_pwm_val(7 downto 0) <= \^dcm2_pwm_val\(7 downto 0);
  DCM2_run <= \^dcm2_run\;
  DCM3_brake <= \^dcm3_brake\;
  DCM3_dir <= \^dcm3_dir\;
  DCM3_pwm_frq(6 downto 0) <= \^dcm3_pwm_frq\(6 downto 0);
  DCM3_pwm_val(7 downto 0) <= \^dcm3_pwm_val\(7 downto 0);
  DCM3_run <= \^dcm3_run\;
  DCM4_brake <= \^dcm4_brake\;
  DCM4_dir <= \^dcm4_dir\;
  DCM4_pwm_frq(6 downto 0) <= \^dcm4_pwm_frq\(6 downto 0);
  DCM4_pwm_val(7 downto 0) <= \^dcm4_pwm_val\(7 downto 0);
  DCM4_run <= \^dcm4_run\;
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
DCM0_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      O => DCM0_vld_out_i_1_n_0
    );
DCM0_vld_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(4),
      O => DCM0_vld_out_i_2_n_0
    );
DCM0_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DCM0_vld_out_i_2_n_0,
      Q => DCM0_vld_out,
      R => DCM0_vld_out_i_1_n_0
    );
DCM1_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C70"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(4),
      O => DCM1_vld_out_i_1_n_0
    );
DCM1_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DCM1_vld_out_i_1_n_0,
      Q => DCM1_vld_out,
      R => DCM0_vld_out_i_1_n_0
    );
DCM2_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A001A0"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(4),
      I4 => p_0_in_0(1),
      O => DCM2_vld_out_i_1_n_0
    );
DCM2_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DCM2_vld_out_i_1_n_0,
      Q => DCM2_vld_out,
      R => DCM0_vld_out_i_1_n_0
    );
DCM3_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006E00"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(4),
      I4 => p_0_in_0(3),
      O => DCM3_vld_out_i_1_n_0
    );
DCM3_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DCM3_vld_out_i_1_n_0,
      Q => DCM3_vld_out,
      R => DCM0_vld_out_i_1_n_0
    );
DCM4_vld_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(4),
      O => DCM4_vld_out_i_1_n_0
    );
DCM4_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => DCM4_vld_out_i_1_n_0,
      Q => DCM4_vld_out,
      R => DCM0_vld_out_i_1_n_0
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      S => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      S => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      S => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(4),
      Q => sel0(4),
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_0(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_0(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_0(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in_0(3),
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => p_0_in_0(4),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata_reg[0]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[0]_i_5_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => \^dcm1_brake\,
      I2 => sel0(1),
      I3 => \^dcm1_run\,
      I4 => sel0(0),
      I5 => \^dcm1_dir\,
      O => \axi_rdata[0]_i_10_n_0\
    );
\axi_rdata[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dcm2_run\,
      I1 => \^dcm2_dir\,
      I2 => sel0(1),
      I3 => \^dcm2_pwm_frq\(0),
      I4 => sel0(0),
      I5 => \^dcm2_pwm_val\(0),
      O => \axi_rdata[0]_i_11_n_0\
    );
\axi_rdata[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dcm0_run\,
      I1 => \^dcm0_dir\,
      I2 => sel0(1),
      I3 => \^dcm0_pwm_frq\(0),
      I4 => sel0(0),
      I5 => \^dcm0_pwm_val\(0),
      O => \axi_rdata[0]_i_12_n_0\
    );
\axi_rdata[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dcm1_pwm_frq\(0),
      I1 => \^dcm1_pwm_val\(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => \^dcm0_brake\,
      O => \axi_rdata[0]_i_13_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dcm4_run\,
      I1 => \^dcm4_dir\,
      I2 => sel0(1),
      I3 => \^dcm4_pwm_frq\(0),
      I4 => sel0(0),
      I5 => \^dcm4_pwm_val\(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm4_brake\,
      I1 => sel0(0),
      I2 => slv_reg29(0),
      I3 => sel0(1),
      O => \axi_rdata[0]_i_7_n_0\
    );
\axi_rdata[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^dcm3_pwm_frq\(0),
      I1 => \^dcm3_pwm_val\(0),
      I2 => sel0(1),
      I3 => slv_reg17(0),
      I4 => sel0(0),
      I5 => \^dcm2_brake\,
      O => \axi_rdata[0]_i_8_n_0\
    );
\axi_rdata[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(0),
      I1 => \^dcm3_brake\,
      I2 => sel0(1),
      I3 => \^dcm3_run\,
      I4 => sel0(0),
      I5 => \^dcm3_dir\,
      O => \axi_rdata[0]_i_9_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[1]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[1]_i_5_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB308830"
    )
        port map (
      I0 => slv_reg29(1),
      I1 => sel0(2),
      I2 => \^dcm4_pwm_val\(1),
      I3 => sel0(0),
      I4 => \^dcm4_pwm_frq\(1),
      I5 => sel0(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000000C0A0C0A0"
    )
        port map (
      I0 => \^dcm2_pwm_val\(1),
      I1 => \^dcm2_pwm_frq\(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => slv_reg11(1),
      I5 => sel0(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \^dcm3_pwm_frq\(1),
      I1 => \^dcm3_pwm_val\(1),
      I2 => sel0(1),
      I3 => slv_reg17(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sel0(0),
      I1 => slv_reg23(1),
      I2 => sel0(1),
      O => \axi_rdata[1]_i_7_n_0\
    );
\axi_rdata[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm0_pwm_val\(1),
      I1 => sel0(0),
      I2 => \^dcm0_pwm_frq\(1),
      I3 => sel0(1),
      O => \axi_rdata[1]_i_8_n_0\
    );
\axi_rdata[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \^dcm1_pwm_frq\(1),
      I1 => \^dcm1_pwm_val\(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      O => \axi_rdata[1]_i_9_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[2]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[2]_i_5_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm4_pwm_frq\(2),
      I2 => sel0(0),
      I3 => \^dcm4_pwm_val\(2),
      I4 => sel0(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm3_pwm_frq\(2),
      I2 => sel0(0),
      I3 => \^dcm3_pwm_val\(2),
      I4 => sel0(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm2_pwm_frq\(2),
      I2 => sel0(0),
      I3 => \^dcm2_pwm_val\(2),
      I4 => sel0(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm0_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^dcm0_pwm_frq\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^dcm1_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^dcm1_pwm_frq\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[3]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[3]_i_5_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm4_pwm_frq\(3),
      I2 => sel0(0),
      I3 => \^dcm4_pwm_val\(3),
      I4 => sel0(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm3_pwm_frq\(3),
      I2 => sel0(0),
      I3 => \^dcm3_pwm_val\(3),
      I4 => sel0(2),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm2_pwm_frq\(3),
      I2 => sel0(0),
      I3 => \^dcm2_pwm_val\(3),
      I4 => sel0(2),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm0_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^dcm0_pwm_frq\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^dcm1_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^dcm1_pwm_frq\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[4]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[4]_i_5_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm4_pwm_frq\(4),
      I2 => sel0(0),
      I3 => \^dcm4_pwm_val\(4),
      I4 => sel0(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm3_pwm_frq\(4),
      I2 => sel0(0),
      I3 => \^dcm3_pwm_val\(4),
      I4 => sel0(2),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm2_pwm_frq\(4),
      I2 => sel0(0),
      I3 => \^dcm2_pwm_val\(4),
      I4 => sel0(2),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm0_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^dcm0_pwm_frq\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^dcm1_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^dcm1_pwm_frq\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[5]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[5]_i_5_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm4_pwm_frq\(5),
      I2 => sel0(0),
      I3 => \^dcm4_pwm_val\(5),
      I4 => sel0(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm3_pwm_frq\(5),
      I2 => sel0(0),
      I3 => \^dcm3_pwm_val\(5),
      I4 => sel0(2),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm2_pwm_frq\(5),
      I2 => sel0(0),
      I3 => \^dcm2_pwm_val\(5),
      I4 => sel0(2),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm0_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^dcm0_pwm_frq\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^dcm1_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^dcm1_pwm_frq\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      I2 => sel0(4),
      I3 => \axi_rdata[6]_i_4_n_0\,
      I4 => sel0(3),
      I5 => \axi_rdata_reg[6]_i_5_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm4_pwm_frq\(6),
      I2 => sel0(0),
      I3 => \^dcm4_pwm_val\(6),
      I4 => sel0(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A80"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm3_pwm_frq\(6),
      I2 => sel0(0),
      I3 => \^dcm3_pwm_val\(6),
      I4 => sel0(2),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm2_pwm_frq\(6),
      I2 => sel0(0),
      I3 => \^dcm2_pwm_val\(6),
      I4 => sel0(2),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^dcm0_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^dcm0_pwm_frq\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^dcm1_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^dcm1_pwm_frq\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => sel0(1),
      I1 => \^dcm2_pwm_val\(7),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata[7]_i_5_n_0\,
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003808"
    )
        port map (
      I0 => \^dcm4_pwm_val\(7),
      I1 => sel0(3),
      I2 => sel0(1),
      I3 => \^dcm3_pwm_val\(7),
      I4 => sel0(0),
      I5 => sel0(2),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080300"
    )
        port map (
      I0 => \^dcm1_pwm_val\(7),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^dcm0_pwm_val\(7),
      I4 => sel0(1),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_6_n_0\,
      I1 => \axi_rdata[0]_i_7_n_0\,
      O => \axi_rdata_reg[0]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_8_n_0\,
      I1 => \axi_rdata[0]_i_9_n_0\,
      O => \axi_rdata_reg[0]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_10_n_0\,
      I1 => \axi_rdata[0]_i_11_n_0\,
      O => \axi_rdata_reg[0]_i_4_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_12_n_0\,
      I1 => \axi_rdata[0]_i_13_n_0\,
      O => \axi_rdata_reg[0]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_6_n_0\,
      I1 => \axi_rdata[1]_i_7_n_0\,
      O => \axi_rdata_reg[1]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_8_n_0\,
      I1 => \axi_rdata[1]_i_9_n_0\,
      O => \axi_rdata_reg[1]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_6_n_0\,
      I1 => \axi_rdata[2]_i_7_n_0\,
      O => \axi_rdata_reg[2]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_6_n_0\,
      I1 => \axi_rdata[3]_i_7_n_0\,
      O => \axi_rdata_reg[3]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_6_n_0\,
      I1 => \axi_rdata[4]_i_7_n_0\,
      O => \axi_rdata_reg[4]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_6_n_0\,
      I1 => \axi_rdata[5]_i_7_n_0\,
      O => \axi_rdata_reg[5]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_6_n_0\,
      I1 => \axi_rdata[6]_i_7_n_0\,
      O => \axi_rdata_reg[6]_i_5_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_3_n_0\,
      I1 => \axi_rdata[7]_i_4_n_0\,
      O => reg_data_out(7),
      S => sel0(4)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(1),
      I3 => \slv_reg_wren__2\,
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(2),
      O => \slv_reg0[7]_i_2_n_0\
    );
\slv_reg0[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm0_pwm_val\(0),
      R => p_0_in
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm0_pwm_val\(1),
      R => p_0_in
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm0_pwm_val\(2),
      R => p_0_in
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm0_pwm_val\(3),
      R => p_0_in
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm0_pwm_val\(4),
      R => p_0_in
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm0_pwm_val\(5),
      R => p_0_in
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm0_pwm_val\(6),
      R => p_0_in
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_2_n_0\,
      D => s00_axi_wdata(7),
      Q => \^dcm0_pwm_val\(7),
      R => p_0_in
    );
\slv_reg10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg3[0]_i_2_n_0\,
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      I4 => \slv_reg10[0]_i_2_n_0\,
      I5 => \^dcm1_brake\,
      O => \slv_reg10[0]_i_1_n_0\
    );
\slv_reg10[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      O => \slv_reg10[0]_i_2_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg10[0]_i_1_n_0\,
      Q => \^dcm1_brake\,
      R => p_0_in
    );
\slv_reg11[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM1_status(0),
      I1 => DCM1_vld_in,
      I2 => slv_reg11(0),
      O => \slv_reg11[0]_i_1_n_0\
    );
\slv_reg11[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM1_status(1),
      I1 => DCM1_vld_in,
      I2 => slv_reg11(1),
      O => \slv_reg11[1]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg11[0]_i_1_n_0\,
      Q => slv_reg11(0),
      R => p_0_in
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg11[1]_i_1_n_0\,
      Q => slv_reg11(1),
      R => p_0_in
    );
\slv_reg12[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(2),
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(0),
      I5 => \slv_reg_wren__2\,
      O => \slv_reg12[7]_i_1_n_0\
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm2_pwm_val\(0),
      R => p_0_in
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm2_pwm_val\(1),
      R => p_0_in
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm2_pwm_val\(2),
      R => p_0_in
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm2_pwm_val\(3),
      R => p_0_in
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm2_pwm_val\(4),
      R => p_0_in
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm2_pwm_val\(5),
      R => p_0_in
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm2_pwm_val\(6),
      R => p_0_in
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg12[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^dcm2_pwm_val\(7),
      R => p_0_in
    );
\slv_reg13[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => \slv_reg_wren__2\,
      I5 => p_0_in_0(2),
      O => \slv_reg13[6]_i_1_n_0\
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm2_pwm_frq\(0),
      R => p_0_in
    );
\slv_reg13_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm2_pwm_frq\(1),
      R => p_0_in
    );
\slv_reg13_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm2_pwm_frq\(2),
      S => p_0_in
    );
\slv_reg13_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm2_pwm_frq\(3),
      R => p_0_in
    );
\slv_reg13_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm2_pwm_frq\(4),
      S => p_0_in
    );
\slv_reg13_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm2_pwm_frq\(5),
      R => p_0_in
    );
\slv_reg13_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg13[6]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm2_pwm_frq\(6),
      R => p_0_in
    );
\slv_reg14[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg2[0]_i_2_n_0\,
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(3),
      I4 => \slv_reg4[0]_i_3_n_0\,
      I5 => \^dcm2_dir\,
      O => \slv_reg14[0]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg14[0]_i_1_n_0\,
      Q => \^dcm2_dir\,
      R => p_0_in
    );
\slv_reg15[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__2\,
      I2 => p_0_in_0(4),
      I3 => \slv_reg15[0]_i_2_n_0\,
      I4 => \^dcm2_run\,
      O => \slv_reg15[0]_i_1_n_0\
    );
\slv_reg15[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg15[0]_i_2_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg15[0]_i_1_n_0\,
      Q => \^dcm2_run\,
      R => p_0_in
    );
\slv_reg16[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg16[0]_i_2_n_0\,
      I2 => p_0_in_0(4),
      I3 => \slv_reg_wren__2\,
      I4 => \slv_reg2[0]_i_3_n_0\,
      I5 => \^dcm2_brake\,
      O => \slv_reg16[0]_i_1_n_0\
    );
\slv_reg16[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      O => \slv_reg16[0]_i_2_n_0\
    );
\slv_reg16_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg16[0]_i_1_n_0\,
      Q => \^dcm2_brake\,
      R => p_0_in
    );
\slv_reg17[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM2_status(0),
      I1 => DCM2_vld_in,
      I2 => slv_reg17(0),
      O => \slv_reg17[0]_i_1_n_0\
    );
\slv_reg17[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM2_status(1),
      I1 => DCM2_vld_in,
      I2 => slv_reg17(1),
      O => \slv_reg17[1]_i_1_n_0\
    );
\slv_reg17_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg17[0]_i_1_n_0\,
      Q => slv_reg17(0),
      R => p_0_in
    );
\slv_reg17_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg17[1]_i_1_n_0\,
      Q => slv_reg17(1),
      R => p_0_in
    );
\slv_reg18[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => \slv_reg_wren__2\,
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(4),
      O => \slv_reg18[7]_i_1_n_0\
    );
\slv_reg18_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm3_pwm_val\(0),
      R => p_0_in
    );
\slv_reg18_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm3_pwm_val\(1),
      R => p_0_in
    );
\slv_reg18_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm3_pwm_val\(2),
      R => p_0_in
    );
\slv_reg18_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm3_pwm_val\(3),
      R => p_0_in
    );
\slv_reg18_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm3_pwm_val\(4),
      R => p_0_in
    );
\slv_reg18_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm3_pwm_val\(5),
      R => p_0_in
    );
\slv_reg18_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm3_pwm_val\(6),
      R => p_0_in
    );
\slv_reg18_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg18[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^dcm3_pwm_val\(7),
      R => p_0_in
    );
\slv_reg19[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => p_0_in_0(2),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(4),
      I5 => \slv_reg_wren__2\,
      O => \slv_reg19[6]_i_1_n_0\
    );
\slv_reg19_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm3_pwm_frq\(0),
      R => p_0_in
    );
\slv_reg19_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm3_pwm_frq\(1),
      R => p_0_in
    );
\slv_reg19_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm3_pwm_frq\(2),
      S => p_0_in
    );
\slv_reg19_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm3_pwm_frq\(3),
      R => p_0_in
    );
\slv_reg19_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm3_pwm_frq\(4),
      S => p_0_in
    );
\slv_reg19_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm3_pwm_frq\(5),
      R => p_0_in
    );
\slv_reg19_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg19[6]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm3_pwm_frq\(6),
      R => p_0_in
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(4),
      I2 => \slv_reg_wren__2\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(3),
      I5 => p_0_in_0(2),
      O => \slv_reg1[6]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm0_pwm_frq\(0),
      R => p_0_in
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm0_pwm_frq\(1),
      R => p_0_in
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm0_pwm_frq\(2),
      S => p_0_in
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm0_pwm_frq\(3),
      R => p_0_in
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm0_pwm_frq\(4),
      S => p_0_in
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm0_pwm_frq\(5),
      R => p_0_in
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[6]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm0_pwm_frq\(6),
      R => p_0_in
    );
\slv_reg20[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg16[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \slv_reg_wren__2\,
      I4 => \slv_reg20[0]_i_2_n_0\,
      I5 => \^dcm3_dir\,
      O => \slv_reg20[0]_i_1_n_0\
    );
\slv_reg20[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(4),
      O => \slv_reg20[0]_i_2_n_0\
    );
\slv_reg20_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg20[0]_i_1_n_0\,
      Q => \^dcm3_dir\,
      R => p_0_in
    );
\slv_reg21[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(3),
      I3 => \slv_reg21[0]_i_2_n_0\,
      I4 => \slv_reg21[0]_i_3_n_0\,
      I5 => \^dcm3_run\,
      O => \slv_reg21[0]_i_1_n_0\
    );
\slv_reg21[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => p_0_in_0(0),
      O => \slv_reg21[0]_i_2_n_0\
    );
\slv_reg21[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      O => \slv_reg21[0]_i_3_n_0\
    );
\slv_reg21_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg21[0]_i_1_n_0\,
      Q => \^dcm3_run\,
      R => p_0_in
    );
\slv_reg22[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(3),
      I3 => \slv_reg22[0]_i_2_n_0\,
      I4 => \slv_reg21[0]_i_3_n_0\,
      I5 => \^dcm3_brake\,
      O => \slv_reg22[0]_i_1_n_0\
    );
\slv_reg22[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      O => \slv_reg22[0]_i_2_n_0\
    );
\slv_reg22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg22[0]_i_1_n_0\,
      Q => \^dcm3_brake\,
      R => p_0_in
    );
\slv_reg23[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM3_status(0),
      I1 => DCM3_vld_in,
      I2 => slv_reg23(0),
      O => \slv_reg23[0]_i_1_n_0\
    );
\slv_reg23[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM3_status(1),
      I1 => DCM3_vld_in,
      I2 => slv_reg23(1),
      O => \slv_reg23[1]_i_1_n_0\
    );
\slv_reg23_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg23[0]_i_1_n_0\,
      Q => slv_reg23(0),
      R => p_0_in
    );
\slv_reg23_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg23[1]_i_1_n_0\,
      Q => slv_reg23(1),
      R => p_0_in
    );
\slv_reg24[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => \slv_reg_wren__2\,
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(4),
      O => \slv_reg24[7]_i_1_n_0\
    );
\slv_reg24_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm4_pwm_val\(0),
      R => p_0_in
    );
\slv_reg24_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm4_pwm_val\(1),
      R => p_0_in
    );
\slv_reg24_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm4_pwm_val\(2),
      R => p_0_in
    );
\slv_reg24_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm4_pwm_val\(3),
      R => p_0_in
    );
\slv_reg24_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm4_pwm_val\(4),
      R => p_0_in
    );
\slv_reg24_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm4_pwm_val\(5),
      R => p_0_in
    );
\slv_reg24_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm4_pwm_val\(6),
      R => p_0_in
    );
\slv_reg24_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg24[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^dcm4_pwm_val\(7),
      R => p_0_in
    );
\slv_reg25[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(2),
      I2 => \slv_reg_wren__2\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(4),
      I5 => p_0_in_0(3),
      O => \slv_reg25[6]_i_1_n_0\
    );
\slv_reg25_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm4_pwm_frq\(0),
      R => p_0_in
    );
\slv_reg25_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm4_pwm_frq\(1),
      R => p_0_in
    );
\slv_reg25_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm4_pwm_frq\(2),
      S => p_0_in
    );
\slv_reg25_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm4_pwm_frq\(3),
      R => p_0_in
    );
\slv_reg25_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm4_pwm_frq\(4),
      S => p_0_in
    );
\slv_reg25_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm4_pwm_frq\(5),
      R => p_0_in
    );
\slv_reg25_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg25[6]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm4_pwm_frq\(6),
      R => p_0_in
    );
\slv_reg26[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => \slv_reg22[0]_i_2_n_0\,
      I4 => \slv_reg26[0]_i_2_n_0\,
      I5 => \^dcm4_dir\,
      O => \slv_reg26[0]_i_1_n_0\
    );
\slv_reg26[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      O => \slv_reg26[0]_i_2_n_0\
    );
\slv_reg26_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg26[0]_i_1_n_0\,
      Q => \^dcm4_dir\,
      R => p_0_in
    );
\slv_reg27[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(2),
      I3 => \slv_reg3[0]_i_3_n_0\,
      I4 => \slv_reg27[0]_i_2_n_0\,
      I5 => \^dcm4_run\,
      O => \slv_reg27[0]_i_1_n_0\
    );
\slv_reg27[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      O => \slv_reg27[0]_i_2_n_0\
    );
\slv_reg27_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg27[0]_i_1_n_0\,
      Q => \^dcm4_run\,
      R => p_0_in
    );
\slv_reg28[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \slv_reg27[0]_i_2_n_0\,
      I4 => \slv_reg21[0]_i_3_n_0\,
      I5 => \^dcm4_brake\,
      O => \slv_reg28[0]_i_1_n_0\
    );
\slv_reg28_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg28[0]_i_1_n_0\,
      Q => \^dcm4_brake\,
      R => p_0_in
    );
\slv_reg29[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM4_status(0),
      I1 => DCM4_vld_in,
      I2 => slv_reg29(0),
      O => \slv_reg29[0]_i_1_n_0\
    );
\slv_reg29[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM4_status(1),
      I1 => DCM4_vld_in,
      I2 => slv_reg29(1),
      O => \slv_reg29[1]_i_1_n_0\
    );
\slv_reg29_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg29[0]_i_1_n_0\,
      Q => slv_reg29(0),
      R => p_0_in
    );
\slv_reg29_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg29[1]_i_1_n_0\,
      Q => slv_reg29(1),
      R => p_0_in
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg2[0]_i_2_n_0\,
      I2 => \slv_reg_wren__2\,
      I3 => p_0_in_0(1),
      I4 => \slv_reg2[0]_i_3_n_0\,
      I5 => \^dcm0_dir\,
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      O => \slv_reg2[0]_i_2_n_0\
    );
\slv_reg2[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(2),
      O => \slv_reg2[0]_i_3_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[0]_i_1_n_0\,
      Q => \^dcm0_dir\,
      R => p_0_in
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg3[0]_i_2_n_0\,
      I2 => \slv_reg3[0]_i_3_n_0\,
      I3 => p_0_in_0(3),
      I4 => \slv_reg_wren__2\,
      I5 => \^dcm0_run\,
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      O => \slv_reg3[0]_i_2_n_0\
    );
\slv_reg3[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      O => \slv_reg3[0]_i_3_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => \^dcm0_run\,
      R => p_0_in
    );
\slv_reg4[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg4[0]_i_2_n_0\,
      I2 => \slv_reg4[0]_i_3_n_0\,
      I3 => p_0_in_0(3),
      I4 => p_0_in_0(0),
      I5 => \^dcm0_brake\,
      O => \slv_reg4[0]_i_1_n_0\
    );
\slv_reg4[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(1),
      O => \slv_reg4[0]_i_2_n_0\
    );
\slv_reg4[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => p_0_in_0(2),
      O => \slv_reg4[0]_i_3_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg4[0]_i_1_n_0\,
      Q => \^dcm0_brake\,
      R => p_0_in
    );
\slv_reg5[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM0_status(0),
      I1 => DCM0_vld_in,
      I2 => slv_reg5(0),
      O => \slv_reg5[0]_i_1_n_0\
    );
\slv_reg5[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DCM0_status(1),
      I1 => DCM0_vld_in,
      I2 => slv_reg5(1),
      O => \slv_reg5[1]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5[0]_i_1_n_0\,
      Q => slv_reg5(0),
      R => p_0_in
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg5[1]_i_1_n_0\,
      Q => slv_reg5(1),
      R => p_0_in
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(2),
      I4 => p_0_in_0(3),
      I5 => \slv_reg_wren__2\,
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm1_pwm_val\(0),
      R => p_0_in
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm1_pwm_val\(1),
      R => p_0_in
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm1_pwm_val\(2),
      R => p_0_in
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm1_pwm_val\(3),
      R => p_0_in
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm1_pwm_val\(4),
      R => p_0_in
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm1_pwm_val\(5),
      R => p_0_in
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm1_pwm_val\(6),
      R => p_0_in
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^dcm1_pwm_val\(7),
      R => p_0_in
    );
\slv_reg7[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(4),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => \slv_reg_wren__2\,
      I5 => p_0_in_0(2),
      O => \slv_reg7[6]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \^dcm1_pwm_frq\(0),
      R => p_0_in
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^dcm1_pwm_frq\(1),
      R => p_0_in
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^dcm1_pwm_frq\(2),
      S => p_0_in
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^dcm1_pwm_frq\(3),
      R => p_0_in
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^dcm1_pwm_frq\(4),
      S => p_0_in
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^dcm1_pwm_frq\(5),
      R => p_0_in
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[6]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^dcm1_pwm_frq\(6),
      R => p_0_in
    );
\slv_reg8[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg4[0]_i_2_n_0\,
      I2 => \slv_reg8[0]_i_2_n_0\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      I5 => \^dcm1_dir\,
      O => \slv_reg8[0]_i_1_n_0\
    );
\slv_reg8[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => p_0_in_0(3),
      O => \slv_reg8[0]_i_2_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg8[0]_i_1_n_0\,
      Q => \^dcm1_dir\,
      R => p_0_in
    );
\slv_reg9[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg3[0]_i_2_n_0\,
      I2 => p_0_in_0(3),
      I3 => p_0_in_0(0),
      I4 => \slv_reg9[0]_i_2_n_0\,
      I5 => \^dcm1_run\,
      O => \slv_reg9[0]_i_1_n_0\
    );
\slv_reg9[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_awvalid,
      O => \slv_reg9[0]_i_2_n_0\
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg9[0]_i_1_n_0\,
      Q => \^dcm1_run\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    DCM0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM0_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM0_vld_out : out STD_LOGIC;
    DCM1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM1_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM1_vld_out : out STD_LOGIC;
    DCM2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM2_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM2_vld_out : out STD_LOGIC;
    DCM3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM3_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM3_vld_out : out STD_LOGIC;
    DCM4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM4_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM4_vld_out : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    DCM4_brake : out STD_LOGIC;
    DCM4_run : out STD_LOGIC;
    DCM4_dir : out STD_LOGIC;
    DCM3_brake : out STD_LOGIC;
    DCM3_run : out STD_LOGIC;
    DCM3_dir : out STD_LOGIC;
    DCM2_brake : out STD_LOGIC;
    DCM2_run : out STD_LOGIC;
    DCM2_dir : out STD_LOGIC;
    DCM1_brake : out STD_LOGIC;
    DCM1_run : out STD_LOGIC;
    DCM1_dir : out STD_LOGIC;
    DCM0_brake : out STD_LOGIC;
    DCM0_run : out STD_LOGIC;
    DCM0_dir : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM0_vld_in : in STD_LOGIC;
    DCM1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM1_vld_in : in STD_LOGIC;
    DCM2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM2_vld_in : in STD_LOGIC;
    DCM3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM3_vld_in : in STD_LOGIC;
    DCM4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM4_vld_in : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0 is
begin
DCM_regs_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0_S00_AXI
     port map (
      DCM0_brake => DCM0_brake,
      DCM0_dir => DCM0_dir,
      DCM0_pwm_frq(6 downto 0) => DCM0_pwm_frq(6 downto 0),
      DCM0_pwm_val(7 downto 0) => DCM0_pwm_val(7 downto 0),
      DCM0_run => DCM0_run,
      DCM0_status(1 downto 0) => DCM0_status(1 downto 0),
      DCM0_vld_in => DCM0_vld_in,
      DCM0_vld_out => DCM0_vld_out,
      DCM1_brake => DCM1_brake,
      DCM1_dir => DCM1_dir,
      DCM1_pwm_frq(6 downto 0) => DCM1_pwm_frq(6 downto 0),
      DCM1_pwm_val(7 downto 0) => DCM1_pwm_val(7 downto 0),
      DCM1_run => DCM1_run,
      DCM1_status(1 downto 0) => DCM1_status(1 downto 0),
      DCM1_vld_in => DCM1_vld_in,
      DCM1_vld_out => DCM1_vld_out,
      DCM2_brake => DCM2_brake,
      DCM2_dir => DCM2_dir,
      DCM2_pwm_frq(6 downto 0) => DCM2_pwm_frq(6 downto 0),
      DCM2_pwm_val(7 downto 0) => DCM2_pwm_val(7 downto 0),
      DCM2_run => DCM2_run,
      DCM2_status(1 downto 0) => DCM2_status(1 downto 0),
      DCM2_vld_in => DCM2_vld_in,
      DCM2_vld_out => DCM2_vld_out,
      DCM3_brake => DCM3_brake,
      DCM3_dir => DCM3_dir,
      DCM3_pwm_frq(6 downto 0) => DCM3_pwm_frq(6 downto 0),
      DCM3_pwm_val(7 downto 0) => DCM3_pwm_val(7 downto 0),
      DCM3_run => DCM3_run,
      DCM3_status(1 downto 0) => DCM3_status(1 downto 0),
      DCM3_vld_in => DCM3_vld_in,
      DCM3_vld_out => DCM3_vld_out,
      DCM4_brake => DCM4_brake,
      DCM4_dir => DCM4_dir,
      DCM4_pwm_frq(6 downto 0) => DCM4_pwm_frq(6 downto 0),
      DCM4_pwm_val(7 downto 0) => DCM4_pwm_val(7 downto 0),
      DCM4_run => DCM4_run,
      DCM4_status(1 downto 0) => DCM4_status(1 downto 0),
      DCM4_vld_in => DCM4_vld_in,
      DCM4_vld_out => DCM4_vld_out,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(4 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(7 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(7 downto 0) => s00_axi_wdata(7 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_DCM_regs_0_0,DCM_regs_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DCM_regs_v1_0,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of DCM0_brake : signal is "mindway:user:DCM_reg_if:1.0 DCM0 brake";
  attribute x_interface_info of DCM0_dir : signal is "mindway:user:DCM_reg_if:1.0 DCM0 dir";
  attribute x_interface_info of DCM0_run : signal is "mindway:user:DCM_reg_if:1.0 DCM0 run";
  attribute x_interface_info of DCM0_vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM0 vld_in";
  attribute x_interface_info of DCM0_vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM0 vld_out";
  attribute x_interface_info of DCM1_brake : signal is "mindway:user:DCM_reg_if:1.0 DCM1 brake";
  attribute x_interface_info of DCM1_dir : signal is "mindway:user:DCM_reg_if:1.0 DCM1 dir";
  attribute x_interface_info of DCM1_run : signal is "mindway:user:DCM_reg_if:1.0 DCM1 run";
  attribute x_interface_info of DCM1_vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM1 vld_in";
  attribute x_interface_info of DCM1_vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM1 vld_out";
  attribute x_interface_info of DCM2_brake : signal is "mindway:user:DCM_reg_if:1.0 DCM2 brake";
  attribute x_interface_info of DCM2_dir : signal is "mindway:user:DCM_reg_if:1.0 DCM2 dir";
  attribute x_interface_info of DCM2_run : signal is "mindway:user:DCM_reg_if:1.0 DCM2 run";
  attribute x_interface_info of DCM2_vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM2 vld_in";
  attribute x_interface_info of DCM2_vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM2 vld_out";
  attribute x_interface_info of DCM3_brake : signal is "mindway:user:DCM_reg_if:1.0 DCM3 brake";
  attribute x_interface_info of DCM3_dir : signal is "mindway:user:DCM_reg_if:1.0 DCM3 dir";
  attribute x_interface_info of DCM3_run : signal is "mindway:user:DCM_reg_if:1.0 DCM3 run";
  attribute x_interface_info of DCM3_vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM3 vld_in";
  attribute x_interface_info of DCM3_vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM3 vld_out";
  attribute x_interface_info of DCM4_brake : signal is "mindway:user:DCM_reg_if:1.0 DCM4 brake";
  attribute x_interface_info of DCM4_dir : signal is "mindway:user:DCM_reg_if:1.0 DCM4 dir";
  attribute x_interface_info of DCM4_run : signal is "mindway:user:DCM_reg_if:1.0 DCM4 run";
  attribute x_interface_info of DCM4_vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM4 vld_in";
  attribute x_interface_info of DCM4_vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM4 vld_out";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of DCM0_pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM0 pwm_frq";
  attribute x_interface_info of DCM0_pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM0 pwm_val";
  attribute x_interface_info of DCM0_status : signal is "mindway:user:DCM_reg_if:1.0 DCM0 status";
  attribute x_interface_info of DCM1_pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM1 pwm_frq";
  attribute x_interface_info of DCM1_pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM1 pwm_val";
  attribute x_interface_info of DCM1_status : signal is "mindway:user:DCM_reg_if:1.0 DCM1 status";
  attribute x_interface_info of DCM2_pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM2 pwm_frq";
  attribute x_interface_info of DCM2_pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM2 pwm_val";
  attribute x_interface_info of DCM2_status : signal is "mindway:user:DCM_reg_if:1.0 DCM2 status";
  attribute x_interface_info of DCM3_pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM3 pwm_frq";
  attribute x_interface_info of DCM3_pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM3 pwm_val";
  attribute x_interface_info of DCM3_status : signal is "mindway:user:DCM_reg_if:1.0 DCM3 status";
  attribute x_interface_info of DCM4_pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM4 pwm_frq";
  attribute x_interface_info of DCM4_pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM4 pwm_val";
  attribute x_interface_info of DCM4_status : signal is "mindway:user:DCM_reg_if:1.0 DCM4 status";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 40, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10) <= \<const0>\;
  s00_axi_rdata(9) <= \<const0>\;
  s00_axi_rdata(8) <= \<const0>\;
  s00_axi_rdata(7 downto 0) <= \^s00_axi_rdata\(7 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_regs_v1_0
     port map (
      DCM0_brake => DCM0_brake,
      DCM0_dir => DCM0_dir,
      DCM0_pwm_frq(6 downto 0) => DCM0_pwm_frq(6 downto 0),
      DCM0_pwm_val(7 downto 0) => DCM0_pwm_val(7 downto 0),
      DCM0_run => DCM0_run,
      DCM0_status(1 downto 0) => DCM0_status(1 downto 0),
      DCM0_vld_in => DCM0_vld_in,
      DCM0_vld_out => DCM0_vld_out,
      DCM1_brake => DCM1_brake,
      DCM1_dir => DCM1_dir,
      DCM1_pwm_frq(6 downto 0) => DCM1_pwm_frq(6 downto 0),
      DCM1_pwm_val(7 downto 0) => DCM1_pwm_val(7 downto 0),
      DCM1_run => DCM1_run,
      DCM1_status(1 downto 0) => DCM1_status(1 downto 0),
      DCM1_vld_in => DCM1_vld_in,
      DCM1_vld_out => DCM1_vld_out,
      DCM2_brake => DCM2_brake,
      DCM2_dir => DCM2_dir,
      DCM2_pwm_frq(6 downto 0) => DCM2_pwm_frq(6 downto 0),
      DCM2_pwm_val(7 downto 0) => DCM2_pwm_val(7 downto 0),
      DCM2_run => DCM2_run,
      DCM2_status(1 downto 0) => DCM2_status(1 downto 0),
      DCM2_vld_in => DCM2_vld_in,
      DCM2_vld_out => DCM2_vld_out,
      DCM3_brake => DCM3_brake,
      DCM3_dir => DCM3_dir,
      DCM3_pwm_frq(6 downto 0) => DCM3_pwm_frq(6 downto 0),
      DCM3_pwm_val(7 downto 0) => DCM3_pwm_val(7 downto 0),
      DCM3_run => DCM3_run,
      DCM3_status(1 downto 0) => DCM3_status(1 downto 0),
      DCM3_vld_in => DCM3_vld_in,
      DCM3_vld_out => DCM3_vld_out,
      DCM4_brake => DCM4_brake,
      DCM4_dir => DCM4_dir,
      DCM4_pwm_frq(6 downto 0) => DCM4_pwm_frq(6 downto 0),
      DCM4_pwm_val(7 downto 0) => DCM4_pwm_val(7 downto 0),
      DCM4_run => DCM4_run,
      DCM4_status(1 downto 0) => DCM4_status(1 downto 0),
      DCM4_vld_in => DCM4_vld_in,
      DCM4_vld_out => DCM4_vld_out,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(6 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(6 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(7 downto 0) => \^s00_axi_rdata\(7 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(7 downto 0) => s00_axi_wdata(7 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
