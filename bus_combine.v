module bus_combine (
  input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
  input HIout, LOout, Zhighout, Zlowout, PCout, MDRout, In_Portout, Cout,
  input [31:0] busR0in, busR1in, busR2in, busR3in, busR4in, busR5in, busR6in, busR7in, busR8in, 
				  busR9in, busR10in, busR11in, busR12in, busR13in, busR14in, busR15in, busHIin, 
				  busLOin, busZhighin, busZlowin, busPCin, busMDRin, busIn_Portin, busC_sign_extended,
  output [31:0] busOut);
 
  wire [4:0] s;
  
  encode32_5 busEncode (R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out, HIout, LOout, Zhighout, Zlowout, PCout, MDRout, 
								In_Portout, Cout, S);

  MUX32_1 busMUX (busR0in, busR1in, busR2in, busR3in, busR4in, busR5in, busR6in, busR7in, busR8in, busR9in, busR10in, 
								 busR11in, busR12in, busR13in, busR14in, busR15in, busHIin, busLOin, busZhighin, busZlowin, busPCin, 
								 busMDRin, busIn_Portin, busC_sign_extended, S, busOut);
endmodule
