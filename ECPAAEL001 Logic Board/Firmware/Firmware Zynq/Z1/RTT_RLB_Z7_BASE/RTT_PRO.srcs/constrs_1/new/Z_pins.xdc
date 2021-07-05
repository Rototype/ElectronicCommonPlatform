
set_property PACKAGE_PIN C6      [get_ports {ZPL_IO_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[0]}] 

set_property PACKAGE_PIN B6      [get_ports {ZPL_IO_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[1]}] 

set_property PACKAGE_PIN H5      [get_ports {ZPL_IO_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[2]}] 

set_property PACKAGE_PIN F5      [get_ports {ZPL_IO_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[3]}] 

set_property PACKAGE_PIN E5      [get_ports {ZPL_IO_tri_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[4]}] 

set_property PACKAGE_PIN D5      [get_ports {ZPL_IO_tri_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[5]}] 

set_property PACKAGE_PIN C5      [get_ports {ZPL_IO_tri_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[6]}] 

set_property PACKAGE_PIN C4      [get_ports {ZPL_IO_tri_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[7]}] 

set_property PACKAGE_PIN B4      [get_ports {ZPL_IO_tri_o[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[8]}] 

set_property PACKAGE_PIN B3      [get_ports {ZPL_IO_tri_o[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ZPL_IO_tri_o[9]}] 

#!!! WARNING  !!! Bank 13 is supplied 1v8, but we train Vivado to recognize it as 2v5

#-- C2C SELECT IO ---------------------------------------------

set_property IOSTANDARD LVCMOS33 [get_ports Vaux0_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux0_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports Vaux1_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux1_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports Vaux2_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux2_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports Vaux3_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux3_v_p]

set_property IOSTANDARD LVCMOS33 [get_ports Vaux4_v_n]
set_property IOSTANDARD LVCMOS33 [get_ports Vaux4_v_p]
set_property PACKAGE_PIN D3 [get_ports Vaux4_v_p]
set_property PACKAGE_PIN C3 [get_ports Vaux4_v_n]
set_property PACKAGE_PIN A7 [get_ports Vaux3_v_p]
set_property PACKAGE_PIN A6 [get_ports Vaux3_v_n]
set_property PACKAGE_PIN C8 [get_ports Vaux2_v_p]
set_property PACKAGE_PIN B8 [get_ports Vaux2_v_n]
set_property PACKAGE_PIN E8 [get_ports Vaux1_v_p]
set_property PACKAGE_PIN D8 [get_ports Vaux1_v_n]
set_property PACKAGE_PIN F7 [get_ports Vaux0_v_p]
set_property PACKAGE_PIN E7 [get_ports Vaux0_v_n]


#-- SM IRQ  ---------------------------------------------------

#trace C2C_X2M_IRQ_IN1
set_property PACKAGE_PIN W15 [get_ports {SM_IRQ}]
set_property IOSTANDARD LVCMOS25 [get_ports {SM_IRQ}]


#-- C2C SELECT IO ---------------------------------------------


#trace C2C_RX_CLK_N
set_property IOSTANDARD LVDS_25 [get_ports Z_c2c_rxclk_in_n]

#trace C2C_RX_CLK_P
set_property PACKAGE_PIN AA16 [get_ports Z_c2c_rxclk_in_p]
set_property PACKAGE_PIN AA17 [get_ports Z_c2c_rxclk_in_n]
set_property IOSTANDARD LVDS_25 [get_ports Z_c2c_rxclk_in_p]

#trace C2C_X2M_IRQ_IN2
set_property PACKAGE_PIN V14 [get_ports {Z_c2c_rxd_in[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[0]}]

#trace C2C_X2M_IRQ_IN3
set_property PACKAGE_PIN AB14 [get_ports {Z_c2c_rxd_in[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[1]}]

#trace C2C_RX_DATA0
set_property PACKAGE_PIN U13 [get_ports {Z_c2c_rxd_in[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[2]}]

#trace C2C_RX_DATA1
set_property PACKAGE_PIN V13 [get_ports {Z_c2c_rxd_in[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[3]}]

#trace C2C_RX_DATA2
set_property PACKAGE_PIN W13 [get_ports {Z_c2c_rxd_in[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[4]}]

#trace C2C_RX_DATA3
set_property PACKAGE_PIN Y13 [get_ports {Z_c2c_rxd_in[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[5]}]

#trace C2C_RX_DATA4
set_property PACKAGE_PIN AB13 [get_ports {Z_c2c_rxd_in[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[6]}]

#trace C2C_RX_DATA5
set_property PACKAGE_PIN U12 [get_ports {Z_c2c_rxd_in[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[7]}]

#trace C2C_RX_DATA6
set_property PACKAGE_PIN W12 [get_ports {Z_c2c_rxd_in[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[8]}]

#trace C2C_RX_DATA7
set_property PACKAGE_PIN Y12 [get_ports {Z_c2c_rxd_in[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[9]}]

#trace C2C_RX_DATA8
set_property PACKAGE_PIN AB12 [get_ports {Z_c2c_rxd_in[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[10]}]

#trace C2C_RX_DATA9
set_property PACKAGE_PIN AA12 [get_ports {Z_c2c_rxd_in[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[11]}]

#trace C2C_RX_DATA10
set_property PACKAGE_PIN U11 [get_ports {Z_c2c_rxd_in[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[12]}]

#trace C2C_RX_DATA11
set_property PACKAGE_PIN V11 [get_ports {Z_c2c_rxd_in[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[13]}]

#trace C2C_RX_DATA12
set_property PACKAGE_PIN W11 [get_ports {Z_c2c_rxd_in[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[14]}]

#trace C2C_RX_DATA13
set_property PACKAGE_PIN AA11 [get_ports {Z_c2c_rxd_in[15]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[15]}]

#trace C2C_RX_DATA14
set_property PACKAGE_PIN AB11 [get_ports {Z_c2c_rxd_in[16]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_rxd_in[16]}]


#------------------------------

#trace C2C_TX_CLK_N
set_property PACKAGE_PIN AA15 [get_ports Z_c2c_txclk_out_n]
set_property IOSTANDARD LVDS_25 [get_ports Z_c2c_txclk_out_n]

#trace C2C_TX_CLK_P
set_property PACKAGE_PIN AA14 [get_ports Z_c2c_txclk_out_p]
set_property IOSTANDARD LVDS_25 [get_ports Z_c2c_txclk_out_p]

#trace C2C_X2M_IRQ_OUT2
set_property PACKAGE_PIN U19 [get_ports {Z_c2c_txd_out[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[0]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[0]}]

#trace C2C_X2M_IRQ_OUT3
set_property PACKAGE_PIN V19 [get_ports {Z_c2c_txd_out[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[1]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[1]}]

#trace C2C_TX_DATA0
set_property PACKAGE_PIN AA19 [get_ports {Z_c2c_txd_out[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[2]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[2]}]

#trace C2C_TX_DATA1
set_property PACKAGE_PIN AB19 [get_ports {Z_c2c_txd_out[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[3]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[3]}]

#trace C2C_TX_DATA2
set_property PACKAGE_PIN U18 [get_ports {Z_c2c_txd_out[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[4]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[4]}]

#trace C2C_TX_DATA3
set_property PACKAGE_PIN V18 [get_ports {Z_c2c_txd_out[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[5]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[5]}]

#trace C2C_TX_DATA4
set_property PACKAGE_PIN W18 [get_ports {Z_c2c_txd_out[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[6]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[6]}]

#trace C2C_TX_DATA5
set_property PACKAGE_PIN AB18 [get_ports {Z_c2c_txd_out[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[7]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[7]}]

#trace C2C_TX_DATA6
set_property PACKAGE_PIN R17 [get_ports {Z_c2c_txd_out[8]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[8]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[8]}]

#trace C2C_TX_DATA7
set_property PACKAGE_PIN U17 [get_ports {Z_c2c_txd_out[9]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[9]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[9]}]

#trace C2C_TX_DATA8
set_property PACKAGE_PIN W17 [get_ports {Z_c2c_txd_out[10]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[10]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[10]}]

#trace C2C_TX_DATA9
set_property PACKAGE_PIN Y17 [get_ports {Z_c2c_txd_out[11]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[11]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[11]}]

#trace C2C_TX_DATA10
set_property PACKAGE_PIN AB17 [get_ports {Z_c2c_txd_out[12]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[12]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[12]}]

#trace C2C_TX_DATA11
set_property PACKAGE_PIN U16 [get_ports {Z_c2c_txd_out[13]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[13]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[13]}]

#trace C2C_TX_DATA12
set_property PACKAGE_PIN V16 [get_ports {Z_c2c_txd_out[14]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[14]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[14]}]

#trace C2C_TX_DATA13
set_property PACKAGE_PIN W16 [get_ports {Z_c2c_txd_out[15]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[15]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[15]}]

#trace C2C_TX_DATA14
set_property PACKAGE_PIN AB16 [get_ports {Z_c2c_txd_out[16]}]
set_property IOSTANDARD LVCMOS25 [get_ports {Z_c2c_txd_out[16]}]
set_property SLEW FAST [get_ports {Z_c2c_txd_out[16]}]

#trace C2C_X2M_IRQ_IN0
set_property PACKAGE_PIN V15 [get_ports mm2s_introut]
set_property IOSTANDARD LVCMOS25 [get_ports mm2s_introut]
set_property PULLDOWN true [get_ports mm2s_introut]

#trace C2C_X2M_IRQ_OUT0
set_property PACKAGE_PIN AB21 [get_ports s2mm_introut]
set_property IOSTANDARD LVCMOS25 [get_ports s2mm_introut]
set_property PULLDOWN true [get_ports s2mm_introut]
