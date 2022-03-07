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
    input reset,clk,E_OV,E_BD,IntReq,
    input [31:0] E_I,E_PC,E_AO,E_RD2,
    input [6:2] E_Exc,

    output reg [6:2] M_Exc0,
    output s_w,s_h,s_b,l_w,l_h,l_b,ext,cp0_we,
    output reg M_OV,M_BD0,
    output reg [31:0] M_I,M_PC,M_AO,M_RD2
    
    );


	Controller ctrl(.I(M_I),
					
					.add(add),.addi(addi),.addiu(addiu),.addu(addu),.and1(and1),.andi(andi),
					.beq(beq),.bne(bne),.bgez(bgez),.bgtz(bgtz),.blez(blez),.bltz(bltz),
					.div(div),.divu(divu),.j(j),.jal(jal),.jalr(jalr),.jr(jr),
					.lb(lb),.lbu(lbu),.lh(lh),.lhu(lhu),.lw(lw),.lui(lui),
					.mfhi(mfhi),.mflo(mflo),.mthi(mthi),.mtlo(mtlo),.mult(mult),.multu(multu),
					.nor1(nor1),.or1(or1),.ori(ori),.sb(sb),.sh(sh),
					.sll(sll),.sllv(sllv),.slt(slt),.slti(slti),.sltiu(sltiu),.sltu(sltu),.sra(sra),.srav(srav),.srl(srl),.srlv(srlv),
					.sub(sub),.subu(subu),.sw(sw),.xor1(xor1),.xori(xori),.mtc0(mtc0),.mfc0(mfc0),.eret(eret),
                    .rs(),.rt(),.rd(),.R(),.load(),.store(),.type_i(),.j_l(),.j_rs(),.j_2reg()
					);

    always @ (posedge clk)begin
        if(reset | IntReq)begin
            M_I <= 0;
            M_PC <= IntReq ? 32'h0000_4180 : 0;
            M_AO <= 0;
            M_RD2 <= 0;
            M_OV <= 0;
            M_BD0 <= 0;
            M_Exc0 <= 0;
        end
        else begin
            M_OV <= E_OV;
            M_I <= E_I;
            M_PC <= E_PC;
            M_AO <= E_AO;
            M_RD2 <= E_RD2;
            M_BD0 <= E_BD;
            M_Exc0 <= E_Exc;
        end
    end
    assign ext = lh | lb;
    assign s_w = sw;
    assign s_h = sh;
    assign s_b = sb; 
    assign l_w = lw;
    assign l_h = lh | lhu;
    assign l_b = lb | lbu;
    assign cp0_we = mtc0;


endmodule
