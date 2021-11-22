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
    input [31:0] iGS_wdata, // Comando
    input iGS_wren, //Se�al que indica que hay cmd disponible
    output oGS_wfull, //Se�al para indicar que se leera la fifo
    output [31:0] oGS_32Cmd,
    output oGS_RegAcCmd,
    
    // Conexi�n lectura de se�ales crudas
    
    input [15:0] i16Reg,
    output [7:0] o8Addr,
    output [7:0] oSignSelec,
    
    output oWriteRawSignal, //Se�al para escribir en la fifo
    output [15:0] o16RawSignal
    );

parameter [7:0]STATE_IDLE = 8'd0;
parameter [7:0]STATE_GET_CMD = 8'd1;
parameter [7:0]STATE_READ_CMD = 8'd2;
parameter [7:0]STATE_STOP_READ_CMD = 8'd3;
parameter [7:0]STATE_SIGNAL_DB = 8'd4;


parameter [7:0]MAX_RAW_SIGNAL = 8'd66;

reg [7:0] r8SimSignalOffset = 8'h0;

reg rGetCmd_q, rGetCmd_d = 1'h0;
reg  rNewCmd_d, rNewCmd_q = 1'd0; 
reg  rRead_en_d, rRead_en_q = 1'd0; 
reg [7:0] r8GS_States_d, r8GS_States_q = 8'd0;
reg [31:0] r32Cmd_d, r32Cmd_q = 32'd0; 

reg [15:0] r16Reg_q, r16Reg_d = 16'd0;
reg rAddr_Comp = 1'd0;
reg [8:0] r8Addr_q, r8Addr_d = 8'd0;
//reg [7:0] r8SignSelec_q, r8SignSelec_d = 8'd0; 
reg rWriteRawSignal_q, rWriteRawSignal_d = 1'd0;

assign oGS_wfull = rRead_en_q;
assign o16RawSignal = r16Reg_q;
assign o8Addr = r8Addr_q;
assign oSignSelec = rWriteRawSignal_q;
assign oWriteRawSignal = rWriteRawSignal_q;
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
        
//        r8SignSelec_q <= 8'd0; 
             
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

        
    end 
    
 end  


//always@(posedge iClk )
//begin

//    if(rGetCmd_q)
//    begin
//        r8SignSelec_q <= r8SignSelec_d;
//    end

//end


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
                r8GS_States_d = STATE_READ_CMD;
            end
            else
            begin
                r8GS_States_d = STATE_GET_CMD;
            end
        STATE_READ_CMD:
            
            if(rGetCmd_q != 8'd0)
            begin                
                r8GS_States_d = STATE_STOP_READ_CMD;
            end
            else
            begin
                r8GS_States_d = STATE_READ_CMD;
            end
             
        STATE_STOP_READ_CMD:
        
             r8GS_States_d = STATE_SIGNAL_DB;
            
        STATE_SIGNAL_DB: 
        
            if(r8Addr_q  < (r8SimSignalOffset + MAX_RAW_SIGNAL + 8'd1))
            begin                
                r8GS_States_d = STATE_SIGNAL_DB;
            end
            else
            begin
                r8GS_States_d = STATE_IDLE;
            end
                  
        default:            
            r8GS_States_d = STATE_IDLE;
    endcase
    
    if(iGS_wren == 0)
    begin
        rNewCmd_d =  1'd1;
    end
    else
    begin
        rNewCmd_d =  1'd0;
    end
    
    if(r8GS_States_q == STATE_GET_CMD)
    begin
        rRead_en_d = 1'd1;
        r8SimSignalOffset = 8'd0;
    end
    else
    begin
        rRead_en_d = 1'd0;
    end 
    
    if(r8GS_States_q == STATE_READ_CMD)
    begin
        rGetCmd_d = 1'h1;
        
        if(r32Cmd_q[31:24] == 8'd30)
        begin
            r8SimSignalOffset = 8'd0;
        end
        else if(r32Cmd_q[31:24] == 8'd40)
        begin
            r8SimSignalOffset = MAX_RAW_SIGNAL + 8'd1;
        end
        else if(r32Cmd_q[31:24] == 8'd50)
        begin
            r8SimSignalOffset = (MAX_RAW_SIGNAL*2) + 8'd1;
        end
        else 
        begin
            r8SimSignalOffset = 8'd0;
        end
        
    end
    else
    begin
        rGetCmd_d = 1'h0;
    end 
    
    if(r8GS_States_q == STATE_SIGNAL_DB)
    begin
        rWriteRawSignal_d = 1'd1;
        r8Addr_d = r8Addr_q + 8'd1;
    end
    else
    begin
        rWriteRawSignal_d = 1'd0;
        r8Addr_d = r8SimSignalOffset;
    end   
    
end


always@*
begin
    r32Cmd_d = iGS_wdata;
    r16Reg_d = i16Reg;
//    r8SignSelec_d = r32Cmd_q[31:24];
end


endmodule