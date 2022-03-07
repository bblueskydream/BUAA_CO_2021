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
	input reset,clk,D_BD,Stall,IntReq,
    input [31:0] D_I,D_PC,D_RD1,D_RD2,
    input [6:2] D_Exc,

    output reg E_BD0,
    output reg [6:2] E_Exc0,
    output reg [31:0] E_I,E_PC,E_RD1,E_RD2,
    output ExtOp,E_s,E_shamt,start,cal_ov,E_eret,
    output [3:0]  E_ALUOP,E_MDU_OP,E_AO_S
    );
    
    Controller ctrl(.I(E_I),
					
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
    always @(posedge clk)begin
        if(reset | Stall | IntReq)begin
            E_I <= 0;
            E_PC <= Stall ? D_PC : (IntReq ? 32'h0000_4180 : 0);
            E_RD1 <= 0;
            E_RD2 <= 0;
            E_Exc0 <= 0;
            E_BD0 <= Stall ? D_BD : 0;
        end
        else begin
            E_I <= D_I;
            E_PC <= D_PC;
            E_RD1 <= D_RD1;
            E_RD2 <= D_RD2;
            E_Exc0 <= D_Exc;
            E_BD0 <= D_BD;
        end
    end
    
    assign ExtOp =  addi | addiu | lw | lb | lbu | lh | lhu | sw | sb | sh | slti | sltiu;
    

    assign E_s = ori | lui | addi | addiu | andi | lw | lb | lbu | lh | 
                lhu | sw | sb | sh | slti | sltiu | xori;
    assign E_shamt = sll | sra | srl;
    assign E_ALUOP =(ori | or1)             ? 1 :
                    (add | addu | addi | addiu | lw | lb | lbu | lh | lhu | sw | sb | sh) ? 2 :
                    (subu |sub)             ? 3 :
                    lui              ? 4 :
                    (and1 | andi)             ? 5 :
                    nor1 ? 6 :
                    (sll | sllv) ? 7 : 
                    (srl | srlv) ? 8 :
                    (slt | slti) ? 9 :
                    (sltu | sltiu) ? 10 :
                    (sra | srav) ? 11 :
                    (xor1 | xori) ? 12 :
                                        0;
    assign E_MDU_OP =   (multu) ? 1 :
                        (mult) ? 2 :
                        (divu) ? 3 :
                        (div) ? 4 :
                        (mthi) ? 5 :
						(mtlo) ? 6 :
                                0;
    assign start = mult | multu | divu | div;
    assign E_AO_S = mflo ? 1 :
                    mfhi ? 2 :
                            0;

    assign E_eret = eret;

	assign cal_ov = add | addi | sub;

endmodule
