# clk 200 MHz
create_clock -period 5.000 -name clk_200 [get_ports sys_diff_clock_clk_p]

# clk 100 MHz, added by S7_axi_c2c_s_0.xdc:52
# create_clock -period 10.000 -name axi_c2c_selio_rx_diff_clk_in_p -waveform {0.000 5.000} [get_ports S_c2c_rxclk_in_p]

# Set two clocks as asynchronous
#set_clock_groups  -name clk_200_axi_c2c_selio -asynchronous #-group [get_clocks -include_generated_clocks clk_200] #-group [get_clocks -include_generated_clocks axi_c2c_selio_rx_diff_clk_in_p]


