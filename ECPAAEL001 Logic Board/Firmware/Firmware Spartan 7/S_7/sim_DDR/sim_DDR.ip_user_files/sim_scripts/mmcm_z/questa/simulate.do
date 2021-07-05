onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mmcm_z_opt

do {wave.do}

view wave
view structure
view signals

do {mmcm_z.udo}

run -all

quit -force
