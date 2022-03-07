`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:01 11/21/2021 
// Design Name: 
// Module Name:    SFU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//20
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SFU(
	input [31:0] d_I,ex_I,mem_I,wb_I,
    input busy,start,

    output Stall,
    output [3:0] RD1_s,RD2_s,SrcA_s,SrcB_s,M_Data_s
	
    );
	wire [4:0] d_rs,d_rt,d_rd;
    Controller ctrl_d(
        .I(d_I),
        
        .rs(d_rs),
        .rt(d_rt),
        .rd(d_rd),
        .R(d_R),
        .type_i(d_i),
        .load(d_load),
        .store(d_store),
        .j_l(d_jal),
        .j_2reg(d_j_2reg),
        .j_rs(d_j_rs),
        .m_d(d_md),
        .rw_hl(d_hl),
        .mfc0(d_mfc0),
        .eret(d_eret),
        .add(),.addi(),.addiu(),.addu(),.and1(),.andi(),
        .beq(),.bne(),.bgez(),.bgtz(),.blez(),.bltz(),
        .div(),.divu(),.j(),.jal(),.jalr(),.jr(),
        .lb(),.lbu(),.lh(),.lhu(),.lw(),.lui(),
        .mfhi(),.mflo(),.mthi(),.mtlo(),.mult(),.multu(),
        .nor1(),.or1(),.ori(),.sb(),.sh(),
        .sll(),.sllv(),.slt(),.slti(),.sltiu(),.sltu(),.sra(),.srav(),.srl(),.srlv(),
        .sub(),.subu(),.sw(),.xor1(),.xori()
    );
	wire [4:0] ex_rs,ex_rt,ex_rd;
    Controller ctrl_ex(
        .I(ex_I),
        
        .rs(ex_rs),
        .rt(ex_rt),
        .rd(ex_rd),
        .R(ex_R),
        .type_i(ex_i),
        .load(ex_load),
        .store(ex_store),
        .j_l(ex_jal),
        .j_2reg(ex_j_2reg),
        .j_rs(ex_j_rs),
        .m_d(ex_md),
        .rw_hl(ex_hl),
        .mfc0(ex_mfc0),
		.mtc0(ex_mtc0),
        .add(),.addi(),.addiu(),.addu(),.and1(),.andi(),
        .beq(),.bne(),.bgez(),.bgtz(),.blez(),.bltz(),
        .div(),.divu(),.j(),.jal(),.jalr(),.jr(),
        .lb(),.lbu(),.lh(),.lhu(),.lw(),.lui(),
        .mfhi(),.mflo(),.mthi(),.mtlo(),.mult(),.multu(),
        .nor1(),.or1(),.ori(),.sb(),.sh(),
        .sll(),.sllv(),.slt(),.slti(),.sltiu(),.sltu(),.sra(),.srav(),.srl(),.srlv(),
        .sub(),.subu(),.sw(),.xor1(),.xori()
    );
	wire [4:0] mem_rs,mem_rt,mem_rd;
    Controller ctrl_mem(
        .I(mem_I),
        
        .rs(mem_rs),
        .rt(mem_rt),
        .rd(mem_rd),
        .R(mem_R),
        .type_i(mem_i),
        .load(mem_load),
        .store(mem_store),
        .j_l(mem_jal),
        .j_2reg(mem_j_2reg),
        .j_rs(mem_j_rs),
        .m_d(mem_md),
        .rw_hl(mem_hl),
        .mfc0(mem_mfc0),
		.mtc0(mem_mtc0),
        .add(),.addi(),.addiu(),.addu(),.and1(),.andi(),
        .beq(),.bne(),.bgez(),.bgtz(),.blez(),.bltz(),
        .div(),.divu(),.j(),.jal(),.jalr(),.jr(),
        .lb(),.lbu(),.lh(),.lhu(),.lw(),.lui(),
        .mfhi(),.mflo(),.mthi(),.mtlo(),.mult(),.multu(),
        .nor1(),.or1(),.ori(),.sb(),.sh(),
        .sll(),.sllv(),.slt(),.slti(),.sltiu(),.sltu(),.sra(),.srav(),.srl(),.srlv(),
        .sub(),.subu(),.sw(),.xor1(),.xori()
    );
	wire [4:0] wb_rs,wb_rt,wb_rd;
    Controller ctrl_wb(
        .I(wb_I),
        
        .rs(wb_rs),
        .rt(wb_rt),
        .rd(wb_rd),
        .R(wb_R),
        .type_i(wb_i),
        .load(wb_load),
        .store(wb_store),
        .j_l(wb_jal),
        .j_2reg(wb_j_2reg),
        .j_rs(wb_j_rs),
        .m_d(wb_md),
        .rw_hl(wb_hl),
        .mfc0(wb_mfc0),
		.mtc0(wb_mtc0),
        .add(),.addi(),.addiu(),.addu(),.and1(),.andi(),
        .beq(),.bne(),.bgez(),.bgtz(),.blez(),.bltz(),
        .div(),.divu(),.j(),.jal(),.jalr(),.jr(),
        .lb(),.lbu(),.lh(),.lhu(),.lw(),.lui(),
        .mfhi(),.mflo(),.mthi(),.mtlo(),.mult(),.multu(),
        .nor1(),.or1(),.ori(),.sb(),.sh(),
        .sll(),.sllv(),.slt(),.slti(),.sltiu(),.sltu(),.sra(),.srav(),.srl(),.srlv(),
        .sub(),.subu(),.sw(),.xor1(),.xori()
    );
    // R i load store jal j_2reg jr
    assign Stall =  (d_j_2reg | d_j_rs) && ex_R && (d_rs == ex_rd | d_rt == ex_rd) && ex_rd ||
                    (d_j_2reg | d_j_rs) && (ex_i | ex_load) && (d_rs == ex_rt | d_rt == ex_rt) && ex_rt ||
                    (d_j_2reg | d_j_rs) && (mem_load) && (d_rs == mem_rt | d_rt == mem_rt) && mem_rt ||
                    d_R && (ex_load) && (d_rs == ex_rt | d_rt == ex_rt) && ex_rt ||
                    (d_i | d_store | d_load)&& (ex_load) && (d_rs == ex_rt) && ex_rt ||
                    (d_eret) && (ex_mtc0 | mem_mtc0) && (ex_rd == 14 | mem_rd == 14) ||
                    (busy | start) && (d_md | d_hl);
                    //sw lw
    //jal
    assign RD1_s =  (d_j_2reg | d_j_rs) && ex_jal && (d_rs == ex_rd) && ex_rd ? 1 :
                    (d_j_2reg | d_j_rs) && mem_jal && (d_rs == mem_rd) && mem_rd ? 2 :
                    (d_j_2reg | d_j_rs) && mem_R && (d_rs == mem_rd) && mem_rd ? 3 :
                    (d_j_2reg | d_j_rs) && mem_i && (d_rs == mem_rt) && mem_rt ? 3 :
                    0;

    // jr don't use GPR[rt]
    assign RD2_s =  (d_j_2reg) && ex_jal && (d_rt == ex_rd) && ex_rd ? 1 :
                    (d_j_2reg) && mem_jal && (d_rt == mem_rd) && mem_rd ? 2 :
                    (d_j_2reg) && mem_R && (d_rt == mem_rd) && mem_rd ? 3 :
                    (d_j_2reg) && mem_i && (d_rt == mem_rt) && mem_rt ? 3 :
                    0;
    //store load i R
    //jal
    //rs : load store R i
    //Data : load R i
    //mem_Data : R i
    //wb_Data : load R i 
    assign SrcA_s = (ex_i | ex_R | ex_load | ex_store) && mem_jal && (ex_rs == mem_rd) && ex_rs ? 2 :
                    (ex_i | ex_R | ex_load | ex_store) && mem_i && (ex_rs == mem_rt) && ex_rs ? 3 :
                    (ex_i | ex_R | ex_load | ex_store) && mem_R && (ex_rs == mem_rd) && ex_rs ? 3 :
                    (ex_i | ex_R | ex_load | ex_store) && (wb_load | wb_i) && (ex_rs == wb_rt) && ex_rs ? 4 :
                    (ex_i | ex_R | ex_load | ex_store) && (wb_R | wb_jal)&& (ex_rs == wb_rd) && ex_rs ? 4 :
                    0;
    //rt : R store
    //mem_Data : R i 
    //wb_Data : load R i
    assign SrcB_s = (ex_R | ex_store) && mem_jal && (ex_rt == mem_rd) && ex_rt ? 2 :
                    (ex_R | ex_store) && mem_i && (ex_rt == mem_rt) && ex_rt ? 3 :
                    (ex_R | ex_store) && mem_R && (ex_rt == mem_rd) && ex_rt ? 3 :
                    (ex_R | ex_store) && (wb_load | wb_i) && (ex_rt == wb_rt) && ex_rt ? 4 :
                    (ex_R | ex_store) && (wb_R | wb_jal) && (ex_rt == wb_rd) && ex_rt ? 4 :
                    0;
    
    //store load i R jal
    assign M_Data_s =   mem_store && (wb_jal && wb_R) && (mem_rt == wb_rd) && mem_rt ? 4 :
                        mem_store && (wb_load | wb_i) && (mem_rt == wb_rt) && mem_rt ? 4 :
                        0;


endmodule
