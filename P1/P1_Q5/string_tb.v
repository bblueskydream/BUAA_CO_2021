`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:38 10/21/2021
// Design Name:   string
// Module Name:   D:/ISE_CODE/P1_Q5/string_tb.v
// Project Name:  P1_Q5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module string_tb;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		clr = 0;
		
		in = "1";
		#10 in = "+";
		#10 in = "1";
		#10 in = "+";
		
	end
	always #5 clk = ~clk;
      
endmodule

