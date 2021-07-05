onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_u22_u22_opt

do {wave.do}

view wave
view structure
view signals

do {mult_u22_u22.udo}

run -all

quit -force
