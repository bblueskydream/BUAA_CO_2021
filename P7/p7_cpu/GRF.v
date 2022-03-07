`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:58 11/21/2021 
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
	
	
	reg [31:0] GPR [0: 32 - 1];
	integer i;
	
	
	initial begin
		for(i = 0;i < 32; i = i + 1)
			GPR[i] <= 0;
	end
	
	assign RD1 = A1 == A3 && A3 && WE ? Data : GPR[A1];//data in if_id mem_wb
	assign RD2 = A2 == A3 && A3 && WE ? Data : GPR[A2];//data in if_id mem_wb
	
	
	always @(posedge clk)begin
		if(reset)begin
			for(i = 0;i < 32; i = i + 1)
				GPR[i] <= 0;
		end
		else begin
			if(WE)begin
				// $display("%d@%h: $%d <= %h", $time,PC, A3, Data);
				//$display("@%h: $%d <= %h", PC, A3, Data);
				if(A3 != 0)
					GPR[A3] <= Data;
			end
			else
				GPR[A3] <= GPR[A3];
		end
	end
	


endmodule

