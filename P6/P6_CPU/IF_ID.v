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
`include "define.v"
module IF_ID(
	input reset,clk,WE,
	input [31:0] F_I,F_PC,

	output reg [31:0] D_I,D_PC,
	output [3:0] D_Branch
    );
	
	Controller ctrl(.I(D_I),
					
					.add(add),.addi(addi),.addiu(addiu),.addu(addu),.and1(and1),.andi(andi),
					.beq(beq),.bne(bne),.bgez(bgez),.bgtz(bgtz),.blez(blez),.bltz(bltz),
					.div(div),.divu(divu),.j(j),.jal(jal),.jalr(jalr),.jr(jr),
					.lb(lb),.lbu(lbu),.lh(lh),.lhu(lhu),.lw(lw),.lui(lui),
					.mfhi(mfhi),.mflo(mflo),.mthi(mthi),.mtlo(mtlo),.mult(mult),.multu(multu),
					.nor1(nor1),.or1(or1),.ori(ori),.sb(sb),.sh(sh),
					.sll(sll),.sllv(sllv),.slt(slt),.slti(slti),.sltiu(sltiu),.sltu(sltu),.sra(sra),.srav(srav),.srl(srl),.srlv(srlv),
					.sub(sub),.subu(subu),.sw(sw),.xor1(xor1),.xori(xori),
					.rs(),.rt(),.rd(),.R(),.load(),.store(),.type_i(),.j_l(),.j_rs(),.j_2reg()
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
						bne ? `BNE :
						bgez ? `BGEZ :
						bgtz ? `BGTZ :
						blez ? `BLEZ :
						bltz ? `BLTZ :
						jal | j? `JAL :
						jr | jalr  ? `REG :
								0;


	

endmodule
