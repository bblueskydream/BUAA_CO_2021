`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:45 11/11/2021 
// Design Name: 
// Module Name:    Controller 
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
`include "ALU.v"
`include "IFU.v"
module Controller(
	
	//inputs
	input [5:0] opcode,	//opcode
	input [5:0] func,		//func
	//outputs
	output  RegWrite,
			  RegDst,
			  RaWrite,
			  ExtOp,
			  ALU_s,
			  MemWrite,
	output [2:0] Branch,WD_sel,
	output [2:0] ALUOP

	);
	
		
	
	parameter ZERO = 0,
				 ADDU = 6'b100001,
				 SUBU = 6'b100011,
				 ORI  = 6'b001101,
				 LW   = 6'b100011,
				 SW   = 6'b101011,
				 BEQ  = 6'b000100,
				 LUI  = 6'b001111,
				 JAL  = 6'b000011,
				 JR   = 6'b001000,
				 REGIMM = 6'b000001;
	/*
	wire MemWrite;
	wire ExtOp;
	wire RegWrite,RegDst;
	wire RaWrite;
	wire ALU_s;
	wire [1:0] WD_sel;
	wire [1:0] Branch;
	wire [2:0] ALUOP;
	*/	
	// instruction
	wire zero,addu,subu,ori,lw,sw,beq,lui,jal,jr,regimm;
	//R
	assign zero = (opcode == ZERO);
	assign addu = zero & (func == ADDU);
	assign subu = zero & (func == SUBU);
	assign jr = zero & (func == JR);
	
	assign regimm = opcode == REGIMM;
	
	//I
	assign ori = (opcode == ORI);
	assign lw = (opcode == LW);
	assign sw = (opcode == SW);
	assign beq = (opcode == BEQ);
	assign lui = (opcode == LUI);
	assign jal = (opcode == JAL);
	
	
	//instruction
	assign RegDst = addu || subu;
	assign RegWrite = addu || subu || ori || lui || lw || jal | regimm;
	assign ALUOP = (addu || lw || sw) ? `ADD :
						(subu || beq) ? `SUB :
						(ori)  ? `OR  :
									0 ;
	assign RaWrite = jal | regimm;
	assign ExtOp = lw || sw || beq || regimm;
	assign ALU_s = ori || lw || sw;
	assign WD_sel = (lw)						? 3'b1:
						 (jal)					? 3'b10:
						 (lui)					? 3'b11:
													  0;
	assign Branch = (beq | regimm) ? `BEQ :
						 (jal) ? `JAL :
						 (jr)  ? `REG :
									`ADD4;
	assign MemWrite = sw;
	
endmodule
