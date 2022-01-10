`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2022 23:22:46
// Design Name: 
// Module Name: Rn_StateMachin
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


module Rn_StateMachin(
    input iClk,
    input iReset,
    input [15:0] i16FifoData,
    input iFifoEmpty
    );
    
reg [15:0] a16Ram[255:0]; 
reg [7:0]  r8addr_q, r8addr_d = 8'd0;

integer i;

always@(posedge iClk)
begin
    if(iReset)
    begin
        r8addr_q <= 8'd0; 
        
        for(i=0;i<=255;i=i+1)
           a16Ram[i] <= 16'b0;
    end
    else
    begin
        
        r8addr_q <= r8addr_d;
        
        if (iFifoEmpty == 1'b0) 
        begin
           a16Ram[r8addr_q] <= i16FifoData;
        end
    end 
    
 end     
 

always@(negedge iClk)
begin
   
    if (iFifoEmpty == 1'b0) 
    begin
        r8addr_d = r8addr_q + 8'd1;
    end
    else
    begin
        r8addr_d = 8'd0;
    end 

 end     
       
 
always@*
begin

end
    
endmodule
