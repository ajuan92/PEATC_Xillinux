-makelib xcelium_lib/xilinx_vip -sv \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "E:/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "E:/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xillydemo.gen/sources_1/ip/fifo_RN_FPGA_Host/sim/fifo_RN_FPGA_Host.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

