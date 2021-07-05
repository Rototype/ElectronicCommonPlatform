#******************************************************************************
# (c) Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
#*******************************************************************************

# CHANGE THE CLOCK PERIODS BASED ON THE INPUT SYSTEM CLOCK USED #
#create_clock -name clk_100 -period 10 [get_nets clk_out_100]
#create_clock -name clk_200 -period 5 [get_nets clk_out_200]
#create_clock -name clk_phy -period 10.000 [get_nets clk_out_phy]
##create_clock -name axi_c2c_rx_diff_clk_in_p_mas -period 10.000 [get_ports axi_c2c_rx_diff_clk_in_p_mas]




#

# UNCOMMENT THE FOLLOWING LINES AND CHANGE THE IOSTANDARDS BASED ON THE BOARD USED
################Following XDC specific to KC705############################
#set_property LOC AD11 [ get_ports clk_200_n]
#set_property IOSTANDARD LVDS [ get_ports clk_200_p]
#set_property LOC AD12 [ get_ports clk_200_p]
#set_property IOSTANDARD LVDS [ get_ports clk_200_n]
#create_clock -period "5" -name clk_200_p [get_ports clk_200_p]


#set_property PACKAGE_PIN G12 [get_ports reset]
#set_property IOSTANDARD LVCMOS25 [get_ports reset]
#set_property IOSTANDARD LVCMOS25 [get_ports t_axi_sio_data_out_mas[*]]
#set_property LOC C11 [ get_ports t_axi_sio_data_out_mas[0]]
#set_property LOC D11 [ get_ports t_axi_sio_data_out_mas[1]]
#set_property LOC B12 [ get_ports t_axi_sio_data_out_mas[2]]
#set_property LOC C12 [ get_ports t_axi_sio_data_out_mas[3]]
#set_property LOC E11 [ get_ports t_axi_sio_data_out_mas[4]]
#set_property LOC F11 [ get_ports t_axi_sio_data_out_mas[5]]
#set_property LOC E16 [ get_ports t_axi_sio_data_out_mas[6]]
#set_property LOC F15 [ get_ports t_axi_sio_data_out_mas[7]]
#set_property LOC C14 [ get_ports t_axi_sio_data_out_mas[8]]
#set_property LOC D14 [ get_ports t_axi_sio_data_out_mas[9]]
#set_property LOC A15 [ get_ports t_axi_sio_data_out_mas[10]]
#set_property LOC B14 [ get_ports t_axi_sio_data_out_mas[11]]
#set_property LOC E15 [ get_ports t_axi_sio_data_out_mas[12]]
#set_property LOC E14 [ get_ports t_axi_sio_data_out_mas[13]]
#set_property LOC E13 [ get_ports t_axi_sio_data_out_mas[14]]
#set_property LOC F12 [ get_ports t_axi_sio_data_out_mas[15]]
#set_property LOC A12 [ get_ports t_axi_sio_data_out_mas[16]]
#set_property LOC A11 [ get_ports t_axi_sio_data_out_mas[17]]
#set_property LOC A13 [ get_ports t_axi_sio_data_out_mas[18]]
#set_property LOC B13 [ get_ports t_axi_sio_data_out_mas[19]]
#set_property LOC B15 [ get_ports t_axi_sio_data_out_mas[20]]
#set_property LOC C15 [ get_ports t_axi_sio_data_out_mas[21]]
#set_property LOC K16 [ get_ports t_axi_sio_data_out_mas[22]]
#set_property LOC L16 [ get_ports t_axi_sio_data_out_mas[23]]
#set_property LOC H16 [ get_ports t_axi_sio_data_out_mas[24]]
#set_property LOC J16 [ get_ports t_axi_sio_data_out_mas[25]]
#set_property LOC G15 [ get_ports t_axi_sio_data_out_mas[26]]
#set_property LOC H15 [ get_ports t_axi_sio_data_out_mas[27]]
#set_property LOC K15 [ get_ports t_axi_sio_data_out_mas[28]]
#set_property LOC L15 [ get_ports t_axi_sio_data_out_mas[29]]
#set_property LOC J14 [ get_ports t_axi_sio_data_out_mas[30]]
#set_property LOC K14 [ get_ports t_axi_sio_data_out_mas[31]]
#set_property LOC H12 [ get_ports t_axi_sio_data_out_mas[32]]
#set_property LOC H11 [ get_ports t_axi_sio_data_out_mas[33]]
#set_property LOC J13 [ get_ports t_axi_sio_data_out_mas[34]]
#set_property LOC K13 [ get_ports t_axi_sio_data_out_mas[35]]
#set_property LOC J12 [ get_ports t_axi_sio_data_out_mas[36]]
#set_property LOC J11 [ get_ports t_axi_sio_data_out_mas[37]]
#set_property LOC K11 [ get_ports t_axi_sio_data_out_mas[38]]
#set_property LOC L11 [ get_ports t_axi_sio_data_out_mas[39]]
#set_property LOC L13 [ get_ports t_axi_sio_data_out_mas[40]]
#set_property IOSTANDARD LVCMOS25 [get_ports t_axi_sio_data_in_mas[*]]
#set_property LOC H25 [ get_ports t_axi_sio_data_in_mas[0]]
#set_property LOC H24 [ get_ports t_axi_sio_data_in_mas[1]]
#set_property LOC H27 [ get_ports t_axi_sio_data_in_mas[2]]
#set_property LOC H26 [ get_ports t_axi_sio_data_in_mas[3]]
#set_property LOC F28 [ get_ports t_axi_sio_data_in_mas[4]]
#set_property LOC G28 [ get_ports t_axi_sio_data_in_mas[5]]
#set_property LOC F30 [ get_ports t_axi_sio_data_in_mas[6]]
#set_property LOC G29 [ get_ports t_axi_sio_data_in_mas[7]]
#set_property LOC G30 [ get_ports t_axi_sio_data_in_mas[8]]
#set_property LOC H30 [ get_ports t_axi_sio_data_in_mas[9]]
#set_property LOC D28 [ get_ports t_axi_sio_data_in_mas[10]]
#set_property LOC E28 [ get_ports t_axi_sio_data_in_mas[11]]
#set_property LOC E30 [ get_ports t_axi_sio_data_in_mas[12]]
#set_property LOC E29 [ get_ports t_axi_sio_data_in_mas[13]]
#set_property LOC A30 [ get_ports t_axi_sio_data_in_mas[14]]
#set_property LOC B30 [ get_ports t_axi_sio_data_in_mas[15]]
#set_property LOC C30 [ get_ports t_axi_sio_data_in_mas[16]]
#set_property LOC D29 [ get_ports t_axi_sio_data_in_mas[17]]
#set_property LOC F27 [ get_ports t_axi_sio_data_in_mas[18]]
#set_property LOC G27 [ get_ports t_axi_sio_data_in_mas[19]]
#set_property LOC B29 [ get_ports t_axi_sio_data_in_mas[20]]
#set_property LOC C29 [ get_ports t_axi_sio_data_in_mas[21]]
#set_property LOC A26 [ get_ports t_axi_sio_data_in_mas[22]]
#set_property LOC A25 [ get_ports t_axi_sio_data_in_mas[23]]
#set_property LOC A28 [ get_ports t_axi_sio_data_in_mas[24]]
#set_property LOC B28 [ get_ports t_axi_sio_data_in_mas[25]]
#set_property LOC B24 [ get_ports t_axi_sio_data_in_mas[26]]
#set_property LOC C24 [ get_ports t_axi_sio_data_in_mas[27]]
#set_property LOC A27 [ get_ports t_axi_sio_data_in_mas[28]]
#set_property LOC B27 [ get_ports t_axi_sio_data_in_mas[29]]
#set_property LOC F18 [ get_ports t_axi_sio_data_in_mas[30]]
#set_property LOC G18 [ get_ports t_axi_sio_data_in_mas[31]]
#set_property LOC D19 [ get_ports t_axi_sio_data_in_mas[32]]
#set_property LOC E19 [ get_ports t_axi_sio_data_in_mas[33]]
#set_property LOC A21 [ get_ports t_axi_sio_data_in_mas[34]]
#set_property LOC A20 [ get_ports t_axi_sio_data_in_mas[35]]
#set_property LOC B20 [ get_ports t_axi_sio_data_in_mas[36]]
#set_property LOC C20 [ get_ports t_axi_sio_data_in_mas[37]]
#set_property LOC A22 [ get_ports t_axi_sio_data_in_mas[38]]
#set_property LOC B22 [ get_ports t_axi_sio_data_in_mas[39]]
#set_property LOC A17 [ get_ports t_axi_sio_data_in_mas[40]]
#set_property IOSTANDARD LVDS_25 [get_ports axi_c2c_tx_diff_clk_out_p_mas[*]]
#set_property IOSTANDARD LVDS_25 [get_ports axi_c2c_tx_diff_clk_out_n_mas[*]]
#set_property IOSTANDARD LVDS_25 [get_ports axi_c2c_rx_diff_clk_in_p_mas[*]]
#set_property IOSTANDARD LVDS_25 [get_ports axi_c2c_rx_diff_clk_in_n_mas[*]]
#AXI Chip2Chip Status Signals
#set_property IOSTANDARD LVCMOS15 [get_ports t_axi_calib_done_out_mas]
#set_property IOSTANDARD LVCMOS15 [get_ports t_axi_calib_error_out_mas]
#set_property PACKAGE_PIN AA8 [get_ports t_axi_calib_done_out_mas]
#set_property PACKAGE_PIN AB8 [get_ports t_axi_calib_error_out_mas]
#set_property IOSTANDARD LVCMOS25 [get_ports axi_c2c_link_error_out_mas]
#set_property PACKAGE_PIN AE26 [get_ports axi_c2c_link_error_out_mas]
#Status signals for indicating errors
#set_property PACKAGE_PIN F16 [get_ports lite_error]
#set_property IOSTANDARD LVCMOS25 [get_ports lite_error]
#set_property PACKAGE_PIN AB9 [get_ports axi4_error]
#set_property IOSTANDARD LVCMOS15 [get_ports axi4_error]
#set_property PACKAGE_PIN Y29 [get_ports start_traffic]
#set_property IOSTANDARD LVCMOS25 [get_ports start_traffic]
# COMMENT THE FOLLOWING LINE FOR CONSTRAINING THE PINS AND IMPLEMENTING ON BOARD
set_property BITSTREAM.GENERAL.UNCONSTRAINEDPINS Allow [current_design]

