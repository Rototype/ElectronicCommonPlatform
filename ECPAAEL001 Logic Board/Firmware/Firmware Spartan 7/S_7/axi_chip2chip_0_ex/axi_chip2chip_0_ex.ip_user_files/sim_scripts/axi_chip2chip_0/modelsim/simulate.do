onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axi_chip2chip_v5_0_6 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axi_chip2chip_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_chip2chip_0.udo}

run -all

quit -force