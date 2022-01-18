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
    input iStartReadFifo,
    output iReadTigger,
    input iRead_en,
    input [7:0] i8Addr,
    output[15:0] o16ReadData,
    input [7:0] i8FifoDataCount
    );

parameter RN_TOTAL_RAM_LEN = 10;

reg [15:0] a16Ram[RN_TOTAL_RAM_LEN:0]; 

reg [15:0] r16FifoData_q, r16FifoData_d = 16'd0;
reg rEmptyFifo_q, rEmptyFifo_d = 1'd0;
reg [7:0] r8addr_q, r8addr_d = 8'd0;
reg [7:0] r8FifoDataCount_q, r8FifoDataCount_d = 8'd0;
reg rRead_en_q, rRead_en_d = 1'd0;
reg [7:0] r8Addr = 8'd0;

reg [15:0] r16ReadData = 16'd0;
reg rRamDataReady_q, rRamDataReady_d = 1'd0; 

assign o16ReadData =  a16Ram[r8Addr];
assign iReadTigger = rRamDataReady_q;

integer i;

always@(posedge iClk)
begin
    if(iReset)
    begin
        r8addr_q <= 8'd0;
        
        rEmptyFifo_q <= 1'd0;
                
        r16ReadData <= 16'd0; 
        r8FifoDataCount_q <= 8'd0;
        
        rRamDataReady_q <= 1'd0; 
        rRead_en_q <= 1'd0;
        
        for(i=0;i<=RN_TOTAL_RAM_LEN;i=i+1)
           a16Ram[i] <= 16'b0;
    end
    else
    begin

        rEmptyFifo_q <= rEmptyFifo_d;
        
        r8addr_q <= r8addr_d;
        
        r8FifoDataCount_q <= r8FifoDataCount_d;
        
        rRamDataReady_q <= rRamDataReady_d; 
        
        rRead_en_q <= rRead_en_d;
        
        if((r8FifoDataCount_q != 16'd0) && (rEmptyFifo_q == 1'd1))  
        begin
           a16Ram[r8addr_q] <= r16FifoData_d;
        end
//        else if (rRead_en_q == 1'b1) 
//        begin
//           r16ReadData <=  a16Ram[r8addr_q];
//        end
//        else
//        begin
//            r16ReadData <= 16'd0;
//        end
        
    end 
        
 end
 
always@(negedge iClk)
begin
     if((r8FifoDataCount_q != 16'd0) && (rEmptyFifo_q == 1'd1))  
    begin
        r8addr_d = r8addr_q + 8'd1;
    end
//    else if (rRead_en_q == 1'b1) 
//    begin
//        r8addr_d = r8Addr;
//    end
    else
    begin
        r8addr_d = 8'd0;
    end 
    
    if((r8FifoDataCount_q == 16'd0)&&(r8addr_q != 8'd0))
    begin
        rRamDataReady_d = 1'd1;
    end
    else
    begin
        rRamDataReady_d = 1'd0;
    end

    
 end      
  
       
always@*
begin
    r16FifoData_d = i16FifoData;
    rEmptyFifo_d = iStartReadFifo;
    r8FifoDataCount_d = i8FifoDataCount;
    rRead_en_d = iRead_en;
    r8Addr = i8Addr;
end
    
endmodule
