`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:57:11 12/12/2021
// Design Name:   MDU
// Module Name:   G:/CS_Project/P6/P6_CPU/MDU_tb.v
// Project Name:  P6_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MDU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MDU_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] MDU_OP;
	reg start;
	reg clk;
	reg reset;

	// Outputs
	wire Busy;
	wire [31:0] hi;
	wire [31:0] lo;

	// Instantiate the Unit Under Test (UUT)
	MDU uut (
		.A(A), 
		.B(B), 
		.MDU_OP(MDU_OP), 
		.start(start), 
		.clk(clk), 
		.reset(reset), 
		.Busy(Busy), 
		.hi(hi), 
		.lo(lo)
	);

	initial begin
		// Initialize Inputs
		A = 20;
		B = 30;
		MDU_OP = 1;
		start = 1;
		clk = 0;
		reset = 0;
		#10 start = 0;
	end
      
	always #5 clk = ~clk;
endmodule

