onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_15 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mdm_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mdm_0.udo}

run -all

quit -force
