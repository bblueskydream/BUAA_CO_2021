`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:07 12/13/2021
// Design Name:   SFU
// Module Name:   G:/CS_Project/P6/P6_CPU/sfu_tb.v
// Project Name:  P6_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sfu_tb;

	// Inputs
	reg [31:0] d_I;
	reg [31:0] ex_I;
	reg [31:0] mem_I;
	reg [31:0] wb_I;
	reg busy;
	reg start;

	// Outputs
	wire Stall;
	wire [3:0] RD1_s;
	wire [3:0] RD2_s;
	wire [3:0] SrcA_s;
	wire [3:0] SrcB_s;
	wire [3:0] M_Data_s;

	// Instantiate the Unit Under Test (UUT)
	SFU uut (
		.d_I(d_I), 
		.ex_I(ex_I), 
		.mem_I(mem_I), 
		.wb_I(wb_I), 
		.busy(busy), 
		.start(start), 
		.Stall(Stall), 
		.RD1_s(RD1_s), 
		.RD2_s(RD2_s), 
		.SrcA_s(SrcA_s), 
		.SrcB_s(SrcB_s), 
		.M_Data_s(M_Data_s)
	);

	initial begin
		// Initialize Inputs
		d_I = 32'h34252030;
		ex_I = 32'h3c01ffff;
		mem_I = 0;
		wb_I = 0;
		busy = 0;
		start = 0;
	end
      
endmodule

