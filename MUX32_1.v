module MUX32_1( 
	input [31:0] Bus_R0input, Bus_R1input, Bus_R2input, Bus_R3input, Bus_R4input, Bus_R5input, Bus_R6input, Bus_R7input, Bus_R8input, Bus_R9input, Bus_R10input, Bus_R11input, Bus_R12input, Bus_R13input, Bus_R14input, Bus_R15input, 
	input [31:0] Bus_HIinput, Bus_LOinput, Bus_ZHiinput, Bus_ZLoinput, Bus_PCinput, Bus_MDRinput, Bus_InPortinput, Bus_C_sign_extendinput, 
	input wire [4:0]encode_select ,
	output reg [31:0]Bus_output );
	
	always @ (*) begin
		case(encode_select)
			5'd0 : Bus_output <= Bus_R0input[31:0];
			5'd1 : Bus_output <= Bus_R1input[31:0];
			5'd2 : Bus_output <= Bus_R2input[31:0];
			5'd3 : Bus_output <= Bus_R3input[31:0];
			5'd4 : Bus_output <= Bus_R4input[31:0];
			5'd5 : Bus_output <= Bus_R5input[31:0];
			5'd6 : Bus_output <= Bus_R6input[31:0];
			5'd7 : Bus_output <= Bus_R7input[31:0];
			5'd8 : Bus_output <= Bus_R8input[31:0];
			5'd9 : Bus_output <= Bus_R9input[31:0];
			5'd10: Bus_output <= Bus_R10input[31:0];
			5'd11: Bus_output <= Bus_R11input[31:0];
			5'd12: Bus_output <= Bus_R12input[31:0];
			5'd13: Bus_output <= Bus_R13input[31:0];
			5'd14: Bus_output <= Bus_R14input[31:0];
			5'd15: Bus_output <= Bus_R15input[31:0];
			5'd16: Bus_output <= Bus_HIinput[31:0];
			5'd17: Bus_output <= Bus_LOinput[31:0];
			5'd18: Bus_output <= Bus_ZHiinput[31:0];
			5'd19: Bus_output <= Bus_ZLoinput[31:0];
			5'd20: Bus_output <= Bus_PCinput[31:0];
			5'd21: Bus_output <= Bus_MDRinput[31:0];
			5'd22: Bus_output <= Bus_InPortinput[31:0];
			5'd23: Bus_output <= Bus_C_sign_extendinput[31:0];
			default: Bus_output <= 32'd0;
		endcase
	end
endmodule 	
