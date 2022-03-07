`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:29:07 12/19/2021 
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
module ALU(
		//inputs
		input [31:0] A,B,
		input [3:0] op,
		//outputs
		output overflow,
		output [31:0] res
);
	wire [32:0] temp;
	assign temp = 	(op == 2) ? {A[31],A} + {B[31],B} :
					(op == 3) ? {A[31],A} - {B[31],B} :
													0;
	assign overflow = temp[32] != temp[31];
	//calculate
	assign res =(op == 1) ? A | B :
				(op == 2) ? A + B :
				(op == 3) ? A - B :
				(op == 4) ? B << 16:
				(op == 5) ? A & B :
				(op == 6) ? ~(A | B) :
				(op == 7) ? (B << A[4:0]) :
				(op == 8) ? (B >> A[4:0]) :
				(op == 9) ? ($signed(A) < $signed(B) ? 1 : 0):
				(op == 10) ? (A < B ? 1 : 0) :
				(op == 11) ? $signed($signed(B) >>> A[4:0]) :
				(op == 12) ? A ^ B :
								0;
	
endmodule

