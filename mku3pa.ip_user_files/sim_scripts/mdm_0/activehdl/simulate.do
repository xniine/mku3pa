onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mdm_0 -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_15 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mdm_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mdm_0.udo}

run -all

endsim

quit -force
