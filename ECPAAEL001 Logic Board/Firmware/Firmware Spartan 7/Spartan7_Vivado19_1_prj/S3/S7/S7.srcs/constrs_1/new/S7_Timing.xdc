# clk 200 MHz
create_clock -period 5.000 -name clk_200 [get_ports sys_diff_clock_clk_p]

# clk 100 MHz
create_clock -period 10.000 -name clk_c2c_100 [get_ports S_c2c_rxclk_in_p]

# Set two clocks as asynchronous
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks clk_200] -group [get_clocks -include_generated_clocks clk_c2c_100]
