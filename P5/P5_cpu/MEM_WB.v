`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:45 11/21/2021 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(
    input reset,clk,
    input [31:0] M_I,M_PC,M_RD,M_AO,

	output WE,ra,RegDst,
	output reg [31:0] GRF_PC,GRF_I,W_RD,W_AO,
    output [2:0] WD_S
    );
	Controller ctrl(.I(GRF_I),
					
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
	always @(posedge clk) begin
		if(reset)begin
			GRF_PC <= 0;
			GRF_I <= 0;
			W_RD <= 0;
			W_AO <= 0;
		end
		else begin
			//$display("%d %d\n", WE, RegDst);
			GRF_PC <= M_PC;
			GRF_I <= M_I;
			W_RD <= M_RD;
			W_AO <= M_AO;
		end
	end

	assign WE = addu | subu | ori | lw | lui | jal | addi | jalr;

	assign RegDst = addu | subu | jalr;
	assign ra = jal;

	assign WD_S =   lw   ? 1 :
					(jal | jalr)  ? 2 :
							0;

endmodule
