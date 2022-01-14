// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jan 13 22:58:18 2022
// Host        : DESKTOP-EJ28NGN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.gen/sources_1/ip/fifo_RN_FPGA_Host/fifo_RN_FPGA_Host_sim_netlist.v
// Design      : fifo_RN_FPGA_Host
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_RN_FPGA_Host,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module fifo_RN_FPGA_Host
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_RN_FPGA_Host_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61472)
`pragma protect data_block
XEZ2EO9/trLFbdaecJ9+OQmLpCU2lLVtsL5JckUWb92eI424qfj37q/hA4CXmJKr1d+QaOsNtz3u
QzOQvVlANldVqeYV22E9Y61c+TpC3CwExcZsa0rZDJR8UR49h/jMppq4YsIDgD1RyLTwt8IJc+68
xaEJ0gzI38+FWOkBqVZhOgY/pGGThYbue3UGDViHYw7kNEx48xJk9SLPgcdWOi+D417FRE90laOM
Mby0hw+laRAiDd6ah3JRUp6N5bXaxxpuLfIBZJUhsVKN2QWbVpQT/gEAAQyWPwXtSzuOtuiP/ium
9h+zbAhg4z7ILMfFpBrpXknxhoQ8b4quAHpFZQyhWPwZ5qldc3r2gLy19jx2DEoYvAh62bw70svL
d6pzS+dzhBrMIrboIIGROddk5Gr8+sxj4DZU0x4b+FgqWOrs0glJu0pKpKxSMDCP3OAXBugZSCTa
E3G7lwSDUqQ70wxHjJApC6guOqcrD2ehHe2hbJQsXHbXVCUYyrHVOCFTbgFT0XYlSgsW4Fic8OO8
hQhA7EXQ8N0Ds21BZ8y86aqBX50RUjpFWa4fCd/NNy1fNiOPWyPMd1L3c3CSqJ9wAlge4VzXB5l4
WAm9bI68lfBRC3Zbx8DE3RIvV7pwUt920CaJBJJTyB5eyEhqePMB8gAQtITQpmw39wg/MySaVMxw
6EyJmFIJvw71WGUTR/9Y+RhnGPJTQJ4L2yIRbUbWvLMLmg/aZsRLnhbchKmlRqKAzZ2ahA+AUMst
W7bnH6BDl1grRGKATn295sWiZRuEZhQML83X9CwJjlWywYHAfS4WnXpzjDkXHb7Ax0wGffUeD3ZG
L2DeaKRJLmgyeThs3qmqv9dcXQy4hhCaWAWwUYhpTqSuOppekiyn0zldACtpU2KeNa04bm9nCWKb
oXbDT7tyjkKlE7H4sYCPWs4CFCXslAvXvNbqhENNY24krFPhXvkqouAZsbK+zxgNxIZiWp+Xm78s
KS9t07OSDyZpwMllV51JUBtwCL7HUAc9sthEHc/xklHaX5mQZJIgzVrZf5bp1gTDA7Rw7aeD4yVe
b/4+EYRl2djz2/MOu+ULTrc2ANNADe8LGhWLF8i3Y2RChVslB4FrtcLvJWsvNKIGKGBMLdOJj2gS
kzYG7liawsicpOWtpDpev4rIBhvtZaJORFN2bQ2LFfsEmf75QF9r8yteXPoPIp5cgMrufxLLuuvk
FuF1sDAKjlp9+HdMjBfexl4xbZ3q70VRkSIAwp66zEhI3Zw79BBqclSCyUPs3RQyR2d/MjIOh3Yv
1ojKtgH01BL1x8pSL/1b59y2OwVIOh/bgkalgpqEHZnLwgrTeaQLZXL3dzXEHK4URFbXS5FEiznA
5jp+DybCn2zkRlpsm8tZeYRa2DoJ9dl+fBVazXjlA/vUGr+1Gp1suZ6jG0+RoQ1HxVyvEa0iFMzp
kVkohp35av1I6r7jt/cgNA2gg+aFZX1+JQPbSgAMGEFCWi+B1IYrAKQALqF0WJmLIkJM5b/h6T9m
EXVEkYK60NwKIxemehmOhljcBNsGcWjJuBwHuRTjVoHLL04hxKDKVW2Al3ezBREGfTvEjTGA3xPZ
GGzS9EDEmFRLAWRM02KSIBx483KxIPKWkP3L+kzzaxLRBh6W1sFeQngZQxyH++i+W/t/CE1TqcAe
N3eHZ+aD6ne+y29ermOTG1t9Op6OnCrOzh6AEo2EsqChOjXw1N+w/jFkJhmaaUs7DjIHz42wkjIk
RpKGoq1MIRYkrrPmrGTrSLMdsHVGg1EcE2RnfGgiK+LYn82bDPRVNur777nx9cJQmRki8GL6B/o+
M+J6HSP4MQ33sPkxhKHr4YVGrP5ZdcrBKUuYXnKhM7ve1pyT6TYcQPE/Cl189MFjdVCW7MRTUlWe
KpnhtnsX+52IMiFGqIAWVlEX4em1DztK3OmyLu2TfKHKzlVIps1x3Ubbgeyx7ELBsTWSwrPZeNx5
kGsf/IBMzle0B4CIUF06lal95oMJh8ShkkRqNJsaHvi/0ykbYwDxaDm1b0cNe0POnsltxx+jZYb1
Chq62X8+B4eZFy48i1jqtn5y+Vk3oGsJ24j6bQHbU83/iJnNxy50f4n7jlSvOn6QbwO53ukDI5su
eQAA7pe1lP1yKbzJvB7d7XyLIu5cRI86pFKuvhu3Mz9mdQisQCcRF+rHTR0iiKgROw9SA5vj42Ep
yPKFuFuUJhvdTeaUAdOhSFopejjv6u8H2tIlsUEBqivCb2fQa4mizgxgPls5vhWZ/ng0C4Y9PkNy
Wcwhya843Yk81bsIiQ1wU7xAgb2qJ+VYImvKO7fg9GpGXiDFfxMzBeA/F218eMGfKs5RGwxkWM22
AyJDT5AuV3F3J9w6vLVAl70jN3iq3PnHLpwXL5VqXAn0Kmz1JlTKoTC1ArKGosTKW9DGWmfSq7Op
YOC3RHQ6L5Ekgx5Je6sG4HDteK64Hr8PawapZcQaTijbKZnSzX/K2raD/OTjy4hgBBZQeA6vjSy5
44pe66FwUaskltRCgq8EzNLXhgxpWfd7qjBFTo6HBmloxcAdLAG4TFqUb/IWrUzyOqAwvYJmwjbx
QRlv4fmkC14g0ySHuA/uWqK3uYGfN+Tl/SJsrPgjneojg1E0UzEwA6q9x86H88tVs7we6IDloNN7
d0xfdk6KkeabDWc6IVGYoi5BrYmFMkRCUPVeNmeHLoNajgJOPPwOjMuHzqrK6oBRIpmMaQwnrNmk
I3gUEfDydJTgkk2F+TulsLf59FXEJ4vD/bSUfjRTE+9qwP61eVg86R1lD1vHPFU6gzzkcXJODCkX
gsapbHfsRKt/EMg9PPbtPSLSjD58MOhTNNFnSJz4VtGdtOr4C1iEfPS3uM8cilXKhHOucAEbEoNd
/KcuMiXRMHjwxDAtwjc4/YG0PC5+O7c6m3t0k9HxazcOrEJzDCsC5pK6hUzJKRNrC1hOhBXITgBr
SStUwBfjHUADPDKUkRmnGdi0Ye3EyKPZwBdmqLfvlF7fEzzx8KXsIvetExlBKoNMV4Vx+jnurQ3N
qFCYGCfYr01faqux65xsvE7KdSjync3Wsqsre17GbayKmIe1t9S7PSL76p+uPUgqWchWZZrjZ/5A
PYnSOGULqrtgqALm70EMxv7NDYTholZxqwfWAaM6sVbvGTnpkabVekFMI1Wdmz+QrKe38Y9sZQ6X
8sYnOJk9qMl0cktsUhnjI8MlIhfy/UfpWU6blVITSJ238cgCAjMaWL5q5X3l4Qgn9/XJe2GwjEJ1
37slpA+tQduLTRx/pPYzvd+dhMWwvFnM00isRvkxe5mwgc2FVczz+EpwRH9bLEni10ERX9khpac4
Q9h5quXs/0SGQvdPrSURHDe2cwEZb/gJh6qbhnl5jjzU7S/735DEvEpFZtTt0UoZsr/BC/we/R4E
txPo5uOviMehIOC3GI8kPf6cJOiIhthA8Ptmq+SRGGnsIKUqWGvkmPws+lnCurt76CJdW0eR00yi
LfyrJ8oB9NIAZ/FatMzFxSFTLFIMzSi6YwTdvXJZQzonU7/PfBxNtBABiXePThoOePQY6Ljm23Bo
KpwiSE6YoWcTzy9KSsXyauzYAfyfVmccP/NiQeHGQto2IlscSnenbnSHSVDwl8AM9kgbVHhi/9YE
nMz9AIqTiToJiOdbqna63bWc4Ic+DqjNYEc3T3ZYF9T1n0bKdOMAN3vDYHcu0J5oKPo+Y7E+tXxZ
3bXM35wAYBdMGlN1OnB/UnJj8wd87PqU+6IHaSIu3H4muq4AW1LDFm0G8IndSijUTEi9QaJH/KTC
MlZLaKIF1O4kXTHi53Kek/qObi1llMWnrAUzLoj0U6OZt1OJrHe4TUCKaonsuzymsNH3liyjBd6I
U+C7eYl9k4QQP0iRRc34YGBXOC2yapm8CDENLR7+Fl1fJLBcR9HH+Gp6fpSN3hCf4L3DbVkm7MXH
FTkKyV0eEdBIYrOpm8t41CrngX/DPRk1jjQI1jZ7ASG2dZNAyzXtA2jtFQCqNuBwhjDNB2CsguPM
OL5keeNIfNnf8szzgClg8EOk65ZateDwQr1Jnj8Cn/wzHOyAdwQgnDOAIiMvWF1Gif73u7rC2Ak2
Mpn3sKNu8rpyrX2/aKtw9ers8MkU0AgPs3yUsN52XZekiisNI1rqgC9HY5TnNBEIZ9imEyF569BE
Afwge/5zubjS5vQsk/m5tF+o3+/6AIwJzVbTlXlPzfpwEMLyV71m2ML25qgoIKopFZcWO8izatCq
d5jezQXskLSbEvhU8au+GWCY5Pc1cH2NzHefkJ9IHUwrHK8Y4EfO/64GcrUe0ETajnKVqgQjtrRj
mlAsAnK4JcMiolw3uipSNi73WcANBVs3k+TyseHpOiUlsvH2BxAj9GglaDckWiZ0KHdsLoXHDNml
VxtMy6XWGSo3XfqQk+iIkad84HElFiNA9gXbZcLXfoVbxojWGu9cQhQEG0lBDNVuRrBJ2FE02eFq
y31IeeA4SvKcgiQQ4FRlwgIbBTceyArlgr3Vd4KiLkAPb7aJ2LdVpjCNhjK7yr5YXRlz5yr8dAG3
qy9P/JeRZBIYUEL/5C+8k/+J0F4fmRzpTcHPz+fOuy67emNr4u4ECQmEKb2GgFIkmWagXIij2Kt2
MTtS+Q4/YcoChLR6MTyLykxp0KQJeWQFa5xSObLZ7yDNN+4jUiJOlADjpv0TBTFb6Q5Q+XGUE8DG
qqKKQHbCA2G3bQRYXw6jvAQFPMpQ3dnNR5LT3XgKH0es0MuUOXnzlRtVyav+/xEaPtlmexF9y9Fu
Hm3cUGO/AeaZ60MYbLGj5TLBb0X4dhd/3JRps8vOvjIP6VAFF9PDyF06IlvnJkqZoxjTK1MEdRb4
eKKZKjVKAPAvcir/sKUYsYS/WrvJAaJTVePMHNy9GEezRchKZKU7mKj+wsMdfz1KQmMbSmUw5IMD
PmI/wlZaTrYbsOGGSqDzH9l6zaVDkIIbCnYFKo3TPfZoPhcg7sivF5c9CfZuyKFkseAzZWdld6TT
uYjSf7IwB6CeALaEE5cihKEpQb+S4uSdNq8Uscdy2NVODgp2fqL3lGfkKoMPvnvxXhR/Qe1pv93I
REipp1wE0FEyM76laJIfLl0eViCvM0h9h0l4zFxRmNkCFZEMqoQruRa+ei3pmX+zSAzCqH9Luf4K
Unl8aXqENphs8JVavYk+McKXftTNUEi0qFJubpCD9AsJ2/VkAG4c5o8ARYA72sHDDiFjuOXWQ+ng
UpS4uYmHr2gHn3jtV6Z3XFga86zxkoOJGmW6+7ziFnSCtfdeX+CM/AZD1e81m86MjMsZa+FpErKa
+FQXGIqzxrm45/c3VURQi0BAA4U+lGulyUqsFhG+DPune6us6fBIZ8G/FKDOK9MLHhYUJbWDdvvo
/CMvl6xAeIjluSvoJbQkIiVzG0LQLxlM6Lx/ZFQoiSfsVcT1Ot85iJp0XrG0D/rsR5o2m8ivRRQg
do+QMjyHjPPv9Td8bvs7xrd9+NgPGs57TWqZvfnOV/kBERGn2blV2U/6+m7tQezblcFrkeYGeuEF
O8//3fUJhsm2Zm8l7NepxweiljcGmPHekzfo1vSzqbmz4A16QySZizhdb6hrJNp+N/GfhsTjRQcv
cvKqTqsJmt3MX9Q61bL2uCchI+2A+mAGbuw/0G0qKrriT+lPge4q8W+Izx/VtqnG7idhlNwSDxtI
S2L+5ajMgwLxQzMjFB9GGCBasL8cRcVhon31wdwgj2kbRGcNvOP9SupAsUO3CJwHOv72/GhXTMdB
Gzn3J6trHwMVqVkbLMYDtTprkieCDB7Y7xN0mjWTGFPfTg32qPiRMpTJ5+fo1tZQsWAO/NIludtE
PigTPO60GS40//GPMo9Zz1KcY05V6P1omovZbqbu8BX5tkzP4ADm1J84wlHXL0sV9fnUDjDI4+BP
no28adtE6uwaVzrIQPbX4nybSLwCi4fmAXVyiq0jLLqfx1BWo22Tn9cEYV4g8p1p8zo394j6tNb6
H/6wGjTrjy0oVSeTNtvGj3GrlSuBxnuJ7uQZvE358dQrB9ZMkJUYOn4pbXEuJa7qBsWVdyGGwf5o
KDMGw/x1HpXAe/h6meLSvsN08tU6lgM4pUG8MLCG8MbFOK+F6yVTMvX1kvsNIYaZhEaoMyie8Kvb
0E6/QrWPYco6/jh34QmAtVILxyLztFxyKeZiFzzDSPYyy9HEfwiFFlFpPgaivbgWh7nqy4YdRoKa
slCaNb1gzqeDaTuMNjjOT5GVqTSpps7KFiohtkJIt6RUZvEEBP84g/DT4Ok3KkMjHi5SfFDkT84m
hI7/BjqOYbjvp7Be7lV9t0Rx3JD4+kqhQ6ltKfbNqVP1anRbm/0Z835Ez/SwEdt6AuanMurdOQmb
ZjWem/ISsOyMqUTudqWiKZBPrIhlWXczbq+hb29yA5MTUlR4MS+xNNqlJ5D1gTVBGFHBv6ePfl/g
f2BLTqXCidp9RJ91VQdw8gOCMSCBh8zXRw9kO+KLBSI2hRS2j6bZYOO63K4rGLeH8GYxPI+ImUCq
Al4LPVsdc8cr/Iy5IO8ybMSeVwJ2uXN9HzH76M4yHAoDro2J0eWx6fX89EQyboc1faL2Eyy++uc8
iaGMUdpi4Ab2no9hc7ltRPLmTJ/ZuWpHRBuSA8Rwir1gBH7lfkJfDMy4+L3U5Jas1eFBbJR8Z8MO
9C6oNqvZfFMawWR3epmyDIJbEY1VBpyk24p9uKj2f65w4Xy4vBSbWEflFQoTQzBJlX9/QfTJSmiK
dKX8o+IOOwx3dAB2YpvkwSNj9uolXJkF8F4KkRPbpI1eZ1fQFqCua91faezhwb2oJ3NvkoJ3C0q6
BLb9J5WxzslJB4sdSEQLbZzWS3FwK/YEjmY+uIDeeBs8GQ9WOt/EgGLey4QICtJ0y0YI8jVPpqSr
jWDwsLBrKVl9rvcSy3D3N+R9s3yeMArA2SQgyvTXrCMftsb8Rtgj3c2QNdB5qac8R55mAjxkBgCV
3Guo3mb4qwi3YNLBhNxicz9d//c6vSYZp1XcrJW6gQlhSZEuw0Uprd2t+Om10P5frp8ZChgEJJHP
7ewkycA1QlbaodjNWcuhZuRri9W3baUY74Alnz+UJuOy4Yvrx6qRUsm6PEuhMl33AFePNpreqnHA
Q2thaGNz9LMsHRRjndzc3x5Xsj0ibwEZ/qJiIXeU+ImiKwpjkbUjMlqlfKDhVmN2B6Df46cn39b6
gw13lUEawIdBm6zUVIT0zLvaB30JKH9pxWyO17xLYBA8Go/rF9YlN7qeypDYuYQmrDh3bfQNKpJP
4xQU0XeonGd83bHM5HNtU72OvfDQkO00NDM8O4dvNI2SBVghGl+MDdq3/rgpgE2mCvvdAtqSd2w7
NYlFJkAbx33DJX5cwvs3KcaoLb9u8QJ24mlfZwUldfNCA6K0FGBRZsCKbCGWE6cFs64E89yjKg4z
RImmbAuf6+2eVOrp8wwqjqgR41lzdYltKnKXekJ0xjxqP4bf6tfd6dKCxjS/K58Ypxa5Ek8sO/nZ
dO8pX6Tk+sOi36xQ0ZJydWyixiw7vXHHbvQjdv2A0IQo2WDR+hHj3MAAnpnqDI0KyoaFS5KphIRH
OJ7yD+g6nfhAq8R/doEfwSfjZfkS+Uc1yCQGQOsWZ+3ePpQwmJrfwlcpYKg5tPYmOwcMGhYb7k3K
sE3fcc+gB8Niqj9+UwgczA2sXp1UoFz8SECFsnUrBPdpFfARo9cjPP/Ki/waoYWFoKr7niz9ABFP
sMQ/gg5muvIElM7/B6ZmoOGPbhOtla0cORpKs3b0W+ZjduG8ml7B1Zl7DDWkw8Lh/ACccm/MBgeJ
ret4qVhiow7HkfU3BB2nwOAllW39uIghuuiO1wwjyNwRnQu6zSjBT17qveEQ/dc1tHItrcVHSfm9
Yf784/o0oiBcjeM774bW4t6yItD5hQzJDCeftSNQWvb4z682x33aiWxiON5uoVr6qRTUR1N/ByO1
vwDAIznt/iAd1VMGIMT3bmQsipM59lDotKLg1bFvTIgTQYChPHk76PHSIrloSnrWwE/8yO0BogkN
jo2cW8pBFD+PW4e4L2j3Irx4KqjamlqNLKmWs18h/byQfXNh3ExoHLI4Sse2/8fkfRmbWFj9ofEt
T2y1n2knm2bltBBe1Enxe7mFt25n2tLPTv0kewZIow/ClgUYtBVHOMzg9AEbwSGc5kkWaAgS/aVx
tfEMAWgTxihUzWuH4F6LFPq/8+QmCvZrgN6TDtZob8Zk1qfTjO+4ga94nhMNU2U8XENlBvYFl43g
/2s+9WCPjSasVZvfTzbuJLqEaJG0NDdlq5O3nHmMYM9lv7dGemykL+Zqz0Rh8u7mr8Pm6BbjofQE
ZFhv409zGyBC+rROfAq4nv8TdHizM1fIxlw95gY1iD67wFUQelx4J6CULyWxeBQ3cJFYxchWenzZ
W53N4Zi63SdfP+K203/uINKlWgce7xnXza8ToK4hMyp6c+Ob/E6/W/pKn7vkpyGj8e8YjE+VsRjy
hSaoBQlDfuVhHhPlnKkBW4xYLKU/bvKWWAw5dxs5yKOc4w9I5xlKyazbR8YLX6vnhI9rocfFfTpm
hNdvNffl5X74OEwY/5UoYob+c7YGOvzd8GG/evQIEeoKBJ+GBkV94Ic0Fvb4NuSj65j0woA/9Y/i
kzC0ifP8A9ife7XdLU7wwyL+uOeOhB4ri+xNfNMwu1Da0PLPSYTETD4L4CuIbqjauPZ8VCZ9zV91
mj3i/3fE4OmmKnhB19nKPnmMBpoPOUthWCNrk3XPGZm2nF7ByCakVfDppTCXjoFNCJnlm4o95qfz
YzoeySeEx+uXt9MwaE2s+k4irawVL9/03D51WKRRvw2hTZGihtmXuqsE83Ujoy5o615h4D8oAygP
0LiBIGJqQlKRJT/7l9k3UvLiqd2RMGKOOPDbVk9cRUSb4clJSoGm0DZ/3fKWO3ny4dREIjmw9CSi
iClNv+agqHdUYD2u+KOJ3kzfEJixvTQW4IBkZc3gZ5prlHtnmsRsV+xNlWQN1p5O482iJBe1Y37c
AtdF3cXtMzDVUzcZczawKpeMZHivnTvdyQ99sqBp5uEcHSNcqtXTm1RjvmHH/7ipqg7IvyJaIRAF
i5hg2iJURtZs3x7nxSljCQRAqSVDmRdXOkcSjEF1gIFYsdp03JBvS5JT+Wiy/MF4RgFLfrSQ8LSd
YQrq/pNx8vd0vqOWvJWmSVXw2BflFkuGNZz82IQ4KliH9icYtMkMcquvWS771bIf4gsZyaZb1rWf
d31FbBgY3TSZa/trh2OwygLH5XJLQwDXVjaUCqjyx0tQice2s8rlaJMKqCg+juSS3XtVP08UluzA
12mXTXSJlxb3WcOwt3ElVNcGY9dqiJj90MtJDoTFBnYcjaGLIfYV0GNbQql4ZrCpP+UeVE+gIUMj
H3kqNtt3XGnvdcLc6IhyCU2/rUAHVVZWHPY2/x3pYKbERu/CtbRq5fNK7g7CSbw8aEI5f0xEXfXW
AAlos7+HPFUIwChwEkm2cztbqq8CeFCld84WkNt7dnM3ZSBsbtE2rlpkhL0p7xSosuNtaU8NFbYA
mo62pXfxkqBI5YizoY1mfFdNNDT8JV+Y1g8g8OV01fcODnXNfmOCgXgfTbLWOAXwoP3SWmVxjHwf
OXNdHujHFKr3RctODKApaUtsmvVFTBmHtd52boFZ3TlidMdwQJ+qkltoew2IMDniqg5D+fxVhMOB
2TwTv5hG4JVx+yzF+k86i66fagUUpgHqlhls/tIhNZbzhBgIPUutvamTA4ZuInOAqZClfEuSdtwt
2/nY2/XbZBDDigW8TXet+zqn0E1v/UdJjxlwpEKM7PcsO+ZQ5h6dvMvssnIq+IlavzwUQAjuxlhN
6BDtxuU/L1mkDcPUHf+HJMdLiFtT2pR/+4xcy9y5sd1kIz+AXe6WlfXOgi0m86mekzfJ2GlSUVA6
mufceRTgzRm4it7Ao1YDFHxCFq/GY3ijK33k6LsOuGTsgBY1bS0tpMQlGur37R7qCTKuPXSGy3qQ
2VExavvLKfL+BJqJBOOKWxn20mJ1cy5xQ1zJj+bF9nsYWV0e8FIurs3h4eBHbqUCOL1OGFXY6FSp
pA2RdPl4Lhvu1i/V1NS2oIkvTGwwL+DyOeuuAlanLJvMwyKrEcXHMj1C2Gy/Gdok2AJr7uxiakcg
T3voLY9d82u2YExsTsriQqK08o5ouQXOIpdPxAZ6JUNzdDU9sn3ztBSZ6Lk5O6Dh8c/LUYrGROox
tBRMPnf6hfyBmfqYnEWXeqIexqChlW60lCD6UKcUGO0145UooFqKfJNE+ObOwFxCX4DMVMqhk0pR
lE3+GVCeaCLlhLDXjgzoTAYHqXb1u+JIiaoCWoJYwBMW/WAetkm3MaeUOh2b2v3hAYYkAYnR93mx
fxPm6ZsvI6BTeWJVa6ltRqSY4tlJrzscwuEor4+XSs4YlZpjeiqMDXb+b3DeC7YX18cZ7lxnhzvN
AXc04JAkJYeplIzzj1rHyaUsvlm0fHlPbQmQ8cNsLAOivbWbHZRwG3UcsrZrOHIUzAojqybRe2dV
nNf5OKWtIIdMlpoUymbp2uz2gNlyXpHhZ4cWflujP+40Ib6Xp/WbjXOmta+4GJBp59IZ2DmN83MW
03mAYTDCR4qDajXtFQNFgsNjetpUEhzZqUhorErs5P8527EVAcgrKnNPLZ3xCOK8nAZasFdQznrr
bCkWm33RX8V2FbuTpRgmcAbAtEUDX2JWlKsQTKehAq7fhoVr/A9BDyib2l44IK+TGcPEA/Wm9wO0
D1gkn5oS2v+KZGBVcQQKJBIjRpoq9ftkZ2irzTGG7ahGL5Ojmm3IR6vU401mTZ/5yEBc2vC3S/yp
4et+n8PnzcyPYSv+Va1Zon+7fvB4i5NykPb0dXheVDiCl2XULxVPxjSJl+P0oJDIcnEHxNwN/bc6
A1RvU/wjWQgB9jL8iDeXRIMIJVjRXhEUjCYl0ow0p5u7Bqfy/5lEU9sbToKa06vkWa2XAT1Pt/7r
ipQt01AWoyXDflezBgapJGqY6C4yf4rXpv4m2vNJXGpqJqMABuGgTh6xqoPvYQ1AMjfzXFAdnC79
5bUAK4ReAEaz9qdnACNmLEnwPkshyaocsBWuggBqJtk0pIV9/7R0e1tfe3ST/f71F1jjk82J3y3d
++DIqAUPEaHTcxhIZQGmut3eO5Lhxn/SYV0hCYnm0886EOD2s0U6n5FnbQC+FbMG+N9lvdKh8XM2
2z4IxsbrFB81xqHWMAylMLlXD4HUDFd/VM3AaIaD63iuXzzwX20RIJACVaWjbnju68cRBo+v6D16
8+MraeBB1jVp51XJJvxP05aaYJNb8j5PoEIvPs9uGbK0gd5tfMdM88UwllklV0RXXY7ubGW0wDs4
pyPGIH/uwmtuOmXL3ho5VvzNBAuU/flJnChtor9EkcynXjL8J37EirXBoL8CkCF+oUwUYu42c2Mv
WZZs/Zqjjf8HvQZCnq2MmG44cjsIBAyDy4Xvx6PFI6L1Tc1Ogr9O4oXKiwp50f1aQtBSSCLcmV28
vwo17us3umau0X6ytT00G/+RPKV1IoM1iqOp92Wxy2IyDCLU0RdWhJPNJJMUuY6m1Fnyvd0liYM8
bWQzyN7c7lBU7pSrFp5be0Q/+7he1OKGsiy2IXWi2ozY/AGflsNj8h47ptNvo1pRAC9i1uQJ//ST
j738jNGSnu8f8pnzgz2BSrPYbGsZZMY2hQglADQOaidfaO0R0T+QCTYMbzSHaZNce3BC3VxwOlfu
xGBHBN+ok7mi/lGGFCtsV0eBH6ZRs5+0KXVlij3TW9IuWVbwot8UUmPsxMx0XzS9mycVOd86sa43
Tp5kJDNytpnFJ4P2eTFNLvGoj3Zuf4vqAwLolNcaHBYms2rMOtnAiD+jeV2GpgWbot19/D2RFO0K
lfkfijnnRlSQInK5M8HKWEdTXmvgOxWLcvcRkxnqQy5Rm5wi19x/nuLQQMsKjuRlJdBVM+qfoNS2
maBdTOxR6/kIcHIAnK3p4vtSkjiHefUrqd04Xy7yUyufxeoFKTPOFP6hDqlhYJ2Ujq6s5M8Jd5OJ
7RXVd/eozX+eIulTStGm4VwIZayaIfJgZD2mETxVZNVpNqfHJBh76NLkOUgrbyUFLRHL7/kyYSln
bY074qk6EGVO8MKU10epogMNV2mhR/4WoH8CJBGRApbIQLKigKVsnPor1bY3Iiu89WEUWrQLOJ8C
RWHX+XE4tL5MHtJ73kA8A7uUJ7rUso7yVfjh5BmPBMcxfY8FNi6qnOOTXcUcITQOUf5PwFdIG3cu
QV8P1PDI1ksiuP+MqfbA345Ka6iZyYE+PDnotbcQy1X9jQnutyxCKqJOWJ5Ns33ljAtGQkxOE6dX
KQMMydQYBO1LBuZmClnN7NhQkDy4I0cSMpiyAbL9YjJWjfYe2w3Xr1GG9itdKs3FIKE3z+QsNR0c
s/kFbhrXx14uKBQOsrMf2mC+nIxETvHtke0hsRQ5nDcAOxmazWi8RNePEYFQG6VFWKvkew5L+JBD
XTFLRqk1aDeqIUstFqiiyCqOtlSX9fSgFRADT2h9Xd8gVX9k1oWDgMLQJTUm2mcofLIsTHjn5Vni
+GLCf+BcvWHwaMyM4YN2B/rPgHM0axHTs3yKd2ItEUnORdTq+bomUoRAAnJrl6cH9fuxuB4hXmOU
XwViNL4lFBP1Xc2g2DSjIqeChNDlmSrRivcGQ+n4xoJiL1fwD7XQFeivoLc1nvYPOJ1GBVQXHSkv
7+k2sqUh6hOc7y8vzSlNyhsr+9S5BGqeJdMqVU2qMTf9khnlQ1gRMO1w0laBMMLSX7z01yPK8wtc
S0OGIY/d5JJkbSed2/ZarzzZVVZAvLn8830xUsCWi3PqleDf7erZdz5KOawmJN2nl6hTJNUBeXx4
730x6x6KzzdvFmQQ0KvJqQo7WiviqKKDAHh4c27f+oOEMeF6y87/zLiJiqV6mZBZCM57zvdxNCcD
vPSIEr7T5cgHvoovdX3+bDQ5/GN+ii8wQ1xbDxUTfecZb7d4FfNlyZSHgOg0LzrrDPNQV1uJbWDO
teDdJEdodC/qiMu3r+yOyxLnzSAviNIuo/K7wwg+qardoY9FE+mOLyNMl5fd2gKwY6ZPV00FZkbW
/Za/useEWbYPjKjP7dMwHi1HCNM91+UwAaV27MikJCuFhrmtIyonPxSmePfiHdVY5k75GEGItFB+
rOrBsKU3VkFncZzXD9HHqzQdE89+b7zYRkFR5KiZ/hO/zuBAb/W+6S4XKMdDSQrqnvKADY6ge/jD
jWqg5VC/CzQejRcv/XLRrJAte+vcMZOawF99tJhhpFPmumIX1nDZwcNlgFYYD1t/E+eC7rOEl1K5
wUmZzc3EAjQtdevTNB4ft+HBwI1rZ6Ac4VlFrAMk/54UdTyeNNrLgTt6XoRl3hRikSqyAF9pbyfa
VMUft4NswGIiSCy4fNdBwEFgAJNkGR6RQhyWUQmZk2fACeYd9/4DuwHCmJOWxaYnFEly2fIThpWS
eZmB3CEMspbAP9TDsF0sQEmg3bAcfEh0Mw5lk77iVmJATRAgXhIKKIruokwOCrPSHXVvKdj2hur5
i9l1nEy8c1uiozqLxuOfxop8bjq9Rf7C+cYQaLbGfPqJOMyFaZx6gFJbXFyUUuptkMSQxhNrfchi
l4UahjOeIvAc9buHob8keyKzr2OSCsQKp7yhu2D0/DvGZVbYcCUcWFnw9HJcFIAVvtwq6JSukeha
kT6w2Y0Wu8vEj1TtGRpjPENq8qZlCbq11CqlATAb7BiRnU0ndaZdQHz/B/ra/zn59le4vM/FPRqx
8SfJKUed/wyvXi0FKxk/mfkOHocjzwhYtrU5ZvtUFbio9uhkMilWvFc9r4mjRrDMTFOHt6sX+ile
B/o8gZVYZcu340RmKvWqBHfbLUFURz7Iskto1vGe2zR/UvVgMCw1enU2C2P3RFRAtBbARhPGr3R4
DndgR7pfiJ4mW3bZIs+tnkYVvlXErVgyIHsCs3SxyOpR4ZJfhzYQZtrOHgLyZwjuQzbVHJcet6Hl
LDUA7pwKNeJKO0TUMB/jUg4v8AdtehYKxR+DH01cCticDu37zG3gZ1MLItog+l1DRmzlTSJTB2mH
b4YgscYK0OJb6EUf0EJOLmTzoyYe2RPbICUIV/gQL8xzsxD9EkdOh0POo0DDakG0E+yOr6lhR8cO
jd/6FR7cg6TyD2nEtH+4f4mJ5dKcvoB46+9y01Dvmwev1H9KV50yoxqehTlYhwyx4/bJyo18sYyB
u6/uzX1Vkb2CjzN56YeTHjc1H93dZh2Hs3T5vUa1rdJpPqmf0gVZNQZzo/R1o164CNeOuGhqeneV
Y1c/RmSg8WBsEEEKkny3YYHVvt3+HJSwpQlMV5ymCOr5BTug9lYRP8J01re1b0t9nG+SiM2yJ0G3
R/K2y5C//jdY8D+mZhlZPQiqPoDr8EsJqWOA5fyBkIlFkPB0sUKMpYYBDxHXsH7G3Iqw55aXqGn0
vmtl0Bh1ETqq97TqBhIGO0t368By+daQxAREVt4NHetWQT6//dI8aZo1GOitiyS9T7btzpl0J45J
LD2YTYAeS9T0mWWFC5oxLBSrxJQuSrUYJTWcnSofZYianuerAbX4T6qd+UqP/0gjRr1NlDSSMhZL
ca6b2meXRcinBwN4075XcSYe/xOiFOo276Vst88JwqWph/D0Opl4oH++8X0w8vBIbJwXG1TOQ1zu
8ao++JDMs7XyffgCf/3MUiGXhz381M+MTK8E2Ybi6/t2+uhDHtHWbPICEQOSfQTtpaL6twG6emNz
1tAc7xNgT3dDInY5/3oJIbPPUh+RXB5WAGhyNl6w798PCmH6hMA4z18XjePsSvkP4koYNXdktj+T
kXKZOS+QdWyWrjApFRduaLnANcCFk1DH+qj27KipWRxxKUCICX7NKiG3LVWXL1cB+ucvu/pQWw9Q
sYlb1R270tEI0q53QVPB6nGpmoS5OD/jFYEps2vrl9itoKIpDgY0yTSgBVYQJ3tYjBVqekmRlsEI
5kePW5Wmbrtr8co8tY1bTb/yx7cWqecDKsRcq6LvH5lzteLYyKxAEhdjERvenjmDqPtXEZ+OBpY9
SFfcjgACQwcMcOV46As1jc/8HdB4PDpXzkfJqFhZEUvDuan/XVA0vR8EI7Fcfjkb3HThjSQ4irdv
P0HBPIwWr9Ym56PzK+RLkpptd/VU5bZ/S/1IqEENAKlIqKSxEQjD1sbI2tdFq/Ok0GKOW22VtUUf
TvyI0UMSfQyJfYSJ36/Zvj+YYrybRtTWk3Z0nF76jkFtXT/ndY8P1Nq0mZY/Yef6HNSjOMbxsBLb
xJCubGsNR14kFC59sbPpQG20d3NiW1mgrBILb2cUKm6LSeiMFGSYe67sS1WL4dL601OrzhitLcH0
M7LsnD+SphB8zJ3ERyksFgXnBQ3fd4BgYa9yGERGXE2r06D8GgEtQK5pOAvJW4gZrj9eaMr7dIH7
OjLdXjsimv8oqOvVvlfXO+D4VPf24a6WdZrde9365FtuuEE02Gyr8dPfFPcaKIrTqP1Xk+isZdWk
X05a9eGEL8mJmTrEM4W0k7aeM1BvhI5UdG+4YgC1on2tvXJ3H/aJO9ddxOWH1/PvUIPRwZg3GNtd
BDZ6a7Kh+n0wGyBhvdGmblaxWYUWNyEO9Jx7X8dXa2wYA9mNw8aUmxylNlvfPiF9BVRJB0r381OY
91hO0MOTTFMRydRUOBSCFfeOuOMjxsNDUoSuiBr5W9vOggSVjp4A8M6ixxFks7dMfMyxB5m4pONB
Cw2hCoCFE539NOwxUb0X8qSXbjFlFiJiMtC6SN6EqVrAi8VKaS+9o0dP5jDNrM1fnLXxOdr2jlW1
+BHbLUkBXV5o3gfFnzR4WxmD6YwoBlgK8GZT3guiPvegQYxr9QHHOhFlP7HJrE8BNGxtLXtvvWvu
6FyJgUkbbyYoV32NZLuXzJ4daeb+FkjeIiqUocBE7OcvAOafdei5WBQSj4D6Kb+RCySNqG2zZ8F2
skjzatnRO4/ns8ENlFUqoKewPrCDxD+Xupokuf8/AbVelleMT0Sc0BiDUeOsnv8Ky8blnA1aApIK
nHtje5wsjpc5VEzKKzbZT5zGcOsQlRG1IjBvgZIa3lAL/pDtvxS7p3VbmmAdNr2OMLUzT6+8Q86i
r2rrlNnnY+/eFdjY3aDS5TT4jc60cT8SNzvaL4BGrzSaUom+ycTvT9QBlrLkxBy8IZiUvlM4J3zF
IAvBlUUtmGOuyhRW/2ZN6YE6nhcM/LXPhXJxSpMMDC8QBWUNF3qUAJVyOC1o4+RtShLG/I5frfQr
spcaNs4FEtuL4m8qwF25a+HEee4UWKanv+33PWz6SNgJfQW9ckxAHYYbyMvY+U2MCsl9M8zYUS29
2fTYcksRI/GnVfXFGasnae4fLebYYtCrsnypjQLLGUEHutYXFeSfuzBQmFiQwC7OoQcW9P1+RDHC
yS0vy35nzr/YqY9NUfWthyXBGLSuMb7vwgq43rNnPPCLgqhz8cyJ94V1GBKIxnB+WfvpeNhHISe6
0vYVVUjSw7Tx3sLFDqI3dRBbgu1FgzhX6WZlvslupIhYzeaK4PIieDerNG0Q+glKC2y+IosyKMaT
szE+lmdny8utBdu3+ih8fd70tbZEVxKqMQ1aWC2udL8dq6cWgqGIf8aJIom6gbdOTLTa+9rtWgs8
h3th+CCARkTEPVSVzkwGbc5HATv+QxjI+Ft05wTlPwQlTAYi8q28BZCESqoyRNOb5Uz/cgEwKR8N
0i4U8T/cEBtrgmC95Zxr3Q4vq/ppLY6v+ke7bo0L+edOGhcNk9e+2mi6ID8YYuwa9CVvi0H71dBK
s5hXTup2mFf0f5UFsg2zmXIcdA1Xo2z4bOLLzCerbuYeyz5Gz8Xha+WpisuDjXQQyUyEwC9thud2
CDPveHXmMafLYmwJNSkU0Wyse7dEzqtiMpXFBIbuZxmzfag6uSwZJG//nQCLS/HpVNiFyCmQCANh
P3HhQ2tqQ6rt/zr3cvb+jeRmqFYFLREGlfK1zneeswe1kL8WDO1+Rk/bC0PZIOrqSDLqobRsPGk0
Uvwqr7L7aTKjqqjN0pf46ctitfBlBXpxsVx4KHgW/Gta/OJzYxlMLoAZBsU8d4phMS6C7dLZxvB5
qFKldiKiXXFuZG3fUMWXp4cZf4FLSrgvSwYDYv6rZpsv/sPbXDZ+eQrcsr1V6r8Fs2ArfzEKXO/2
QlCYFu+DoXnUynugcfIGFltvycyooj98yztccXIkFNF/7z0y/eXDObSovdU9dG/hOLfaMcSoFFYy
w554UkYGDwWijgcMQHDiXxEEh+0Z5r3ZFRWro4jIORPDbV23xdd9Mnbvwb9TUCUSzN6QA/smyeUX
aLxIjP04pM2/rZV1LO5wtMRKtMHAbJH3bAfy+Ob/MbPhxsOUtw2b0hA3qufa6ZGxpp5SdxXJdA1v
Nj1ONng70PYiGlzRaFYW4jkjLS+FpKCSeCH2J24tnEY2gxRudrNLxkkqpC+AgiDs1I1NBVH1yNEA
/J01oTT8R2CurgJUPPIcaqB4LVas1zDXqKHC2X3qnHFbfMAQHoKquBOdEfWoT5Vh+pKn3DEo/Nfv
l5E1np045X3H3S/NYbM0vK/u2OO5XSl/tFHiwNKfDREctqdZUgeOtA8nYxOmYtQgByqJFGYemOog
ELNY6trnvWwhgVub4DIn50aPuGqOxj1K4aEi3OPkPRfek3Uc5ibyFtl1EKxFW/uqkYPLaXFVCvxh
3zBYbsnHT6MUa3xZaVP4gzkMaM4s+kFtM6lTzyBe6swC0CCVQIR1+/LIuJp34NUshwMct9sp9Be0
v/jrqRGBNgdL/y5TIsa9Yfx22luJY6TZqk0R+/Ff1QZwZOHICOiJK1WTqgmawXoDW8fZrI+tvhxL
grga8XieCsCNhngu3RhWzg8gqL76T1XPSyDbIm62BtknyTouIcv8qZi4m7+bfpjRIChjFOuNAzLS
kbmHPH/2o4H0ihDhni6NoVbg/I6v3nSs0AMB5xTaHA7SJwWWa7RmDmtdSHsAwPnAjmyIPXQnO6hs
qu2bGn/YOIFSneGf5Nokf/735wjHWSzqBEJaim4f8uVL8Y26xpo+1hcoXTPEUAfPw39V6w/oE9Np
oLbE/nP8HJbADhnrBR82PjJ1LQeLSjRduc8+RQhgRPXBMFxEliprZkhXDZjSCnPHousvHqIFjaJw
g0nXJxDGkwtiA2OR6eW6ukEdgv6ZlbhlDQTeX6m74NLgo7ftrssTFLRGpRWnoQvdAnsD603jASVr
WdipeFBWS/J7qDzdoXKTvofbnpOV7DI1xCpoFjYfcwExvNFDK0rLPRwFZMxbrt+ABF36vm8rEJqL
9SlRD4Xldcedcbtr69EmfWtVACuFCjszSNf+9jtNbpW8FW+cxt9LfsyeMclW+YSmx2FCsTiOHN8I
wwFgQUDYpVSzc98IMgVD8+0FUi98vN0toOQPy7TzJH5t8s62cFa1l8jdQd+8J+deIicnl9iRXFIF
9887e5t26Htrmr9cckFLxLBmW5cQguWma1zo7m0bM3MZ+XA46EqBn9er+lS1wxd+GAzJIFBEZ0bv
KqV9gjovTOX8oiOqIT+3tCekJf868H8QQWGPXqNYXppMqeeR5lMPoW9Q8LYj48Udtzh814LfemaH
pSC2jHm8K05jd1PvKR26Z9qwZ1l7nTZ+xZcUBoovCh+aQBzSO1c/RU40452EdppoqvYJLQKRwn4w
DaCEW4ZRlir3dF+UkpEpwSIqasOADlvotiandr9QFVLHKH37DpYJnSrDKhZujyFxkelvxTOQ2mWi
Nml7/PYDbRxQOXTb/KOVc8CDg9NfGqrmE5FmGwhhNEEJAus5WTJ2Ah86TEYPJmnc+rSrP3IKRH6f
S6VXU/J+p40t1r+nSOp40AfCI6WowPYCh9fMlSPI2CvNuLIHr1grPIz/RCwC42yDUSuOvI0ZUnHe
ru4GAaqooBBdnxrEHFKsoIEHAwWiBo1V9mWaCU1LEtjLA0IMSH8JGwYLGZb7BLnWXOSBpJ2UZQBo
IYKdiPTkLzBYn2R5L+N7pUEX81AT76NDLT48FYFgDTcx2JMd98n2QpCWaMl6JM7yAkJs0SotjEgr
RmwXZ3B5ROmHHbKagjRM/MZQN+7024rkES60DcXsxL7dlPy3P1miYfGlBCMEe3VJtGyYofM+WQ/M
tHBwQEzWmWtMalbd/b4sJ9S1K7OrUb6JaguxnyR8Q6g1vw5q0pG2HM9L5v7gCH+GPzhxoAWpuIJC
cdHTOmm8KothrHPTjpdrKBIf40eBkNgP7QgYOjH3NpzJO24sUvcC6zOCkVfFuDno8ChdWV+ON3rq
zw/Sub77+fKiRi5ucovwVNvWPIWz8o0jrcoGBpUWFCSuIoB6b28vfW56w0d/3/wEiG4RHYi6Gu1O
FzmQM5TCPmrigs774jBgz4MLk32TEkuUQYQRTl+posdzKCVyq3A3AEwGxUO3TKHDTJiXwxfhI47d
+DPX/nTI31hA2ys45Ykbqi1sg26Y7/0c0ElM3UJ5VsLDAyCyA5FXUR+VXZ2ro9kHMfn5Jo0bkNNy
+E/ehNnsluyRX6jszRD9tPjBKRDqxT0abqyO/CSgjUraGXv9sCukbfy6L613HDOIcQEgaM/O9cL4
rIyIr8sRclQxkF9UfaM4DFgR3DcJnhSxvf7oetOjpcPY0MBGSSiH5KBWzwiYx6XXxqYGJTWVwkyo
QHoM5oG8v59xk2Ju/0OrHJR0cgZMb0oQOx/iBH/cs5AkXz5b5QtY0LxkjEAqUZKAFUXQBHOFJP5h
aWiZIRbWhCJRXBW/MdBshtQX3KQPRgx8V50QB4XgPNOo1dL3VL+tZHYflM67G31kS0nZIK1oYpnz
qJEJ5D1W9irk8n0m+T7X3OG3R5kI9og62CQOWbxvxxaVO0UMIr0Tb6JibZfvtFIPOPXwWcQvyQFs
O9Q+6lhD5FP7ut3pKQcjyuqGGHwzXn10+HbN1XIG3d3aGxbXmbVSiY2foOoRt5H+HnvGceBYL1Sx
kJhTA1SUQg7I/9Y7Zz0mf8WIIesHT8NT+RapX9CIzCbP9YxFXY8P5u3Hlfkd+F770pESVp7kvwiP
mIQFtsDTILWjy2mNVdArV+5phsRnF9t4fZ6dubn/Xh9wb72dm+ki755Zn+/3a8RgYv976avkV0SK
6WcggOkZS1J+9hQjtdgOkheQ5M0rDgId9YvqPDvXzaNOjyx3EeYuiqxpkEFCZMxVfkanzIhs1xMU
ut4+5tIT4xq3NQhSZ+FrKWYq6eHyNGmAQfokVQ3ipTkvRupqBUpQ5JT+b6+8uP+K+Hz2VmHGrxCV
mRLtGLfmzUmCAP3e2j62CqVpRZgcj8hFHUgH5eE7/vK48HctxInYao3d83qUXAszUhCBuvgbL6Xf
/1MY2Vdl4algKg4ZZxnJUMwQ/ncgcICPh77RpYcIS8VtIJYWNMVI2sYEo3iaVvU30DYbr+Y/yLez
vYlhs3HJTq305zJtdRWbqAsoXjP5pBF5Q+DG2cIQcV1UAlDK1THSMDFFljb93Jh0d15aUD/Gj3Rz
VChM4FdyvIoaG8IV7XdfYQZE90ZN1mzdNhwfxeqAoW/QBRgwM/bf/fMqh8eYyB5gHcgCzCFtubwU
AlGnLBngaAeyhXMmUK0ddmkmanRgM71fcgLV3MiHyEpOaZWTOzU8azvNuMMgmW7WjGHyVnBo+l9X
ZV1vwbaTslwBXU65nxaqiMbEaykG0FCbt3mvoYIJE961B3BlpOUMdyyiGxwXqU2RglBmRaDibb9N
RjgcHP62FllQ18ePxTPD2YQaA0xt8isASdfa7rLp5vtXEi09unL0FHpxX83nCJb6CkATtIeTD0bH
XgOMd9l6krEf0ROpEwSnfy/PtPUtkcbfFruF+eOE+uWu7Zh+unF5WuKf2jgapDe0KZz6IH+2YgXH
StmBKk2V8iNsKJElUhp9TLZcG0h3BBvPvP+Hg9xTpxvks7P1+KgYj3/uaMAs+qrAFAK6ecIc1Wec
w4PhyNxGme/bCRAAaRV+nMSotDQ/rxr7FFdBplhLrhsOI7AAGvhVneo/SWJlBk8vFBCpWzbKOde0
gAtwphCpxOO7Pw8KwR2g7pBC/GEQ8ZeVNDuwPihhMThjvB4uA1TomfWwXQlrT1jjaazDNkdK+LO9
MPUcc3tTjWDPJ7mktUHsWGPojD7evrjuRFT7n/owcLFgShjtwEGcURThszrvWrnCLmXOzEVgV/1l
gw+hj/DN45eYFINqUqRSYb/HG0cY+mzJobClhN4rlCSGcutuKyMxK11cTg6Tudr2pxmwbE5TdaRB
t/fvHF0K/rve5/JPb37X/zmvlsrpkKi25EQ3Xvk7xSnt/6sc3zjbkhQFb9i8HUpDNKdfQ5C5CF9K
fDAvWLTU7EPAMzJto/MHY9k8hqwe8jMHo5f5rxthh4haWDaH8Cj3YJLro5M9bzsFMPQDLbRFZs4i
ONmxjTfDf1puVj3bUre/w8MB76L9WWQIQipYmlF8cdupdu4+kT/xOPTxUcSkhCHoeAS6EtCM3w2D
qNDKbHdd/Y5rOV0TAIejIrzRSEOzIugbCqak47e6xLWMXNFTaxkh95THTKi8sdp3YhPb3x0+FeoI
P8hvebA3EO/SpkC7MXh441fVU9HNERGIiNv7wZ2g+lIe/pazpivqgxVdzO/rVGx2qlzXQ2OUAwOO
rYXjCU5JY7VWOqQFjKVnGlEAPlgamHVKewpXzG/lavdxMiJTb34QHdVoL2mYJjOMU8nrTrVumcVJ
OFtGV3kfk5txF1QM1xY8N9Z6n9JhdSE7Li3t4wSk1pS6a0EI6YHpgXrwsbbTooPzT3ic9c9n6O0N
eEuMwlW9qagtULDDdJa2akC9LylydIyLySfKg5PbrAYKL8SnTCysT9Z3CwWmRjQVemL1b+uCq13K
3n1x7sYIjg2+M7TJRKUu0mEaMfnVC0REMcDQQKTBw3U6Id3Hnv+ydEu7QYlioQ8uXEMnxi7EqP/E
6SzsLQQXqRZ64NGb4lTyI8MNOoBYV5eIlAOCdnTy8AoudoS7MPX5tChWFXpi7OFMXzl8CuoubyG9
SKhB91NsltuwAqVdKJmH4+onvhcTKp+yOT99rnoM788hI0b2FFvzQOLjlqFtr+eYmzXOkFNhWUJu
+1bTSwYTujvjyJ1ygpwWZ7383EpOt15jjSr57fM4r0qrGAay6lmZddUrVu6M5b1fFGfIgU6Bm5EF
PcF4X1mx86cUxVYNWB3VkVsL2YgUWcE8GQFVqJwyBak9ip/HMT63u/L66g6JXJp0j8tBgrBhSRrA
3hAAybk38Y2S/nFYJre52idyr38BWq/gtsDAHuATg3EgICZYW7dsQtfxkzg008Y3YuIkwbXqnHEx
K6sdi8Ah60C2ip8j86soHjmSh0lUnBUpcgEltuIzXejA8HCYP+ACw+/DuSlRADbFxmlD4+aXe/5P
U3FV6/CeVr028GBJ6zGW9BJOjVlyrG3IuAX0dqEkg2GYVc8k/xJvdyuubKv5LlkjHzu9nQG1K5PB
t7rCR9MBqKU0Le/fg6ELFl7aVRBsUOJ3hzTiF5+Bq9TBxaxAKFEN2qMizg8yV00XHKMNlHYsx9LO
U8GeW/qv+tEu3BOZ6ZkzvPRH5sBtFs8U8+OJa9soWgcg7OG+Nj/LSqem8T0RJvPjTGCIy3YuZabs
+ZFiZVs5gparrrGg/HLoVRwmsfM0bPoky+9EWCI+Tls4bHRGD/j+mM4a7uNRsdHL9pdJCS/IKbck
ylutaahHCaZkjazBIkAc0Mcd94DRniJ2PVXoRfKKHGqONbkeziYx9idTwSJtyK/YOMvSV31LxeSc
6GAa8IskTkllC3ZQDstd6V+BcsqwRZdUYwdEgssqjPEYMVI3eGanwfw+ay+8SBOxraU3PkWRY9dZ
cf4md3fG2nDqP87Rtf6/WNhkBYyrtUqBV9z1KCLszXdyfdl2RY8jpyXWueUBI8KSnnJ7kFvUYsr7
sNfZ3JvGzCHwsbucewuj86V/FWHnEGeM6PLgZmlZschEJIuXDHhpP6PSqSP+dgGPAwUobPUyZoa8
K2hQCoC+EzZ8eQ2uii/IjYYMNBrzy1SDBTol19tk1JSaqknmx+E2p7+YfTcJD6keo6G5gdexn+3K
RPV+4CjeFqQDCUM/uCqEuX0AzQjsDOAqTTmv6m5lX+ELJcTEGnzUFTVwYsawqwgTdpgyUcMe/5Sb
m7BewxdUDX13Ii4NRJIUfGC5c2UAxSnLJG6sY5MyuputUQFoP+FKlEqpkvmWim7ZOi7Z5TTo7rP3
lLSTJLUCn/vmwXeZTHMu2Jpy0jfu6RKI4BdDA9dv2b1BIigMLZYYfEoyQXnNPZgBc/L7Eb9bi36X
fuhtbw8nqGNTQwjggjnHJYyfa7cskcbkOo3fhzKjcg80UBqytS1EFrznO9m5HuV13Pv9fexgvwz/
vgVu8fjPaBBQ6HU2BEFbGLu/79cQ3yegmoCToDl/Z09j+p1jryzC660VuOHL5hqLxzNTPJk9xqLv
JHICsWheUAQajq+0FwpIxgMrqxyIUUeMsuuMz2zW4ohCh5y4uhLnXMnerT7OtRKgqRHtlwYcvPpQ
MLWgiihSj9lnePVZGZ4oGE8Nt4f4eh7H4NA+Oa5RzmyzWc0t9KSuwL7PWUnyPoyAAUm8E/TI6E+l
4WElnWfdfgch6TwFZr1LaktKHyrMFk5L7q9xKp/CvOlDpU0E74o048V2VQsGSHKhGqh7pJmJZr8O
9QsYBbHSJCaUga8uiwKbhroiDm1yThMJDoWamGctPqkapd0nEB4Smp5MUmEwFoWuXdzdk+ZiFD1u
OaWfoErVp1y862gW1Ar9b0Fmy4MICljbcwC0BEYfUg6/RbddDmCB/Ch+4lSpiPYVkdH59VBzNRmA
jNYldW46nBp4b4YhsU/Ps6Rnp7rH2O1kkbtyV8emzf57NVLbG4LHwhJII2ioh6SVSHcsXlhkosHz
U504LSwKtFT73WtzuyuHLjIVH0+idgCde1G0w11r1gmHb1y1yFMsdRuIao1IM199TCVqviZvU69g
c5ZugDvS55vxjqReOhuVzo2rufhp9OvvZ9mOGJS6c12h00PYhjW3vYAbQ0eDTVtDxH+nIDiLpxF8
E8YCEYrbUgrFaJuWF01lQumOJ2JQ7t3TpOdlGZlGF3J+d/jsMQXYaleyIXOZwXJZVVwvQ0evN2i6
+GpdRUJvgHBnK6+J/mx2DNfAG26hcdQgJSxnz6spXNpdR2Fy3rugW0NJU6Qx08Bx35QRarUFh/Ze
2PC8ZVuffAggGPnhxrQmq/sJJB/h40JOB6TS4A0Y9B32bRCiFpLwF2hos+RWboO6lCqJk3567PhT
XBBfjiPmWt7lrWeQ5eEgj6BGA0oJ96ky7diUwdARxYBIa3rSPurB3fOR4VXGAwoZ6BanylkHMeWL
fOO8XF7ylFmASal96+lDEaxpVWNVua7rSyGyVT1pbNVG67y+FpvKyvGzXoYUqziVbAIq2P9OJPBb
YawFY8V7Vu6om6trdkNAq37YuhWLVYQCb5lBRSQsZamgVH9MAsE4dHYt6cQqAQuUYpbbOBO95IA7
xkvqF/ALROFlG0aKQtspE6cfYCCvUkMQBXcU7hAJrMfSyX+Al1vSJf13gZhxCxMTZDtZ/CaVPV8B
nOxegbEj3PM0WULYqAM3JelzUcC1Vk7xw8//FyvzKGlxuJp/FLqrF4YseyVXSM0kKlz1l1Y7CiA0
7tM0vrH/JDwu4Rwd35D7jBXX6ua8KT51GCnL5sGbCanq61POGiDHjiLqxGrEop8ixfyR4k+gxcRV
2ZHXEoefT36K0Az6fBB0cqbvRq2AfX6FfLjodxI2vSQNCyAiVE3pEZWDTm/5zyOcEhhf13NmTLcY
QZKjA+qvnQ2qcZPV+c/Pa1YeB3+8M/fx+fhowGPLtR5iMPb0rMh8SDqega/vGdmK+Wc88C0nCFed
Zk0pCEEdus+8ryytBg8u+TyvV3rZ3YLeTz0X3JG3bR7pDHSVQO+/4d++brkVphHaX8gWy7Jr3s0r
SDJAwJ1uvQbFx+uUE9ZJzZyfnJcV7YjwJjLXMOHYUWt6gBuGv8pBxiUb6nPQVjqGMFC+yP+8qnQV
0vYIpniauXNtioG/LQ/WDKFynRNBhPCiLfFAtHiqyfbixg8gB+4QU6vwsMx8/46A44ngRh88pPCa
Snc1RfQrlozx85pvhJMuqMo48/Hq7qP3wPfa5Ns4KSFfYsNQPTznIxzyN0mCp1Nwdk1WrAtDw1PN
BNGAS7sxQZk//t3l1Ja7+KLzQxoh51nLp/3DifICgYYFAjE0leikj+63EycELOqRUil1Cjn22PDG
eyN6oMqnSKEoj+sw1ucty9phbp2sQASnuSRFwcAc0fP9lKousPOwb+9fZVpne3S6C5fudJZMgYH6
GVbKRuXPn8iIUE0Hl2U+lT/nXTmGc4sAKRf4FflI2oSAlXJZ1hsAMZgBjrgUKajT7x+gVdA71vz8
e2Ls6HIxn5/qf+CvsCslKZCWX3ONxsklz3Gpu9pc/jXktAOouLgboQtmJrnUgcCVWcSjiwYEas6m
ulshscHDey62aycxzS7gAks4ehrQwonlIIetjGZNjc7rQ8x4em57pyUba+okAOjHPF56UGd/kkLI
PAURcqegOTLnFTzqgQxNoCma6MHxjq9OsU/ggAnS5I/700AY9zHq7JJHD4908c/M1y/w5S/3wgVS
Ds1HRhot+p9VN+D754LJMa3rkbfJahCmEyqRP0xCpw0HrgPLOwTpyJwVKBP0u9XdP3xuTEcaPrGe
XSnU+eg0KaW3EgMgIQbpjbcZsTfIbVUALMae+jlrP3UbW3DmMucL631nER/1MEJaJOpvr9zQrW8Z
llPPr/mCqjIxzdXVQOAjUDYmWGS3oeGlZoa6eArCBrcvbN7gZbApEFROuYGWrBPboSAkYaLRX7P/
s1ceRhiIy6cN6AQvNHlmZDxHeCQRXnYLyI6632Siug+gpodfszkWW/tU742JsKuOdPgaLq7XGuN6
kOT1GBjY+16AGEqKoHmPt9d2buFf8QXDXyzicYEe33U0JZc7S0kvS/VbFPRLg0cZQ8mRYgdgVC+L
7pL+N0QVsDFq5omEv9/RbC0UlfEllb39cyhm9hPQ8f91SlPUHpnMBQmg9Hf7SQ4DmsybEa8V0yde
nlhHA2i5T/U54oJpPRNgP7snE11Zr8sR/8zmV/GgNgDsVPLTFlLy+tTDv5cugmFRsz8ZEFzE55dA
jyEfByBtAZmx40q5884BRhWQqR7ZSm96rxHKIB55LRa7iO8L5zclwXVBYUcWklEMenTwzhvm5mfi
fAT7zdhYYCcns9UREs4OV0uG0+sq/HYmbGovzIl8XG64+3MizAJcslrrf0xl+B/UbiNTRCuwB8vf
nllhlxEjW/fq79lrtZifI3VcdkA/ONzUD7IPaS/hhqHsN9Rp2CPXlUHcb7RTQfuWMGqf9vnIanzS
vDB8GbbeacEWKGE2A7touKnFprL/y/JnlEVnS30RRP3oknb7CSuTAkp79R588cn6bvxoBCvkAOJZ
e4Ws+7294HZV08GJ7WDHTKt5inMxu+OMeZig6V4tmsFmNZ+U8q5CzU7AhjVd6GX0MBOlilAWUWxG
k/x3tebZHTnt8az/RokYh1MnFEJvqH96ZrEKtVbZ2WvjhIHEakjszUnuMe0sBJN/fxNHIygBOLDC
OqDf75Vw9AxjccHrtwfvmMHBEWWL3bFt1OfBI83p3Kzz2wLuPRNHdqnbm0O+z9cdijm5nN03j0Z2
bJd9h8WB5lANN124gGDA2OccZ1YGeD/2gWS7vX3libLz7qycmufrxWQuZTjOg5b0nBXToVvHoWZ8
uv0fEb5797QaZG36VMu4HeJfL/7n4mbfBpiquMEOQ4weNcWyOLv9CI3HES13HQsEJc5S47knQwy6
bpMLxWzey2v1K8KRKb3kd702VA98wtQzjJU/W3A4/ZBCH/lr/5sKu7G18z6fV9a46PlqOudSDR6V
cpeL3qDW1Ux/69+JQJDFBKOjOvgWOEsuQD7iCsgO7oGJR4zjJUFo45UIfzx+FlAiOGpwsYwGPVAS
v5hO3JGlNyFnW3Ab+R54540/RRdP80u+Tk3vjIxrM0qOHOzVaGdjW5a72XsNNmOJiTBA8bajT02H
c0gCgPbd35wi/tH+0pMfySA1LPpH0vF2edAaC00cHCLeVwim/7th4IbSb/F2JWBFC+vHOORAjdfG
INXKfIQP59J8kVn8wu24vPA21kXKGIXJfgBzG+qUjPfmJpGpLPwEFPz4AgYMhELwlOCEfMTNmUw4
OMUEsXANrffOLWs4G1v15L06dcs8vihBd3HjrhrU5tm/jwBTllhklOILh5d5gIyDCZ8ZpJvaQZwg
/MYzsT0Jt5sXi1ZZP0aVnGcvSEzbkgJRwwMTMu0wfe4SMqMCCTOpqInymO/K/+wurIvWNY3hzj7f
IaJXAG/dZq1biu4GC/sVgShyOM+xzfgPXWjQ2eO8vTwE/i0POoRf16S6oVI1fXm/YMCJjKywceI8
lP/UmSgn8H6tWIjrbpWyQJSJFWNiO5AVpKzdjQa8H1YUWhLeEx+mI0aHQ6q12E6WTD7mDLil+vzl
7UoseHlud2dTh+MT4izPNlZ7wNIMFK0LrhFwPYRheLgl2G99DCvhx338f1iO6ufy9bO/ptqjxOu6
6jUqGZ/sVlxIFAoUOGKAPjiz6w1oUiaPA5zfvgeRJ+GM8Rw+NaJHzvXHWS6l7foAHhSFCTuhdRCj
7ChA1CWtlobDXFJq7h8+W0PYFZKwHHs+8F0HeMHYs9W7rzzCaTcvwWLb3XHum9TBYLeif7694kaO
FbkgSuj+WAOTle/3IzMCtV+e9InLi/sxmbdJj7FEcMyWNK0xETCA8jEi2n85xjURI5rXJsYTMawu
zuVY42ULZ5fiizKYc0r8ex9qdIpSbYmLSenFonfu1m2l9pHNhnz0VRr4VuG8h+X4cC1V1jXhtmgH
GU4WMF4jyIRlrV+uicOqkqJqjH6ObKSd2e005fsWNE6s0t8j2rU6kgl/ZoulMmxmujONPvdVcHE6
9T/mVyrd5U8/Ek38AserDoGN3lfKdp4IdaPjZDlmOkFtJ9g5AnlVfosO2te5KtEWNeIHQwtyUOXR
MhHlax2uCPRhFfwTrZcssfRC1X1CqsiMi5//cLEd08ts6REOPxg9jNMoVrkF1QUETFQPU+LIp8pN
q/W258xpdisGecmS0RwzDv4II/S4pT/zBB7JpZ2GNZuxFXa/R1nyYCInb7jPHNc/OpYgS/SNZUXM
kY70EstuSGllVDQ+aDujsvRUdQjUoFSyMZt38HJ6pfB4NgN3KNPnre+DicWJNiDGmP06X8rAG5b9
SNyTyEDyMJ0L1i+5bRaEKpb9UhM5mSUEjLYFdWkH9xf4N5q2rR3iTaYh45UIc6xjvKUQgmksvppb
00TbFlemVooB/Ln0GgqUqD3r6fGkVoOLUeLRuVdlnti+GrnJuK5VQ9wUEq0a0o4fQnPT9tBfbgQp
CW8zYDxHVwvcyoLY82CS1yGk8Fszb08/IxOIfcG+R9hMhXWdED/oToSYiRuVyClkgD+KPH4QZPxh
tA1IiHaKbjT+nXAzwBfW5kXctGNyemzN6Ns1Cmg7+ATjIy/aZdA91LSYmf7hNZXyMcuBDYBeUCyo
ih2fvEe409pplxgwju4XHH6QUd+PSnyMh56cdOUUvpNHQhWQVGfcSC8ZJC9oKsSDYxuT/8Gmi7LR
qfC6ylGCtJhuJNjQPhGXm5dXNwVl954puQuwO1FavLrN1LyFV7LXvXpnTHRH1lBvHNzyeQWKTCl+
2kxoAK6TrPRP87hgSqCL7FsV0RWErj7CtUV3W16YXBJvth70o2dEEA3WMCa68Sstt057C42XcZUK
sEdwz0/wd6ehzNIaa7QTkR7tV+bGLp1PRJnY1M4Ijfz/ZVM4gUGXFA1j8aipzgdnC3hcEgVWd+qc
6ASeIMBY1qW/AkDSUYCCXYfyyR1C2lSqBs9/FM71Vcy3boVQY78NZnyNH0GaPkoN9On97dI5hCua
y4aDAnlUSFbqHTDHhhXwAU0T69id0gaL80UQ+m5By/DzL0FbIn9KRUzRVmsqGrCaYgOC3QggmpqB
DagO9Lmt4+GInqcDzOvjnl9Ng1z4IlHu6349YDaSHMQrii2y8sVIwRKGsh2vmZlKcXoXnI2ecw2I
6qvODLm55KPPVYYGc8S1kwi38gwFzyQOCOc/iW+J14iuQ6yR5Wnr5WT/DS3uKgyayATiLZrHND+n
LKwP2jno6zbIlegPK5hhWtAlTwqfLaQIHVNNveCHl8CPclvcQmnhbkIkU2daqqbtxY1SD7xwgnGx
hgh63ZE9i0qf/ivTjkoV39T0LYiZDllzC4T9HCZm3GcHpmBnJletxZh//iPAMmXnovFT2KDcRgoT
t75zs5IUtfxjHExDSKU4VFo4wJFqZ1NlcWNy4CdLNptfCEkOmn2jCTMkD8B0SH68cg5e9La/pj4T
d8uAARtVfALpiWCDovzgMKI2b/exEp9+3Dmn8bJXo5SOqs8DAnOj7cXSzW5weUAsHtEfACE9wfVx
OARiubp8edv+yq/06oxGcXm4UvsAt0RhOOJLtQ67EzVkc5Y9CdkKsBmyqdUVEgARVUx9dOYVDF7q
7hNRKEgcbTHA4XF0KmULtVfeNLysUMvzWVx0L4oyECb91thCplhX+KUKs63c15EV7/+HNf8kphom
lxlXADE1MFnkF1SQ1EfjaDfIWg+DPgcQncBBE+eHv1uX+stPYFZqkqr5QyAaDr0ZwyzvACPjVInW
oI4YJO60HLoWZsX/LoXzwOa+bEdZ9u+zfcMhLp4QQfgWsQwGtSbw3jpJJeb4JP8whFa9HHY/f6Xe
TOCQvPLwEvIHZu2/zzbx8hx7N0ppLu7q2BFC+Ha61M2pGOgx3NNwugERCx0xynI/FZbmSiXFpa7u
zFtOYfjaFDyC8ehScfcRqR/eEOpnZOonBWwJSn3pDro6ZysArevt06WvK19boz79+qGqKTn634ur
XOEjHZ3G7eUtXMes/KssWABImbbc1Ceny9Q42phfXXXE7EF80OUUA2OP4iowvOFSw0b42gJa10xt
AGGCeqrezXXnUz8u6aqvN+rt+l7OJn59fAo3pEr+zS5nJOx4/8h4j5bFTPV2xWxWk1d5kd7t0pRa
8/ZPnlv6RIrUQNp6Ec+vWuu+vfOQ1x7gihi+dfoPPVS+uEQvldkRMCkok987jd8mqCpyCdZhx/SJ
2vlBERl+U1HTUKyNuJOtCv2LlLQrq5MwagF7I72Qfn03/qe8Ka1GkldNe2wujuJPLmdkHmmEQdZb
FwbQLyCBSviP7slmLYSviTbrmgppaHBiBncLM2XDINjJgMrDpbcfSzjF4ZmAU2ngbwz38lwZRy3l
FytPmm4nfOzQNbqhvUihH22J/Of5m6GEuZA9JeuiL+od6syQGLOn/hGeau0w3BTEoEvkyEePF9cO
XVKxs9cH1G/Zm9vZzJ8OR4fjJlcPcirE5INP5CBli0G3F4yRC0YhQgTU45/nP8YAvQ3n1I7klG1K
BUGtj7R+PwyWETy05TFSETnyZQszvjJuehLskUFkvbCLbFyzYb0f+P+7yGcWXYG1sCLwwEkAJJeZ
/lz9OlmvnMpqOgpevceUfTTslFWELLZCu/uimPiStMpallrNiiKFStdR46FZpaJfbmO3ck4cV4s6
oPvkYoEsWx3Nu+vNt52x0jMSgh6tEMfETAHPb1l2LsUOO2zRq3+BsLa/fw7uC1ygsW8ccIPMPiTJ
5sTI1UF5UGZ5iQi/40L7oGwjFKAhkNlQ0fFd2TvYpZUvYnLu1jqwJkhP8NNikQouKVa/ORH+dd8e
gZ6ECNAMn7heIpWnwZQDZH3n9u0D6VRpXI7mafwpT8mmz56g8BO3AfmmATpp7xEg4CASBlSGx7Cz
+0Dte0ii6mLXMnUbFO5A9OlKIXPT73nBzrMNfHrXbyaBn4WY44BXoUP1NokIRYW6+pydO+85n59f
5sYpcNPpEmd9p7cHT+5QbgS8OfvijGuV6EH1TBDvww1g9OPod+Yn+OQuyi3tOquTCjuCe+8IiNFp
+IJmhNZuPApuNYN0urqwdwRNkplZUOsGAYzD0XW+tgVvVbZ3eDGfnQgCCgDvTVJeTw1Kt1poxf/B
jDynaxFyfkyylLAb4UR5I8Q+c5PDHEUDokIx2ryBG+Ty2k57ZB2oajmuYmROhuFb7mNLvxhxi2qi
+XHres8dgsXvcIQd8TC1Sw6V5+wLCpOuBe+zQDOdAabKQ0wp+fTc2dqHz6C0lUq7FQMx1ovnGE0t
BOo/QhOWmk7vLs1RNgkjPIiN3XnXDdZU6sv6GE4FOwDwOn9+Dq89IkHHyr9w7pbFMI5dbAE+yBD+
M5uvTXB5vgq9wY41cfoV9CMkd/doIgITkyCnRiBUs2dDm63rdEKeTyp33eaJ+FUxIRwwcNnQI3fb
B0KQnrE3QATxb4zjH4Cmi/AcWohLdZj2EOYC5GQAAz6HwBIUXzzWR9tv4y8micBzv9f6x6DTQYd6
C7PyTZY71MdMVBDRZU+3u/jDHDiLRxVOCalezqx2SjHp8ETWKnZsh6Jk7hN0o3jkYAX83Gm8PJ+G
ng3KZZKVbyOI+ktMdOStTy8jMA7e/HALytRPQHh9KlXz36OctGsL7nna4BVIAo03hVsFPH/5s0E/
biKbdum8ZBCqCrIZskc//aq9HBuHHxg3RgghGzRYdLnwY/ysTAoN3g/7PQ6T/xNp6J7ZZFn92F/R
fbMVJwIANwtrR4vD2n48YT6YlWwif8arhkb3WBHR6yVTSafwyA4Xz/ujWYzdRTg1AQZa7nt6Tl82
jc6RcaAxMjrSa1D+yoAvi1vlQuHpwLzSF/eZjMq/qfYrMsano31RklNgivHtejeYxQhh6g95Hgkd
JNyl4ZR73/nj9+SiMFtla1kAkgdEQClPQpUgyfrNx3oJYea4rZOuXpiGsrGx/mDcXOySc0IJXUw8
iNQpxSBsmQX8yqOQ90Em0Ur6qjZC9GeLDsi7XAN/wuWK9RZmPnCdc/zBuCKqGo8trd4daWeMHchj
j7ZrBMAaA7uYaKC+czaWSqzUFmzKTx4sjEwughEe1tnu9CICd8TtcXW/VxVTY/HqGb91jypdKAad
DZ5tPDUyvfgRo5uX/iH1+vpfKOj+O6nMN5dU5JKg4RSnNU2MiG1ToZXq7c//A+MvdKvVl4TPv9cb
WdlmlmbvDMonTiXF7aBnhoaCybJrvEHg4Dpm45xY5CF8P5YI06qqrc//EbFRwgXXk34vf94043HF
utbKUxxYCO0Zf8pl+E3b05J5HnItZVIAnbzupje9otUJQ1Wxfhaq6WdNQqKHRbetYGGgvV0rMXxn
TlX5Uk+PFqeoVcdiOVWioGxwScmFvtfH3BHRojBVQQ6x3HjQWM+n0SlRKSAiDvVrbQ0LpbRjuoHZ
pF6Dhq0/tqJy2ZHVAvpDwYjfMV03peK85vxYsPJrosCNFX/6ykMcxp5qsdh9kQ/JfFveV8WEmVGL
LUc56F6NqMPCDh+1DXK5LdwWZei0UkldtBHH5jUEiGEIcchoGuIhlte/nHX8Y0MlVk64rCOCtBZT
/y47sGIncK125sJY1F4htRcEoWrIaKjSQhb6HHH0cshbGTmOkvdKLYjRKN7TN3uAIl1XDqDApBaR
Wp0PAvPXePqYw96w9VciXLB60+P+0u4UkT3KnC6CT3RMEKRjmF7kqLUs4buNIpG1k1VstAaB4W4g
MfrVagL2Mw2LegtOEcVaauwC65dfI8JhpyaINQHKg/X6bsHsp7r9hJQNbIv8PLhEbbiichiDikYD
c+R+J437q6m1CfFFY1l2Qw5rM7FD3vfNOuGNvo++X2OgvIJ5FxZmMvx7jowXl2KQp94TLT193u72
0vYw9z2B5v5vBa18NFy2SECpAg6wz6M5WaUf0V4DFi2O6jAFcBbYsnuot162UC1LXAxeJcRaGJPE
aFNTmswdCJhwudIlft45QXOSJD4peFYFcIoBq0SGJ13z/5C9348Woro0gLnNqoaFzzJf28LqSFcj
pf+RzDeFHNf2IBBKpZJ+iXO98A3akAGZ4jhIBvEfvcA1v0wxhXOXWbGzhRzWJ6VqSuJbBGamtNQx
TsBOaF5EqUHrcJ/LGf47EUtxO2Cfsqv3I06+LXeTw91nOPctx3zYHszABsgga+ZkL0eylkGKpfFm
UhZSOY1EsTUkaxYILJDUM1sqKIEYpdP+tjAj27LwiikOfH8qSggd3O4Y+8Cfl4eJkLHsM89aGd5X
7xMuHkB/L2gTN5PpquF9O7RTQ1R6RlrD0Grvr6s3ol0+mGsQH5GYBvw0VfOTyJNamMgxfsbtuBpc
f3C7ZwpZqQuzuou53RflFWuUStjeILFdMq+LdR+f/0Dp1UM25yAkpm+NwStwi3XbSHOSwSm46gd9
vXxDgXmq4505NFnEZyBpgiHfJ36zNufblXVe+LclvGoILRQ1SQl9TzuzEyqflVwlU0iZxG+TbVNu
ZjDbBycaLNZk/9rXyBeDqhjTe+XqehGR3kVHam8+NVxp6zUpitdRhqo0s7pnq7+En7R40CBLW7yW
CtHVgJysNoo+rY98TvSol/CIBlW3vb7NjfOw2ao6uAs7cGqFrTb6rEOrEXYiQ3F5G4xrc+RSVFqS
uEDNL0Pw64N2+2GX76gQu6FtME3vNpOp2EMl4GlTRxOoczulzFvNmAF0tW+DHzm5rfHlh3nuZxOR
clk49RDzg+8dFHw7pUJ+ehVfj9MjLHtrhAfXYfxpQzLd+38nm1RkCcVbRpfRLYTB2zWnxtKo+kEB
AOa85pRE9DYYGcESJ8HB0nIx18B/Phbh12rplxww2DxjxUxb5PiE3RYhWfflNjua2oQqEtEW8hO8
PFtcfbTTUciCUM6Lsr0mZinbSEAGItG9235wimBnYodjxNl5i+vM9nV8BTfTvcedgfrlBmJA506q
/Q4xzM0JSAT6nZGPf0vyr+FDTGHp863iVLFxQ046I8W2K+Y03IdEsvYy2kd2QbDum70NUOa2A150
0hoaGUHmCkp1Uh/TPiBfzTu7a1SSDyfdKDI/r1DomGki3wBeHUFu9HhirI145LS4FSfo9uasb7G/
k9S/9xspjWPvpYDXI7PfsQPnlTBE7LZE7g0UdhFGcSZXc1mDsqpYAsqbeLnfhlZP81zv0vQqx/DF
JKQyErEWwy3fPKXXdTu+jk9Hbyqfy4F5LGiymfEmU1POl3hFeLZYdvAFwpfHSzDEOePT7/+WZJuN
bRJ5dwxtt3JijVvqzkHTZzYAbRE+qWBiOWo5WyWOKG/lwE+M3abzLLKSA4NhcM9am4Efnye3yvvs
MsqqpyNu9356Ve5xNMTWJRpehU6mxhvP/z8rbtziDHIc+2DtPDAWtpvL9q0r1zRJxeOsw+it8CPd
NR0TQTUfmcJUT0FAWfBSkkwkt+JnM6ecr2/o2WyodgK+5QYTzRfOz1h3pB5rqHPAdczHeAu0cKPE
5hfiKO8vDbvzGRK4ADWDA2VlGhrpRpQAf1cm1XuKA8OEywRityX28TxrjDZI9QjUPs4cBVB3mHGf
dWeot1/Q+YNsaTPvpf9FzKDhZseHrjHabBt//5fBDrsn0BVFbaBIQUPW+R6L5g1YxnGmHbcR4D3J
AfSp4295t+P8lokSpklloyoOvUm0NdDwoIPQW4r16QYAw03Kjp1PpfXA5I5ozrxLIDqxYKQe+JZ3
sYrDEq138AOhPUAOVHz7Z7maAimmveFuF3eq68Y9OYqf5A0sFmkba0lKSnal7Zaku/gpxnkguG2G
n5WJEA5nhpm/ubzoeoYlSycgVh71d3vuSpw/gtzUzBBwxx2BT3Pw9Yk0ZrWXKO6oL1t99FyYKMOc
d89oeOB5eSYA9Hs8Y86ql6fAuHWvooeUv2S3jj8C9RpgJ3ZYnifbD3HIbQfXbw9vBsFqUJkKAOf9
mawJMei8tuUKBB+5Xl1Wh7qslTfJQQAon4jn9NsNVXH5h9kcDgPa36Sj1hZlb4UAs93GKHBvpFr7
dT295tAoqzIH5I3Rqc7KgnDcZv9JMkem/NcZqfpksQnEziTrzVLpgxOE39gwvrOsq2SA71hZt5QC
uxBBTtglyEbLvkztQC+URcg2hYwFSsvd/SsbklIbBS4Go9VORoj7Fqz/L3XEDsqumnG/PFvoF9tS
95Tcl8p/sKtxMm1WBg33s30QqKJQkQY9y+YAdp++61A+tGoY1mTm/qtHH5a07mGCozWqW79xhT3r
vDZa4V0YufgT8MMZRA6VSeawRnsBku2vQh02xtdDZO3CSEp0bu+xNkjlfPoguA8CBj5u50Yc1M3l
wjlu51ocqYNh7Jk1x1km5QJbdtUU9d6VDspVcmHtU1WbbDPvQrKD5DE8CvWVrWrBE7oTe3MCDM16
LTDxDN7a161mghgmyn38Nn8ANDgRpr0+6YIkXpT3sHeIzoQfMR0mmndnJ+9Uq3WpFQODE2Udp135
+o6Du7SqaY7dKvaz+AI+AAuZ0sJnBV2gl6bLVAU5BebWThGSrNQkiwgdWIzk0RpEcQo0dEKbRalK
pinDyuBKAvAw+S8Dr7PuwWz/+ZTwM2bs4G/QR4k3vkoz+MG29ApDmDHTqZjBkXoNJwGMm+Hl10Ga
Txbd86PrZ/nroce8CV1ElibTWYhRzjJEeZVl4+34QrXcqDvvfJRO5HBm/mMh8zfVfDVYFTfP1u52
X5Nn3rGJj1XghdSQDl1au6dOc98PklltD1rvQL3jAJDR5d/ci6q0Hf4dJ0bGe3oaLH1iR1/Uz5iZ
fIU93ULjNLqMoRClI++24IPG/8HlTs7T5xMbRiH8gszLr69cdRD+iKecBqb0WxlYnoaWRt/27zot
L42toUScDJPe5AovoFqyaEjuCqRMf1S6rXtANb8j8gj+6v60m0dI/5MgxkhbDKHbPgkSctgpT4Wd
Z5zQEtJrxqnfy1y/txNtyhE62eNHcqrXIJY8TBlhbuhJ7LXHguivaUhI1/i0sjFf/xgNPhTxBsXl
824g+Bxr/aEEnMawZYFpWBPkmKbJz1P8Wvvc1wVnBef34dOxeyLvGecdXydiC+eUSlA8PwsQu60E
T7+6EWa+GdvtHI/X+ttkag/ThDwOfBeoh0anJZAl70k7z5INf87jXfsNCmHSw4anJJaXD8coWp8f
Zd05XDocmpkOvMahreziigGsNGxGTLe8yU98M4lIuXcgAderdBWdHu5SjV3sUH4qNbEybIVKmYEe
OwQ+Ktop3FekoMEBjaxAeXF5M1bRm5BeWN2tdzkUTJ6PGH5V2Ms7KruAJCe8ivlfKjDkCKNM2nyw
pzv88vmueUzUFWQ+kItiPYa5N+WLZXQq3DJppa4oybJgOYBrd2oYhB0hiYyohoTStEjezXtErwGX
yqLIyRHs0wl9qPs01p+ayOd5VFbxyoLuX6DrLyLKsoErSpqR8EQlqHX2X6OI84hrBwOQBRWpWlH2
cOYRaw7MOmFcgDRv41zf3BjnuxnBm1G2/7qGbufxya2uG4GUcB6TJTRr5jTRKujp2m1wUZHr1jxo
8WP3XFojZbIDcoYqLdQWHqe4n14cG4fVilaJmdEQ7njUXcXYo2G53GBg2Pyu0QRbe6NqG/YTQVYU
pQmvb+Bhap6rzPiFc9a+NIW96ug9XdC2kRIv6+J88xKN8470A0QFcKYT2fzTmd9sCgKmv1/7rHS0
92gJTiPtEV7afTB3tHQM0qIYaSMRRMHjCZgv770qLZonneT98ekSlyQUK3qNK6K9RT/Bzqa/6+MH
Dg163L6Z2i1OCbRIr+fQkRedKgXEVuDqK8fcD7V4zcZbw4+oAqd5yzj7YMQbtq7lWd+HZi/oo5K3
BuXr5gJbJYx408z66+jYS+8uVZpxpQRaxlTWe1A9B/nR/W5jsvcA+H5Tqmb5di/fFih2lzv6RUPr
h1TLc9SdYNIrd2w33r0kpo41ySHLIeP80C+HgOFX7zSiF9RvJavNTf4/kBSsLHy+BNZyiGt6Vu9W
wbfLcNWpSTwd8RaKUS0hU+7eDCyifN0K/jCL9/RWmXwCwS0NHzm1F5e0aZfV6WKfJU6a4e/qpApS
WrDVgjzqWrWTUivEO+RZ9OhdKKdiGZrVZ5D6tG5LyNQrbVv7pTeTMPZA7EwH2YgGH3/4GdYTkFLC
WTfseufilStuoLduMzZYOmuuNCPjBvg0LRC6TIft9Dk7uMmcQhMM7D5jI+ow5nk3Fnbl1BeY1SZf
ID9gw/ua1bZKGTSfu0DHgZNJSZXZIk3BNTCP4iKlOzWXQa+v2S0kS0jF9f8lZ4n+wyuaP1EcpnQx
2efjSQgEZYqEuXTaF4xocGbU7oxVPr/ERm3RzEBrN46+gqLve+ZFCM1VMOYrJcfpahHgQzyT9WYv
hl/SFxUqbSQ1B4psOFY+Ju5Sr2hmKe9njTdH2oQ6BOO94Sa84b6DCKQK9+aT1Dzs67Re04D2+IZU
vq1a0vuKjSiIFeL+EUzDggWJC0dtHhHfSmtDLPIGnbv0K3uX326TDk0X7N27HNTwAanFOlWzAvo8
par0cSFJvNz/rZVtjFsZrm+NA9MpmCsarQKEEA8G1jnKfXQe08807EdS/VgB2ir9+qwNZaeHS4Pe
kTZpTWkw84rWJvgg0Nno4ePE9vR/IbZZ/WlDC58bGD6CPhO+y4qRkZJ4GEyVqMGaBhSFkboJ2ipy
S38btU26Vat6ZDwwwCF5rjBbVHlc+QRJ1SkqoqHAPRuoVxSrYx39wxSDzxsYFpvjoDqL87dGRgx+
IoRqt0iIASaYXDwDLSFCAgpZ8jDjj83pjWMbp0ORoKvkAH+P5ryJwHh5Zo9Zw+KGEf5SzqRqlaO8
Evtxf2YxqjvdNXmx2KvaDwTZAXkbUzwS0c3s8sOcqSm/Mr7kmVfGz2mQVyjyKBzqG3feq2Jv/Wc+
HD8cjluX9D2lcLP37OtkSaaS309xd0Mk2iJa1MgPQ0fMsk++SnidkCEXjFjdL3NJ9Y1Uow7Wu9lg
oSFF5Hplhw0uPvPGPA56nFvRWIE5sNN9xejrDb5hW2RIyRRfkD0Ad/zoAooZaqcWcmUzZ8sxmrAd
WWan2WSEMeA1cpodO3IRwGViefUiEVa8mTGZTC2GT5/h2KncQ54zRvy4U0SXmSPQQDCb4H+9uVMq
Cz6bCngUa4+FmFSB98zv7Oc9QTCk0dDoDBGoxFQeuZxjelHzNdS9TtNuK1PvW18UDGCGXd9xscyK
q8w7BXIt7eSe1xGDGbPM5GaWboeKD9hRm+ZzmGcYGDA0PBJBlQ32ooxX4EUsVzfoBjMGwUv9LcHp
QOi8qpyx3alKRGxH60Nv9OYb8UCLhkMBhs95GB5b8XZdowh9/tc6C8w8at3RIp00QMoAmB2F0Mxa
mXAmGT7lPrK48AwJVtFZI5ZpmNKzazI5S4+4JYXOx1SfXAiBbHcFaBMR+igKlmz/Jdb79Dd2ABj/
Rt4JgzxSlIs+tBC7XvIKaUAFR5ci29VCPAHHGSqSBUTc3vwJm1Od+q8oz/r+fFODf7TULZekD//4
hQhpMdouMGqpXqN1s3dRk+n693y41+AKyPlNjMEEEcFAC6pFC12OLwcmCQBYCqENRfSqtpxkuNEh
6KcwwiUsGkult9wFTmGzfIuGlvlChiqRBpivUfhKCG63MDDtFcnhjo1f5RSmGdrdkHMSyF6KDjJL
MG/m5CJpdFb/ExRe5S31dOog3m6mxlTPMAPj9K4HGDRiII7R6QfBTq64QZYDr1Jud3S1GxyLYQJU
pVxJPDRHkTTBb9tEwy/WCiRqFtHWZ08ZNCzVp4uLWUIW0ZkA6hYn/ChLCD2cR85R1smWcxZ2lYri
e+ZXmHPrq180gWiRZlpDKI4YbAXao0FLtdqICidYBxysSZCkMv2YYP8kFK0pokndgkzPKML+UTTw
7VNNAFdLs/c8+q2CRIpzsiQDfdRFLnFma3sA5G5rBdyYsNzZE4RMrUJFCmrpcBfYvS/hIxZ7Ugif
uO8KGYwLlQ8it3b69i5CP4NHMu3eDhOyGcjEYOmSxIigARPxb3dB8YTo4oWNFseh6oIRGem5eKE5
Wpew3yUuGhxePy4jbqIQTL8WvaX2QHhQq+X72UnJ6D2sWMneZP1KrTdlX0FoA+6f36u9Mme2i2Gt
H23tbBqpG5YcuwNhnpp4id5dIHd1ZrPLGp5WBFQ8VhRRm2NYEKBvM6JEQUdgeWcq36pT3x81qFl+
aX4iFMXz0MYfQMKIEVsrB8nZ2YgGRF1LQ1UNAW6z3rwFdg4FwCdbf/c2/90uX/XuORALY9emRVpo
cmyTYxnLZswSL9UWLALtec/Ft0dNOSJ77GejjnCk+fVTKgayf/9twgEAlsBMKhMTXyybiu1751Az
ClVovtxmJnzfE7e3DkDDFBbjBxzvi4luwAcx2PWJuW845W0qom/Y4yDKmuLZ4Xm+AhsqOOgtghgD
0vztjKo7sRKjHw1NZTiFbpjzR34RbsQtyc+zKtZ5WWtx09LmaztYFhKDqZjrvWI4kUbjgsScixTz
WdoiHYxV0tivoPiZJrmTzZQWmwwQX+oX5jU7XASwk/meGLaIr11xDzA0c5710RgDryWrRQYwg5z+
5t6ZLEKKAEK0eysH+oKTPoWrGg2zmPwM5CBMCF4tkZ83RSgvVIPfYYWevXRVP7n6+JjrVGhsE547
y/EcN0qR65Y7MmQloLe2VWDaYeJP/7WdlYg341oMysVLQ6AnTL4XnDgc6mMx7y2qxjeLj1umuzuf
3Y2p67zxsEHo31Ct2ZP9T6+2fQ/diVKApGw4zX04EjPjuEIB7hy7I6Jowc4PutJBrPdHNgwncNO0
wHvjcOA/UZI71Lw5E6xI8Eo/s8M4EYJw0e5XVH21CPFdM04KhVSXCmQEdDx+onEIn321hIgl1ZRX
wN3i837A9bp0sugqBJ1jfIVJ0ZZkCcWJM9wKjrCxgrMbvwso6Fe8X5gSk9XvU1dXHSGAmhINTiyO
8Yvf1uzQI1OFkqWAPzlEiViJNYxOg6WKOWDURqEUp77cYbwtsWr4v27h1AC1E1PIa2fluv50Pb44
BCnv5aBxdgZo0UO12Hp7BQCUUfsJuDgorfc6qFtcgCYgzGLgSaQQeZV73e9QolrjTLgRQluruD71
OQ5TqyFXmU3eI27epD75hns1Bz1xh727zUp3taMXBj/DWd/t5hBFZvHOUbKSdaHR/2gNFWCpSNbZ
W0VfZ7llHUBNwjQku6F48lmzuu8zaH0U8dbBUyc8gshxVgW7D0P1I3eo82XXOqtk4PhY4MVYhK6m
9q09xz7XI4ZFMaYeqHJiRbGCqUCN+74RHv/VeI5KjuF0cmalHKFzFi0KABzcXJT5o3GoYwP5lHAn
20B1Vl6NsEfPIO8RyiSP8f9RhHCGSc594PPPY7dV69njxzmE1w80ZNu5qwrJRx5tW6LvMB7v3PXR
v0gJ0Iruf5yq25se6szZ2ZuclhmAnHthXpc65eOWQcs4/+zId/603OAhRfPtefVstqQnydc8NZjc
SjfByBV+S4bD8LosZG3Rgx7AEKO9tZn0FIDuh4KV+zYDZYNL+3DgAqH7puOo6n0ESQnyjZ5aP2mh
98GEUFUbbL9ga0i82nve9rseG8b1L3m/b2Ccd2iRO+yAgvk5QutVfq/WjiWrl9mifJOCTVZ/wRxj
C2OnaLxOHIYgQBgSh/AZh5LabOXnURAfbWOYwwNd7QezcgYuk/i5giAzQHeZBEeowqJT/3NgHX8Y
WlzQzZ0TZ58UcGJSNs/acQRkyrm7wSuapZnzK+EdB/JBKkOpj/CITb5sZLbsrP3m1a50AiH1Rmng
lCkvITpbvKe8qceSfzqkYQ4bfK+Q0bhrUGlZuDepw7A4/qGlWeap6+gGU6qpIdCI/MDldLyHg1C/
mhsYJk2SNCGD5lSavuk245HXYtluN4EsGvqyB5rycwWVWpnDKTTLWQvsJLsNL+QLMf9Ym0zx08Ta
aeAqpkSBiIJKdB/d6l8uSgCLOltc6VA2jcsFDuYawzUm9bQLLSamSmzU+1DxCrtCYEF3AAmvIKqF
AynomIWqSFk7VCDwmkUL2KwHMn9yLI95je1NSEo1oXnr7nSKUeNTExEAALgPYwoz3oQAtfoqtqGt
lB6SXCjLXTupCtWWB9Yxwrsv3+I4r/VUjmoXg1OUr2AnID+2mhcGkFKp1vZOP07o5GxjExADDjHH
x0n2/4yEzTvf034W6mekqj9xt2H2fRCn1y8Hkkp2kDtPukzcNv/ZbdhNceXvUfbPrS5+8hhbKnLO
pOr7uexSso73cMNWKlLm19sdaConlF5H/zjDyfg2wZLynMmM3rl8tnyeYZQnTMmt7BADh468Wim7
kZ7BZs51ZjHuZxbk3TOIwqeb0mToGdSLEJ6svytTFxXo6S5usKs8sr7hHbzoXnGcAgoblP+kha9P
9V+gUAkT2clMRndgblEFVQrHIS+skz6KPMOGTrIphdXjn2OolondG0dOl3oIu+Sjvq5N9xcbiVGy
SJAbv1X/5xnh9IHGDL0RuoTvz39SPSVQXiOnFvML7nBlYruu8Xgqu70RXW9d+87Pe12axMvSE/2H
iVH/DBvAP4KcBA+M38PGxv3pKAcLob8vnWkTdO9RzC8JHAPt02U4NGFo49BRymo8fFJYjgNdQ+KX
V6O6U5comBwD8Mxzg5SBR1amXaN0oeuqMbUJPES1+op/TZL2HWVUrxzz+JrpLqek0TxW1pYJFLrJ
fhiMyBNIIgafnmqSo4EnYSDpc8AUjGdhKDmVl3Q434IrJ5+f/gpBNAOe3qsC0jkDvxr+z16V/v+W
fcQUBruLIQI3QMCVJDF7YEZP+Vot8Zxuo+j+P+/qTURKbRjjHhllewUPl7S0NCLo+ZhaMvA+SGGd
Hmy87PXJESW8cMdCLTf51AryVTRN6Vb4JoErwGq/m5WVHCZCPI2tUGuDIf7RKC9VAaQzmwCniDlA
/iUGMcxFBMFzcvworfCWocQz61+yDKaRnQEcv2ZTKv3+fufeS0qjLPpVgqPiymOK9yzOqEdiGexL
BBLCM2tIMWFkkrxziFlR39FpGtIb7icLGKhiqoGcSZ6eShjO6DhgXEZ1/n6h/73C3Jn5SVbHyIvG
+2hVbK9Jiv6zoi4nCo+RpseaLlg4GtFbRJWRk8lnLDg8TzdCxLzB8kNOGVg34wdCX5J/04Yos2Wr
Ll+Q665RJn/OI44xKhtoz3qPu98X72z4Kigtc/dpzw49zhd3mJJ3TSyTCASiJVaD74xIXErGugZF
Nh4K6Ns6zmGov/h7lzecujF6ossi5aw7mTQBMu0HtXSUKnhkvXSSy+QlkqcM/5hDi2n0rrUXhBqc
+LdeIpVMqtlf9saXEH2/Kbzeg3/J25zoKzHTlEimmMKEcsnoeNKfpq56sDPv4aMuPmMlgPx2HxJ1
BsYGgtPjPSSGoVYKQfjWioWAyCcTfzYscQDCqfXtiHdifAnbGQyQQec3Bembvs4Caz0g7wAT1VKs
d18nh9ybix7iXHZd4zeNFyAlCs0qzia07xzNajVmQsi0EsTTJOZgvh1mnZdKY4VJ0AO3+J5ZGYQD
+l8xCGn2v5Ppob1CJNPpVzmRXbXmRvrCZywYYPNQXSFZlb4Em3OrGvqU+UZ1CPXZkvWMGoxYm6j8
2vppOkyqyQGt80i8pr3s0p1mBSlqFYGSZiCIwrubriK7r6Z62Wf6lk59JY/xwnhhbG0pwaRrQ4Tz
FQ9MtO3kIWvdLeHK0Hcfs1x0yQvhwu7iB6TVoQFO2WRbATy/HWrQ+mRBYoW5nGQcZGmHjhtsCbgf
KsPXtMlgohsWcvXQ9vgbPZxakJ5j80uZlxHzf50uQ5hfG/0qIU2l8S6cUUeJLIZxU8eREqr/tWlN
Q876wmcVHs1dKuWUmgIMo3NdVZd0//rIcV251WVLB8JNXGCBFWNYYaYHIsIZdgoVCodYm5bMblKH
X2pgg/yVItT1QD85tO2P6378eTvJoKumIb5+6xPF1iXOVI66sxn84e5n2CkDa85y6tK7HVM/7NN7
DrDVem7xa4Idlq93v9cM69BdEh19OD60RzzT0hMZpFdmTRqSM0e8+OWssvhaEL0kzwnJcdVVf9vf
6l/v1LGHY7ZfV7GgQS8fYSW0rNruHJNFo4zamBm5/3+dFGIRTUmqiJstw6+pdDRCDCybdRpJUxmf
Qkqv9v+beLcX8nHlNgdd0qdgBvUWByuZOoXDaJCp4ho19Ny38XpqND17KLPTJxH5VG0FLwXTo0Ol
WUm44jwKq7n+k5IWPa/5yI8CIjnbOy9pbIX9IBE+os7xuNCsY42Ru1LLEDb9DYKS2AlmIsprxFb7
1M2D/lahmvaIn6CNrVAIeCmqYfOYnWCb9uIElStFcYb04qhL+vqjLisaiYoXaG8UUWOFqHSDYQnC
F/V54PYBFcE5cTFX8F8zMcxOiFlmaUSgo00no56XQ27CJSHFNw0/sNJiQB4DtOy7XhaeaBvELxBn
iV02+Tnbl1x+E5NVnfBile//tQMm2nIJIQa74HLaaIyMqggdh4nD57AqSv/Y5ufu1JG5nc1MWTZ+
bcfq7IaUyNF4lDiptZ+9IlSi7mq8y11bZNWjiI0TpqE1zyWqDKK8pBucnNck8liu2IfCzQeEhc6z
RCIY5zTPq+t0vhSdaOIw/uX0JWzEIO85oJgXcbiKfl4IZYMrpO9cS5Sf3bwm0JtF4uEqEdEd7RdS
ADyC1UARBKuo/3ROF/LY9+JbqU/i222jPH1Lxk1MbeDWTOGIMbS1JSB7Dy2kBLYMpBsXJm9QGUeP
CHgVQkEn12g6vKo/qRUDaH6PY75GQm6tPFOZthdQ2CKyatSAF6hO4sAzWHPX7ZW7NdzT7VPJf4x/
2dnPmWq9KTxu0N7z3pi1S1TGVszUXFOH3ZMwhfeD3dCNxGoC36n14Ymb3o9W80NN/qa/IKEYh0Vz
dpeGidwXwFcxnuxrnvUoONnuvylvebKPBERTwQNZpzZgneUQTmA3eY7VdEy07ooE7lWzuXT+N5rr
dKs14VwctYmsVcBg1sLjiHtCPWevxKNNGsHtm/k3+yBVUfoD+CloJ+IqSQ/BWiOhralEfWRrBood
WIHGqywNIeQDyzlFJqvL/UZXm0ihMDgISP6lFxncXO339XL92LNo0KVOqdaeHFBE1WGYJHiz7v71
gMJko0/s9PAKb5L2fmA1WJcRAHmRef6lQuTcYIFtRj9W7Z2pcXfgSrK6bsoRVvyTwMgzF0qjJIsJ
u32ULi8tUf9WPBvtfQDIrVh2XYkhKFNobNzzqmyVAxRmVeFw8PwL8/Jn03kDWtfUlAgGawGi5ac3
bPpllxFpNhkkcJ1VbyJq3m17+SoqPHBjNSRlrq56uguNvUR1QQeN5+/7crMKXV4G2X1lc9McIno7
CVIeDb9Id/T5w2wYP47a5u4bAOvdUItsfMAjG0pKvTzNI1QA9kFTOkgoU7XdUaDd/CTLy8debDzu
oI2RkHc9jhGul1k4jkfxyCYAGXcId9qbkUQd0DSntgdSMQldCEzQByheCexLM/tq8jLJX0kYOSw+
hnCPPN8dfjCYv8owxqdAb1lrJaX4MmVIanWALfCtJCJLtct711kTnl7qdxnsm2cKFuoutZHXJS7y
KE6JEelXAbfKIP0tNgtFiluL8u/4Ccesjie5JuEw+s7MP8claKwN/EyWy3WQTM7d/lczXbbXTuoj
O/xRw4H2Y0ALeCyppIFqAe3c6h1lplyIwS7bn80ytA09UWwLzJ4BKYFNiJGxeiocZERg9KBmf2Us
I5rUbw2h6DxqN/5MBCsFi8mba5FmD0irczmL69/XUIHJgRiCwuuM/j42A6JFNeet9zLnzlXhpmML
mg/f79XLa7f8aLDtJwWVn4TfwZXaD8cwPvFDQKNV0WtBfFIQDLkFbdBOaeGTbYfgnG3TzGoaiAF8
/DiMMiEjynqIJywSbChp6zOhDHti1/ZZFju1tlBZYFr15Z3rsU/iw0FLgpGHJip+hci2VdEZ8qvi
1mhIYL0Yp1jI7DMCkKSdhrbpp24pJAE7eJgbo9s2rqKD5+2CJvYa6PZ4LIS0vXtqgOO7VKVhf9xU
T1jZ+83fsM+8kodERbihQXjT9saofGtK1fWWPbPRkS0pN1Pd6lX3Unz0xDSuv/ONFM77pijWHXNX
wxYVePaHK0q1Blqb/2wlg3nCaHXvIw57NNIiPGwLLaUBUuX3/nFnC/mXi97yft3JPpZw+OlK5dSO
SAVykI8HRSEUPZwGRV41SpJDPgE5a7y/r/hsbAuEHhL+wjxGAtqgEVvlqrzxKlpRZRnKQRinrfqC
ZoG1jcj+pFxrEEk6f7+XTk1Umm2xTSxRiWg0jo8gsV1qca9ofL8ZziG06XqXI4PtSz7NBn3x079Z
QtHF3NAzIlkfbuTg2ubxCdqgkkgKD4tINlaKq1OLOVbSg5uo96ncPkH9shcQHqw/G+p1ZxYdUIC6
WffL4F8t9WYOBDLnDr6Dwz95UAm7xjBn4mzdi+wNoPJqW0zf6WeEXm8fe9LeAdvo6VgWAb1V+uhT
1eQ2rS36hXC5HRYtpX82yvhyzCYFpS6lpZ9r8orGgepBtzZOVUfEaFHNGTgNpwqgay1P7dMJZvgM
ditpa7sK6Ht9egZ8w6dZZkU7ffb25kJGWA/Y7NwIgq3weu42XW1eadfY1RKKvo8I060TKtEqkudS
EvePDYNGDOvxIS/R6JUQRRDwxhelm3k0XKaOL2Wkrj3yReJZ6gD7ODQM5XB9APm48Qz4lBzqWBRM
xMOdwAmS91i/cBYnoPqBSbq/iX/eKWSnw0YzEK0lv7S0is6sN5fEKGSwN+AC89itBNZscqhJk/xV
dDR/NqMGd1UyZd2WpaQknnPjqr2fCXBhJfVs513rvgz0f1KVD592dfRNgSuk+Q/Lew/E7sHXIEA0
XFnKUapFY9hjmE6zsczZvv+TNHW5Okp8LsVD9uFhrz7fLegXoCam9+UPV9bOTy0qLsJitI3OGcsA
jYBisgRlUCpIk3sjcRMOoF2iixMMYiiXrvXzxfdzdbQRMaEQtmwoVrEDvRcF7EvvuTKn/ugDYjNN
KF2uWbNW9ceX7pFu9xXJvtHTOZtXI0mi48MAs/gAOwaM03azwTnDM0Zu9h2jPnfn/xSrNRC5WEDL
yyQ+t7DqdSJhkqoHCPpZAMW8VRuXd54A7grTm4ddNGjKDH+Q3gp0pIRwoRz3c/VrflWdtC0lyNW2
+qEo6rsyXYNDZ0xLOrVFBtDxsZgQWffMgQsQZvgAIrRUUomljVyex7uybmA76f9mMhT/YHCVcG+z
44MBuMCKgYZtHwYSzkvaK3krLgK6HqxDjudVz96DjCi0+HqRRbLl7Cg6FdOY381ybk7V9RzKUq+1
130P59XP1cdsCEzVqiETdoSZd9DHC/4EpjsLAzXKqoHtadAG+hbPgdihImPmdBRLMSHvdC4ktEGa
iwA63Gd1OguW/zYBrxdYz85dRe5vDllGMTZ5m1n4cyeFYhIcRRqsdXprbV7q8bUwAXFIY4aS8ikD
RU8QuK5X1hGjz3j8fFfTGcd5NNBfojmIGr5XgFh7Vnofa5HGGCJsXIN35Q01jzLahw1p98gmzTsD
mqLFD6Z01DPwoUMsbv3S2adI7ZbyCzHa3uSSGJwMdw0gO7mPk4DUrjM+/C6FlxNj/7M3NIWDcw1/
/Sn0KIQXH8Zn/qORMBd0Qd309fnJM2OprlNJ1dNB+5E1G+jBHlbJmlXVzMMUzwxEChUsLHNeOxdb
mWSDs0iOQmwwhH/oGDHZKXxPg5tnLNuj1kUDdgrLCphr+fho3FHn6Ed00RkJIaDU0HvG+xUifpjg
s87+mAmi0HjHXL51UWPy/pLPdLUyGptfJsQ1ueHJlJ2Os4V83BhPSjC9iSZt1xG9Q5L1im1T/+uk
i9UFPOJ4mnDhbQ9fHP/O/zjyEv1vKHSa/GPBxz4mQR+Uk7Yai1of1rHEgF8GkIAUggkV25jpd1i8
C4ibLzKKf4u2BcBFfi3Jw49IFldEvMOiYfXc+5fRHdig5MoUDaX7cNJOr64MXW1EP4F24C0ECrJk
Y0E02NGickDASqL4YcZWe1hK3YHSXGIMxRqVu7E/vSjQyo+/M7+7pbCEEeVyv5RC54JWXjMjHMS/
LlR4UHrfIwTsPAg9c8uzocovpEWSHL4H+ZpwzHcfpbXGF+TfsTJMTEF5xdjEm5eASUabkLe7W+Cn
kt27dWq0wAMrxorHOixzw+nQq9OGCVveklfEB/SGWft//kGYcBddhG+W/PM7d42QhGXFY4Jn9ShO
wICv2hrU+xuh+zrKKHsD62j3dAxwH1GEmPy+NFlKf4qh9iGQ/C4WY7w0K2yT6aFAUe0IOVBcdmgg
jmZzU9U3eCOFTzqOM7nrzeK9xKkpi3yxOChlyBKvj86QYLr3v6c7MMasGtvB0nIwPo0ZfI82cjXb
efVYaxjHoQgKibQR6bk32kWOSNnHxEXc4kSe9yOj2fBJyoxDrAocUjGuMnoWnczA9LuwA0Wv/tbh
/RKMUS35qV/CvKgv1qEltAOaeyliNT5z8IrR4j9eRGVbD9s50LfT72TyrYUoVxP/6nB7TrFGApVV
2ZYBXQvHq399ca9ZDOZpcJ3CUhoKoJ4y+46ukE4WHN/0p6tX3BMbf6EHrZ4bfnDBN8JL4ACBmOY4
q/pgWKySDKSZf/jp1eKeSShk53mTQkYtpUjJECP7VeFvQOatr2qT3tdQtt6Y+5yhvMj+G2cBkN93
xXlKrptrLRx8OuUS/PuMDDzvHRjRwlixvX16dQ0d3OuZnYTzUPd/fwW4WTQBWrQryeoy2PMLE+cE
tTua5yvwKu0bTJyMlOtct7hr2xPWYODTO03MasAZlBg2sczxUl97iTnYti0RarSahQngqP6WjUuN
BXmP/RWLgEo0uzLmi8Om0j3fnBkP2eh6PcqEBuKL0nGZq9DH3mLrsbETq6FPSMaO3vqiUU/rKJgR
72jZKhH3g8bbzI/oFbqTzOjkzxz23MTzGlxkBX9xeInzpyYoGuJnDeTpun8go5kREXB9vETFVq3Y
V3tzTXYgo/hHhBnic7QwFcI6FdOe3x/8GUUsgNQeBPfzz3Oin9kY3It+8Is0ECANZLUPO7+FMyqM
+b3Envr2gy5xx4/8qXZWqCh/SM3yuxgalKQbeW2znDEqiKfPrac8MHcOv/Zev1F2rrVNiBbom8pB
d38F1wlV3R9cBxy+bvrWNNVNS4cC5AFI7aIBoy9jnHDN8Saepvn0NL/+e4Md5nLeitPdsplCHDxl
Xpqa95/CmLmljt8xprm3aiewKY6kqXQktv8/Qt7t9a5d+Uo7ryoEBcMm3wSC2mmq7aLCh4wUuRig
vJLwh4zz9tpot1XzUlyBuUGzmUFb54GRw9n8kM89ATIGze1gL2rSikdjWfx4oKLtwQjDzbChYLFk
6BRYrfXnOMQbwLJrT4zBhQpjcZk/yWyelItlhWWFPnvKfHoQmjh3fVKpCV4XLsfvDcMXaZXzurv8
vWPczfqFp4IfGykrpOYR209A6W063wO2x1s0ATdYadEUUJC8cuGkEXoZuEr/2/u//U25a6Bzuc4A
7pj/JpxFmIvPO1KPBVUvwB5W6No2g+ALTn0ochFahK07ZORnC0jPGqEf3KD5nEJYVXgCH/lnUp3W
qJNYGonhs25CS2UywqzIrVCU+mNw8itzshDjr7oiarilohofX5LdGH/I2IqVkPepxIV+s9mDV3q0
S/c2SI3k65HO6CyQcL4IE+37dmTvEwWMvQX8MzWf9IW+ZyS0D6L0QzkcpN5Ph5kq9Y5AbubrDA0p
pp/zEbK7b/DcQqLhtjeSEp+FAKYefMB27bx+yuE9CNE3FhlCBjh/wMac/GCzayYpVUQS8nZqpxW+
a8EzUknPt+vB+0Nc43YeENL+7aRbSP5D3WjvBcarLGPGYMZJzmj9KsAKsciHhuULqd7Wb+B3vckP
iVR6tnf9F0YFOPS2MY73ATom72EkWXH1enfD3oUeBZFIfE4HRiqG6EN92XblQ1BhjB7Uun78eXDW
dVidmCv4BDZRpMAJQl1Njpbp829s5X2FD144FCxmuJbbvgvnSJg9H4Vkndsmvt13y1V4gGdNDV0k
hI0byTsPNOywDz8H53pyb95+X4jw/0fm7HcmEvshvYl/UzdWdujO8eXFkwfrFf6S9MM4BX54IRkq
ANVq2OpEV/tAr/jNm9GezC7EfrngGBLAgp2nmnA73kfaVXKeJtVyyB6lEro74u4UuvmOpF6dJ6Dl
68Zyy8mSyftOHAgHCvWvBmeEDj54QHDTr1YR5EDCLUegu7iKVoWR+9g1J+JeJGa+tVTnbdnp3fz/
ePFPGszODj0Fnw1hYXSZKc/PGDONtOh/QWgPuXD7FqltXh7zzSkzjw62QN76J2FgMoPpe6JkKGbz
Vj3CoRn0whpbqSVOjYf7fzSn20TxWi0hJE3VDk2p5X2q7SXOpItDmu5iCfWGEu4cnNC7Ms9JBzYw
v/oEFdO9YAxV6wznuVxG7x9XWjxDzXBj6++TYPKh/G8tJ/MVe4R5B47qFgsv26v9TmbDIxBpI0/o
S+BH1G6mU1DAhGmFnMl5P+YDUKDtwbtZZ5j22KsK/xgT78gCbI4y8dhgqUq5CHD1WrYqd6QhKxA7
ZgGGOjPv+2OR0ieYXsFQ/aRAgyd+Gu/tNd0oKFikaSwiwYbwFDLgbqwoHgofSA7nUBZZJTmP7fmZ
wa4SKmQmm/2qErX9jCXiUgLkYSQRVUQi9sgQKAcdAmT7KHIhBX7lIVQGMQglt0Sa5DI9iuhGUyaH
ucUINF+RkiGLFgiEKwOyZ/FSJqeFkjsFUIyQwOklwieVm7RTpV5CjR0EkjkdCRpjKYUL7eaq/GgB
+kNOsGbuPaiQqgW1z/mbBBTRkl4KWTqxcmod6hoLR+JQn6ivqJWKf5DFUMDRrfYyNWVUg8pH24s9
BujizPl5/vnuy9/eU46Uop1qjcm7WwbxeoU3Gt4dk+voxpweXJnbdal2/Nm55UvwNW1N56vxhZn6
GVejT3AVLouhFDK/wbb3M1ZCBOHq2fsKPSJy6ntJzOyOdFVTVSAl433ErznCL4YRvsO5KoubpaAS
8OjaULiid/3hfbAp+WBA5cePqGeQx+s73C7A1BpIhuQ1ORBINjYc/MgsBqX6I9mbyjb/q1B8CLCm
zDGUQGYRWA46kIgjNch62luN3vNBWEFTddclIMpt9WgN+S2ypY4tQodF/qRS0YkAB2mQq7ahPJAb
pKcv4Dn1H8JTFu2lq5kfVZXOhs2cEETHfiuuRqv36nVBgONXV9/BrTZhJYbywyuO5GYSAd3AcCzK
O3SWpL8hPajyTU5nsT5tyw7rxkA7oWceGfaQePtkQVJm/Cgw1UXhauMDqPG1TIkhW7EyF6VvYB0a
u0y3HGh0hy1BZyr1ZcJd0xR9PXNzlbBSTRDRdp09dNoUpN60KgM0JhwKBfkPJPBtwo63NCTdJdtw
B4qpW/NlhLsNsGYe4t7zVBnXC57O4i+OtyQPyhCLcr6GjX1oBBWGeX+sgXyVuiRl/SV+fKWNnQ+q
aIZSHJYZHnd47ilIgEzjLlR5pzmXMGedp6W9bgtGYhE05sUwd4c+E5qrS/9lb4FWE1j25zBn/OYm
9TfiDTasVTNDfFrf49Ph9tkjHy4HGenkKpuvASbgDZYIfXHqqRSFW9c9ppvwPel8FWCGQcSlQ8OG
+UhW7cGCWFi1uGCqYn3tvDJUUreL3LLBvIqdWxv1i3xrkkb7RaiRgiNj6mFkFWExKYzwNs5qSFcI
lEB9lrqFW9iJz3cVyZafTKa4MzninOf9i+17jLxBOYq2Fvt5Pua17D4dgnEDEmy4TgjZiW3vNv1g
yK5zFcvV+cBYJJNO5fhJ+9wFYB7XJRvBohcvSH/iBuE86MViyTvJ88/B8BdcBrcoN/UDS54Uee02
b/w+cYr8nUPfG3KR0g5z/H9M8eKOBV1aKAXq+WNzyHdg1p2gFSCEOtYC7s0QvYle1br681Hq2jfT
sC92vqQVpPWQkfqUNNS21ArcY8z/tjMuXtlb/E/ySb3xfPHVHJuLV+HXx9OGXGHOYWRLP6HxULN3
wIxGtlmmXv+KVIUnPFgy9thD73evdWpca8Wkk9RD2360amHi2nt5WZ+SCof3cQVcSZHKGk/B3o0E
LkkQQDoPI8WJ+TIUn6lJ+gAtwtxxqRMJZup+V8ItZiFSp5pcQxWqD31vHk0F6EphZczD1BNZ5MN7
gvVFr0ZWyFH8ofNrxUcTSx1hzfQA7MrVzzo1jSp/EFnMh+EBp589E3wH9b9eh7RsCCHQDmqsUM3I
9yawn7efV3XVMSvuYI5XfNqE2lzgfuFf9/tkG+lIroKyJLFts3jWrFjKVzE/jm/JCzOscmIs14Ee
TUBuxvUaof/4vefW3aoGGoat79ynKiDi71NN7dNPkAv9rQ5knjdoMS2K7esljQtILE1Bi9KL7g7O
hJRzt7irJ+s4avbkZ1Mdob9fygxlCRpOkDS53wWKpPRPHaJyE1bZRkvg+TUtgoVl2/+CagxIQQUh
bxWrGCJf6qG/U6Y8qx6wIDo3pA8Zs6nDW6+eOqqX8dmeZ/Kvgaml7BnpUqxvU1gN5icxMgt7KYKn
EmSElKtRMWCiW6h9GFLSlX2U/sj22OSymqHJwSHdM19o9Eugx7XHAHtAh1n1Eoox+YcjTiZWXuQB
6iq++AT3gmRReEEjx7WiQjVeOQC5xp/DhgCU3LIE98u7DUAXDFA96eUY6LoXF2cxwfB8sZfJ2Tv1
i/aH0vsJyaTO+LfHBinoDnGxqrdRwmBUiytgPnbzk2c+y3+LVfXz5pto/4mUzc+YYU5HcYic94R6
cwIewp41t3SYEwaSL3GUZQ2X04Ut6v1A6CNLh8RbYYtOAfK7Y3vpXSUrvhyv22Q2k4+zKvDknR9a
Sd1+Z49p0Z4IoZA4cKwasDhjwxmO++cIOmnwQ4igF4DmDR/hdU1iRj2f4onitDMgJhmu6VPJ17rX
8XcuCeBgPeV8jWmz+CLlvFhbkDt3t0ajqRyNv+vnOvCoCSEzCD3EDVjlbsJOKS6V+GpPo10IaqkD
9pXntr6PnPL8RQULQ94TyGuA6QidPXLxMxguNtDk+YmDmtd822TWVOdZnREtfdN2odUQRG0EFiKf
cz4x2/uKXIfezN1Cl3VZz2tsuHGYkkfKTbzRzPLlg3x4Z0z+dyuyV13KFvRze6+xO1/kjv/oWwaV
jD89OckSmDfX1NsdSpxRPnFNMt4uMCOq9TR92fgOxNCF6s3MrtcrA7XXu8leU+1ipcbCIcakGhOm
BbyvgduW/XFDSoq4JzhGTDQEHVj3VrbDK/bzw43sXtcWOIdZR+LvSeiv3kEB8JFFxhuGP9DolJY3
qWW/AujBjQWo9Lj+JArrjg41SYq/+ag/CLGgJFOqeCZLWjJb8jemfyjGHZiL/UMKRwaA5zaiWu28
QtqOyJEKjcKccDnP2BjFcwaizWJdXDGP6fxEHQK+tKvjvwFkUgackOlndF8NSbLLNLkOXpFNrY9l
B27kqi3KW+NppWzgc7rTT9qlIwhj7d8MCa0uMyYh/laE1E7i6fErZnSpA/xJPY58+J2MXRhw/Bec
BrCofyoL7m2dJw05q9hJnJk9frztD15rAxTIFrW6tIgSo1O3xb9hgrX8qGovCfpXY7lSksC5yjuv
E5nePoLKNJDpHZDmUpBExTa1qnX6WNMVfSeiumUwiJWLorLMJqbRmioDiNW1so2y5z+yj7xk7vAP
L2vsZupGTcen9nalDh5I7IRzKn1cDpBGkZ6+6bsx+/KhYPg4rFaE6Rb6b+Pwq54vZcUyyJ8+lLch
uRg1R6NVao/z9hTwlfTAdoxnBZgTiIUBKALDBR2Gp681ten2kSkenREGLTw3K7shIVWCmAqhPHZI
qT0nbJclK0PF8rdSchKMOaUlGbi/4vUaU08pXJkXKQXa5ezVibv04g4IBSZuf9uaDvZ0JV9wMAIJ
ALhUIDBI1AkTfI+7nq0EQqLigtjtuEk/Vj+csB32POZDa0n4eyUaYDGZEX/cdzkFtndYf332BrOJ
HswEmb/F5f3vm0I6JvEjyj6FqeoV7MFqwA94n5y83SQEinWNtQkrahKUc9EC11KeI8I/sO8sk4q6
jWeY5PjdiQBG/I0orXba1btaoiR/aQnmrsBYTOAWY0Xr30daa4cGw1qFx+i17u6ylrXuirKqO8jQ
6Sq5C0KH9hzdd1QWACJfcTds2yaudrDACoKiOfYmIgrfQ1DqWKjARJFqV4qLIcFuBhECMDOV225q
v1sRa32hGtgwiRhDx9ldySfTWwwyuHDNzaC0nyyTHgYKu9PSkNuUMp3BT4NZVtlTOVgk+2gWwumz
v0TID70mYwnRm8j62GuJLkZ6mIgP+X+n7GgqF6pN6wP/WR9ryoB4qqOV6dtGvNo3+/eEzn8uaqB0
iVYues+wPnW0YUAkefbY6zZVXzdCEjY/sRba7es8cuAq6v4a5XB9CEVnPaGxoTRY6PbjfcF+1uPU
ear5JqHGifYCYBrlUEsYiTiZ3NGu8XgMjixOphQAL768hUbtr07h8qwnR9R50Yu0aGKFGPAcltkB
HUcIMAUSB52kKr8jh7cOad4nytDgeoeqWND1Ug02xoz506snu/LjuwrmRA8Hmu9DDOYFUEqeoyn8
4XlMpqZpPVgRRUiQ8M72C/rIUy0JYNhrpbEKShPawpeffLBPBMUurT5krEHMiXV2clicKJBYBMLM
gM2BUNXrebpO53ZZP6AFNClgjsS7E/tajJ/nkaete+PdnFy3Bxtk7UcpKhNzHpoRjx4VmbKl0OSW
77NYrHFuKmYM4md7K31r+V/+jJKYfgNaYAHMVYaNUJ6mmuNvvXooOgrG7HjFlliMsC9HzNVyXKRq
6giMc8HPW2YICVat0/6ov1ZhYYOBnj95lsngFmcOkk7ifX/k99mIvMzjiuMFLiCQd6dtWuMWvKAQ
4ba+uC5VFz8HKcxb0wMOV1CSuvX8L3rHzRN6SKcfykN0CbAVSEVbyQdgztMw+q7IKsb6Zu2IESAB
8hfKE3mWeWQAPIKF6X1AgoTbNutNi+YYK4hht5ooQzpqnsIcJVL+Ljq/jDTIriMaY2FtcPCcuE8p
izmAb3rncX81SlYdHhmk/Z0Q6UdG6YWab04hTXeqqQHuHsiy/YmVuCqkmYmlYHiH+YuyVWyUni0m
u2ElD6lxy26OFSIL5Uz3Vkdwx6orlTdwg1rti+41+ofQP0Vbc+PIDHaJw/QPRcFaFBEsEcDsqMjn
b+4EeJFhL+aue4Xlz7qUsEglpbNFkDB1cfDv0DDUxROwjEhpN+pbaNlNkZVU5eDu7kiJEO8RYySp
6bw7KboFaY8xMYz+yVqfT09/7p66pQc48F6m7knBKvtd3z7YJpAHDjPxTHlzTditIW9OKZyUEt+r
8suKnjI/C4EGL68nfGhSlipQXHiSffD8nvFoVPtuJ+UEupiJp0dANK8WLKGVhynFj7TUXgZIJ1f2
CjRDlhQKyMCZo1sfrsbyo6WmYj6rp/0M8SEqGZv2kKyKQxJUQa3c1F58aluEnYfxNSCndYTXvVrM
nWk4iHcdF8XLXoa+cBhV+gTWG4GX3Oh2boPo4dE/HmkdQB5TucmzzPoSEM43wKWrbjPcpRuR3Nbd
KMUSZdaYGdYHYqp2PYu8ac6KXFjO4wmnUnAlB4K8F66PtIlniAEcW4AFVjVtUaIF0kxfu//nntiy
u6ZSaQwncAfJgfM5GM4N4Mz2Z29MGDtcomPMuURRgLNxnOBgi8N/5YnQoZRLlCVYg/WHjqdosWP2
294vQFif7YMM2xK1+TwrxwmznPNPk2KfJMz9zN8ExcbvePRRbfObeheGqdm22mcp4p5vwmyf153n
AgMYeZ1jvpNKzyZ9V/rW6gN1pVwXFR8mS4yHhxvnGuYX8/ONLCHawCytKPpPH3eqIqlwu4detWae
Gz2dC6u9eP9Mw9lwIrUM/BzeC205sqAgVfVde8nE8UN4BjM5Tx/f9igqxAehnhKdaPCwm++q2xC1
MnDl1DRcEHnw7gkkcmFHr+PQC2Jl9hHGLXM/3f9B5XyzUtDNhcvdComKr7h2aIelrNs3fkdcldhb
EtoF7qs6ZcopA7D0mGAVRkfxWS2goaRo6bjgyTcp7bul4estwyZxmnfZSCLzODePGeXDny+G+rrX
37KBrPKLsSsGNI+s73eVdAg+C0c41/aDMtTkOvVWuzqC9kFRVroIZNcKA2VJxt5yRhPb5UchhL9k
hRzu9pNvbU2G5e44CSYdCCK26pGzaeMmqqP+Z5Bsq7twImYln/XXKOLe/Q4YH/qcyl/oo3nqd/Ya
Chrh480TmNEwZToeQTw6+s2A+evAHGtG6QHi7Z4dKQ0mWHAkMSjvwn6xG6zjfF0tgY3of8UEEkH5
aQ3ZAIpdpuv427saufJsvDRDrIVOO1uhuFT1TaOb5jpWSLsKN3IQZHjW0WBa2Sw96kfzXpPBbz3q
+qTsTbSm2XboNMALI+06HH8/tcvhF3G2yVfQznDYcXUtckugKTl8woD/fvkD8CtcsH5xTZdpFlps
2rdLaOVvrc48xqiwmWOxnIDz1Ur1ArCYIFjKY6ZnGBl0OJ5+t5b5PeXV6b6b1jGwuht+a+e6cXpn
CSy8/8sSygsHnzuEhevTUWtOrhVAjIOqQ4SlZQb5dYkHvB+IFmHZwM8nuXDafibRBEITLFXvqnOt
40fHNv1aCnPDnbn3/EmF0mwH/BzLhC8iP1NwxXmJxFxhcd5GgmRBvV3s+EjM+pMgXO6wPaQWwerd
dVSl7rY7H97owExxavxeUYRUhTMPXgSOuClNheRZlGMyJDYsuII9V7YjnYs5sNGwzPP3eYr36TRk
w5vY15rPRtQhv9aFZom8aQg1+5sG/9tOh8mVkOm6uFR6mLAh/ewFdyYR6BnR08bsbyL2Nqdhb4v+
8/HOyHrUBoYTuTzGZ1CW99HPkbj0t0dz384VWpVQwLekmFDj2i/m0OSZysnXvRKz5TCMOm1fyyz/
FsvqydvWfVDzSe11OSIoW0wctF/3gr50yG7hqYow6XLF3zrGCO0VUvDEBf2lnG/AZinEQgGA+GP1
EwoPVZ695JS5gG7101IayaervMeWeYWKXZjSalmW8fpzGrsw5yZgsYRyWAs60zCaXHCI7gHWGAK7
ZbbRaJI+SkdZqQsUC46ZTnUEvxxBxN14F8j9l0xN49o8RIZUYJL2NPh9m16zLqAZdRIxqHiR6lMR
XyaXctdxz2JTJE6w16Hzl02FDFeQaw6x9PihTwx1mEPCwDQ9sPBCmVkpFoXCc+L5nmVPFkRwBTUv
/ZXa0UTV/EqoictRQxHIB/ubsOmdh6FTmdTB29eaa0AuLLuyiLE4Bdj8AyKtAOqLL63Qei2Z9YjN
qfEBf6YR634Sdtd0TaBk77BUQBefRgBmmyE7eriPTl8RpNcV5Z1cjreNAzaaBI120EqACgXhuTdB
klSVCDDC/bXpt7YlNDoVaPvmRQdMZLJPBj8peeqphftTpzQ2BvHjQhpRJjjYy7CWsx2wtoBxWp03
0WX15BwduGZeFhSbQQe/2YtMFnXrqkyw7jSMgxTgd0JA1cN+EX6tHaAfTwyukYPoPuF7xVgg1qgc
iip8H1+7als1rsGwN2dzqG87Af0KYQGySvAjgyEcJClpwR5RaLwHh3VMRWi1hps0oDYKaYIKFI0S
7Ix8nxq69rPXtbpOXf9Dp5JSUeVjDn0E8k7ITO/ideVafOZkuM3L/f3MfwW+hr9z/a3VoTh1IKkJ
2+XovLgA9yqtLSx/jczvNN2eY+Ec688vjmYMhlnrgSmeqGizeMfxYgiZ7oK6rjOaMPn43TrDaH7G
9Wx1kKl+VZO+mmhDnBATIh3v8IGJTTRrqjgn7WhukBd++rJI0U1tX3Vs4Cfft4tu07uMbjxrPD08
Ir/nbaQop9i0IcJg6w6iJo7nUhvP05Zwd/AhjxkQ1hh6qCzVFFaxTdPpfkW2RtYJnHmQIBWaMCIR
rVLGvD5ZuDTNV/eqliOk1Nzp29kQvETDfD7svawCLQfLGUuvl1zknOLzR/GLweBRxj+PJONurmLS
jCMKOHCNoP5wM8DT7pikdJoxD6yM11UhLrhFzMZnBnliGwpAN+7eU2lb6PrgQmXpg1ggSqiK0HZk
VAzH9F9YqFUz/8vnzcpBqFgEUt4xjMx5QrjzIhM0TVzIggfCD3jc3krKI2OJQgLp/OQMNdJgO0wA
8ZwUM9AgiKdaLFaNUsK1Zgjx2m5NBH+MGbvW0GOx2tqf4b70HOhGWYq70jkwc5S0KEUScFi3aNxs
BIuy5XBuPkoQH5HYz8m+OXfHozjbYPK8fTHYgFGprJp/4pGoyOrA3TWLIt5L+6/L8+13JMwaWokh
QX0JXGK7L5xQCmfbF4p13kFaX5ztXfBJ/7g02m9brw9AwbM9Nh8j+OgqVSoM2E54xjuJBeRMj9tE
jmd/dbD8EyZxGOUhcXXkvxT4PaoRs9VTe8mGuO491z+6eppYTvfx1ChoU+tD7eFE4vPlsSu4gypC
bOmgx44KXIM9AmhSOgwDnFLDygxUP4iDCro3is1C4YjilpHk3s02mc3HIs/Ew9+ymJFFTsULpKsv
6UhRapYCHZ2oFig7dJJvGzf2NG+ptkT/a2fp0vVUOLbdktVAO0BqxEHz7Txe/fowpoP+MRyZYHTS
t8GgyOkuvP8VHoLx1dZ4jZfAVO2tXJGb5Ei/JFSbRAlf9txIf+X70aIgcTCD7s/PSwphqPIz4t0+
JibSiDPk4GL1joQ6IQuzmuIsyMyVvyeupvUGm0qJW1ugcAC/jn7UGZ3hIJBn3Dg3Ia88SJa4a5eN
uVe3vV+UCso1CZwmcoEU9Sg8697wqWCeoqnRwZRg0/yEmIpejQNBwFqfZQIYkMFMKQG/gAesyb6h
ceoFWkce2tWukMog8kA0NTrHLFWRAWqXjiaxyJPItUkZOwjeCDjPlUsej2bdPj6JlKTikYo93ted
Z2r+OK8NaH22oR9zTdSap3zwrkQ7iotWqyU/hEWSiJwrBj1pez4fCrIxaQt5a4EFV7pfSPRhRmhg
WMOXSnGBE1G/9xXlJLG35F1FAtGSeGREygxeBsM3YEsq2bRYzQj/KgWRSPkP8Oz84/HmmBVRBy2V
InU44wpmEoGHlSoVwW9mXedTnGqLh1s0sSUeWxBwfhyMEdvPgWomK6qJNIB3RPb7I1gQgdS8pVlr
oiFU9B9qnWmVtQvNG40a1i6UFi99tJ/6/pMhSBoelTcLwlRaY+S4zZLMkMj+0j9DzCoKSwIdaBLo
QUGUeGk+iNxHBMnum80sBtaKjHwwdaA0zcO46/65ICCIytW67qGyMMleAO44Fg3kChBMu2YL+GBU
vesvVM1ONRoD25vfRNy24BYRz1sMWz/zd/YPxHxM+of8ugvQZBEeUJebo85IMa2GBM9iW9nx8gvB
pD3CUL5Jx9HDKJwMaX2cowWRrU77GAbqJMnjLAb2VFvb3O1FUhIRVP5lSDfUizcX0RRWnVEBwT5g
GWcwfR/tyDA1OVMPdyg1l+xjECLAzJGNy8CyaCvvGPQV9KgrFmhnxDIGWIdF6uNiy8/xdpCal/tB
Z8FV6xtNJvlpnpN0N/FK/tYHEeddhA2Erso3LDKthUKyFuUbLsWwyVrr9I+3D7EnlyphvpBwEB6j
FvDhrlovnq0PkVo+RxW0/PBTaxLHjQigSRTJsr5BOToK7ROxtmvjgbAEBYenIsjyM4Ak8fByaZR4
JWB5tBuvTt/u3/AeN4Mj4jAypQqpIp1iF6jZ6AsmyicqCu3aZWgs5EqptLHrabg71MKkkYfwohHQ
JLMmBYgNipbpVjaJHrjcYub4R7yG8V4Qw8CirMOha9sooQaEfOvXcKaG8Q5trsCSBFHmueEnBgh1
15YasSFJ1QnqdYoP/UCqo8huou0lrZIPcZ8kxws66+KiIi8JlZjOSXYJ9iE1UjmltvNdkRtGtEqh
P5vcvyYssLY0KLG7GvNE2BxZ/vlz76oFccpkn9S6H9YvpHpWiGGB+JSlHymEb0OlyUreVWEnZDut
GWmGcvW+vhUDqKT1viPEY6EZ4rOK3Fpsg0onLbIPJhR+UtgmZJeyaSGPuApCtfoUtb9nuOexHtEy
A5MfCvE7YZcp/cJHLCpeDy1aqlhqvdEsycUvk+B+BBcoHPuyGjhn/XDsmU9BaQTcBciV8Qrk9BXZ
q0PRy3dyG1H7iFTNxoRhUm4t3bE2aLyPYkvbi9/8AM8Fnp9DScELjzEK+ixiZIGLuxFcsth+aLwN
dPACfYCLP5ecW4NidMjKBuyhyFqc9iUkFm20OWEh3LYyD+R7KKWDmnzxJB71D2X+yaeHqWdkUvRd
qSzNaxIgMOOjjC9C09k9rGlKLJcPIvXinjvvDb3HgyxsAFk21dg6yn0WfAwyhIJeXKU+gbSbBwqc
vQINjonX/vqSqB6NCrhccjNbn89HJR01Gcqd50EbqV3B+DzlTZtwj4HUifIxDBRHGCT7aDuMoRPV
pxAsE+YsPI8wRh/qbE5UmZSh3Hnhf+fwcaSbPgDo8CmAt3LjTT4WBzwalD9puuHb7xTuabvzY8A0
OU31TtZrZtKLtvTeeR4FlsG7SHcZY+jbAuHJwsthiqpHu/A87ZObfth/FcIEq7xFoXi8I1hfI0iM
RC1LAt919DvmakU4gNZbq7Tnk4dxA1O75OPpl62AeJ0XNM2936eSmj+dGvHJ5TUlCY7OF9nDObwA
8odfXstStHxqANhhmIbuVpXLQ8j18IBovn1KfTILFecOuE5OruhyVabezysZHJsmHjjXwbpVDzuL
9qHl/34hZDHhGs7aKbdK3UJmVMbREOvUvlyi+CiNVd4vufV93nXLQERQZOFURyUiYr/FA7OUHF2Z
yYioLOxiiLTnhO4cI+weO9GR27173AG7z1uUTx0Nw1kKuJixfuM0sZxHimpgNZ9LT6FO9hgLAjBM
Hv70W82inznqAkysBMGelg+gaEqwU1XSxEpCtbF/ngR9PIwX0G9ARjlUgJf6ZHPuluY0IJUsT6l7
B6i+PvzKoqSlWT75fB2ffDdrRpRmaO1PGq09q7bU4LdQiZtwQYXZeM5WGQGDfdbMkhSsKAjbGtNk
nKIUH0Lb7PoIig7oFpTFRIONuo0jbrRj6SHl74cbyGZe6sFz3wuxoZiBXIdbBoJZNYaej1cRS6a1
p4QrEQBQ8HLZtBS5dVGVcT8lCVFhWhbThPHiW69DPm6lzSXRBLzXvjDnj9Ilmv323Q2x6hXbQnuZ
zJT6Dj7sWl6DPdS3FQgt48KTzvWrvlXDmmx/hm8RRkJ/gJUzyegMP3GRfoJVEhUBrMqABzEROLBs
im9z/QD6NqoLHQPTGT3oUCLHbM0irwmVnPs8DzEyArTCjz1JSsT4bEhisNrCkXTgelQ4FO268l/f
MF3J/T/SBaowiXj8yHBCv9u830v1nsBD5Sp+qNy/lEqI9G5Dceq5363O9IAnEHtDd0rv6YPomvP0
UfJ65pjbyCMM/SgUxmlt3EcwW07WxgfSJBuIXqmuWUs+r4TdeDnXWxl38E57nh5QxWX7ejE68tdl
0GrnSYXnj2hKUnyerN1D09QFBSb7yQ6PcDtqbzcOhk2B5HvOlkmY9YssY8JdYyLjyzj4e/4Qqp28
kKcmiUSsOlEOI5Ygn7SfaLRVm27khoeWVIaOX3xAxYEGkYT4+eZ7mVqwqfcgsf4XBMLLQ8r/6jiM
i6azlJ6RnSU6rrQSy2Glq/MajJAZuUemFo8URujXg0VFTHu7ZyUP8x8cw94YO368RogkZw4EUkPJ
sG5Zd0Ze5k5S1c389SM9s3qgJklvP0pwVDemglHz0sRc4bIn/0UhB17+wlhnt9Se0yV1eAQTaLOP
p+z25GlvSF37nzIPkFxgnW4ryM+iIpXy5mMUP8POZgZy7461kjIXEh6pjVUebUnvJWZoQQSJvaHw
9YDJuQ5RW70Ij2nLWELvwUIfGLGNfmlhZvoTI4acHqiK//xW7A++XvnQJdBQNTGlpyxxyPIzG1at
sR8a+KYFlvsKIAuS+56FVaFaFn8CHiJ/qtN/oZJf5nPqJzsS1CW/MMK3ImSk7a3HYJOxH7yYUtul
rsFo6ULAJ4ZHV5vLe6WCr6YlIRjN+/R9CvCZkG9/nH4sgaYfjPI33v7CfhCUbzmoZuZQ99vZEb5t
933P4Te893dyPuhnJ8DFsi6RNid6yqWvSA74i3bPYHT0dhbSngsjE/m6A8FnPakOMRu89JKWwkUB
p/ZIEShIMs8tgr9ArMBb9pfLRPp3Cf5zcJMUm7YJBr29xaTBSEPClzkzhXJkTEhwfRkjEv0N3rZl
iIlin8NlVfKQ8TzkVf/KfT5W9GZlt5yfZapklCkubkNqGMMUX4xLes7vtzzvHvBBVgpLFEHMQ64b
UeQWftXzCTNlBeiu3JgRUEryRa5fcs33Tr8PNYaO1H3SXpTwDr2rXaTh2YtsG6r6CZVzWbOip6dN
ifAcQngjUcOSp5/osGi/hnIa6N0uQcU6qpj7iHdNRrY6ey6yX1WVFyYiI8wuJBIUfFt+T6hGBJp8
33YtaJ7i+O7C1NLpFXcg64R3dVjhplVCXgPpnJR2s4Cd66/dBpQz19bL2ncCNAemKs9661dqPI5H
fEARlaULznLLz79TSfWnxcd4kvXhyLeH7ArdQI48EV1tfF/4/lcyN6fIVyAzyVuRIFKCkDhGNY2V
+9jmjZ8FG/iFwOg/h6YaUm8VsqUIPu+gmznsnQM95LWdMcpI1EyijnV02d2zsekoeJEt3r4+fHNw
Orcq/GQqerplqbG+jOMwJ1lTwYeJ3zhUIkzrejD367MKn7s6jwMbE1+YNUElIDb2fBeOfiqxkWR8
IkyTXErysgz7aiK0zTQwIiZqUB38X9HOS8KvAUAumZybojSfNXLtkLraKFRApp6DhJPw08ygfmwo
Ngq6L+9YFO/2umLEAJNZCBUiPVRSF0agIn6yERLnaOfstIFWnBOv/zB8NoqjQitiCYRMUdOpyVGA
Ywft3sgm2L0cLTp1ioHqxA7UOmXS8nVl4lBsCSgNpB2jyZZarygG4lpI2AaegrQikGOgPJYZIkF8
l56JNAvQoph3a0x2hZa/uppW98trEwX5BY4k5BmXeQwGzmz7jUyM/K+U0A0VUr1dvA8KSzAPyi8K
OAVanWqKTAi653c4SCP5zXbaaMpxiZPSsmyUMAIT8soSV/Prqghk900M42Y23g+KhkRwPll9AXGC
F1MOujqPRAsDEYIkaXJPe+f5GNvPIBX3/TCyyqbtpZ8xeQDZlZf2j7qrMOJU3KJILXnFAjig1VE5
K56JxHCZbZUEva6nIahGddfT7iGydU6/TvRxfsGRvv/0lYuDNwMjtAoRDhe+4iEUBVAzwEd3sPkD
1hoUGqX+gAVlWDjgQrzqkdSOGVKCaLqk5ZPYsXq9pNHNAENayrMZRM5dbfW2Uw/7va1+QJnulp4a
7y1FTvm5y8yHqIeXCDAhm7I65STIRkRPoYa5GYYpz2lPJVuQ3m9fvWAk+AX9d2nU8A4fq6gl6Rvu
2cEcyhIlnoIdmEzqIOOl2YkqnMGSGhKakNjmPfS6AQcSCdqO0KeCNQQv0EqzSfmF2ak+8cxFtKKl
Zs5stNjV7cHmiMc66Ouc57KVVUEom/AU5AeDcHA7su0if14MzAUeA34Aef6mp+PhpqRxVXvakgbV
l1NlfpxUlUod29DmhL77j8qAbfdch1LtNGxmDB8xwmaYv4/iQ0Su5h6F+pI0yvbdcv9A4tWA/Ox2
+yLyDMoXKv9k3z99+S1TetGOpDGfMcD/YradHecCzZBV2sSYX3kl4YLLenm3iEvATRtBZwThsAS1
1bYgCghjFSbBqsXu8WpjORkB9ylnNJ8rRi6yhsSuVBItTLOwn7ttZa/WoRkwrNQpcbRJdZdT5Inj
SODxeT861SiDAAiEp2/hn604v6+vu6qQW9/WY1YuCKvQkC2JCqb9nf17OwW/1UM7dPvCKBsM3rxG
XyO3uXfLvPr9WLvvWDzp1vSzo13SwAGQzm/s0Frq2RDJJWN1TDNAr0er4unERy9h1mTqQTfKPni3
vLoV9Pdt2U+arbDj6yz13XlsXv0wqAPxX+N0DcWMTbVqvfRymMHsi78lW1SqQF59RQq+a8B777C5
nHYwyRZZt9Ht9fZjGZEcIPNR2HSmNkOrrN4SL9+nofx5jX6qBFN3fbYAPbC1BLck9iZQyR1VNiRW
1fOi3Eoh1nBVOUWqHjDX6n7cncdQyMemPnyrZy3pAYNo8R48npQAOhLxIMhRtA2hNZUek+3RczBp
mN5oCL+lor7qiP6OUlQ4KHmcCN9vmQj/xLmlY3c+CI+Mnl3lKbG8C2ftxwaGfFhL1X7pVckC/NCV
QwnC/b3XIu9AcFynDB4WhMv4rOqG8CFqa1AJVI0YA9RnmRTvaIkv/a7A/lJtzyeXlBVXGcZYiok6
uRxZCC7pXx8aVqi3SOwrt/d2mCGmFjgTzeQbj1JC+wL9aM6JlBeBuCng10nCvDOY2tOTq6IMYk4/
KkLFlb/kD+YF9858/n3b5HTwi528Bz98nW9PLcv+Ss/re+HZqmRD+0Y7mGC3ZTxLIWhW5TAhrRqL
MEGgmUwr4Q1wft2hhiyt3bOso8Pgo+zL+ZonLIXsQvoKucLxk15WOHSOKQbZ+Tr/OglrG2TTDm/Q
1K9mLtniHOHFUSTCQYa2v3IF43pUC8pKaiUUhUtdpkMZffHCWxhqaUOcF5hZ72/wX9f3LunuXxjO
o0L85RsLM3gnloeyfU40oG2MEP/Ec8Cv5sAFTrf6cFEORxArDuYal1dLxshAlAlvUBPcIGDYq3Nr
i+cOVkJLdiPKqwYVjsDKvlLgTlt1rn6Yrb1qh9QSUMP8JLsylI6B1Hg6weWQ28hNY4FqFogkBrZp
QJq9S0RORAOwighv4WWooxLARicj83/U7PsBhxOdXnSSl4p1zw9kEeRQcAe4zEAX46QZdhugg4w5
9B0cnkOosOLKmOh+1kAaDApU0f6xe9mKdaripu6YEG4iBdU9ErFtGYAgv7sqVrvRR2DqV3AFB7fL
vbBwLrzojQiSJ7dzHFqjhC07pqmzwOjCqf3VTsJLBTXaw3UpXZmfySCHkgiZesAzEp4LrRlESFQo
uNEVCFLGmpz9wv8ru/H5bKi0tOlyAPXDqA03HpzkjdVP1GTb26Wzl6QU3P8nEf4qOZYD0ozWaPFQ
TIO8bVn3lsktZZdfADBGfsFw/BQ1Q7afxOo4EXig74fxAJQXqsf71enywNUwlNknnQ+A3141ey5/
cOP7BK4J8UWWPYEvAa0m0Wz6mErYEulqYgkHZ1FwKCqa700OK0AL9ml5rQYnpkvNLOMNjvxb02i6
HT7PnJ750hYvwZAjAB0lkgfcYdTW1Oia6bC9s+jke3iLxMbOWEZVdjkY/8s+fgYS1iJ1Andw3Fqb
vHSXz8F6RV7pIs7cG8EGx6OQnNnss1X3PndeZ/b3FDgy9t3GjkwEcrmHVxqCxcn8rHlYdxDxi9Xf
gYf8DzZHEQ5JlePgmYxZrkxtCu7Snzc3+HsrdeoOm67vdijpmpY1QTSOeUucPMMU8BrEKx1TGyCm
4f8vPFgCyWL/KwNc6RmxGCnAED3QxngqmfVro3i5sj6KxYLcMijhMGvECZr5caQPrEHOLMCT85zO
WrxtpT4gSD5EMEFbY+PSsrzpryHnmv+GfsCXUmk4LsXh2KgoDYafDULtQIP0cn7ZZF8nrN695l1a
sFpGcdmcGW28x0sCR7bcfDBUC+CjZJyJmMuLXBBAsF+k6p55xP29YM3rM2ezlv8eOOO0yKMzu2JS
whI/3ELHb2VnMWNlKJIz/rC8WijvaytTZaLyiCVrZsFKSmBP0nJgkshOOxuDA1N+AORUprMT6pzr
6y2m8zxDOqT2IJ4qv2D4c//lMr+IXHZwijLmLt2bT0c24aq5O67rISqyW0iXt7/mn+eH2fqWLLqN
cSyyTD5oEaRYq7jmJUTKiieO71aoFeais3+l3BiHqekdrrL3CwWj1U1Zk1HmhFFZJ44sNp5kuymu
zolh82ryUUi32cub3cbpbg5yzE7xN0SmFbny20fKYoKlw6KUBJ7RLjxqVlvhUJexYlM+OC3g94ar
oTzJ5sHKV/2WJ75Wmq0Xydbbo8Yksfa1t/PCMm2Cvay4A2PhWnsn7zoIZuKl6/4rY5AsvSi5nTwP
F8/NozFfm8gDTIzzootAOKZJNHePUgv0vVQCD42xbIE2OWpokeGt9X2Laec8WcKZWVulRWiwxYpx
98681bFnrc8EjcxwphlLTnfo+UKW3A5dxiBCbs6rZqh+SSIaFUFVCdSZjkTw/88LRDyWe0Lekh4r
N84AR7FZ32AzsNYsvjIJxiApq/JIdzkHO9YIcB71hasMYG0j6BBnYO+x3pi8w3/fZXyTY2MMJo/L
ssxTb9RUBhvsFPTTMqJeTnI4yUxgKzLh95BJfNkjvm6zbH+jfvQT1o+ozoKfvTNWrv7s1N5pZUO6
4BbUFYCJ3LDiLdN8rvB6eGgJjQqpSvRln0UwHMp5tysHlUQYQ8+CjYVv2WnJMLML/bA/njFJ/jB7
l/vycPoFxi81zbeYsheiCGgiEyXEl2ImMt6flJL3xqGsbF7I7aUEnfomXdbGXdIaB2AAttFVED8F
73MPW/xzj5uCVos/tv1CEiQxD7uvTLpJfI7tXGLaCOGd+N8cINYVziCaNacURBpLXFELZ5j9aUbR
uXPrHj4fTLuBkhcERFQ7dCAVbRwX4ViYCcct5A3x41SI+pW7h8WyDlATM6qMph16ycQkNBRoxqk6
YGsEMHKu3ET5AnNhjPllRTehlQ9DFtlEkXIW8Nvj8B73K7VXJQuuoJd17Mazr3rGxUOw4vgd99JC
UH/qmnMAiciznPSyiKOyy3FHWaBqCmgwmqasXKWS6pnwLOeoj5MDpEjx5Ms4+UgYPbAfnxTfWGqM
CicSMcrqcPB5NekXO6hd4u54MY8B/nL2NXA9GOVHKG9CE2t6sSR4L+BHfIFWpn70HwZtNPVRQDhP
3iQqNGzCRP5rsHJ3xB8uE/fz1Kkk5tJdGQdGaBTaUp7W3EnFlC5lc17xrV9ywQ0/XI4L4nUM3r55
w8nR0BVxhRc78Rl+xAQU5h01chs4mTo9BlpuuCMM4OpNPd8LRHn90QaCEmjLjjJXEInpLgodBe9d
kWfk6wW5ak4Ju72d5lIDYfb46QMb39kDO7jlPUIoNc1CUH4na64JanKgqIMUY/WNpbzFovN293wp
RbhwORlBFR2pGpQ5079l2bvE5Q8mJ3483SSceUwfLQ33Xg/YzBuAUVuzNla/SO1WeqcIVUh5oVGx
oSP33QYmrTIB0r2eGmOfQgTNzu31VFN7txJZVx/oyLbwdDOeCTWLVFxM4pZ7eoCQiq6w+6kGgIWJ
pDO+16swld+flFCbLAvWCWj/p+PuY0YMQshISbGZXF3hWUWuEV6QRy4lT5xpbYa064+auQ3CqMKY
8u8yNSJCjGlXWrL+ynZPhvzF+r2yfr0QM84gnNuInWOITI6iH3uUi1fn5/R14ic5iHnVCbPu2xhM
KvxONYLju2zFRplHTXl6ZURSrkKdwWNidPnWqDK3gwnS/J0rbevCWRaOQZ5G47ozBTkcBPujBj+5
fGiG3bPS9F2gb3Ri1eQpa4cBtzIiqPbUplXj+yH6R7EiwE2ai57zc08mb7IThbbpHECCkiMAHyQq
KgagTFge4SXXsY1m0dDESxzNsDsclVHymRI7ZOSRpzmMgENz3vVQvt4W3pvGYPCbSnei6zqpa/7u
84CC/Z8rHEoQJm1xLO+lYqttXj1x/Dg8WZoJ+xkiM9bVo+N81BbXSasEqHtLSjvVtKyHDloJr6aO
fFtoen8FRyJw2/+B1UJlu39+t9fVq/siwtq0tx6Yjv+EAqVKQH9yL9MNPC79u+cCazgKYA1MF5j6
LyLeNeHurXfh+GJbY9JIu/9sK6zbpYmnBHRtVxqqs7z5RGPI7SLwrHPukSnz8OC4/MkArjCMRaaq
92jLxVHGwv5RnPUDquP53Bjh0orNptHeDT/6JV/hYrxNbXcL98OqKe206abul0Ye7UlOeHBV+hPm
P29zlePi6NLj7u6pSLOGOIBSNBPUmhEunRoNFxkmc+pjmzq+2cnyGToQyK6c1McLhLlt/nhAhlk/
F7/wP5ADnHOJ5kjd/QKI99pyV3CLnmNMttbWilUERshP+n7DQWvY7ns+n3Ih8ILi5KXFWkwuUBeE
eYH1oGuH/ZVaKKa4oklgPBvrBCMXlp9M91FCEUE6vV9MX+Fa9feK0Shlg2rcvPZAJlueESEF2wRS
waHSxV4vaihkbitLd7Beu1YCl1YToDuRyDdlimsczAVO6CGTCWLII4rItQjHaf8rgSjxlr1P3ysv
Ydzf1ZNWhO/dt9M9wHPHdLo07pw8ve+QMe2ptmvbFq8AkH4RsWvH7mcJRISQQA5oRrALTIrbpV9M
iawrLdDujHcmCq+4HG56BFufY44uQ4ybFILcK9P6pG0oWL+oX8SLANOTU54vKhEXHOx2mtSMtH6H
Y3jBkvotJhmg0SEG7UNQN4wfYAgsVYaIoJPHoglULW8xQ2+FKEQo83wNsmFjY2JttabV9ymA196r
ANfsHYYlFaxQfVuJwmmzzL91y5BJ3D0652i2KGlZ8I4YdT5ZhZTwQqWWIHn7mI3M+GVBs9dDWpnX
JR8EFeDbf9Iad7Je6h1pZzQidfOnAngUUUWCGPpDQ9WDnfUMOH0Oeyp7TQjibBsjZUUVN0b0t1Cc
3cCEBmlWgnOhFnREFTyoVC8FkFJU+BX/OJKPCYGZB4ViJr4DplnJXA071QXaQLEGzDvb9e4nNeId
d8GDOJCFyIE9wINpQludkuzgo5qDJ4DLnjYOqwJMvdpTBKsgDW86vWF5l6H9Q2nzCwTOSPB7K6R3
7XYqrI9C1XxxTTJpTsDkpXvyDAFDgA822WJdW0r9tSq8fSI0Zn/ieIJ0+TQTtilyGbKJ2+hZB8gd
7mLFzOYpyB4OXj2VdSZAaQQ1UrSinMphclRCqdbJ7MS5jATVmld2mHqpts26wHOxjQp26Qs8aCSB
w5g6yVA8n8nfAMoXhrw8EhRPFGSJmhSNFDVbWlDuwOnl8vtfVj1mmyQy+szimRW072ptD6FvyTJ+
toJ0l1RtbldLTMx9EH+stzq2/YqZxbjftu31WC/BYSBOJxtVe6xA3SeywEqExd7zndOH/CCcV0wa
7vZ/c/qXBDK26f6boTLIBMjo5fGX1sMSpBSt/u/1OsS9iY/AIXqmkbDCRyDaehAxbFznzRICv2Hb
9DA1TJrVSHj4uJ5MXD+Zb23ROc9yBoRuJkEvAMgALtLlxgXuAL6e3bXS20eeZm87iFO4NeHYygzG
K5kATKgiLekXrGCHTkdu233QD2S4PbsyCp7QJDea90WYGR/1jI6AnHbt4NJRGwn3aj910f+EkilO
tH5AoSnlj1aOapGJRr37nYzclrVK8BKIBufIg+HfIzuHe4dmOlG4fO0Mqz9e63eyClZdXnt9YSEe
b01wDizJCrXxyvcCb8Iorv//TgS1inYhxKLcyDxJQpqkR4p3jEuOGJS/1cZbKRN/zHfsDL3v6eyd
Msu+IJPck5xlWWqHPyVt0pTxPsJpYSIWUUzeEZnOJGmyT4bY5S5MKI0j/8QBkbNsIN6y2Za8jV8S
iMZfdf2P4qkNN7w1Tu6lSYwCxXdiJYRVf5C3moMAZT6llZz6GxqtUGmAtr6SyOCVDquPgDJDJnHH
xfyqAkANgmKxPaRn1qV3DH1j2EMsYrBnzzhwDPIBwduurQENCYHZHEefWwf9LT7cy5lAl9WhoGlE
u+CvZPNn3IaxeTepjb9TGSNQLFwXwUkC12uQ/x5j8B1+efJ+mAYtmHHNVV290eqWFzRNjEClLxcp
+yC01mExqYS8U2sl+HW+0cmKd1GVx31DabByzwZCQeBnQlDD6iliUb8hO6G6oDwY+S35AZ3G4VH/
ui2FAHMU7FQm9gS6I90k2h+KSMpZ3SxYfAvGemmNKHwTENOKB38KxVe7bcvYQMp5D14DPQQDt/Xk
g/1ysVBxP7h2lkBXpVdouEFTtatXq3YGULAl30m/RSlOo5M064bHy/I8RQknq+2noOhJitLG/gFX
inXP797WWiq0wJb5ZE64rQuPgXVFeJkx1I0A/BvrhAI2Zb5RRH5hDk7dqZe3AT3uVT6ZH2xwVolU
9nyegOszQqgTz9oJe07xWB+59cmK/uJ1x8b93pETSdHmPx5NDQJPWuTOAv6VeTQmd9w15SYmACyk
KrkV0/oivdDhYJde26ol+Yys3wQFrbMNuiyJ9RrhvpdFRC80Kkn110q2EwUaid6QJwQAXleelUOA
pwkgCY0rgpml+xPdcZShOuWioXnjs3kbPo9t4UeAmGJhOf3sHvpLLKdf0qWPARQ8pnWC07bkb/Px
uo8tbCVaHc5bPvcmZgw04ciu+/Vz5dQzv9HRrZZW3qJXlWqoZYVA56Ulx0EBiZBvY8esu40qNVWG
DP5e7uPode1bd5WxCdP95Cu/YrbpuY7swpmBcEAvJ6qQ37I12MCbSLyJrlUYBZwAETSIdEZAxdvm
tsrdCGkdTP+Z86qWqDvuXlJqCPjWdmrcz47Q/YfCtvVbGhsVxyxGeOOsfLnDcNT5DRLjRGzDrzGV
uqApJ4IGZlCK8/xtHeHk02/npW21poeveUcbl6EeY/g/cdU+A0cQ1UGwpEwssu6gS8ffTt1AW+Fl
aaFKizf+4m3xIjw61T9Zia4MYqc7o28jmcRJzZSTRIi2FX2wx9+luMB5/DgT1mgChoRJemMN/iQc
Qd77kzVyNnJGj1VmQJnzaZRsOgRJONf2VxhZg46apxm3K2flCEJAoIpfBsfSlk5qS8snYGihSR/M
r+2uAVKpVOui/4By37q5MXZ9Jzv91SyuvvZvmY1jL4TqOxYkLV1aUC9MUrjBDX7R3P2Qr1BMXc54
EfJfp4F1NrqsJWTUBueN1SAoPv9hea1Dj3SEG/+IIelCqWNyxMhim00uuC4pfmqcJ2ilbzFF925U
wXmvNqlVt32dCf8Gm7qHPcRdCG1BEyMjoxOeon4hwohrgGS8glEPW/+V6P9P1yzrVei02h4LpHba
70on3H+Nuku3yjigtQiND7ZxNYV9di5inS0UC75fzMnY+LAeESF3Zmxd/aX2gIpCUdr3D0D/ZmdF
wDrhA2NuKd2eN6R6DIkqfObTO5mvngC087NIDo6XnfCKCN/Dd1GsHVjsZ7TmPY28wq/Bvu1bInGj
AXFX4YZDA4um0t/F1/UsKwK3ZHeTYbNULcqBJcFeHNRJEAXvbnzmh0IsAAlyMKaB/6tsDQbe4v/q
pvTkns1V5m6vPiFj1oGUiMQV6hcM2zn4cyWG06yNJb7ejOfw10C7otcdnC0cpQDPL5g7syfM3bIF
KSYF2kmV7rlu3LFASno194xp1bG4lIJ4A2JQX8vvePJMl2gUTwtp6imOZHjTON2loI9kqhOGxVVg
3jtptqaz6v8VrQDH9xQDII33C7CKzeTCICnTbVFpb/OfpGM0I1mWD1WXpxYpuEcspdGvHtLKbgej
udmvBXO1Yf7B+S0M6VxurAbai0LW/Mr87fVwV/fBF/NY6pCgUU8rZnvhgruMv3UYM/T3B3SIBmdl
zHoK8wvNDq5jGqgyIY58ErLmqewsR0kDP9MPPcc9rzRVN9A+7COt7Uptf1qenuK4GlL4Gdgp2u8b
WaBervncOm0bFN3jDQC9X+zgIJkUrnyl9WFXdMY8rUTZn21vQABW3NpSEQuKOHcDPdb3T3TNI1BL
Mvk7V4oamUuk/aCn+c34zmQJdIv+Bkr+Ssm4wuA1UWfmyxXWJtUZUBMWRoCWPfq+OxyHN/N0R5Mq
jTtY2ah9mR1GNyw4qMe6bwofI+bgxrYZfp7QjkkCfWYzBS/pIkCXrX5xBXGIXd/5ylEGMsHOHLuZ
epovj/0DSD8RtNC6Rt7KApEkmhnNKSNFxEZq746ty1xhOeoVQictKSG1hy+3eyPdDD7apWlRpsqi
E6+gItH/xBTvZycNxP+3vnE4R81d4zwKEdQFMOTXbYZs5Eq9JfjL6HD5KZyDHIFhiUjDHuANGWEj
uNlHnlSkdXEr0SzYl/RlUCYoM/pcur39Rx0w3np7H4q5siN0dU0EYKSzpWxay+oIHgMLJU9uMrQ4
fNJnYXrVIta9BA0wcMw3R8V2kgdDQqZHy6vYU4wHJuGEi/XosKlHNw6C3f1ZeowN7bKJ+F64owNt
HqjxZjuDIgJZc2xsVIuXA+vH6l6q6XRd0B3mt/eO9VC5BteCHqMhyr1Qal2RcguZL/5RFLOHm0Mu
wUTQ99mbsHM4Of2SgdAoAfBznazs+ofWz2pdNtUCiyztlNX95Lf+ATCWsSsX9iZA/8ZOFID9a179
PlL7Jo70Pk09T2mptRdy+Wwf33zRRsk2HmM4EPhtGxg5D1pJkJjZnHK0k3NJcynhmiqzORLw/ynm
mN5Ma7t6KKvOXWAP2aXthoKhzvZ6CrR/Ok+IYoXGQA3e5+R+fu9TNhIeNyoOeHxfR1g11FpkXKyj
QJO+Yw1/c/x/TZcnGTsIrRnO9gpvTEW8lLV044Mu/DukGldkUSnUIYJddsSxgCPXF+btiHQv30yY
hSkSDBV3CRP4BK371RCjIviUGmOytxHg4uL3k9w/1RsTHe7MBAuWq3YITAbSFlLfAtfDPm3zD1Sc
BdiS/mFP67ZCxQb43T0TjbK60w45bgxJDVbpZjQIrWMYIG1pv/f7PSZDl7owp56TkdVcAmxHY2oI
Wn3jdVr2ssPsv/676mByejRpa8eqgiSWp6cd5h8EgeyT6pbtGLohRSA3dtTHsFWL0n6eNXWMY/h4
GglwXPDobeDBZ6aJofek6iaeG/tPt9EAY5QKybXq3aK+/lUyUq616fEz7gepQU8qnrnbbaPZcDX9
bw+xWXvnl/yd27poBYWplslt0vAR/TPoGK0r2ns7x4f6LZgil+mWmu7eEsMG6fOPTJpqv+H/hkTk
S6BWz9mp6l8SqpaU4oki2iYwruKxZWAcc4YalUwmaavny5m9LNkXoUx36QZaCIDYokLshJsykcmf
XPwTnBHHAcx5VXxCxneZQ73w1AULKji4uoMI4kABNUmxEXImzrGNCuvmpsrA+rWdpho+TrhaLAP7
lXZqiO3w5YY2b0CqCZxFEPCBgQ24jGAWgu4gexvR992mSlhymwAKiCUOAXtL/1Hc9FWG6hPF43sZ
MIKG+NPhFdFE/wnwXu2gJ4oWUJJzVWLKTkNMNEfQ0+j+Ns4KkaS+AnUzxHzvOOaZa+Bj8Sm85Yzz
oxL0BLLaXrt5EwEmDJyZpdzdr/uW4rfWqlaQRyEmzu8+IhyaXuCvcWsf0vHk8S58pFKIEf6Tt5fg
NNqDsEoUayUyQGtDcihJlNRPZdNG7CPNYFRLkuL6UbURM2UClCNFdwr7GIJiq4xi/5nogCt2oWk/
+HXP6N76AWAgNAvKxg13CydoctsFM3HTwzHn/T7byDelmjbN6SpeCDiPTaHvb9ekhnWIIpCh2EVF
tBvveYCgc8GCisI8orIE8jXHfq35ZX/nKqgW1WrznGKZEMwyeJL4eJ5dUNkCeSijgYiPiW/AmXL2
8DTDj7pAOhs2n9urUk1aqEg+0aDn8IEmtGMWdXy9hLcPAaEB8B1tWRjgzis5JTFIUrc5Fevh3m5g
+z+sfXLB3LnEsRealFiRpy4/01yXaz9izSdrsq+L0HPx0EriIXYBwVumcKxHTpfzKD/Ws/tsUW4g
gst6GccGWkXCR+3T3FPX7fmdiFGwiTmN+ZhEuDlcDf4LE7le0WozUgIaISnJYglnP6KLNwOVvtGL
vWBasWqsa/oljE42ialOrMwIsQAiyRRQS05DHS6U3tHpP1qr5WN/+VfApPnokQVTqmD+1dcfRmH8
SIWGZ7xgXDOYPTKhbsacS+Dl9aasBS7RIx8AkAHzPx/eC/A7iEEjQwDOrNkvfQzmNepkFKGxHYLR
tRxvJM61dL5ETGAAThTC6ISrKagHqVkpOjIwGatmFJJvTg4AOqPZyT0R+dLqGmzzvYtnyy+4Tt+j
BCYaGg0Ncie6ZobuhgTO1mpRl5aoBJOh6ELKZ+5z8g1H1m3a/Wbea+DBw35T5KInKfBF8IsEXr8k
Bu/HRGOr6TLoW8FdAdkHrXJt0wMO3XAK/64XvoQWPEQAIS/cgUZV/0MHs5NAWEjmjftyn0kPyn+l
kzNC6Qw7gf2T+G2FYPI/mrHq/5N/0tbk/Szj0NtbDk3GV+xPlr3z5HvsvDVamzKHQfbcL9PZdfvE
Wl65W6X+ga22CecORV1DOkM7KxFFQ7JxDHohLQApz3gsCyFDontOv0pfiZHe7VdBvfWvNfNaishD
CGrimxH/csIm2brEToc4Rs1WV/yVBZYp7nIjbwG/e8aRRquD+eGL209MOae8542gUuRRxv8cOwFd
ihtGdR2JSXUAWhtKxfiZqKg+3ATP7g0WwYpwgWUgAKzk4p1AKgESFDKylnIEv+MYrKAfhzVoy1fq
geFT0vWaYVbC1guaJY9G1Hpidaiad2uNAKcSiaeQtV29QLIrJa6xV16BS+ePoFFvXcqsynen8OsZ
+u2UcvnhiPIkusdxyZZNAX6c5XSpigFcxks0QXm7DHqoeJHQdtOorhGRNgkSjnM2IqT0nOu51lo5
DEADS/AXGpMNWKGEDGPWSl1uZSCNCncxkH+hmNiHX3aIwPMai6dxyX63nLg8cXmdw5c1pOiEr882
p+odZ0mEp7r9JcfFlj1k3IsnB5C0lBRXzwk5S9Ah3UFYAynpFdBioVIeU8C+GP9aTUwMdDqxTH+1
lOAWqpvGqaLuZducHzIue/MtzoW/KNgntVmNTKIBNmO8N2zrc6nD/ySYf74C1CtOAmpTF5Ir+6PT
B7HCrACWH/g2XxNFy21gebG2YxwKp8pwJPfzibOSV39TSRydBUwWwhCaoH/CNlFsCVvXbcp1vWPm
x0InWCSy/hfkoA/50AGndsFMYl6rK1ZntV0bJKWM9UL/QsLrIDv+ZGtdg/Qd9zbwPH0oTrWxQ5Oz
6dWRGSrdrZTxHZyVQKoz4kjE4BrWdKkLVByHg+5dnplBnLOXqzzddef5lPBsY3eu0iekqGjgUsUL
CG0MLi3pVyEwqlhmDDcQ3QnW9m3R4NqJdxq/Dzn9LFCOuFrROlaXRBgHzFTMT9kHWuNQG5NFYmed
mhR9f0F8FaS9KAjh3UI1XVVfGXVwl58+W9UJYtvwNjqKW7Yj9q+A1vXQ+5fx3W9cCUdTx+OJeF7h
iXQXLFk3XLtHR/jLz9fepwLGkM6JxWtD1o4ykpP2CHPqfId01O6OnXPoJ0z5pbsESk0827PgFh9A
tNHb/oAfn4cDEqgCsNFI0T4L7vIHtxxnl4Ap4gW07JGOhRZ5ppWlyNqX/FwPu2c+ObXymTKjFQ/q
hfsntFWY1hQ5FxVt1iPt4oj/0zz4JoRhU4yDkTDmCtudNrj1hBwSAu/13wjR2k/XBZ/bthrMYJai
Fd2EJxSQMNlTKO9gEdzoRf/WWjZ0bhcm172N+r/qows/Ad1xHYkqTUslUnLNiI5Y2gVUhzUo0C7C
hLi2lHU/YOipTZ55tCJuGtCONkuy1nl+4PBY+C6a5TmTj6BhNhrLA1BvKwhhH7seHdosOqVR5jR8
poR1xPPiRFAnThEbvICNOeW0zTPwMmaSkMzajNkXE47xOe+lBYO1McxQRAMtF+ntqQh/eyqjhco8
rpBfCcLBarzFOgE4q5Lo9JAcegnMen3cazSNWFJL1UxE+WkUboCQa0FvNylexYbZRSLJIg5/ZV3A
J7bKssbmtkaC0oES7DRrsvMYVLaHVzaXQ/+kYTlwv+OqIU+Tc4Ya0hpO3rSy3I6dsTerkAXDJ6h5
sz9o+udnCrv4ejsNMdIByE90Jis9NUxJzN6XyYJrXDOdX/evgWuGSCLBJe4DNYRp7qi2gweLLToO
GgMM/6TDdJ7VpvZZbj2BeeE/aXNpHRovsMorTKKCZxocpyooYraQ5WQcXixJnHYa5KIv3o5k+DkW
0FZ+o8iV2Q5yZfZMJdKNIpt/3YgtryDZF+vf49kb3UmFXLyoT2FbR/Hqklx91qSH1FzdeUu019T/
PCq8PxNK+3FP4ld88lvKLnq0NIVfDJy83lzgidI8ge9eA/tlN8GhxWGzKbgws8NJnfp1PcXYUZpf
Y+uIhthWca8PiR/N+bfhM2QeGwXq8r8qbSwVnJKmaRvkTl/m3LfPxl7LIkmN73KZVpBDnyONILKA
TXco9VLYeZrg7qZOeKEiecHGIr1l0KRAnxeokZEJ+8CFS1XVEr+Is/4+gPi8TkZzHkSfmfRjtVFs
/eLzPI3Exj2C6O5ekbi2vIoYogRmvKrIt2qfSQFAkBFZmpL0/2C63gLgvlHo0taV30X12sNx3mJn
I7bNfsjdIf/sTiLJ8eaWJZpZoZIOsA5zenvgulr9+77H/Zl8C/mJwD+seWqiN6hhUS1GUkq/pyHB
LsJOxsZOX2MEdQVtIg0+YhaTn4yTy9TMUAuLlRXg4ZMHCCUxc6mij4YACcoB9NvOReP73CM+lKsj
Z5U9JTH7RtmraJL/Q8jB0HDnTcGVF8s4Ig6xqnrsSSzeuKJVzoZML/ZS/uAw188YdKf9jg3Cu8sb
zBwjFRaSgETe+ZFEpri6LR2D8DfjtraiP/Rk2AhklxLLV3Tut/hKk7FFKwPldeEAzHeDElbZVh44
DhuebbteICpFSifdKgCIDLTtAX0Wqy4WfUr6JDLU5Ed4ST7qebXTLpEgNtS4vHoc6uQSg3ZN3W9V
ZbJ2hTxl097As4XJ/CQYNoyA5LxIFKpVVhrtHNSLlKwdn1waPupU4Pf9w1nCMC8d4wLliwydgqP2
Imc/K0OVd99ChdhLCfj1Fu5gOac36uj3APQPIiLeqFH8JdNkBhralTVj2jPnNB66O+eA73TFxcZ8
Mq+c/7KVohAM54BG/kycK6m7j8RyMDCcZoBAq/tpCxR9a6X8UVRosvY7JttfNJb1xoKTIZ0fhnz7
rI9mI5mib809RqwRq7O5ZxbfZPo+kow+kS4LJbDkmdohwx0jkYdPcVZ2K42n01E6CveFGI5mmqTo
bkxu+MCRxojtrrsc7bG/WDxs8mXbLqfzT6xG3w4jHhJ1VMy9SZkYo3xIwXnIVN5L0mxU97tVmYSJ
Ofp2kkdYZ+aDtU/JZfuAw4JAsw9v/JShb0J86eWn8A+TI9qOeu0atOYqoHe2SzLGbSVAue3kZwpV
f5lDzmLUpuWgtF5T9rLmx2Fggs/AcSHOpJSSDXE968mCtnKgHidf9M+ZhkeGc6vFvUHxMggvhi73
vGDdwTblnRI10G7A4JYSYXxT9JCKaVWEsY5x6KneiR93PxOz5qDkoF+KZywb/aXTgrvjWzVVrH2I
e2xO74Q4a/AQQDqOZeB6/wcJ8l8Ng2ASkai+dEZqD2l+WODD5ZDL4w/DiTQxulgpYJbMSjKGlUaP
+ECEq7jmU0Qi+E47wU32g4W1MXbBOV/qlNGqFcXA58UEtyjgq0dgLiCMatualvh96kNsSMFC7zcQ
+AJdMtXQ01lq4lBJC9S/a0mcmcws7OB8KwDdQPRNxtLvH2fpYVmGrbHI+Cw4zZIsd5qAFtIxhFFN
Q1OL6Ugwock4EB7D/Jsy1dDOj3A9jP1DbS97nKqQ1ATdmRs88Pogwvq1HLW0KJnCsLqmngWdejih
ewhN6dLt5KkqdEBmnzFaVmEqkEfj/VygztVsUrqma36hnMzwXY5kXpXNOzL+6n0n2/EE8Koy24E2
JMdBvzvgnKKdiVr6xzaDCVecMb82oXr0ah+3AnPfOsy3IpF4A2HId32jiZ/w+UQYnr4c0qaKuqT6
qnYikEc6jjMhA1ZbDz/wjX9zoARaW8W8WU7PaGWCXHQpbmsmpJXyKuj1H1S6zPoZWvDB39dk9IMR
r7mYDQmTmApBaKmWCPBNw+YQB6bqO15k+3EKAzcwcWPYiwS3kse3igZVhGdvs1VP6ipm0+kLQD+y
vSC3B1Ch7fCSRRY3bW8nfTiAHnR9+LMIgMlumtPvylsViaSK0+96sCNP9bvXQRpfkryOHQM8U/cA
dMDQpEpl22Zung8QAyhPvySftztb0gCtGrdfI4/lDjwc5WWt1iCculpuMnyXG7YnGGwSI1ty4ZAs
m/1OvbFlvk+O2VYq8yO6ZzLAajkwvrWVYroWSmLXvBkQrLT5kV9ctDTDqBANo2TmbvZ2LLH50Hvp
0UHXAh8ok+v6cmGHfRk2q8qSPMfSeW3SI+2t5q+AveAwzjGTKcSsWNNlWVnsKFrR7vApwRLBmcu1
ZbH85hAF540FbtZx9DR8YG6p3l6rEI8yuTXz1fh6jgAbWneemNLpEpd37NB5WTRiRLjxjIWtyZK1
/Zk4gaAec/UrDrghxzZ9obbdfyqdx+rv40Z4+ckcIgPRsI6bEBQhy1QjkRpJXwxTYSa8y5gE9C5a
ncNatgRLqstjdGH96a6sIoGwMIidffBfeKp7EOT7+7z2VjdmBmRAee+LIe1SuhX69+V+VlyUMpF6
q+kxAwkLMWasoZ87iNwm3+OvPhXwu2ufYQOz7bHRpyz+n+tyF1+OgquQTHHmt1gXcMFCOXF19Kpt
8i7MNtViT/YewoBnTQEmb/UGKiDwCbyIqJwZkLY7bZ9eIy/uYxr8/E+LXCPpH8ErP1e3e/mlETPp
V9KyP39Yozh9HTMiI4ErO54VqU7PTxU0RZsNdFC6x6bDbIbJFnruj1OhEq7LoXTQC4T7CPjVefdK
qkO7wjnLys9Z1+a6X2e2GSrCBexZqJ2VPycZQ1gxcTyIv9Q+9BapNn0aqyf1qHUwNi0xGk2OmBNr
s8m0q/0/hFIh9sFjbHUHccO2lDfJzpXOST3b9buC9om+M4zNq+lcHTAxgsTM/tcXTkQGedx423cV
2/0AqRrhm3fIir0Q8p9KsGf0nr7XHSpXYQghL2Z+JY42GExUZt1lVyhshGh/HL98mXiWNiBOMZPp
npOVIdHXfGp1AVPN6aKcVqF0Rkat8APXwXx/SPi8+OTxu2eqj/rSzc8u1n5aXxP44fT8/DuzUJcm
Uxab8Fie81f7NGzm2ne9nVy4e9z0ci0yW1I2IrvYYbugYBTOqaGYh9dcUGWWM4x7/MYTZYkbxOrp
ofcl3m9Pz/RZq+7ZSWhYv0ed1qGiR3OMGzO/xVok2LTi9cM+omN67+GBqIDKCqmVFX7NTR2ZR12+
kr863AQKF7AxqEXvCPMcQm40tKhY+18URUfhnJs6mvcd3qFMhWwjLldau2vhRPJzwxrVY8BLua/E
CD5U1EsIg76hu+pTxk6jJMfex37SPwwaWLa7974bjzzF5+ozwawzJ7EnauthylJ7NDmZtBw7Mhr4
e3DEL/+mnCrodqI0mDFAgHb430rsPBew1lTw6e4XY0BEXaPWDNWwtimOZkGOQV7dbLpuD2FLo7jn
OwWjv2IFYae4wgz3+xoIgWT1lK3eT+X/yBvC78LsYaPaCISYSimjYa6n/3wgDbk1BZPCn27o/XiM
g5jiy3nD/IIx55SqukDu/T1E3SQ6FgTyoJmcVznahJhv/D3XNqzIL8al675wfBavxvMxcoycso9y
tB9BR4LLGRoH3bunhfoEQRzmfmbkuuKm8OZ3IlawqBs89t3MHJi3wAy7P02pqNiEwvH8whVScuq3
jLqhP9YwN3Rp3XkzP3kijyzRAThjgg6CJl2gLGJxC0cFm1ee5pF9gdiGK34h60jKV4MFfQa0ZfwB
EqrM5bsylBvvuEcHrbW9+owe2G6FCPz1AnKq+KqbTngpxLdjmFPPmJ6YIvQAyBVkkSRFFl+BoFAH
QQg45gNUtiK8EqtpxThqCUfV4slKDcjwDOjGxcdXdukDu6ZYeYUDq4WnLN5XV+gDq8aGrMj+XJv3
ND+rhU3W10qPTgtUqAXAgzvVh4S/UFD9UYidc/XJPd/5xXjE+vfYmUmmCgFimrokRMM6mdPfou+X
gNytwSBP4nRtBwwR1uYzJ0tBRjse33npKwSoXcp91aNJQDc+bPcXHY0d8h0orcAR8rGwU2bdsBsu
Fu3/hr+Jw7CXSXbL/tVq0kv7wN7FE3+w08KPqqoECE1eOklwMo2Rt2BkDxdT6uFqKRf/SM19ygOE
eTPG/rDCtb8bAoGrPm8DcVdO1fZEyPPJjrGtP0/JSlvA41Y0usUqkD51Y0vQJX9kEftAZYxCzml9
qqPRfNcz4GYpgPciZiBz3Vl+avIqHpGlhKfRPOrfGT6w8Pzbzmo5vYFtQgFBo4cMyTh2N4b5m0Hc
v4jge+Yvy06A+q+EExKrIv4zkpxQLeWT9eIFVQSLvUpHGxxtOQht8fP9xnc6PkZDhogrM/rFgR2q
LmJDAegywVcxIe+njf47GaHCOSvInxKsiZzjtaIKX1N9P1uNSpEZgpiBKXCkFB9wp3gQTSB5g5Sh
IqWirpAWTKMDsbJO+nycVMgPQPVOyFlqOsNHbO5R9+/lSWlecSVu8FPU13ApfsEgqvBMjO6kTlUe
rAbaWOU9r/LTtw0M11/+6avK44lLY4WX/3iTG2MxqzAMWHKKJCFzdLL+IzQ5/FBg9uB5x/qMC5BE
lc85En4vgWbA6lKJSs37NPNVOfiwhKY8XzkYTEB+3xRYKQrGlpU2yisz6v6KAp9f9Q39RaduYHTz
hV/lwiCIWt1YLA99mWV0exNPN+w/nQMSLyqNCDUw3gs7+Euk8uwEMKhwYJwl5Odh1yAG2XDNZDtS
pKvoixcfP2B26PTp9wY9m8o/XRe+MclvMtKu92DRzBs8g/ys8aQtbmmWcu35hzPp/b88Qy7j4Shg
s6VhxaKvuP6NiaI6rZKejhavU3tRbOaaWFEvgzPGdLiNSKsukOslify52I0vze6Oko8SVSXkXqex
s4DbvG4iuqb6Tbr5xXBlWj4Po9PdsjIrvgyor1yhh0IMkp38GXV8cYkq23kE4tC7OqEwbTwmXeoO
H2KKIrbKNxTRqV8oR/wRmeUlCD27SSmmOBpQ0dFtZjQBmVsnl3dMzQaCqp/6v1N5MfLkr1MRYpcs
OBoNOriPjyZ1XMYqC+Kvgl06tPXJVEtzK76zMD3IvFG4Ztr/ATw63sN0y0Ticun7ywn3uzdN6DzA
0pQiKzXlUcLMO7369Czm5oR+tVCR97U/aiteqDpdmNihw60G/JCkhZYGRQWTE0+JrY9Q/JBWq/A4
YGN+GMCfJZzsIa98O5Wman/LqHMiWXkfG+lbUBw/vtNGnIiL5DB5l9NHMxtvkTFTeyXUnJJULOJy
arWA5T0JLoo1qO0cnNHRQCVTQlwNTPpVe57XLbYx/ImKcgK58SSIJAPfhJ+Dxml/sM7OhfmuzWCL
bJKLER2H6o/sYynkVjmynwIaTXhxxYXeAuzwZq2ZD6qJtSncX6tt5it/GTBgXRWrA1nT2c+J9tMP
usQ8w8g0CBYIUO/kd+gBAiASZU5R5pzUvMzTLsA7v/CR8TnnM9un6HVQ2swB1gnPEEt4b3MoK7sl
FOoWtk+cVcUnQpu0cwY2ZNBHLl2LyDV5cOToXl/ENnEOJtTHTIbpgk1RIklu82tmH/F3YR63j8Ne
9EViFkhx5dWrFgNcreZIhvZX/mK5IgIlQ37Tw/GlsVlsab7JKlZIAx+Bd0uHk8CSI+2PeYGjQm0p
xZ0SD1idQtI1tXlvXffNTTuK3tHG+aZYx0eLsOl6vClorhmYF4K67be6KOY365v7uHm84v7HcxoW
q0a0i7M3QLDq9iBjHaw6NDKU3uPs8SiQT97kOINWDLwslrc6zFjF53c4B9MNJJGrkqiPapP8661J
ncWLjGxKcsDsxOItgLwnH5j+TACYLyplJihO+75qQcK0mlaaXIoF1apWH6VenLYWJd5WBTdou25Z
WvRSeIelq+kI7VAFyCJFqBiDMhmOeKw4H7ewWPC4iq5nmaDZhki4KhF4yKNwA9qYhQhEbV6VdPBo
JymemVr3iBd2cwFR17yIX6ILQhhrSHQg/k2BsQBMse7e8S5HOW6ue6yk2iog2nBBavKj0V9WnJTe
hdv7kbltvSauHSADq1ziRDtckDMmyqcUL0IQ5EQS8Gqw1vGsz/J4JXsZPDbzhE0aU4Er6vuI3g0J
uH5ruNqRo98gs5QM1XBd8b/vQ3SCtvbIWgRJSlGQngAT6JDuOaOQQgg6J9NWXo026okwjeHgSd5g
NuDK0IL18Sl45lIiwz8IDo28Ly8s5bWk256GOVJ1p80aat6DhRVT1wKppJq9rYO42GI8MnN7Ip9r
WqZKQUWOxmD/7vZouYRhhZQIuQDI3tuEau/wZgvfVKj0GWKec1JQ1tKwNOMSus/OGOYAQIsk3+Bs
FG7YzmkVheenXFINgtoTWDnzUTes04HJzMDKKMgRshI/l792RhpvRozDAdeAPsQLEDoMh4FlMU9b
mOaCafVHc3Nuve1x9Um+PZTWnz5NOOxhqaFrakppbUPm8X3+Ps7gtHxlVDP46ICH1wtQN3IE5tVy
2Gy03Cro1AWJ18Nllpa240/S3rq58QZ341Ih9GIVAVYsjtCtolQv1fB1Qt9gwz2fb0CZH9Hrgpyp
tRgpxotMoAjpJxblr5HQk7+zuX4F9NCvpBT9CNkUejidZH7N6heUfKXCF7ydVz4A+3CNmrt+TEf/
YfyTOqNKdMa0CP9vgT4PB6twhMw/ONZcAyb213fySuGBEQLC+cnCrnkBVmDF2KlFYbxnY4xOLbzQ
QL55uErMQP0Mlf3DBrohIWC2RZwXsif8Mmk7WmbWPjCH2Udb1gtbM9xJ+P319S0xwnBzdsyqGSlr
W+bsIQ3Re2NsxihWt1FiIBD3TT6BqaptQB4=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20080)
`pragma protect data_block
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
2wUfHyKWPQzUXWMHf1Nsqw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
