# This property is mandatory to have proper clock phase for chip2chip (slave) RX side, for RLB board
# Do NOT modify!!
set_property CLKOUT0_PHASE -30.000 [get_cells system_i/axi_c2c_z/inst/slave_fpga_gen.axi_chip2chip_slave_phy_inst/slave_sio_phy.axi_chip2chip_sio_input_inst/axi_chip2chip_clk_gen_inst/gen_mmcme2.mmcm_adv_inst]
#set_property -name CLKOUT0_PHASE -value -30.000 -objects [get_cells system_i/axi_c2c_z/inst/slave_fpga_gen.axi_chip2chip_slave_phy_inst/slave_sio_phy.axi_chip2chip_sio_input_inst/axi_chip2chip_clk_gen_inst/gen_mmcme2.mmcm_adv_inst]
