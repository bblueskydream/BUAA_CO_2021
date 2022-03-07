`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:31 11/21/2021 
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
		output [31:0] res
);

	
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

