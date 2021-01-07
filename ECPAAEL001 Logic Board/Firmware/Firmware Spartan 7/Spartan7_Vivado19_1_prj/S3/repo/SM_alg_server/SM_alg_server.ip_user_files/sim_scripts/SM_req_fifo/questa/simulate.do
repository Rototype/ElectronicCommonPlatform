onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SM_req_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {SM_req_fifo.udo}

run -all

quit -force
