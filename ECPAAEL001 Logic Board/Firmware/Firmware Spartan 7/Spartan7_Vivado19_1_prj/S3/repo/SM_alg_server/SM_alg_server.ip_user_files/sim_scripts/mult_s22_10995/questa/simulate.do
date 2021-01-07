onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_s22_10995_opt

do {wave.do}

view wave
view structure
view signals

do {mult_s22_10995.udo}

run -all

quit -force
