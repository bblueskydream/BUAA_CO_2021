`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:37:21 10/22/2021
// Design Name:   BlockChecker
// Module Name:   D:/ISE_CODE/P1_L1_BlockChecker/BlockChecker_tb.v
// Project Name:  P1_L1_BlockChecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockChecker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 0;
		
		in = 0;
		#10 in = " ";
		#10 in = " ";
		#10 in = "E";
		#10 in = "N";
		#10 in = "d";
		#10 in = " ";
		#10 in = " ";
		#10 in = "e";
		#10 in = "n";
		#10 in = "d";
		#10 in = "c";
		#10 in = " ";
		#10 in = "e";
		#10 in = "n";
		#10 in = "d";
		#10 in = " ";
		#10 in = "e";
		#10 in = "N";
		#10 in = "d";
		#10 in = " ";
		#10 in = "b";
		#10 in = "E";
		#10 in = "G";
		#10 in = "i";
		#10 in = "n";
		

	end
      
	always #5 clk = ~clk;
	
endmodule

