`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:19 11/21/2021 
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
module Controller(
	
	//inputs
	// input [5:0] opcode,	//opcode
	// input [5:0] func,		//func
	input [31:0] I,
	//outputs
	output addu,subu,ori,lw,sw,beq,lui,jal,jr,j,addi,jalr,
	output [4:0] rs,rt,rd,
	output R,load,store,type_i,j_l,j_ra,j_2reg

	);
	
	
	wire [5:0] opcode = I[31:26];
	wire [5:0] func = I[5:0];
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
				J    = 6'b000010,
				ADDI = 6'b001000,
				JALR = 6'b001001;
	// instruction
	wire zero;
	//R
	assign zero = (opcode == ZERO);
	assign addu = zero & (func == ADDU);
	assign subu = zero & (func == SUBU);
	assign jr = zero & (func == JR);
	assign jalr = zero & (func == JALR);
	// always @ * begin
	// 	$display("%d\n",ori);
	// end
	
	//I
	assign addi = opcode == ADDI;
	assign ori = (opcode == ORI);
	assign lw = (opcode == LW);
	assign sw = (opcode == SW);
	assign beq = (opcode == BEQ);
	assign lui = (opcode == LUI);
	assign jal = (opcode == JAL);
	assign j = (opcode == J);
	
	//sort instructions
	assign rs = I[25:21];
	assign rt = I[20:16];
	assign rd = jal ? 31 : I[15:11];
	assign R = addu | subu;
	assign load = lw;
	assign store = sw;
	assign type_i = ori | lui | addi;	// rs
	assign j_l = jal | jalr;
	assign j_ra = jr | jalr;
	assign j_2reg = beq;
	//assign jal
	//assign jr
	//assign beq



	
endmodule