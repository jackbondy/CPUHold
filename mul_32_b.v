module mul_32_b(input signed [31:0] a, b, output[32*2-1:0] z);

	reg [2:0] temp1[(32 / 2) - 1:0];
	reg [32:0] temp2[(32 / 2) - 1:0];
	reg[32*2-1:0] final[(32/2) - 1:0];
	reg [32*2-1:0] product;
	
	wire[32:0] ia;
	assign ia = {~a[31], ~a} +1;
	
	integer i, j;
	
	always @ (a or b or ia) 
	begin
	
		temp1[0] = {b[1], b[0], 1'b0};
		
		for (j=1; j < (32/2); j = j+1)
			temp1[j] = {b[2*j+1], b[2*j], b[2*j-1]};
			
		for (j=0; j < (32/2); j = j+1) 
		begin	
			case(temp1[j])
				3'b001 : temp2[j] = {a[32-1], a}; 
				3'b010 : temp2[j] = {a[32-1], a};
				3'b011 : temp2[j] = {a, 1'b0};
				3'b100 : temp2[j] = {ia[32-1:0], 1'b0};
				3'b101 : temp2[j] = ia; 
				3'b110 : temp2[j] = ia;
				default : temp2[j] = 0;
			endcase
			final[j] = $signed(temp2[j]);
			
			for (i=0 ; i<j ; i = i + 1)
				final[j] = {final[j], 2'b00};
		end
	
		product = final[0];
	
		for (j=1; j < (32/2); j = j+1)
			product = product + final[j];
	end
	assign z = product;
	
endmodule