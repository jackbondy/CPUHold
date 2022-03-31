module inc_pc(
	input clk, IncPc, e,
	input [31:0] in,
	output reg[31:0] out
);

always @ (posedge clk)
begin	
	if(IncPc == 1 && e == 1)
		out <= out + 1;
	else if (e == 1)
		out <= in;
		
end
endmodule
