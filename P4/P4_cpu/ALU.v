`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:45 11/11/2021 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define AND 0
`define OR  1
`define ADD 2
`define SUB 3
module ALU(
		//inputs
		input [31:0] SrcA,SrcB,
		input [2:0] ALUOP,
		//outputs
		output [31:0] Result,
		output Zero
);


		parameter ZERO = 0;
	
	
	
		wire [32:0] temp;
		assign temp = {SrcA[31],SrcA} + {SrcB[31],SrcB};
		
		//calculate
		assign Result = (ALUOP == `OR)  ? SrcA | SrcB :
							 (ALUOP == `ADD) ? SrcA + SrcB :
							 (ALUOP == `SUB) ? SrcA - SrcB :
							 (ALUOP == 4) ? (SrcA[31] == 1? (SrcA == {1,31'b0} ? 0 : ({SrcA[31], ~SrcA[30:0]} + 1)) : SrcA ):
															0;
			
		// if temp[32] != temp[31] Overflow Branch sign-extend(offect||0^2)
		assign Zero = (Result == ZERO);
		
		
		
		
endmodule
