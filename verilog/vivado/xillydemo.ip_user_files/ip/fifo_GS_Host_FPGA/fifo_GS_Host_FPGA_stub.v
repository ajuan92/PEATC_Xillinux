// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 17 18:45:57 2021
// Host        : DESKTOP-L44A16B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_GS_Host_FPGA/fifo_GS_Host_FPGA_stub.v
// Design      : fifo_GS_Host_FPGA
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.1" *)
module fifo_GS_Host_FPGA(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[31:0],wr_en,rd_en,dout[31:0],full,empty" */;
  input clk;
  input srst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [31:0]dout;
  output full;
  output empty;
endmodule
