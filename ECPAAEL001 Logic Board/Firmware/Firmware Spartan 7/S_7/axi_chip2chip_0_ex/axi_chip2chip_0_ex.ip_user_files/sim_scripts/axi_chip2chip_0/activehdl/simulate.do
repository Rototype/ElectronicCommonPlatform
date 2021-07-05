onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_chip2chip_0 -L xil_defaultlib -L xpm -L axi_chip2chip_v5_0_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_chip2chip_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axi_chip2chip_0.udo}

run -all

endsim

quit -force