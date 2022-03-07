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
	input reset,clk,WE,F_BD,IntReq,
	input [31:0] F_I,F_PC,
	input [6:2] F_Exc,

	output RI,
	output reg D_BD0,
	output reg [6:2] D_Exc0,
	output reg [31:0] D_I,D_PC,
	output [3:0] D_Branch,
	output [4:0] A1
    );


	Controller ctrl(.I(D_I),
					
					.add(add),.addi(addi),.addiu(addiu),.addu(addu),.and1(and1),.andi(andi),
					.beq(beq),.bne(bne),.bgez(bgez),.bgtz(bgtz),.blez(blez),.bltz(bltz),
					.div(div),.divu(divu),.j(j),.jal(jal),.jalr(jalr),.jr(jr),
					.lb(lb),.lbu(lbu),.lh(lh),.lhu(lhu),.lw(lw),.lui(lui),
					.mfhi(mfhi),.mflo(mflo),.mthi(mthi),.mtlo(mtlo),.mult(mult),.multu(multu),
					.nor1(nor1),.or1(or1),.ori(ori),.sb(sb),.sh(sh),
					.sll(sll),.sllv(sllv),.slt(slt),.slti(slti),.sltiu(sltiu),.sltu(sltu),.sra(sra),.srav(srav),.srl(srl),.srlv(srlv),
					.sub(sub),.subu(subu),.sw(sw),.xor1(xor1),.xori(xori),.mfc0(mfc0),.mtc0(mtc0),.eret(eret),
					.rs(),.rt(),.rd(),.R(),.load(),.store(),.type_i(),.j_l(),.j_rs(),.j_2reg()
					);

	always @ (posedge clk)begin
		if(reset | IntReq)begin
			D_I <= 0;
			D_PC <= IntReq ? 32'h0000_4180 : 0;
			D_Exc0 <= 0;
			D_BD0 <= 0;
		end	
		else if(WE) begin
			D_I <= F_I;
			D_PC <= F_PC;
			D_Exc0 <= F_Exc;
			D_BD0 <= F_BD;
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
						eret ? `ERET :
								0;
	assign A1 = D_I[15:11];
	assign cp0_we = mtc0;
	assign RI = !(add | addi | addiu | addu | and1 | andi | 
				beq | bgez | bgtz | blez | bltz | bne | 
				div | divu | eret | j | jal | jalr | jr |
				lb | lbu | lh | lhu | lui | lw |
				mfc0 | mfhi | mflo | mtc0 | mthi | mtlo |
				mult | multu | nor1 | or1 | ori | 
				sb | sh | sll | sllv | slt | slti | sltiu | sltu |
				sra | srav | srl | srlv | sub | subu | sw |
				xor1 | xori | (D_I == 32'd0));

endmodule
