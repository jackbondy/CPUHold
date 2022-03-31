module SHL_32_b(
	input wire [31:0] datain,
	input wire [31:0] shiftnum,
	output wire [31:0] cout
);

	assign cout[31:0] = datain << shiftnum;
	
endmodule
