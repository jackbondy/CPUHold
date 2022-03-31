module encode32_5(
		input R0output, R1output, R2output, R3output, R4output, R5output, R6output, R7output, R8output, R9output, R10output, R11output, R12output, R13output, R14output, R15output,
		input HIoutput, LOoutput, ZHioutput, ZLooutput, PCoutput, MDRoutput, In_Portoutput, Coutput,
		output reg [4:0]encode_select
);

	always @ (*) begin
		if(R0output == 1'b1) begin
			encode_select <= 5'd0;
		end
		else if(R1output == 1'b1) begin
			encode_select <= 5'd1;
		end
		else if(R2output == 1'b1) begin
			encode_select <= 5'd2;
		end
		else if(R3output == 1'b1) begin
			encode_select <= 5'd3;
		end
		else if(R4output == 1'b1) begin
			encode_select <= 5'd4;
		end
		else if(R5output == 1'b1) begin
			encode_select <= 5'd5;
		end
		else if(R6output == 1'b1) begin
			encode_select <= 5'd6;
		end
		else if(R7output == 1'b1) begin
			encode_select <= 5'd7;
		end
		else if(R8output == 1'b1) begin
			encode_select <= 5'd8;
		end
		else if(R9output == 1'b1) begin
			encode_select <= 5'd9;
		end
		else if(R10output == 1'b1) begin
			encode_select <= 5'd10;
		end
		else if(R11output == 1'b1) begin
			encode_select <= 5'd11;
		end
		else if(R12output == 1'b1) begin
			encode_select <= 5'd12;
		end
		else if(R13output == 1'b1) begin
			encode_select <= 5'd13;
		end
		else if(R14output == 1'b1) begin
			encode_select <= 5'd14;
		end
		else if(R15output == 1'b1) begin
			encode_select <= 5'd15;
		end
		else if(HIoutput == 1'b1) begin
			encode_select <= 5'd16;
		end
		else if(LOoutput == 1'b1) begin
			encode_select <= 5'd17;
		end
		else if(ZHioutput == 1'b1) begin
			encode_select <= 5'd18;
		end
		else if(ZLooutput == 1'b1) begin
			encode_select <= 5'd19;
		end
		else if(PCoutput == 1'b1) begin
			encode_select <= 5'd20;
		end
		else if(MDRoutput == 1'b1) begin
			encode_select <= 5'd21;
		end
		else if(In_Portoutput == 1'b1) begin
			encode_select <= 5'd22;
		end
		else if(Coutput == 1'b1) begin
			encode_select <= 5'd23;
		end
		else encode_select <= 5'd31;
		end

endmodule
