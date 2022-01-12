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
    input iEmptyFifo,
    output oReadFifo,
    input iRead_en,
    input [7:0] i8Addr,
    output[15:0] o16ReadData
    );
    
reg [15:0] a16Ram[255:0]; 
reg [15:0] r16ReadData; 
reg [7:0]  r8addr_q, r8addr_d = 8'd0;
reg rEmptyFifo_q, rEmptyFifo_d = 1'd0;
reg rReadFifo_q, rReadFifo_d; 
reg rReadFifo; 

integer i;

assign o16ReadData = r16ReadData;
assign oReadFifo = rReadFifo;

always@(posedge iClk)
begin
    if(iReset)
    begin
        rReadFifo <= 1'd0;
        r8addr_q <= 8'd0;
        
        rEmptyFifo_q <= 1'd0;
         
        r16ReadData <= 16'd0; 
        for(i=0;i<=255;i=i+1)
           a16Ram[i] <= 16'b0;
    end
    else
    begin
        rEmptyFifo_q <= rEmptyFifo_d;
        r8addr_q <= r8addr_d;
        
        if ((i16FifoData != 16'd0) && (rEmptyFifo_q == 1'd0)) 
        begin
           a16Ram[r8addr_q] <= i16FifoData;
        end
        else if (iRead_en == 1'b1) 
        begin
           r16ReadData <=  a16Ram[r8addr_q];
        end
        else
        begin
            r16ReadData <= 16'd0;
        end
    end 
    
 end     
 

always@(negedge iClk)
begin
   
    if ((i16FifoData != 16'd0) && (rEmptyFifo_q == 1'd0)) 
    begin
        r8addr_d = r8addr_q + 8'd1;
    end
    else if (iRead_en == 1'b1) 
    begin
        r8addr_d = i8Addr;
    end
    else
    begin
        r8addr_d = 8'd0;
    end 
    
    
    if((rEmptyFifo_d == 16'd1) && (rEmptyFifo_q == 1'd0)&&(r8addr_q != 8'd0))
    begin
        rReadFifo = 1'd1;
    end

 end     
       
 
always@*
begin
    rEmptyFifo_d <= iEmptyFifo;
end
    
endmodule
