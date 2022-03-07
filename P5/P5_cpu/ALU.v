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
		input [3:0] OP,
		//outputs
		output [31:0] res
);

	
		//calculate
		assign res = (OP == 1) ? A | B :
					 (OP == 2) ? A + B :
					 (OP == 3) ? A - B :
					 (OP == 4) ? B << 16:
											0;
endmodule

