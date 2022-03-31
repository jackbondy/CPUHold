module add_32_b(input [31:0] A, input [31:0] B, input wire cin, output wire[31:0] sum, output wire Z);
wire Z1;

CLA16 CLA1(.A(A[15:0]), .B(B[15:0]), .cin(cin), .sum(sum[15:0]), .Z(Z1));
CLA16 CLA2(.A(A[31:16]), .B(B[31:16]), .cin(Z1), .sum(sum[31:16]), .Z(Z));

endmodule

module CLA16(input wire [15:0] A, input wire [15:0] B, input wire cin, output wire [15:0] sum, output wire Z);
wire Z1,Z2,Z3;

CLA4 CLA1(.A(A[3:0]), .B(B[3:0]), .cin(cin), .sum(sum[3:0]), .Z(Z1));
CLA4 CLA2(.A(A[7:4]), .B(B[7:4]), .cin(Z1), .sum(sum[7:4]), .Z(Z2));				
CLA4 CLA3(.A(A[11:8]), .B(B[11:8]), .cin(Z2), .sum(sum[11:8]), .Z(Z3));
CLA4 CLA4(.A(A[15:12]), .B(B[15:12]), .cin(Z3), .sum(sum[15:12]), .Z(Z));

endmodule

module CLA4(input wire [3:0] A, input wire [3:0] B, input wire cin, output wire[3:0] sum, output wire Z);
	wire [3:0] P,G,c;

	assign P=A^B;	
	assign G=A&B;
	assign c[0]= cin;
	assign c[1]= G[0] | (P[0]&c[0]);
	assign c[2]= G[1] | (P[1]&G[0]) | P[1]&P[0]&c[0];
	assign c[3]= G[2] | (P[2]&G[1]) | P[2]&P[1]&G[0] | P[2]&P[1]&P[0]&c[0];
	assign Z = G[3] | (P[3]&G[2]) | P[3]&P[2]&G[1] | P[3]&P[2]&P[1]&G[0] | P[3]&P[2]&P[1]&P[0]&c[0];
	assign sum[3:0] =P^c;
	
endmodule