module reg_32(
		input wire clk, clr, enable,
		input wire [31:0]d,
		output reg [31:0]q
);

	initial q = 0;
	always@(posedge clk)
	begin
		if (clr) begin
			q[31:0] = 32'b0;
		end
		else if (enable) begin
			q[31:0] = d[31:0];
		end
	end
endmodule
