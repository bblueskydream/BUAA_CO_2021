`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:59 09/29/2021 
// Design Name: 
// Module Name:    sim 
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
module sim(
    input clk,
    input a,
    output b,
    output c
    );
	reg b,c;
	always @(posedge clk)
	begin
			b<=a;
			c<=b;
	end

endmodule
