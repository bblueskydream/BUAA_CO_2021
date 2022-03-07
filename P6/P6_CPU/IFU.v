`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:21 11/21/2021 
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
module IFU(
	input clk,
	input reset,              
	input [31:0] npc,
	input WE,
	
	output [31:0] PC
	// output [31:0] Instr
);
	reg [31:0] pc = 32'h0000_3000;
	// reg [31:0] IM_REG[0:4096 - 1];
	// wire [11:0] ADDR;
	// integer i = 0;
	// initial begin
	// 	for(i = 0;i < 4096; i = i + 1)
	// 		IM_REG[i] = 32'h0;
	// 	$readmemh("code.txt",IM_REG);
	// end
	
	// assign ADDR = pc[13:2] - 12'hc00;
	// assign Instr = IM_REG[ADDR];
	assign PC = pc;
	
	always @(posedge clk)begin
		if(reset)
			pc <= 32'h0000_3000;
		else if(WE)begin
			pc <= npc;
		end
	end
	
	
	


endmodule
