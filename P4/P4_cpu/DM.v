`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:10 11/11/2021 
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

	
	reg [31:0] mem[0:1023];
	integer i;
	initial begin
		
		for(i = 0;i < 1024; i = i + 1)
			mem[i] = 0;
	end
	
	wire [31:0] t = {{Addr[31:2]},0,0};
	assign RD = mem[Addr[11:2]];
	
	always @ (posedge clk)begin
		if(reset)begin
			for(i = 0;i < 1024; i = i + 1)
				mem[i] <= 0;
		end
		else begin
			if(WE)begin
				$display("@%h: *%h <= %h", PC, Addr, WD);
				//sb $display("",PC,t,WD);
				mem[Addr[11:2]] <=  WD;
			end
			else
				mem[Addr[11:2]] <= mem[Addr[11:2]];
		end
	end
	
endmodule
