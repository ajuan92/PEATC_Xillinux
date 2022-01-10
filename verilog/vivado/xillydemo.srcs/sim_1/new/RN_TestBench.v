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

reg rClk, rReset ,rWr_en;
reg [15:0] r16TestData;

wire wRd_en, wEmty_flag;
wire [15:0] w16Data;

integer i;

initial
begin
    rReset = 1'b1;
    #8
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
    
    
    $finish;
end


fifo_RN_Host_FPGA dut_fifo_RN_RX(
  .clk(rClk),
  .srst(rReset),
  .din(r16TestData),
  .wr_en(rWr_en),
  .rd_en(wRd_en),
  .dout(w16Data),
  .empty(wEmty_flag)
);

Rn_StateMachin dut_RN_StateMachin(
    .iClk(rClk),
    .iReset(rReset),
    .i16FifoData(r16TestData),
    .iFifoEmpty(wEmty_flag)
    );

endmodule
