vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/fifo_generator_v13_2_6
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+E:/Vivado/2021.2/data/xilinx_vip/include" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+E:/Vivado/2021.2/data/xilinx_vip/include" \
"E:/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+E:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+E:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+E:/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../xillydemo.gen/sources_1/ip/fifo_RN_Host_FPGA/sim/fifo_RN_Host_FPGA.v" \

vlog -work xil_defaultlib \
"glbl.v"

