`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2021 21:13:07
// Design Name: 
// Module Name: GS_RawSignal
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


module GS_RawSignal(
    output [15:0] o16Reg,
    input [7:0] i8Addr,
    input [7:0] i8SignSelec
    );

reg [15:0] r16ReadMemS1;
reg [15:0] r16ReadMemS2;
reg [15:0] r16ReadMemS3;

reg [15:0] r16OutRead;

assign o16Reg = r16OutRead;

always@*
begin

    case (i8SignSelec)
        8'd30: r16OutRead = r16ReadMemS1;
        8'd40: r16OutRead = r16ReadMemS2;
        8'd50: r16OutRead = r16ReadMemS3;
        default:
               r16OutRead = 12'd0;
    endcase
    
    
    case (i8Addr)
            8'd1: r16ReadMemS1 = 12'd106;
            8'd2: r16ReadMemS1 = 12'd98;
            8'd3: r16ReadMemS1 = 12'd98;
            8'd4: r16ReadMemS1 = 12'd102;
            8'd5: r16ReadMemS1 = 12'd104;
            8'd6: r16ReadMemS1 = 12'd103;
            8'd7: r16ReadMemS1 = 12'd101;
            8'd8: r16ReadMemS1 = 12'd100;
            8'd9: r16ReadMemS1 = 12'd101;
            8'd10: r16ReadMemS1 = 12'd102;
            8'd11: r16ReadMemS1 = 12'd101;
            8'd12: r16ReadMemS1 = 12'd103;
            8'd13: r16ReadMemS1 = 12'd112;
            8'd14: r16ReadMemS1 = 12'd127;
            8'd15: r16ReadMemS1 = 12'd142;
            8'd16: r16ReadMemS1 = 12'd148;
            8'd17: r16ReadMemS1 = 12'd138;
            8'd18: r16ReadMemS1 = 12'd115;
            8'd19: r16ReadMemS1 = 12'd90;
            8'd20: r16ReadMemS1 = 12'd72;
            8'd21: r16ReadMemS1 = 12'd66;
            8'd22: r16ReadMemS1 = 12'd68;
            8'd23: r16ReadMemS1 = 12'd74;
            8'd24: r16ReadMemS1 = 12'd82;
            8'd25: r16ReadMemS1 = 12'd94;
            8'd26: r16ReadMemS1 = 12'd109;
            8'd27: r16ReadMemS1 = 12'd122;
            8'd28: r16ReadMemS1 = 12'd130;
            8'd29: r16ReadMemS1 = 12'd128;
            8'd30: r16ReadMemS1 = 12'd120;
            8'd31: r16ReadMemS1 = 12'd109;
            8'd32: r16ReadMemS1 = 12'd98;
            8'd33: r16ReadMemS1 = 12'd87;
            8'd34: r16ReadMemS1 = 12'd75;
            8'd35: r16ReadMemS1 = 12'd68;
            8'd36: r16ReadMemS1 = 12'd72;
            8'd37: r16ReadMemS1 = 12'd91;
            8'd38: r16ReadMemS1 = 12'd120;
            8'd39: r16ReadMemS1 = 12'd146;
            8'd40: r16ReadMemS1 = 12'd158;
            8'd41: r16ReadMemS1 = 12'd152;
            8'd42: r16ReadMemS1 = 12'd134;
            8'd43: r16ReadMemS1 = 12'd112;
            8'd44: r16ReadMemS1 = 12'd91;
            8'd45: r16ReadMemS1 = 12'd70;
            8'd46: r16ReadMemS1 = 12'd46;
            8'd47: r16ReadMemS1 = 12'd21;
            8'd48: r16ReadMemS1 = 12'd4;
            8'd49: r16ReadMemS1 = 12'd0;
            8'd50: r16ReadMemS1 = 12'd12;
            8'd51: r16ReadMemS1 = 12'd31;
            8'd52: r16ReadMemS1 = 12'd50;
            8'd53: r16ReadMemS1 = 12'd66;
            8'd54: r16ReadMemS1 = 12'd82;
            8'd55: r16ReadMemS1 = 12'd101;
            8'd56: r16ReadMemS1 = 12'd123;
            8'd57: r16ReadMemS1 = 12'd139;
            8'd58: r16ReadMemS1 = 12'd144;
            8'd59: r16ReadMemS1 = 12'd137;
            8'd60: r16ReadMemS1 = 12'd128;
            8'd61: r16ReadMemS1 = 12'd124;
            8'd62: r16ReadMemS1 = 12'd128;
            8'd63: r16ReadMemS1 = 12'd132;
            8'd64: r16ReadMemS1 = 12'd130;
            8'd65: r16ReadMemS1 = 12'd120;
            8'd66: r16ReadMemS1 = 12'd106;
        default: 
               r16ReadMemS1 = 12'd0; 
    endcase
    
    case (i8Addr)
            8'd1: r16ReadMemS2 = 12'd103;
            8'd2: r16ReadMemS2 = 12'd101;
            8'd3: r16ReadMemS2 = 12'd102;
            8'd4: r16ReadMemS2 = 12'd101;
            8'd5: r16ReadMemS2 = 12'd101;
            8'd6: r16ReadMemS2 = 12'd102;
            8'd7: r16ReadMemS2 = 12'd102;
            8'd8: r16ReadMemS2 = 12'd101;
            8'd9: r16ReadMemS2 = 12'd101;
            8'd10: r16ReadMemS2 = 12'd103;
            8'd11: r16ReadMemS2 = 12'd102;
            8'd12: r16ReadMemS2 = 12'd100;
            8'd13: r16ReadMemS2 = 12'd108;
            8'd14: r16ReadMemS2 = 12'd127;
            8'd15: r16ReadMemS2 = 12'd145;
            8'd16: r16ReadMemS2 = 12'd144;
            8'd17: r16ReadMemS2 = 12'd128;
            8'd18: r16ReadMemS2 = 12'd109;
            8'd19: r16ReadMemS2 = 12'd93;
            8'd20: r16ReadMemS2 = 12'd74;
            8'd21: r16ReadMemS2 = 12'd55;
            8'd22: r16ReadMemS2 = 12'd48;
            8'd23: r16ReadMemS2 = 12'd57;
            8'd24: r16ReadMemS2 = 12'd74;
            8'd25: r16ReadMemS2 = 12'd88;
            8'd26: r16ReadMemS2 = 12'd100;
            8'd27: r16ReadMemS2 = 12'd116;
            8'd28: r16ReadMemS2 = 12'd131;
            8'd29: r16ReadMemS2 = 12'd137;
            8'd30: r16ReadMemS2 = 12'd130;
            8'd31: r16ReadMemS2 = 12'd115;
            8'd32: r16ReadMemS2 = 12'd98;
            8'd33: r16ReadMemS2 = 12'd84;
            8'd34: r16ReadMemS2 = 12'd76;
            8'd35: r16ReadMemS2 = 12'd81;
            8'd36: r16ReadMemS2 = 12'd97;
            8'd37: r16ReadMemS2 = 12'd119;
            8'd38: r16ReadMemS2 = 12'd138;
            8'd39: r16ReadMemS2 = 12'd145;
            8'd40: r16ReadMemS2 = 12'd138;
            8'd41: r16ReadMemS2 = 12'd120;
            8'd42: r16ReadMemS2 = 12'd100;
            8'd43: r16ReadMemS2 = 12'd83;
            8'd44: r16ReadMemS2 = 12'd68;
            8'd45: r16ReadMemS2 = 12'd49;
            8'd46: r16ReadMemS2 = 12'd29;
            8'd47: r16ReadMemS2 = 12'd17;
            8'd48: r16ReadMemS2 = 12'd22;
            8'd49: r16ReadMemS2 = 12'd39;
            8'd50: r16ReadMemS2 = 12'd60;
            8'd51: r16ReadMemS2 = 12'd77;
            8'd52: r16ReadMemS2 = 12'd92;
            8'd53: r16ReadMemS2 = 12'd110;
            8'd54: r16ReadMemS2 = 12'd131;
            8'd55: r16ReadMemS2 = 12'd146;
            8'd56: r16ReadMemS2 = 12'd143;
            8'd57: r16ReadMemS2 = 12'd125;
            8'd58: r16ReadMemS2 = 12'd109;
            8'd59: r16ReadMemS2 = 12'd114;
            8'd60: r16ReadMemS2 = 12'd135;
            8'd61: r16ReadMemS2 = 12'd147;
            8'd62: r16ReadMemS2 = 12'd138;
            8'd63: r16ReadMemS2 = 12'd117;
            8'd64: r16ReadMemS2 = 12'd103;
            8'd65: r16ReadMemS2 = 12'd102;
            8'd66: r16ReadMemS2 = 12'd102;
            default: 
               r16ReadMemS2 = 12'd0; 
    endcase
    
    case (i8Addr)
            8'd1: r16ReadMemS3 = 12'd105;
            8'd2: r16ReadMemS3 = 12'd100;
            8'd3: r16ReadMemS3 = 12'd100;
            8'd4: r16ReadMemS3 = 12'd102;
            8'd5: r16ReadMemS3 = 12'd103;
            8'd6: r16ReadMemS3 = 12'd102;
            8'd7: r16ReadMemS3 = 12'd100;
            8'd8: r16ReadMemS3 = 12'd101;
            8'd9: r16ReadMemS3 = 12'd103;
            8'd10: r16ReadMemS3 = 12'd102;
            8'd11: r16ReadMemS3 = 12'd99;
            8'd12: r16ReadMemS3 = 12'd102;
            8'd13: r16ReadMemS3 = 12'd118;
            8'd14: r16ReadMemS3 = 12'd140;
            8'd15: r16ReadMemS3 = 12'd151;
            8'd16: r16ReadMemS3 = 12'd146;
            8'd17: r16ReadMemS3 = 12'd126;
            8'd18: r16ReadMemS3 = 12'd102;
            8'd19: r16ReadMemS3 = 12'd80;
            8'd20: r16ReadMemS3 = 12'd66;
            8'd21: r16ReadMemS3 = 12'd67;
            8'd22: r16ReadMemS3 = 12'd79;
            8'd23: r16ReadMemS3 = 12'd96;
            8'd24: r16ReadMemS3 = 12'd115;
            8'd25: r16ReadMemS3 = 12'd131;
            8'd26: r16ReadMemS3 = 12'd140;
            8'd27: r16ReadMemS3 = 12'd136;
            8'd28: r16ReadMemS3 = 12'd121;
            8'd29: r16ReadMemS3 = 12'd104;
            8'd30: r16ReadMemS3 = 12'd88;
            8'd31: r16ReadMemS3 = 12'd71;
            8'd32: r16ReadMemS3 = 12'd57;
            8'd33: r16ReadMemS3 = 12'd55;
            8'd34: r16ReadMemS3 = 12'd68;
            8'd35: r16ReadMemS3 = 12'd88;
            8'd36: r16ReadMemS3 = 12'd108;
            8'd37: r16ReadMemS3 = 12'd125;
            8'd38: r16ReadMemS3 = 12'd140;
            8'd39: r16ReadMemS3 = 12'd146;
            8'd40: r16ReadMemS3 = 12'd135;
            8'd41: r16ReadMemS3 = 12'd112;
            8'd42: r16ReadMemS3 = 12'd92;
            8'd43: r16ReadMemS3 = 12'd78;
            8'd44: r16ReadMemS3 = 12'd62;
            8'd45: r16ReadMemS3 = 12'd41;
            8'd46: r16ReadMemS3 = 12'd20;
            8'd47: r16ReadMemS3 = 12'd7;
            8'd48: r16ReadMemS3 = 12'd5;
            8'd49: r16ReadMemS3 = 12'd13;
            8'd50: r16ReadMemS3 = 12'd29;
            8'd51: r16ReadMemS3 = 12'd47;
            8'd52: r16ReadMemS3 = 12'd61;
            8'd53: r16ReadMemS3 = 12'd72;
            8'd54: r16ReadMemS3 = 12'd87;
            8'd55: r16ReadMemS3 = 12'd105;
            8'd56: r16ReadMemS3 = 12'd120;
            8'd57: r16ReadMemS3 = 12'd130;
            8'd58: r16ReadMemS3 = 12'd136;
            8'd59: r16ReadMemS3 = 12'd142;
            8'd60: r16ReadMemS3 = 12'd143;
            8'd61: r16ReadMemS3 = 12'd134;
            8'd62: r16ReadMemS3 = 12'd118;
            8'd63: r16ReadMemS3 = 12'd105;
            8'd64: r16ReadMemS3 = 12'd102;
            8'd65: r16ReadMemS3 = 12'd102;
            8'd66: r16ReadMemS3 = 12'd102;
            default: 
               r16ReadMemS3 = 12'd0; 
    endcase

end   
    
endmodule
