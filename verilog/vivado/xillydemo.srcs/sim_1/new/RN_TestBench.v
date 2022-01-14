`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2022 16:33:35
// Design Name: 
// Module Name: RN_TestBench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RN_TestBench;

localparam CLOCK_CYCLE = 1;

reg rClk, rReset ,rWr_en,rWrTx_en;
reg [15:0] r16TestData;

wire wRd_en, wEmty_flag;
wire [15:0] w16DataFifo, wDataRam;

integer i;

initial
begin
    rWr_en = 1'b0;
    rWrTx_en = 1'b0;
    rReset = 1'b1;
    #2
    rReset = 1'b0;
end

always
begin
    rClk = 1'b1; 
    #CLOCK_CYCLE; 

    rClk = 1'b0;
    #CLOCK_CYCLE;
end

always @(posedge rClk)
begin

    #4
    rWr_en = 1'b1;
    r16TestData = 16'd5;
    #2
    r16TestData =  16'd10;    
    #2
    r16TestData =  16'd20;    
    #2
    r16TestData =  16'd30;    
    #2
    r16TestData =  16'd40;    
    #2
    r16TestData =  16'd50;    
    #2 
    
    rWr_en = 1'b0;
    #26
    rWrTx_en = 1'b1;
    #16
    $finish;
end


fifo_RN_Host_FPGA dut_fifo_RN_RX(
  .clk(rClk),
  .srst(rReset),
  .din(r16TestData),
  .wr_en(rWr_en),
  .rd_en(!rWr_en),
  .dout(w16DataFifo),
  .empty(wEmty_flag)
);

wire [7:0] w8RamAddr;
wire wRamRead;

wire wFifoTxWriteEna;
wire [15:0]w16FifoTxWriteData;

Rn_StateMachin dut_RN_StateMachin(
    .iClk(rClk),
    .iReset(rReset),
    .i16FifoData(w16DataFifo),
    .iEmptyFifo(wEmty_flag),
    .oReadFifo(wRd_en),
    .iRead_en(wRamRead),
    .i8Addr(w8RamAddr),
    .o16ReadData(wDataRam)
    );

wire wEnaTestFifo;

RN_SimResult dut_RN_SimResult(
    .iClk(rClk),
    .iReset(rReset),
    .i16RamData(wDataRam),
    .o8RamAddr(w8RamAddr),
    .oReadEnaRam(wRamRead),
    .iReadTigger(wRd_en),
    .oWriteEnaFifo(wFifoTxWriteEna),
    .o16ReadData(w16FifoTxWriteData),
    .oWriteEnaTestFifo(wEnaTestFifo)
    );

wire [31:0]w16FifoRxData;
wire wEmtyTx_flag;

fifo_RN_FPGA_Host dut_fifo_RN_TX(
  .clk(rClk),
  .srst(rReset),
  .din({16'd0,w16FifoTxWriteData}),
  .wr_en(wFifoTxWriteEna),
  .rd_en(rWrTx_en),
  .dout(w16FifoRxData),
  .empty(wEmtyTx_flag)
);

endmodule
