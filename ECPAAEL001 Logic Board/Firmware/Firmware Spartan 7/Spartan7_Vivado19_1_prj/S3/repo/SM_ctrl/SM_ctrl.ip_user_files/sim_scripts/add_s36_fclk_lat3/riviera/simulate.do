onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+add_s36_fclk_lat3 -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_13 -L xil_defaultlib -L secureip -O5 xil_defaultlib.add_s36_fclk_lat3

do {wave.do}

view wave
view structure

do {add_s36_fclk_lat3.udo}

run -all

endsim

quit -force
