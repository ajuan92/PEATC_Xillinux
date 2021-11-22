`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2020 01:03:17
// Design Name: 
// Module Name: ADC_Wrapper
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


module ADC_Wrapper(
    input clk,
    input reset,
    input vauxp0,
    input vauxn0,
    output [15:0] dout,
    output drdy,
    output [4:0] channel
    );
 
wire [15:0] aux_dout;
wire [4:0]aux_channel;
wire aux_eoc;
wire dry;

reg [6:0]aux_daddr;
    
    
assign dout = aux_dout[7:0] & aux_dout[15:8];
assign channel = aux_channel;
assign drdy = aux_eoc;
    
    xadc_wiz_0
          (
          .daddr_in(aux_daddr),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(aux_eoc),              // Enable Signal for the dynamic reconfiguration port
          .di_in(0),               // Input data bus for the dynamic reconfiguration port
          .dwe_in(0),              // Write Enable for the dynamic reconfiguration port
          .reset_in(reset),            // Reset signal for the System Monitor control logic
          .vauxp0(vauxp0),              // Auxiliary channel 0
          .vauxn0(vauxn0),
          .busy_out(0),            // ADC Busy signal
          .channel_out(aux_channel),         // Channel Selection Outputs
          .do_out(aux_dout),              // Output data bus for dynamic reconfiguration port
          .drdy_out(dry),            // Data ready signal for the dynamic reconfiguration port
          .eoc_out(aux_eoc),             // End of Conversion Signal
          .eos_out(0)             // End of Sequence Signal
          );
  
 always@*
 begin
    aux_daddr = 4'h00;
 end         
          
endmodule
