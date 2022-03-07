`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:55:03 12/10/2021 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
	input [31:0] A,B,
	output zero,gez,gz,lez,lz
    );

	assign zero = A == B;
	assign gez = ($signed(A) >= $signed(0));
	assign gz = ($signed(A) > $signed(0));
	assign lez = ($signed(A) <= $signed(0));
	assign lz = ($signed(A) < $signed(0));

endmodule
