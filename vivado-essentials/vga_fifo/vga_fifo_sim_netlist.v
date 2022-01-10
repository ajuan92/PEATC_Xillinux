// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec 30 13:44:15 2021
// Host        : DESKTOP-EJ28NGN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vga_fifo/vga_fifo_sim_netlist.v
// Design      : vga_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vga_fifo,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module vga_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [35:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [35:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [35:0]din;
  wire [35:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
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
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [0:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "1" *) 
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
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "36" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "36" *) 
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
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
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
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "368" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "367" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  vga_fifo_fifo_generator_v13_2_6 U0
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
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
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
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
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
        .s_axis_tdata(1'b0),
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
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module vga_fifo_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module vga_fifo_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module vga_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module vga_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module vga_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module vga_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 99984)
`pragma protect data_block
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
+eLKAN5b
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20560)
`pragma protect data_block
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
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
