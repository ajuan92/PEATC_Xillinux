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

reg rClk, rReset ,wiStartReadFifo,rWrTx_en;
reg [15:0] r16TestData;

wire woReadTigger, wEmty_flag;
wire [15:0] wi16FifoData, wo16ReadData;
wire [7:0] wi8Addr;
wire wiRead_en;
wire wFifoTxWriteEna;
wire [15:0]w16FifoTxWriteData;
wire wEnaTestFifo;
wire [31:0]w32FifoRxData;
wire wEmtyTx_flag;

integer i;

initial
begin
    wiStartReadFifo = 1'b0;
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
    wiStartReadFifo = 1'b1;
    r16TestData = 16'd5;
    #2
    r16TestData =  16'h5fff;    
    #2
    r16TestData =  16'hafff;    
    #2
    r16TestData =  16'h14ff;    
    #2
    r16TestData =  16'h1eff;    
    #2
    r16TestData =  16'h28ff;    
    #2 
    
    wiStartReadFifo = 1'b0;
    #26
    rWrTx_en = 1'b1;
    #64
    $finish;
end

wire [7:0] wi8FifoDataCount;

fifo_RN_Host_FPGA dut_fifo_RN_RX(
  .clk(rClk),
  .srst(rReset),
  .din(r16TestData),
  .wr_en(wiStartReadFifo),
  .rd_en(!wiStartReadFifo),
  .dout(wi16FifoData),
  .empty(wEmty_flag),
  .data_count(wi8FifoDataCount)
);


Rn_StateMachin dut_RN_StateMachin(
    .iClk(rClk),
    .iReset(rReset),
    .i16FifoData(wi16FifoData),
    .iStartReadFifo(!wiStartReadFifo),
    .oReadTigger(woReadTigger),
    .iRead_en(wiRead_en),
    .i8Addr(wi8Addr),
    .o16ReadData(wo16ReadData),
    .i8FifoDataCount(wi8FifoDataCount)
    );



RN_SimResult dut_RN_SimResult(
    .iClk(rClk),
    .iReset(rReset),
    .i16RamData(wo16ReadData),
    .o8RamAddr(wi8Addr),
    .oReadEnaRam(wiRead_en),
    .oReadTigger(woReadTigger),
    .oWriteEnaFifo(wFifoTxWriteEna),
    .o16ReadData(w16FifoTxWriteData),
    .oWriteEnaTestFifo(wEnaTestFifo)
    );


fifo_RN_FPGA_Host dut_fifo_RN_TX(
  .clk(rClk),
  .srst(rReset),
  .din({16'd0,w16FifoTxWriteData}),
  .wr_en(wFifoTxWriteEna),
  .rd_en(rWrTx_en),
  .dout(w32FifoRxData),
  .empty(wEmtyTx_flag)
);

wire [15:0] w16TestFifoRxData;
wire wEmtyTest_flag;
wire [7:0] w8TestFifoDataCount;

fifo_RN_Host_FPGA dut_fifo_RN_TEST(
  .clk(rClk),
  .srst(rReset),
  .din(w16FifoTxWriteData),
  .wr_en(wEnaTestFifo),
  .rd_en(!wEnaTestFifo),
  .dout(w16TestFifoRxData),
  .empty(wEmtyTest_flag),
  .data_count(w8TestFifoDataCount)
);

endmodule
