vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl" \
"/home/ubuntu/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/ubuntu/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/ubuntu/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../mku3pa.srcs/sources_1/ip/vio_0/hdl" \
"../../../../mku3pa.srcs/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

