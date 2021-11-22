`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2020 14:46:33
// Design Name: 
// Module Name: Xillybus_Test_Signals
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


module Xillybus_Test_Signals(
    input iClk,
    input iReset,
    input iGs_Fpga_open,
    input iGs_Fpga_wren,
    input iFifo_Full,
    input iFifo_Empty,
    output oGs_Fpga_open,
    output oGs_Fpga_wren,
    output oFifo_Full,
    output oFifo_Empty
    );
 
    
reg rGs_Fpga_open_q, rGs_Fpga_open_d;   
reg rGs_Fpga_wren_q, rGs_Fpga_wren_d;
reg rFifo_Full_q, rFifo_Full_d;
reg rFifo_Empty_q, rFifo_Empty_d;   

reg rGs_Fpga_open_out_q, rGs_Fpga_open_out_d;   
reg rGs_Fpga_wren_out_q, rGs_Fpga_wren_out_d;
reg rFifo_Full_out_q, rFifo_Full_out_d;
reg rFifo_Empty_out_q, rFifo_Empty_out_d;  
    
assign oGs_Fpga_open = rGs_Fpga_open_out_q;
assign oGs_Fpga_wren = rGs_Fpga_wren_out_q;
assign oFifo_Full = rFifo_Full_out_q;
assign oFifo_Empty = rFifo_Empty_out_q;   
    
always @(posedge iClk)
begin
    if(iReset)
    begin
        rGs_Fpga_open_q <= 1'd0;   
        rGs_Fpga_wren_q <= 1'd0;
        rFifo_Full_q <= 1'd0;
        rFifo_Empty_q <= 1'd0; 
        
        rGs_Fpga_open_out_q <= 1'd0;  
        rGs_Fpga_wren_out_q <= 1'd0;
        rFifo_Full_out_q <= 1'd0;
        rFifo_Empty_out_q <= 1'd0;
        
        rGs_Fpga_open_out_d <= 1'd0;  
        rGs_Fpga_wren_out_d <= 1'd0;
        rFifo_Full_out_d <= 1'd0;
        rFifo_Empty_out_d <= 1'd0;  
    end
    else
    begin
        rGs_Fpga_open_q <= rGs_Fpga_open_d;   
        rGs_Fpga_wren_q <= rGs_Fpga_wren_d;
        rFifo_Full_q <= rFifo_Full_d;
        rFifo_Empty_q <= rFifo_Empty_d; 
        
        rGs_Fpga_open_out_q <= rGs_Fpga_open_out_d;  
        rGs_Fpga_wren_out_q <= rGs_Fpga_wren_out_d;
        rFifo_Full_out_q <= rFifo_Full_out_d;
        rFifo_Empty_out_q <= rFifo_Empty_out_d;
    end
end    
    
    
always @*
begin
    rGs_Fpga_open_d = iGs_Fpga_open;    
    rGs_Fpga_wren_d = iGs_Fpga_wren;    
    rFifo_Empty_d = iFifo_Full;    
    rFifo_Full_d = iFifo_Empty;
    
    if((rGs_Fpga_open_d == 1'd0) && ((rGs_Fpga_open_q == 1'd1)))
    begin
        rGs_Fpga_open_out_d = ~rGs_Fpga_open_out_q;   
    end

    if((rGs_Fpga_wren_d == 1'd1) && ((rGs_Fpga_wren_q == 1'd0)))
    begin
        rGs_Fpga_wren_out_d = ~rGs_Fpga_wren_out_q;   
    end
    
    if((rFifo_Empty_d == 1'd1) && ((rFifo_Empty_q == 1'd0)))
    begin
        rFifo_Full_out_d = ~rFifo_Full_out_q;   
    end
    
    if((rFifo_Full_d == 1'd1) && ((rFifo_Full_q == 1'd0)))
    begin
        rFifo_Empty_out_d = ~rFifo_Empty_out_q;   
    end    
        
end       
       
    
endmodule
