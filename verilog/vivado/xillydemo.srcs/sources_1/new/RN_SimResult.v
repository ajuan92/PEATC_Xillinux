`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2022 20:28:21
// Design Name: 
// Module Name: RN_SimResult
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


module RN_SimResult(
    input iClk,
    input iReset,
    input [15:0] i16RamData,
    output [7:0] o8RamAddr,
    output oReadEnaRam,
    input iReadTigger,
    output oWriteEnaFifo,
    output[15:0] o16ReadData,
    output oWriteEnaTestFifo
    );

parameter [7:0]STATE_IDLE = 8'd0; 
parameter [7:0]STATE_READ_RAM = 8'd1; 
parameter [7:0]STATE_WRITE_FIFO = 8'd2;
parameter [7:0]STATE_NEXT_RAM_MEMORY = 8'd3; 
parameter [7:0]STATE_END_STATE = 8'd4;    

reg rReadTr_q, rReadTr_d;
reg rWriteEnaFifo_q, rWriteEnaFifo_d;
reg rReadEnaRam;

reg [7:0] r8RamAddr_q, r8RamAddr_d;
reg [15:0] r16RamData_q, r16RamData_d;
reg [7:0] r8State_q, r8State_d = STATE_IDLE;
reg rWriteEnaTestFifo_q, rWriteEnaTestFifo_d;

reg [15:0] r16Write_q, r16Write_d;

assign oWriteEnaFifo = rWriteEnaFifo_q;
assign oReadEnaRam = rReadEnaRam; 
assign o8RamAddr = r8RamAddr_q;    
assign o16ReadData = r16Write_q;
assign oWriteEnaTestFifo = rWriteEnaTestFifo_q;
    
always@(posedge iClk)
begin
    if(iReset)
    begin
        rReadTr_q <= 1'd0;
        r8State_q <= STATE_IDLE;
        r16RamData_q <= 1'd0;
        rReadEnaRam <= 1'd0;
        r16Write_q <= 1'd0;
        rWriteEnaFifo_q <= 1'd0;
        r8RamAddr_q <= 8'd0;
        rWriteEnaTestFifo_q <= 1'd0;
    end
    else
    begin
        rReadTr_q <= rReadTr_d;
        r8State_q <= r8State_d;
        r16RamData_q <= r16RamData_d;
        r16Write_q <= r16Write_d;
        rWriteEnaFifo_q <= rWriteEnaFifo_d;
        r8RamAddr_q <= r8RamAddr_d;
        rWriteEnaTestFifo_q <= rWriteEnaTestFifo_d;
    end 
end

always@(negedge iClk)
begin

    case (r8State_q)
        STATE_IDLE: 
        
            if(rReadTr_q == 1'd1)
            begin
                r8State_d = STATE_READ_RAM;
            end
            else
            begin
                r8State_d = STATE_IDLE;
            end
            
        STATE_READ_RAM:
        
//            if(r16RamData_q != 16'd0)
//            begin                
//                r8State_d = STATE_WRITE_FIFO;
//            end
//            else
//            begin
//                r8State_d = STATE_READ_RAM;
//            end
            
            r8State_d = STATE_WRITE_FIFO;

        STATE_WRITE_FIFO:
            r8State_d = STATE_NEXT_RAM_MEMORY;
            
        STATE_NEXT_RAM_MEMORY:
           
            if(r8RamAddr_q == 8'd128) //8
            begin                
                r8State_d = STATE_END_STATE;
            end
            else
            begin
                r8State_d = STATE_NEXT_RAM_MEMORY;
            end
        
        STATE_END_STATE:
            r8State_d = STATE_END_STATE;
     
        default:            
            r8State_d = STATE_IDLE;
    endcase
    
    
    if(r8State_q == STATE_READ_RAM)
    begin
        r8RamAddr_d = 8'd0;
        rReadEnaRam = 1'd1;
        rWriteEnaTestFifo_d = 1'd0;
        rWriteEnaFifo_d = 1'd0;
        r16Write_d = 16'd0;
    end
    else if(r8State_q == STATE_WRITE_FIFO)
    begin
        r8RamAddr_d = 8'd0;
        rReadEnaRam = 1'd1;
        rWriteEnaTestFifo_d = 1'd0;
        rWriteEnaFifo_d = 1'd1;
        r16Write_d = r16RamData_q;
    end
    else if(r8State_q == STATE_NEXT_RAM_MEMORY)
    begin
        r8RamAddr_d = r8RamAddr_q + 8'd1;
        rReadEnaRam = 1'd0;
        rWriteEnaTestFifo_d = 1'd1;
        rWriteEnaFifo_d = 1'd0;
        r16Write_d = r16RamData_q;

    end
    else
    begin
        r8RamAddr_d = 8'd0;
        rReadEnaRam = 1'd0;
        rWriteEnaTestFifo_d = 1'd0;
        rWriteEnaFifo_d = 1'd0;
        r16Write_d = 16'd0;
    end
end    
    
always@*
begin
    r16RamData_d = i16RamData;
    rReadTr_d = iReadTigger;

end    
    
endmodule
