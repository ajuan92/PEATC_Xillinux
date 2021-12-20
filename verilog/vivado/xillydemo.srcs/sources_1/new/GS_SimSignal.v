`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2021 16:02:27
// Design Name: 
// Module Name: GS_SimSignal
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


module GS_SimSignal(
    input iClk,
    input iReset,
    input [31:0] iGS_32Cmd,
    
    input [15:0] i16Reg,
    output [7:0] oGS_8Addr,
    output [7:0] oGS_SignSelec,
    
    output [15:0] o16Reg,
    input [7:0] i8Addr,
    input [7:0] iSignSelec,
    
    output oGS_RawDataReady
    );

parameter [7:0]MAX_RAW_SIGNAL = 8'd66;

reg rRawDataReady = 1'd0;
reg [7:0] r8States_d, r8States_q = 8'h0;
reg [7:0] r8RecvAddr = 8'h0;
reg [7:0] r8NewAddr_d, r8NewAddr_q = 8'h0;
reg [7:0] r8SimSignalOffset = 8'h0;
reg [31:0] r32Cmd_d, r32Cmd_q  = 32'h0;

assign o16Reg = i16Reg;
assign oGS_8Addr = r8NewAddr_q;
assign oGS_SignSelec = iSignSelec;
assign oGS_RawDataReady = rRawDataReady;
    
always@(posedge iClk)
begin
    if(iReset)
    begin
        r32Cmd_q <= 32'h0; 
        r8NewAddr_q <= 8'h0;
        r8States_q <= 8'h0; 
    end
    else
    begin
        r32Cmd_q <= r32Cmd_d;
        r8NewAddr_q <= r8NewAddr_d;
        r8States_q <= r8States_d;
    end 
end     
    

always@(negedge iClk)
begin

    case (r8States_q)
        8'd0: 
            if(r32Cmd_q !=  32'd0)
            begin     
                r8States_d = 8'd1;
            end
            else
            begin
                r8States_d = 8'd0;
            end
            
        8'd1:
            r8States_d = 8'd2;           
        8'd2:
            r8States_d = 8'd2;
    default:            
        r8States_d = 8'd0;
    endcase
    
    if(r8States_q == 8'd1)
    begin
        if(r32Cmd_q[31:24] == 8'd30)
        begin
            r8SimSignalOffset = 8'd0;
        end
        else if(r32Cmd_q[31:24] == 8'd40)
        begin
            r8SimSignalOffset = 8'd67;
        end
        else if(r32Cmd_q[31:24] == 8'd50)
        begin
            r8SimSignalOffset = 8'd133;
        end
        else 
        begin
            r8SimSignalOffset = 8'd0;
        end
        
        rRawDataReady = 1'd1;
        
    end
//    else
//    begin
//        r8SimSignalOffset = 8'd0;
//    end
    
    if(r8States_q == 8'd2)
    begin
         r8NewAddr_d = r8RecvAddr + r8SimSignalOffset;
    end
    else
    begin
        r8NewAddr_d = 8'd0;
    end   
    
end   
    
  
always@*
begin

    r32Cmd_d = iGS_32Cmd;
    r8RecvAddr = i8Addr;

end    
    
    
    
    
    
    
    
endmodule
