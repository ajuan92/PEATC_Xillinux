`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2021 22:51:06
// Design Name: 
// Module Name: Gs_StateMachin
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


module Gs_StateMachin(
    input iClk,
    input iReset,
    input [31:0] iGS_32NewCmdData, // Comando de 32 bits con los par?metros para la prueba de PEATC
    input iGS_NwCmd, //Se?al que indica que hay comando disponible en la fifo
    output oGS_FifoReadEn, //Se?al para indicar que se leer? el comando de la fifo RX, activa el ReadEnable de la Fifo
    output [31:0] oGS_32Cmd, // Comando Capturado de la fifo y expuesta al sistema GS_AS
    input iGS_RawDataReady, //Se?al que indica que la se?al cruda de PEATC est? lista para ser le?da
       
    input [15:0] iGS_16Reg, //Valor de la muestra de la se?al cruda de PEATC
    output [7:0] oGS_8Addr, //Direcci?n en memoria de una muestra de la se?al cruda de PEATC
    output [7:0] oGS_SignSelec, //Enable para la memoria donde se almacena la se?al cruda de PEATC
    
    output oGS_WriteRawSignal, //Se?al para escribir en la fifo TX
    output [15:0] oGS_16RawSignal, //Valor de la muestra de la se?al cruda de PEATC a escribirse en la fifo Tx
    output oGS_RegAcCmd // Salida de check point para pruebas
    );

parameter [7:0]STATE_IDLE = 8'd0;
parameter [7:0]STATE_GET_CMD = 8'd1;
parameter [7:0]STATE_WAIT_RAW_DATA = 8'd2;
parameter [7:0]STATE_STOP_RAW_DATA = 8'd3;
parameter [7:0]STATE_SIGNAL_DB = 8'd4;


parameter [7:0]MAX_RAW_SIGNAL = 8'd66;

reg [7:0] r8SignalOffset = 8'h0;

reg rGetCmd_q, rGetCmd_d = 1'h0;
reg  rNewCmd_d, rNewCmd_q = 1'd0; 
reg  rRead_en_d, rRead_en_q = 1'd0; 
reg [7:0] r8GS_States_d, r8GS_States_q = 8'd0;
reg [31:0] r32Cmd_d, r32Cmd_q = 32'd0; 

reg [15:0] r16Reg_q, r16Reg_d = 16'd0;
reg rAddr_Comp = 1'd0;
reg [8:0] r8Addr_q, r8Addr_d = 8'd0;
reg [8:0] r8StopCount_q, r8StopCount_d = 8'd0;
reg rWriteRawSignal_q, rWriteRawSignal_d = 1'd0;

assign oGS_FifoReadEn = rRead_en_q;
assign oGS_16RawSignal = r16Reg_q;
assign oGS_8Addr = r8Addr_q;
assign oGS_SignSelec = rWriteRawSignal_q;
assign oGS_WriteRawSignal = rWriteRawSignal_q;
assign oGS_32Cmd = r32Cmd_q;
assign oGS_RegAcCmd = rGetCmd_q;

always@(posedge iClk)
begin
    if(iReset)
    begin
        rNewCmd_q <= 1'd0;
        r8GS_States_q <= STATE_IDLE;
        r32Cmd_q <= 32'd0;
        rRead_en_q <= 1'd0; 
        
        r16Reg_q <= 16'd0; 
        r8Addr_q <= 8'd0; 
        rWriteRawSignal_q <= 1'd0; 
        rGetCmd_q <= 1'd0;  
        r8StopCount_q <= 8'd0;  
    end
    else
    begin
        r8GS_States_q <= r8GS_States_d;
        r16Reg_q <= r16Reg_d; 
        r8Addr_q <= r8Addr_d;
        rRead_en_q <= rRead_en_d;
        rNewCmd_q <= rNewCmd_d;
        
        r32Cmd_q <= r32Cmd_d; 
        
        rGetCmd_q <= rGetCmd_d; 
        rWriteRawSignal_q <= rWriteRawSignal_d;
        r8StopCount_q <= r8StopCount_d;
    end 
    
 end  


always@(negedge iClk)
begin

    case (r8GS_States_q)
        STATE_IDLE: 
        
            if(rNewCmd_q == 1'd1)
            begin
                r8GS_States_d = STATE_GET_CMD;
            end
            else
            begin
                r8GS_States_d = STATE_IDLE;
            end
            
        STATE_GET_CMD:
        
            if(r32Cmd_q != 32'd0)
            begin                
                r8GS_States_d = STATE_WAIT_RAW_DATA;
            end
            else
            begin
                r8GS_States_d = STATE_GET_CMD;
            end
        STATE_WAIT_RAW_DATA:
            
            if(rGetCmd_q != 8'd0)
            begin                
                r8GS_States_d = STATE_SIGNAL_DB;
            end
            else
            begin
                r8GS_States_d = STATE_WAIT_RAW_DATA;
            end            
        STATE_SIGNAL_DB: 
        
            if(r8Addr_q  < (MAX_RAW_SIGNAL - 8'd1))
            begin                
                r8GS_States_d = STATE_SIGNAL_DB;
            end
            else
            begin
                r8GS_States_d = STATE_STOP_RAW_DATA;
            end
        STATE_STOP_RAW_DATA:
        
            if(r8StopCount_q >= 8'd1)
            begin                
                r8GS_States_d = STATE_IDLE;   
            end
            else
            begin
                r8GS_States_d = STATE_STOP_RAW_DATA;
            end
   
        default:            
            r8GS_States_d = STATE_IDLE;
    endcase
    
    if(iGS_NwCmd == 0)
    begin
        rNewCmd_d =  1'd1;
    end
    else
    begin
        rNewCmd_d =  1'd0;
    end
    
    if(r8GS_States_q == STATE_IDLE)
    begin
        rWriteRawSignal_d = 1'd0;
    end
    
    if(r8GS_States_q == STATE_GET_CMD)
    begin
        rRead_en_d = 1'd1;
        r8SignalOffset = 8'd0;
    end
    else
    begin
        rRead_en_d = 1'd0;
    end 
        
    if(r8GS_States_q == STATE_SIGNAL_DB)
    begin
        rWriteRawSignal_d = 1'd1;
        r8Addr_d = r8Addr_q + 8'd1;
    end
    else
    begin
        r8Addr_d = r8SignalOffset;
    end   
    
    if(r8GS_States_q == STATE_STOP_RAW_DATA)
    begin
        r8StopCount_d = r8StopCount_q + 8'd1;
    end
    else
    begin
        r8StopCount_d = 8'd0;
    end   

end


always@*
begin
    r32Cmd_d = iGS_32NewCmdData;
    r16Reg_d = iGS_16Reg;
    rGetCmd_d = iGS_RawDataReady;
end


endmodule
