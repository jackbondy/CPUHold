module MUX2_1(
		input enable,
		input [31:0]input0, input1,
		output reg [31:0]output2_1
);
	always @ (*) begin
		if (enable == 1)
			output2_1[31:0] <= input1[31:0];
		else
			output2_1[31:0] <= input0[31:0];
		end
	
endmodule 
