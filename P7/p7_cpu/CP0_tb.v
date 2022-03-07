`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:09 12/20/2021
// Design Name:   CP0
// Module Name:   G:/CS_Project/P7/p7_cpu/CP0_tb.v
// Project Name:  p7_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CP0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CP0_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [4:0] A1;
	reg [4:0] A2;
	reg [31:0] Din;
	reg [31:0] PC;
	reg [6:2] ExcCode;
	reg [5:0] HWInt;
	reg WE;
	reg EXLClr;
	reg nBD;

	// Outputs
	wire IntReq;
	wire [31:2] EPC;
	wire [31:0] DOut;

	// Instantiate the Unit Under Test (UUT)
	CP0 uut (
		.clk(clk), 
		.reset(reset), 
		.A1(A1), 
		.A2(A2), 
		.Din(Din), 
		.PC(PC), 
		.ExcCode(ExcCode), 
		.HWInt(HWInt), 
		.WE(WE), 
		.EXLClr(EXLClr), 
		.nBD(nBD), 
		.IntReq(IntReq), 
		.EPC(EPC), 
		.DOut(DOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		A1 = 14;
		A2 = 0;
		Din = 0;
		PC = 0;
		ExcCode = 0;
		HWInt = 0;
		WE = 0;
		EXLClr = 0;
		nBD = 0;
		
		#11 reset = 0;
		PC = 32'h4180; 
		ExcCode = 10;
		#10 reset = 1;
	end
	
	always #2 clk = ~clk;
      
endmodule

