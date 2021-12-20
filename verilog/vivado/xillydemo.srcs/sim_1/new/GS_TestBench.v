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

reg rClk, rReset, rWr_en;
reg [31:0] r32Cmd_Data;


wire wNwCmd_ab, wNwCmd_Accept;
wire [31:0] w32Cmd_Data;
wire woActiv;
wire woReqCheck;
wire [31:0]w32CmdForRaw;

wire [15:0] w16Reg;

wire [7:0] w8Addr_GS;
wire [7:0] w8Addr_New;

wire wRawDataReady;

wire wSignSelec;

wire [15:0] w16RawSignal;
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
    rWr_en = 1'b1;
    #2
    r32Cmd_Data = 32'h1EFFFFFF;
    #8
    rWr_en = 1'b0;
    
    r32Cmd_Data = 32'h28FFFFFF;
    #300
    rWr_en = 1'b1;
    #8
    rWr_en = 1'b0;
    
    r32Cmd_Data = 32'h32FFFFFF;
    #300
    rWr_en = 1'b1;
    #8
    rWr_en = 1'b0;
    #300  
    $finish;
end

fifo_GS_Host_FPGA dut_fifo_GS_RX(
  .clk(rClk),
  .srst(rReset|woActiv),
  .din(r32Cmd_Data),
  .wr_en(rWr_en),
  .rd_en(wNwCmd_Accept),
  .dout(w32Cmd_Data),
  .empty(wNwCmd_ab)
);

fifo_GS_FPGA_Host dut_fifo_GS_TX(
  .clk(rClk),
  .srst(rReset),
  .din(w16RawSignal),
  .wr_en(woActiv),
  .rd_en(~woActiv),
  .dout(w16FIFORawSignal),
  .empty()
);

Gs_StateMachin dut_StateMachin(
    .iClk (rClk),
    .iReset (rReset),
    .iGS_wdata (w32Cmd_Data),  // Comando
    .iGS_wren (wNwCmd_ab),  //Señal que indica que hay cmd disponible
    .oGS_wfull (wNwCmd_Accept), //Señal para indicar que se leera la fifo
    .oGS_32Cmd (w32CmdForRaw),
    .oGS_RegAcCmd (woReqCheck),
    .iGS_RawDataReady (wRawDataReady),
    
    // Conexión lectura de señales crudas
    .i16Reg (w16Reg),
    .o8Addr (w8Addr_GS),
    .oSignSelec (wSignSelec),
    // Salida datos crudos obtenidos
    .oWriteRawSignal (woActiv),
    .o16RawSignal (w16RawSignal)
    );

GS_SimSignal dut_SimSignal(
    .iClk(rClk),
    .iReset(rReset | wNwCmd_Accept),
    .iGS_32Cmd(w32CmdForRaw),
    
    .o8Addr(w8Addr_New),
    .i8Addr(w8Addr_GS),
    
    .oGS_RawDataReady(wRawDataReady)
    );

  
GS_RawSignal dut_RawSignal(
    .iClk (rClk),
    .o16Reg (w16Reg),
    .i8Addr (w8Addr_New),
    .iSignSelec (wSignSelec)
    );

endmodule
