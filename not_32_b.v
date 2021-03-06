module not_op(
	input wire[31:0] A,
	output wire[31:0] Z
	);
	
	genvar i;
	
	generate 
		for(i = 0; i < 32; i=i+1)
		begin : loop
			assign Z[i] = !Z[A];
		end
	endgenerate
	
endmodule
