module MDR(
		input clk, clr, enable, read,
		input [31:0]BusMUX_output, MDataIn, d,
		output reg [31:0]q
);
	MUX2_1 MDRd (BusMUX_output, MDataIn, read, d);
	
	always @ (posedge clk)
	begin
		if (clr) begin
			q[31:0] <= 32'b0;
		end
		else if (enable) begin
			q[31:0] <= d[31:0];
		end
	end
endmodule 
