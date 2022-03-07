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
    input [31:0] M_I,M_PC,M_RD,M_AO,M_Out,M_EPC,

	output WE,ra,RegDst,cp0_we,W_eret,
	output reg [31:0] GRF_PC,GRF_I,W_RD,W_AO,W_Out,W_EPC,
    output [2:0] WD_S,
	output [4:0] CP0_A2

    );
	Controller ctrl(.I(GRF_I),
					
					.add(add),.addi(addi),.addiu(addiu),.addu(addu),.and1(and1),.andi(andi),
					.beq(beq),.bne(bne),.bgez(bgez),.bgtz(bgtz),.blez(blez),.bltz(bltz),
					.div(div),.divu(divu),.j(j),.jal(jal),.jalr(jalr),.jr(jr),
					.lb(lb),.lbu(lbu),.lh(lh),.lhu(lhu),.lw(lw),.lui(lui),
					.mfhi(mfhi),.mflo(mflo),.mthi(mthi),.mtlo(mtlo),.mult(mult),.multu(multu),
					.nor1(nor1),.or1(or1),.ori(ori),.sb(sb),.sh(),
					.sll(sll),.sllv(sllv),.slt(slt),.slti(slti),.sltiu(sltiu),.sltu(sltu),.sra(sra),.srav(srav),.srl(srl),.srlv(srlv),
					.sub(sub),.subu(subu),.sw(sw),.xor1(xor1),.xori(xori),.mfc0(mfc0),.mtc0(mtc0),.eret(eret),
					.rs(),.rt(),.rd(),.R(),.load(),.store(),.type_i(),.j_l(),.j_rs(),.j_2reg()
					);
	wire R = GRF_I[31:26] == 0;
	always @(posedge clk) begin
		if(reset)begin
			GRF_PC <= 0;
			GRF_I <= 0;
			W_RD <= 0;
			W_AO <= 0;
			W_Out <= 0;
			W_EPC <= 0;
		end
		else begin
			//$display("%d %d\n", WE, RegDst);
			GRF_PC <= M_PC;
			GRF_I <= M_I;
			W_RD <= M_RD;
			W_AO <= M_AO;
			W_Out <= M_Out;
			W_EPC <= M_EPC;
		end
	end

	assign WE = R | lb | lbu | lh | lhu | lw | jal | 
				addi | addiu | andi | lui | ori | slti | sltiu | xori | mfc0;

	assign RegDst = R;
	assign ra = jal;

	assign W_eret = eret;
	assign WD_S =   (lw | lh | lhu | lb | lbu)   ? 1 :
					(jal | jalr)  ? 2 :
					mfc0 ? 3 :
							0;

endmodule
