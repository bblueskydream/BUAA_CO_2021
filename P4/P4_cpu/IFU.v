`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:11 11/11/2021 
// Design Name: 
// Module Name:    IFU 
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
`define ADD4 0
`define BEQ  1
`define JAL  2
`define REG  3
module IFU(
	input clk,
	input reset,
	input [31:0] npc,
	
	output [31:0] PC,
	output [31:0] PC4,
	output [31:0] Instr
);
	reg [31:0] pc = 32'h0000_3000;
	reg [31:0] IM_REG[0:1023];
	wire [9:0] ADDR;
	
	integer i = 0;
	
	initial begin
		for(i = 0;i < 1024; i = i + 1)IM_REG[i] = 0;
		$readmemh("code.txt",IM_REG);
	end
	
	assign ADDR = pc[11:2];
	assign Instr = IM_REG[ADDR];
	assign PC4 = PC + 4;
	assign PC = pc;
	
	always @(posedge clk)begin
		if(reset)
			pc <= 32'h0000_3000;
		else begin
			pc <= npc;
		end
	end
	
	
	


endmodule
