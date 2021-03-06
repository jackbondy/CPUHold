module div_32_b(input signed[31:0] a, b, output reg[31:0] z);
	reg[63:32] high, low;
	
	always @ (*)
	begin
		high = a % b;
		low = (a - high) / b;
		
		begin	
			z = {high, low};
			
		end
	end
	
endmodule