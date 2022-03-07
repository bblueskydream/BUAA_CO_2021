`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:51 11/11/2021 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
	//inputs
	input [4:0] A1,A2,A3,
	input clk,
	input reset,
	input WE,
	input [31:0] Data,PC,
	//outputs
	output [31:0] RD1, RD2	

);
	
	
	reg [31:0] GPR [0: 31];
	integer i = 0;
	
	
	initial begin
		for(i = 0;i < 32; i = i + 1)
			GPR[i] <= 0;
	end
	
	assign RD1 = GPR[A1];
	assign RD2 = GPR[A2];
	
	
	always @(posedge clk)begin
		if(reset)begin
			for(i = 0;i < 32; i = i + 1)
				GPR[i] <= 0;
		end
		else begin
			if(WE)begin
				$display("@%h: $%d <= %h", PC, A3, Data);
				if(A3 != 0)
					GPR[A3] <= Data;
			end
			else
				GPR[A3] <= GPR[A3];
		end
	end
	


endmodule
