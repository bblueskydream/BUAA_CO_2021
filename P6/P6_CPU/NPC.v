`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:30 12/12/2021 
// Design Name: 
// Module Name:    NPC 
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
`include "define.v"
module NPC(
	input [31:0] D_PC,PC,imm_1,D_RD1,imm_jal,
	input [3:0] D_Branch,
	input zero,gez,gz,lz,lez,
	
	output [31:0] npc
    );
	assign npc = 	(D_Branch == `BEQ)  ? ( zero ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)) :
					(D_Branch == `BNE) ? ( !zero ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)) :
					(D_Branch == `BGEZ) ? (gez ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
					(D_Branch == `BGTZ) ? (gz ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
					(D_Branch == `BLEZ) ? (lez ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
					(D_Branch == `BLTZ) ? (lz ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
					(D_Branch == `JAL)  ? imm_jal :
					(D_Branch == `REG)  ? D_RD1 :
										(PC + 4);

endmodule
