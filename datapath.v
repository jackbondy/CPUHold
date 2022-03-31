module CPU(
    input [31:0] MDatain,
    input PCout, Zlowout, MDRout, MARin, Zin, PCin, MDRin, IRin, Yin, incPC, Read, 
	input [4:0] opcode, 
	 input clock, clear,
    input R2In, R2out, R4In, R4out, R5In
);
  
  wire [31:0] BusMuxOut; 
  wire [31:0] BusMuxInR0;
  wire [31:0] BusMuxInR1;
  wire [31:0] BusMuxInR2;
  wire [31:0] BusMuxInR3;
  wire [31:0] BusMuxInR4;
  wire [31:0] BusMuxInR5;
  wire [31:0] BusMuxInR6;
  wire [31:0] BusMuxInR7;
  wire [31:0] BusMuxInR8;
  wire [31:0] BusMuxInR9;
  wire [31:0] BusMuxInR10;
  wire [31:0] BusMuxInR11;
  wire [31:0] BusMuxInR12;
  wire [31:0] BusMuxInR13;
  wire [31:0] BusMuxInR14;
  wire [31:0] BusMuxInR15;
  wire [31:0] BusMuxInZHi;
  wire [31:0] BusMuxInZLo;
  wire [31:0] BusMuxInPC;
  wire [31:0] BusMuxInMDR;
  wire [31:0] BusMuxInRinP;
  wire [31:0] BusMuxInRCSign;
  wire [31:0] BusMuxInRY;
  wire [31:0] ALULoOut; 
  wire [31:0] ALUHiOut; 
  
  wire IRout, Yout, MARout;
  
  reg_32 R0(clock, clear, R0In, BusMuxOut, BusMuxInR0);
  reg_32 R1(clock, clear, R1In, BusMuxOut, BusMuxInR1);
  reg_32 R2(clock, clear, R2In, BusMuxOut, BusMuxInR2);
  reg_32 R3(clock, clear, R3In, BusMuxOut, BusMuxInR3);
  reg_32 R4(clock, clear, R4In, BusMuxOut, BusMuxInR4);
  reg_32 R5(clock, clear, R5In, BusMuxOut, BusMuxInR5);
  reg_32 R6(clock, clear, R6In, BusMuxOut, BusMuxInR6);
  reg_32 R7(clock, clear, R7In, BusMuxOut, BusMuxInR7);
  reg_32 R8(clock, clear, R8In, BusMuxOut, BusMuxInR8);
  reg_32 R9(clock, clear, R9In, BusMuxOut, BusMuxInR9);
  reg_32 R10(clock, clear, R10In, BusMuxOut, BusMuxInR10);
  reg_32 R11(clock, clear, R11In, BusMuxOut, BusMuxInR11);
  reg_32 R12(clock, clear, R12In, BusMuxOut, BusMuxInR12);
  reg_32 R13(clock, clear, R13In, BusMuxOut, BusMuxInR13);
  reg_32 R14(clock, clear, R14In, BusMuxOut, BusMuxInR14);
  reg_32 R15(clock, clear, R15In, BusMuxOut, BusMuxInR15);
  reg_32 RHi(clock, clear, RHiIn, BusMuxOut, BusMuxInRHi);
  reg_32 RLO(clock, clear, RLOIn, BusMuxOut, BusMuxInRLo);
  reg_32 RZHi(clock, clear, Zin, ALUHiOut, BusMuxInZHi);
  reg_32 RZLO(clock, clear, Zin, ALULoOut, BusMuxInZLo);
  reg_32 PC(clock, clear, PCIn, BusMuxOut, BusMuxInPC);
  MDR mdr(clock, clear, MDRin, Read, BusMuxOut, MDatain, BusMuxInMDR); 
  reg_32 IR(clock, clear, RInPIn, BusMuxOut, BusMuxInRInP);
  reg_32 MAR(clock, clear, RCSignIn, BusMuxOut, BusMuxInRCSign);
  reg_32 Y(clock, clear, Yin, BusMuxOut, BusMuxInRY);
  
  bus_combine BUS(R0out,R1out,R2out,R3out,R4out,R5out,R6out,R7out,R8out,R9out,R10out,R11out,R12out,R13out,R14out,R15out,
    HIout,LOout,Zhighout,Zlowout,PCout,MDRout,INportout,Cout,BusMuxInR0,BusMuxInR1,BusMuxInR2, BusMuxInR3,BusMuxInR4,BusMuxInR5,BusMuxInR6,BusMuxInR7,BusMuxInR8,BusMuxInR9,BusMuxInR10,BusMuxInR11,BusMuxInR12,BusMuxInR13,BusMuxInR14,BusMuxInR15,
    BusMuxInHi,BusMuxInLo,BusMuxInZHi,BusMuxInZLo,BusMuxInPC,BusMuxInMDR,BusMuxInRInP,BusMuxInRCSign,BusMuxOut
);
  
	ALU ALU(clk, clr, IncPC, operation, BusMuxInRY, BusMuxOut, ALUHiOut, ALULoOut);
endmodule
