module neg_op(
	input wire[31:0] A,
	output wire[31:0] Z
);

	wire[31:0] T;
	wire out;
	
	not_op not_op(.A(A), .Z(T));
	add_32_b add(.A(A), .B(32'd1), .cin(1'd0), .sum(Z), .Z(cout));
	
endmodule
