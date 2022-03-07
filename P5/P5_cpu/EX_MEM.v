`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:32 11/21/2021 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
    input reset,clk,
    input [31:0] E_I,E_PC,E_AO,E_RD2,

    output M_WE,
    output reg [31:0] M_I,M_PC,M_AO,M_RD2
    
    );


	Controller ctrl(.I(M_I),
					
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
            M_I <= 0;
            M_PC <= 0;
            M_AO <= 0;
            M_RD2 <= 0;
        end
        else begin
            M_I <= E_I;
            M_PC <= E_PC;
            M_AO <= E_AO;
            M_RD2 <= E_RD2;
        end
    end
    assign  M_WE = sw; 




endmodule
