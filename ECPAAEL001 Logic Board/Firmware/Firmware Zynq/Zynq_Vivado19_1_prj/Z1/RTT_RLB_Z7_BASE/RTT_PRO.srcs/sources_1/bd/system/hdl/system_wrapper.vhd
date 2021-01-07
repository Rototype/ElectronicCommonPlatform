--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
--Date        : Tue Jul 28 22:57:53 2020
--Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    Vaux0_v_n : in STD_LOGIC;
    Vaux0_v_p : in STD_LOGIC;
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    Vaux2_v_n : in STD_LOGIC;
    Vaux2_v_p : in STD_LOGIC;
    Vaux3_v_n : in STD_LOGIC;
    Vaux3_v_p : in STD_LOGIC;
    Vaux4_v_n : in STD_LOGIC;
    Vaux4_v_p : in STD_LOGIC;
    Z_c2c_rxclk_in_n : in STD_LOGIC;
    Z_c2c_rxclk_in_p : in STD_LOGIC;
    Z_c2c_rxclk_out_n : out STD_LOGIC;
    Z_c2c_rxclk_out_p : out STD_LOGIC;
    Z_c2c_rxd_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    Z_c2c_rxd_out : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    Z_c2c_rxclk_in_p : in STD_LOGIC;
    Z_c2c_rxclk_out_p : out STD_LOGIC;
    Z_c2c_rxclk_out_n : out STD_LOGIC;
    Z_c2c_rxclk_in_n : in STD_LOGIC;
    Z_c2c_rxd_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    Z_c2c_rxd_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    Vaux0_v_n : in STD_LOGIC;
    Vaux0_v_p : in STD_LOGIC;
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    Vaux3_v_n : in STD_LOGIC;
    Vaux3_v_p : in STD_LOGIC;
    Vaux2_v_n : in STD_LOGIC;
    Vaux2_v_p : in STD_LOGIC;
    Vaux4_v_n : in STD_LOGIC;
    Vaux4_v_p : in STD_LOGIC
  );
  end component system;
begin
system_i: component system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      Vaux0_v_n => Vaux0_v_n,
      Vaux0_v_p => Vaux0_v_p,
      Vaux1_v_n => Vaux1_v_n,
      Vaux1_v_p => Vaux1_v_p,
      Vaux2_v_n => Vaux2_v_n,
      Vaux2_v_p => Vaux2_v_p,
      Vaux3_v_n => Vaux3_v_n,
      Vaux3_v_p => Vaux3_v_p,
      Vaux4_v_n => Vaux4_v_n,
      Vaux4_v_p => Vaux4_v_p,
      Z_c2c_rxclk_in_n => Z_c2c_rxclk_in_n,
      Z_c2c_rxclk_in_p => Z_c2c_rxclk_in_p,
      Z_c2c_rxclk_out_n => Z_c2c_rxclk_out_n,
      Z_c2c_rxclk_out_p => Z_c2c_rxclk_out_p,
      Z_c2c_rxd_in(16 downto 0) => Z_c2c_rxd_in(16 downto 0),
      Z_c2c_rxd_out(16 downto 0) => Z_c2c_rxd_out(16 downto 0)
    );
end STRUCTURE;
