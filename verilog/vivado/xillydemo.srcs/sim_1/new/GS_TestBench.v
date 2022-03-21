`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2020 18:18:56
// Design Name: 
// Module Name: GS_TestBench
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


module GS_TestBench;

localparam CLOCK_CYCLE = 1;

reg rClk, rReset, wiStartReadFifo;
reg [31:0] r32Cmd_Data;


wire wiNwCmd, woFifoReadEn;
wire [31:0] wi32NewCmdData;
wire woWriteRawSignal;
wire woRegAcCmd;
wire [31:0]wo32Cmd;

wire [15:0] wi16Reg;

wire [7:0] wo8Addr;
wire [7:0] w8Addr_New;

wire wiRawDataReady;

wire woSignSelec;

wire [15:0] wo16RawSignal;
wire [15:0] w16FIFORawSignal;

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
    wiStartReadFifo = 1'b1;
    #2
    r32Cmd_Data = 32'h1EFFFFFF;
    #8
    wiStartReadFifo = 1'b0;
    
    r32Cmd_Data = 32'h28FFFFFF;
    #300
    wiStartReadFifo = 1'b1;
    #8
    wiStartReadFifo = 1'b0;
    
    r32Cmd_Data = 32'h32FFFFFF;
    #300
    wiStartReadFifo = 1'b1;
    #8
    wiStartReadFifo = 1'b0;
    #300  
    $finish;
end

fifo_GS_Host_FPGAn dut_fifo_GS_RX(
  .clk(rClk),
  .srst(rReset|woWriteRawSignal),
  .din(r32Cmd_Data),
  .wr_en(wiStartReadFifo),
  .rd_en(woFifoReadEn),
  .dout(wi32NewCmdData),
  .empty(wiNwCmd)
);

fifo_GS_FPGA_Host dut_fifo_GS_TX(
  .clk(rClk),
  .srst(rReset),
  .din(wo16RawSignal),
  .wr_en(woWriteRawSignal),
  .rd_en(~woWriteRawSignal),
  .dout(w16FIFORawSignal),
  .empty()
);

Gs_StateMachin dut_StateMachin(
    .iClk (rClk),
    .iReset (rReset),
    .iGS_32NewCmdData (wi32NewCmdData),  // Comando
    .iGS_NwCmd (wiNwCmd),  //Señal que indica que hay cmd disponible
    .oGS_FifoReadEn (woFifoReadEn), //Señal para indicar que se leera la fifo
    .oGS_32Cmd (wo32Cmd),
    .oGS_RegAcCmd (woRegAcCmd),
    .iGS_RawDataReady (wiRawDataReady),
    
    // Conexión lectura de señales crudas
    .iGS_16Reg (wi16Reg),
    .oGS_8Addr (wo8Addr),
    .oGS_SignSelec (woSignSelec),
    // Salida datos crudos obtenidos
    .oGS_WriteRawSignal (woWriteRawSignal),
    .oGS_16RawSignal (wo16RawSignal)
    );

GS_SimSignal dut_SimSignal(
    .iClk(rClk),
    .iReset(rReset | woFifoReadEn),
    .iGS_32Cmd(wo32Cmd),
    
    .oGS_8Addr(w8Addr_New),
    .i8Addr(wo8Addr),
    
    .oGS_RawDataReady(wiRawDataReady)
    );

  
GS_RawSignal dut_RawSignal(
    .iClk (rClk),
    .o16Reg (wi16Reg),
    .i8Addr (w8Addr_New),
    .iSignSelec (woSignSelec)
    );

endmodule
