vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl" \
"/home/ubuntu/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/ubuntu/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/ubuntu/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl" \
"../../../../mku3pa.srcs/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
