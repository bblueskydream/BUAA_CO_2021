`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:26 10/21/2021 
// Design Name: 
// Module Name:    ext 
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
module ext(
	input [15:0] imm,
	input [1:0] EOp,
	output [31:0] ext
    );
	

	assign ext = (EOp == 0)     ? {imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15], imm} :
					 (EOp == 2'b1)  ? {0, imm} :
					 (EOp == 2'b10) ? {imm, 0} :
					 (EOp == 2'b11) ? ({imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15],imm[15], imm} << 2'b10) : 
											0;
	always@(*)begin
		
	end


endmodule
