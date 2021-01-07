onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mult_s22_10995 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_15 -L xil_defaultlib -L secureip -O5 xil_defaultlib.mult_s22_10995

do {wave.do}

view wave
view structure

do {mult_s22_10995.udo}

run -all

endsim

quit -force
