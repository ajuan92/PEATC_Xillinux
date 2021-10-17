-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Sep 25 19:46:59 2021
-- Host        : DESKTOP-L44A16B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/xillinux-PEATC/verilog/vivado/xillydemo.srcs/sources_1/ip/fifo_GS_Host_FPGA/fifo_GS_Host_FPGA_stub.vhdl
-- Design      : fifo_GS_Host_FPGA
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_GS_Host_FPGA is
  Port ( 
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end fifo_GS_Host_FPGA;

architecture stub of fifo_GS_Host_FPGA is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,srst,din[31:0],wr_en,rd_en,dout[31:0],full,empty,data_count[5:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_5,Vivado 2020.1";
begin
end;
