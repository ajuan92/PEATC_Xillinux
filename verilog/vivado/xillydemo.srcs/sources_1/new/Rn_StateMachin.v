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
    output[15:0] o16ReadData,
    input [7:0] i8FifoDataCount
    );

reg [15:0] a16Ram[10:0]; 
reg [15:0] r16FifoData_q, r16FifoData_d = 16'd0;
reg rEmptyFifo_q, rEmptyFifo_d = 1'd0;
reg [8:0] r8addr_q, r8addr_d = 8'd0;
reg [8:0] r8FifoDataCount_q, r8FifoDataCount_d = 8'd0;


reg rReadFifo = 1'd0; 
reg [15:0] r16ReadData = 16'd0;

assign o16ReadData = r16ReadData;
assign oReadFifo = rReadFifo;

integer i;

always@(posedge iClk)
begin
    if(iReset)
    begin
        rReadFifo <= 1'd0;
        r8addr_q <= 8'd0;
        
        rEmptyFifo_q <= 1'd0;
                
        r16ReadData <= 16'd0; 
        r8FifoDataCount_q <= 8'd0;
        
        for(i=0;i<=255;i=i+1)
           a16Ram[i] <= 16'b0;
    end
    else
    begin
        //r16FifoData_q <= r16FifoData_d;
        rEmptyFifo_q <= rEmptyFifo_d;
        
        r8addr_q <= r8addr_d;
        
        r8FifoDataCount_q <= r8FifoDataCount_d;
        
        if ((r8FifoDataCount_q != 16'd0) && (rEmptyFifo_q == 1'd1)) 
        begin
           a16Ram[r8addr_q] <= r16FifoData_d;
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
     if ((r8FifoDataCount_q != 16'd0) && (rEmptyFifo_q == 1'd1)) 
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
    
    if((r8FifoDataCount_q == 16'd0)&&(r8addr_q != 8'd0))
    begin
        rReadFifo = 1'd1;
    end

    
 end      
  
       
always@*
begin
    r16FifoData_d = i16FifoData;
    rEmptyFifo_d = iEmptyFifo;
    r8FifoDataCount_d = i8FifoDataCount;
end
    
endmodule
