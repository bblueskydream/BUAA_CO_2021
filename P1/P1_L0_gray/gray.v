`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:12 10/21/2021 
// Design Name: 
// Module Name:    gray 
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
module gray(
	input Clk,
	input Reset,
	input En,
	output [2:0] Output,
	output Overflow
    );
	reg flag = 0;
	reg [2:0] cal = 0;
	assign Output = {cal[2], cal[2] ^ cal[1], cal[1] ^ cal[0]};
	assign Overflow = (flag == 1'b1) ? 1 : 0;

	always @(posedge Clk)begin
		if(Reset == 1)begin
			cal <= 0;
			flag <= 0;
		end
		else begin
			if(En == 1)begin
				if(cal == 3'b111)begin
						flag <= 1;
						cal <= 0;
				end
				else begin
					flag <= flag;
					cal <= cal + 1;
				end
			end	
			else begin
				flag <= flag;
				cal <= cal;
			end
		end
	end
	

endmodule
