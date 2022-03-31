module ALU(
  input clk, clr, IncPC,
  
  input wire [4:0] opcode,
  input wire [31:0] y_reg,
  input wire [63:0] b_reg,
  output reg [63:0] regZhi, regZlo
  );
 
  
  wire [31:0] IncPCoutput, shroutput, shloutput, oroutput, andoutput, negoutput, notoutput, addersum, addercoutput, subsum, subcoutput, roloutput, roroutput;
  wire [63:0] muloutput, divoutput;
  
  always @ (*)
    begin
      case(opcode)
        5'b00011: begin
          regZlo[31:0] <= addersum[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b00100: begin
          regZlo[31:0] <= subsum[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b01010, 5'b01101: begin
          regZlo[31:0] <= oroutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b01001, 5'b01100: begin
          regZlo[31:0] <= andoutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b10000: begin
          regZlo[31:0] <= negoutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b10001: begin
          regZlo[31:0] <= notoutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b00101: begin
          regZlo[31:0] <= shroutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b00110: begin
          regZlo[31:0] <= shloutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b00111: begin
          regZlo[31:0] <= roroutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b01000: begin
          regZlo[31:0] <= roloutput[31:0];
          regZhi[63:32] <= 32'd0;
        end
        5'b01110: begin
          regZlo[63:32] <= muloutput[63:32];
          regZhi[31:0] <= muloutput[31:0];
        end
				5'b01111: begin
	  regZlo[63:32] <= divoutput[63:32];
	  regZhi[31:0] <= divoutput[31:0];
				end
        default: begin
					regZlo <= 32'd0;
          regZhi <= 32'd0;
				end
      endcase
    end

	or_op oro(y_reg, b_reg, oroutput);
	and_32_b ando(y_reg, b_reg, andoutput);
	neg_op neg(y_reg, neg_out);
	not_op noto(y_reg, not_out);
	add_32_b add(.A(a_reg), .B(b_reg),.cin({1'd0}),.sum(addersum),.Z(addercoutput));
	sub_32_b sub(.A(a_reg), .B(b_reg),.cin({1'd0}),.sum(subsum),.Z(subcoutput));
	ror_32_b ror(y_reg, b_reg,roroutput);
	rol_32_b rol(y_reg, b_reg,roloutput);
	SHL_32_b shl(y_reg, b_reg,shloutput);
	SHR_32_b shr(y_reg, b_reg,shroutput);
	div_32_b div(y_reg, b_reg,divoutput);
	mul_32_b mul(y_reg, b_reg,muloutput);
	//IncPC_32_bit pc_inc(IncPC, a_reg, IncPC_out);
  
endmodule
