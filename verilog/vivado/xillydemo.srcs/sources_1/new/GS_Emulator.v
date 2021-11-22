`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2020 23:31:49
// Design Name: 
// Module Name: GS_Emulator
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


module GS_Emulator(
    input iClk,
    input iReset,
    input [31:0] ivCmdTime,
    input iNewCmd,
    output oActivTimer,
    output [31:0]oCount,
    output [15:0]oCountNano
    );


reg [31:0] r32Cmd_d, r32Cmd_q; 
reg  rNewCmd_d, rNewCmd_q; 
reg [31:0] rvCount_d, rvCount_q;
reg rActivTimer;
reg [15:0] rvCounterNanoSec_d, rvCounterNanoSec_q;


assign oActivTimer = rActivTimer;

assign oCount = rvCount_q;
assign oCountNano = rvCounterNanoSec_q;


always@(posedge iClk)
begin
    if(iReset)
    begin
        r32Cmd_q <= 32'd0;
        rNewCmd_q <= 1'd0;
        rvCount_q <= 32'd0;
        rActivTimer <= 1'd0;
        rvCounterNanoSec_q <= 16'd0;
    end
    else
    begin
        rNewCmd_q <= rNewCmd_d;
        
        if(rActivTimer )
        begin
            rvCounterNanoSec_q <= rvCounterNanoSec_d;
        end  
        
        if(rvCounterNanoSec_q == 15'hFFFF)
        begin
            rvCount_q <= rvCount_d;
        end   
    end 
    
 end  


always@(posedge rNewCmd_q)
begin
    if(rActivTimer == 1'd0)
    begin
        rActivTimer = 1'd1;
        r32Cmd_q <= r32Cmd_d;
        rvCount_q <= 32'd0;
        rvCounterNanoSec_q <= 16'd0;
    end     
 end       
    
always@*
begin

    r32Cmd_d = ivCmdTime;
    rNewCmd_d = iNewCmd;
    
    if(rvCount_q == r32Cmd_q)
    begin   
        rvCounterNanoSec_d = rvCounterNanoSec_d;
        rvCount_d = rvCount_d;
        rActivTimer = 1'd0;
        r32Cmd_q = 32'd0;
    end
    else
    begin
        rvCounterNanoSec_d = rvCounterNanoSec_q + 1'd1;
        rvCount_d = rvCount_q + 1'd1;
    end
        
end     
 
endmodule


