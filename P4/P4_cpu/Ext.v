`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:38 11/11/2021 
// Design Name: 
// Module Name:    Ext 
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
module Ext(
	input [15:0] imm_16,
	input ExtOp,
	output [31:0] Result
);
	
	
	assign Result = (ExtOp == 1) ? {{16{imm_16[15]}}, imm_16} :
											 {16'b0,imm_16} ;





endmodule
