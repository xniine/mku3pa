onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_7_5 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.gtwizard_ultrascale_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {gtwizard_ultrascale_0.udo}

run -all

quit -force
