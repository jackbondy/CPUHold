module rol_32_b(
	input wire [31:0] A,
	input wire [4:0] bitrotate,
	output reg [31:0] Z

);

	always @ (*) begin
		case(bitrotate)
			5'd1: Z <= {A[30:0], A[31]};
			5'd2: Z <= {A[29:0], A[31:30]};
			5'd3: Z <= {A[28:0], A[31:29]};
			5'd4: Z <= {A[27:0], A[31:28]};
			5'd5: Z <= {A[26:0], A[31:27]};
			5'd6: Z <= {A[25:0], A[31:26]};
			5'd7: Z <= {A[24:0], A[31:25]};
			5'd8: Z <= {A[23:0], A[31:24]};
			5'd9: Z <= {A[22:0], A[31:23]};
			5'd10: Z <= {A[21:0], A[31:22]};
			5'd11: Z <= {A[20:0], A[31:21]};
			5'd12: Z <= {A[19:0], A[31:20]};
			5'd13: Z <= {A[18:0], A[31:19]};
			5'd14: Z <= {A[17:0], A[31:18]};
			5'd15: Z <= {A[16:0], A[31:17]};
			5'd16: Z <= {A[15:0], A[31:16]};
			5'd17: Z <= {A[14:0], A[31:15]};
			5'd18: Z <= {A[13:0], A[31:14]};
			5'd19: Z <= {A[12:0], A[31:13]};
			5'd20: Z <= {A[11:0], A[31:12]};
			5'd21: Z <= {A[10:0], A[31:11]};
			5'd22: Z <= {A[9:0], A[31:10]};
			5'd23: Z <= {A[8:0], A[31:9]};
			5'd24: Z <= {A[7:0], A[31:8]};
			5'd25: Z <= {A[6:0], A[31:7]};
			5'd26: Z <= {A[5:0], A[31:6]};
			5'd27: Z <= {A[4:0], A[31:5]};
			5'd28: Z <= {A[3:0], A[31:4]};
			5'd29: Z <= {A[2:0], A[31:3]};
			5'd30: Z <= {A[1:0], A[31:2]};
			5'd31: Z <= {A[0], A[31:1]};
			
			default: Z <= A;
		endcase
	end
endmodule


