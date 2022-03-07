`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:55 11/21/2021 
// Design Name: 
// Module Name:    DM 
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
module DM(
	input clk,	//clock
	input reset,	//reset
	input WE,	//memory write enable
	input [31:0] Addr,	//memory's address for write
	input [31:0] WD,		//write data
	input [31:0] PC,
	
	output [31:0] RD		//read data
);

	
	reg [31:0] mem[0:3072 - 1];
	integer i;
	initial begin
		for(i = 0;i < 3072; i = i + 1)
			mem[i] = 0;
	end
	wire [10:0] Ad;
	assign Ad = Addr[12:2];
	assign RD = mem[Ad];
	
	always @ (posedge clk)begin
		if(reset)begin
			for(i = 0;i < 3072; i = i + 1)
				mem[i] <= 0;
		end
		else begin
			if(WE)begin
				$display("%d@%h: *%h <= %h", $time,PC, Addr, WD);
				//$display("@%h: *%h <= %h", PC, Addr, WD);
				mem[Ad] <=  WD;
			end
			else
				mem[Ad] <= mem[Ad];
		end
	end
	
	
	
	
	

endmodule
