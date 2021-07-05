onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_s36_fclk_lat3_opt

do {wave.do}

view wave
view structure
view signals

do {add_s36_fclk_lat3.udo}

run -all

quit -force
