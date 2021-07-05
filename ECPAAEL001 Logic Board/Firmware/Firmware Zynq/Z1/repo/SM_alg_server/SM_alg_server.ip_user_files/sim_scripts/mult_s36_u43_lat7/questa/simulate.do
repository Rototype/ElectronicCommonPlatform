onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_s36_u43_lat7_opt

do {wave.do}

view wave
view structure
view signals

do {mult_s36_u43_lat7.udo}

run -all

quit -force
