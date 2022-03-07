`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:46 11/21/2021 
// Design Name: 
// Module Name:    IF_ID 
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
`include "IFU.v"
module IF_ID(
	input reset,clk,WE,
	input [31:0] F_I,F_PC,

	output reg [31:0] D_I,D_PC,
	output [3:0] D_Branch
    );
	
	Controller ctrl(.I(D_I),
					
					.addu(addu),
					.subu(subu),
					.ori(ori),
					.lw(lw),
					.sw(sw),
					.beq(beq),
					.lui(lui),
					.jal(jal),
					.jr(jr),
					.j(j),
					.addi(addi),
					.jalr(jalr),
					.rs(),.rt(),.rd(),.R(),.load(),.store(),.type_i(),.j_l(),.j_ra(),.j_2reg()
					);

	always @ (posedge clk)begin
		if(reset)begin
			D_I <= 0;
			D_PC <= 0;
		end	
		else if(WE) begin
			D_I <= F_I;
			D_PC <= F_PC;
		end
	end
	assign D_Branch = 	beq ? `BEQ :
						jal | j? `JAL :
						jr | jalr  ? `REG :
								0;


	

endmodule
