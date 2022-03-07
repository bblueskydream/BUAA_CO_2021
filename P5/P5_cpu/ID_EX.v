`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:01 11/21/2021 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(
	input reset,clk,
    input [31:0] D_I,D_PC,D_RD1,D_RD2,

    output reg [31:0] E_I,E_PC,E_RD1,E_RD2,
    output ExtOp,E_s,
    output [3:0]  E_ALUOP
    );
    
    Controller ctrl(.I(E_I),
					
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
    always @(posedge clk)begin
        if(reset)begin
            E_I <= 0;
            E_PC <= 0;
            E_RD1 <= 0;
            E_RD2 <= 0;
        end
        else begin
            E_I <= D_I;
            E_PC <= D_PC;
            E_RD1 <= D_RD1;
            E_RD2 <= D_RD2;
        end
    end
    
    assign ExtOp = lw | sw | beq | addi;
    
    
    assign E_s = ori | lui | lw | sw | addi;
    assign E_ALUOP = ori             ? 1 :
                    (addu | lw | sw | addi) ? 2 :
                    subu             ? 3 :
                    lui              ? 4 :
                                        0;



endmodule
