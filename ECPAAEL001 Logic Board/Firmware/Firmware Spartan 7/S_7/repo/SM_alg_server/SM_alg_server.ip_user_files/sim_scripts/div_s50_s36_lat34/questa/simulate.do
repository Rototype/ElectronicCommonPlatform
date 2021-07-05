onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib div_s50_s36_lat34_opt

do {wave.do}

view wave
view structure
view signals

do {div_s50_s36_lat34.udo}

run -all

quit -force
