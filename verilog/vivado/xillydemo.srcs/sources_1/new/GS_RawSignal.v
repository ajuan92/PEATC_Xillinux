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
    input iClk,
    input [7:0] i8Addr,
    input iSignSelec,
    output [15:0] o16Reg
    );

reg [15:0] o16Reg;

always@(iClk or iSignSelec or i8Addr)
begin

    case (i8Addr)
            8'd1: o16Reg = 12'd106;
            8'd2: o16Reg = 12'd98;
            8'd3: o16Reg = 12'd98;
            8'd4: o16Reg = 12'd102;
            8'd5: o16Reg = 12'd104;
            8'd6: o16Reg = 12'd103;
            8'd7: o16Reg = 12'd101;
            8'd8: o16Reg = 12'd100;
            8'd9: o16Reg = 12'd101;
            8'd10: o16Reg = 12'd102;
            8'd11: o16Reg = 12'd101;
            8'd12: o16Reg = 12'd103;
            8'd13: o16Reg = 12'd112;
            8'd14: o16Reg = 12'd127;
            8'd15: o16Reg = 12'd142;
            8'd16: o16Reg = 12'd148;
            8'd17: o16Reg = 12'd138;
            8'd18: o16Reg = 12'd115;
            8'd19: o16Reg = 12'd90;
            8'd20: o16Reg = 12'd72;
            8'd21: o16Reg = 12'd66;
            8'd22: o16Reg = 12'd68;
            8'd23: o16Reg = 12'd74;
            8'd24: o16Reg = 12'd82;
            8'd25: o16Reg = 12'd94;
            8'd26: o16Reg = 12'd109;
            8'd27: o16Reg = 12'd122;
            8'd28: o16Reg = 12'd130;
            8'd29: o16Reg = 12'd128;
            8'd30: o16Reg = 12'd120;
            8'd31: o16Reg = 12'd109;
            8'd32: o16Reg = 12'd98;
            8'd33: o16Reg = 12'd87;
            8'd34: o16Reg = 12'd75;
            8'd35: o16Reg = 12'd68;
            8'd36: o16Reg = 12'd72;
            8'd37: o16Reg = 12'd91;
            8'd38: o16Reg = 12'd120;
            8'd39: o16Reg = 12'd146;
            8'd40: o16Reg = 12'd158;
            8'd41: o16Reg = 12'd152;
            8'd42: o16Reg = 12'd134;
            8'd43: o16Reg = 12'd112;
            8'd44: o16Reg = 12'd91;
            8'd45: o16Reg = 12'd70;
            8'd46: o16Reg = 12'd46;
            8'd47: o16Reg = 12'd21;
            8'd48: o16Reg = 12'd4;
            8'd49: o16Reg = 12'd0;
            8'd50: o16Reg = 12'd12;
            8'd51: o16Reg = 12'd31;
            8'd52: o16Reg = 12'd50;
            8'd53: o16Reg = 12'd66;
            8'd54: o16Reg = 12'd82;
            8'd55: o16Reg = 12'd101;
            8'd56: o16Reg = 12'd123;
            8'd57: o16Reg = 12'd139;
            8'd58: o16Reg = 12'd144;
            8'd59: o16Reg = 12'd137;
            8'd60: o16Reg = 12'd128;
            8'd61: o16Reg = 12'd124;
            8'd62: o16Reg = 12'd128;
            8'd63: o16Reg = 12'd132;
            8'd64: o16Reg = 12'd130;
            8'd65: o16Reg = 12'd120;
            8'd66: o16Reg = 12'd106;
            
            8'd67:  o16Reg = 12'd103;
            8'd68:  o16Reg = 12'd101;
            8'd69:  o16Reg = 12'd102;
            8'd70:  o16Reg = 12'd101;
            8'd71:  o16Reg = 12'd101;
            8'd72:  o16Reg = 12'd102;
            8'd73:  o16Reg = 12'd102;
            8'd74:  o16Reg = 12'd101;
            8'd75:  o16Reg = 12'd101;
            8'd76:  o16Reg = 12'd103;
            8'd77:  o16Reg = 12'd102;
            8'd78:  o16Reg = 12'd100;
            8'd79:  o16Reg = 12'd108;
            8'd80:  o16Reg = 12'd127;
            8'd81:  o16Reg = 12'd145;
            8'd82:  o16Reg = 12'd144;
            8'd83:  o16Reg = 12'd128;
            8'd84:  o16Reg = 12'd109;
            8'd85:  o16Reg = 12'd93;
            8'd86:  o16Reg = 12'd74;
            8'd87:  o16Reg = 12'd55;
            8'd88:  o16Reg = 12'd48;
            8'd89:  o16Reg = 12'd57;
            8'd90:  o16Reg = 12'd74;
            8'd91:  o16Reg = 12'd88;
            8'd92:  o16Reg = 12'd100;
            8'd93:  o16Reg = 12'd116;
            8'd94:  o16Reg = 12'd131;
            8'd95:  o16Reg = 12'd137;
            8'd96:  o16Reg = 12'd130;
            8'd97:  o16Reg = 12'd115;
            8'd98:  o16Reg = 12'd98;
            8'd99:  o16Reg = 12'd84;
            8'd100:  o16Reg = 12'd76;
            8'd101:  o16Reg = 12'd81;
            8'd102:  o16Reg = 12'd97;
            8'd103:  o16Reg = 12'd119;
            8'd104:  o16Reg = 12'd138;
            8'd105:  o16Reg = 12'd145;
            8'd106:  o16Reg = 12'd138;
            8'd107:  o16Reg = 12'd120;
            8'd108:  o16Reg = 12'd100;
            8'd109:  o16Reg = 12'd83;
            8'd110:  o16Reg = 12'd68;
            8'd111:  o16Reg = 12'd49;
            8'd112:  o16Reg = 12'd29;
            8'd113:  o16Reg = 12'd17;
            8'd114:  o16Reg = 12'd22;
            8'd115:  o16Reg = 12'd39;
            8'd116:  o16Reg = 12'd60;
            8'd117:  o16Reg = 12'd77;
            8'd118:  o16Reg = 12'd92;
            8'd119:  o16Reg = 12'd110;
            8'd120:  o16Reg = 12'd131;
            8'd121:  o16Reg = 12'd146;
            8'd122:  o16Reg = 12'd143;
            8'd123:  o16Reg = 12'd125;
            8'd124:  o16Reg = 12'd109;
            8'd125:  o16Reg = 12'd114;
            8'd126:  o16Reg = 12'd135;
            8'd127:  o16Reg = 12'd147;
            8'd128:  o16Reg = 12'd138;
            8'd129:  o16Reg = 12'd117;
            8'd130:  o16Reg = 12'd103;
            8'd131:  o16Reg = 12'd102;
            8'd132:  o16Reg = 12'd102;
           
            8'd133: o16Reg = 12'd105;
            8'd134: o16Reg = 12'd100;
            8'd135: o16Reg = 12'd100;
            8'd136: o16Reg = 12'd102;
            8'd137: o16Reg = 12'd103;
            8'd138: o16Reg = 12'd102;
            8'd139: o16Reg = 12'd100;
            8'd140: o16Reg = 12'd101;
            8'd141: o16Reg = 12'd103;
            8'd142: o16Reg = 12'd102;
            8'd143: o16Reg = 12'd99;
            8'd144: o16Reg = 12'd102;
            8'd145: o16Reg = 12'd118;
            8'd146: o16Reg = 12'd140;
            8'd147: o16Reg = 12'd151;
            8'd148: o16Reg = 12'd146;
            8'd149: o16Reg = 12'd126;
            8'd150: o16Reg = 12'd102;
            8'd151: o16Reg = 12'd80;
            8'd152: o16Reg = 12'd66;
            8'd153: o16Reg = 12'd67;
            8'd154: o16Reg = 12'd79;
            8'd155: o16Reg = 12'd96;
            8'd156: o16Reg = 12'd115;
            8'd157: o16Reg = 12'd131;
            8'd158: o16Reg = 12'd140;
            8'd159: o16Reg = 12'd136;
            8'd160: o16Reg = 12'd121;
            8'd161: o16Reg = 12'd104;
            8'd162: o16Reg = 12'd88;
            8'd163: o16Reg = 12'd71;
            8'd164: o16Reg = 12'd57;
            8'd165: o16Reg = 12'd55;
            8'd166: o16Reg = 12'd68;
            8'd167: o16Reg = 12'd88;
            8'd168: o16Reg = 12'd108;
            8'd169: o16Reg = 12'd125;
            8'd170: o16Reg = 12'd140;
            8'd171: o16Reg = 12'd146;
            8'd172: o16Reg = 12'd135;
            8'd173: o16Reg = 12'd112;
            8'd174: o16Reg = 12'd92;
            8'd175: o16Reg = 12'd78;
            8'd176: o16Reg = 12'd62;
            8'd177: o16Reg = 12'd41;
            8'd178: o16Reg = 12'd20;
            8'd179: o16Reg = 12'd7;
            8'd180: o16Reg = 12'd5;
            8'd181: o16Reg = 12'd13;
            8'd182: o16Reg = 12'd29;
            8'd183: o16Reg = 12'd47;
            8'd184: o16Reg = 12'd61;
            8'd185: o16Reg = 12'd72;
            8'd186: o16Reg = 12'd87;
            8'd187: o16Reg = 12'd105;
            8'd188: o16Reg = 12'd120;
            8'd189: o16Reg = 12'd130;
            8'd190: o16Reg = 12'd136;
            8'd191: o16Reg = 12'd142;
            8'd192: o16Reg = 12'd143;
            8'd193: o16Reg = 12'd134;
            8'd194: o16Reg = 12'd118;
            8'd195: o16Reg = 12'd105;
            8'd196: o16Reg = 12'd102;
            8'd197: o16Reg = 12'd102;
            8'd198: o16Reg = 12'd102;

        default: 
                o16Reg = 12'd0;
    endcase

end   
    
endmodule
