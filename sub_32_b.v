module sub_32_b(input wire[31:0] A, input wire [31:0] B, input wire cin, output wire[31:0] sum, output wire Z);
	wire[31:0] Temp1;
	neg_op neg(.A(b), .Z(Temp1));
	add_32_b add(.A(A), .B(Temp1), .cin(in), .sum(sum), .Z(Z));
	
endmodule