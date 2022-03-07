`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:49 11/21/2021 
// Design Name: module Name:    mips 
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
module mips(
    input clk,
    input reset,
    input [31:0] i_inst_rdata,//i_inst_addr  
	input [31:0] m_data_rdata,//m_data_addr  
	output [31:0] i_inst_addr,// F PC
    output [31:0] m_data_addr,//Addr
    output [31:0] m_data_wdata,//WD
    output [3 :0] m_data_byteen,//byte-en
    output [31:0] m_inst_addr,//M PC
    output w_grf_we,//grf   
	output [4:0] w_grf_addr,//grf A3
	output [31:0] w_grf_wdata,//grf WD
    output [31:0] w_inst_addr//W PC
);
	//ifu if_id
	wire zero,E,lez,lz,gez,gz;
	wire [3:0] D_Branch;
	wire [31:0] imm_jal,imm_1,PC,F_I,F_PC,npc;
	//D
	wire [31:0] D_I,D_RD1,D_RD2,D_PC;
	wire [4:0] D_A1,D_A2,W_A3;
	//grf
	wire GRF_WE;
	wire [4:0] GRF_A3;
	wire [31:0] GRF_PC,RD1,RD2,GRF_WD;

	wire [3:0] RD1_s, RD2_s;
	//E
	wire [31:0] E_I,E_PC;
	wire E_shamt;
	wire ExtOp,E_s,Busy,start;  
	wire [3:0] ALUOP,MDU_OP,AO_s;
	wire [31:0] E_RD1,E_RD2,E_AO,hi,lo;

	wire [31:0] SrcA,SrcB;
	wire [3:0] SrcA_s,SrcB_s;
	wire [31:0] AO;
	//M
	wire ext;
	wire s_w,s_h,s_b;
	wire l_w,l_h,l_b;
	wire [31:0] M_I,M_PC,M_AO,M_RD2;
	wire [31:0] M_Addr,M_Data;
	wire [3:0] M_Data_s;
	wire [31:0]M_RD;
	//W
	wire RaWrite,RegDst,W_WE;
	wire [2:0] WD_sel;
	wire [31:0] W_AO,W_RD,W_I,W_PC;
	//SFU
	wire Stall;
	// assign npc = 	(D_Branch == `BEQ)  ? ( zero ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)) :
	// 				(D_Branch == `BNE) ? ( !zero ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)) :
	// 				(D_Branch == `BGEZ) ? (gez ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
	// 				(D_Branch == `BGTZ) ? (gz ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
	// 				(D_Branch == `BLEZ) ? (lez ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
	// 				(D_Branch == `BLTZ) ? (lz ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)):
	// 				(D_Branch == `JAL)  ? imm_jal :
	// 				(D_Branch == `REG)  ? D_RD1 :
	// 									(PC + 4);
	
	NPC next_pc(
		.D_PC(D_PC),
		.PC(PC),
		.D_Branch(D_Branch),
		.imm_1(imm_1),
		.imm_jal(imm_jal),
		.zero(zero),
		.gz(gz),
		.gez(gez),
		.lz(lz),
		.lez(lez),
		.D_RD1(D_RD1),
		
		.npc(npc)
		);


	IFU ifu(.clk(clk),
			.reset(reset),
			.npc(npc),
			.WE(E),
			
			.PC(PC)
			// .Instr(F_I)
			);
	//
	assign F_I = i_inst_rdata;
	assign i_inst_addr = PC;

	//
	assign imm_1 = {{16{D_I[15]}}, D_I[15:0]};
	
	assign imm_jal = {{D_PC[31:28]}, D_I[25:0], 2'b0};
	
	
	

	assign F_PC = PC;
	
	
	IF_ID if_id(.reset(reset),
				.clk(clk),
				.F_I(F_I),
				.F_PC(F_PC),
				.WE(E),

				.D_I(D_I),
				.D_PC(D_PC),
				.D_Branch(D_Branch)

				);
	
	assign D_A1 = D_I[25:21];
	assign D_A2 = D_I[20:16];
	
	
	
	
	GRF grf(.clk(clk),
			.reset(reset),
			.A1(D_A1),
			.A2(D_A2),

			.A3(GRF_A3),
			.Data(GRF_WD),
			.WE(GRF_WE),
			.PC(GRF_PC),
			
			.RD1(RD1),
			.RD2(RD2)
			);
	
	// assign zero = D_RD1 == D_RD2;//RD1 = RD1 / AO / mem_pc + 8 /Ex_PC + 8
	// assign gez = (D_RD1 >= $signed(0)) ? 1 : 0;
	// assign gz = (D_RD1 > $signed(0)) ? 1 : 0;
	// assign lez = (D_RD1 <= $signed(0)) ? 1 : 0;
	// assign lz = (D_RD1 < $signed(0)) ? 1 : 0;
	CMP cmp(
		.A(D_RD1),
		.B(D_RD2),
		.zero(zero),
		.gez(gez),
		.gz(gz),
		.lez(lez),
		.lz(lz)
	);
	
	assign D_RD1 = 	RD1_s == 1 ? E_PC + 8 :
					RD1_s == 2 ? M_PC + 8 :
					RD1_s == 3 ? M_AO :
					RD1; 
	//D_RD2 = RD2 / AO / mem_pc + 8 
	assign D_RD2 = 	RD2_s == 1 ? E_PC + 8 :
					RD2_s == 2 ? M_PC + 8 :
					RD2_s == 3 ? M_AO :
					RD2;
	wire store,if_ex_reset;
	ID_EX id_ex(.reset(if_ex_reset),
				.clk(clk),
				.D_I(D_I),
				.D_PC(D_PC),
				.D_RD1(D_RD1),
				.D_RD2(D_RD2),

				.E_I(E_I),
				.E_PC(E_PC),
				.ExtOp(ExtOp),
				.E_s(E_s),
				.E_ALUOP(ALUOP),
				.E_RD1(E_RD1),
				.E_RD2(E_RD2),
				.E_shamt(E_shamt),
				.E_MDU_OP(MDU_OP),
				.start(start),
				.E_AO_S(AO_s)
				);
	wire [31:0] E32;
	wire [15:0] imm_16 = E_I[15:0];		
	
	Ext EXT(.imm_16(imm_16),
			.ExtOp(ExtOp),
			.Result(E32)
			);
	// wire [31:0] SrcA,SrcB;
	// wire [3:0] SrcA_s,SrcB_s;
	// assign SrcA = E_RD1;
	//mem_AO 
	//wb_WD
	//E_RD1
	wire [31:0] n_RD1;
	assign n_RD1 = 	SrcA_s == 2 ? (M_PC + 8):
					SrcA_s == 3 ? M_AO :
					SrcA_s == 4 ?  GRF_WD : 
								E_RD1;
	assign SrcA = E_shamt == 1'b1 ? {0,{E_I[10:6]}}:
							n_RD1;
	// assign SrcB = E_s ? E32 :
	// 					E_RD2;
	//mem_AO
	//wb_WD
	//E_RD1
	wire [31:0] n_RD2;
	assign n_RD2 = 	SrcB_s == 2 ? (M_PC + 8) :
					SrcB_s == 3 ? M_AO :
					SrcB_s == 4 ? GRF_WD :
								E_RD2;
	assign SrcB = 	E_s == 1'b1 ? E32 :
								n_RD2;
	
	MDU mdu(
		.clk(clk),
		.reset(reset),
		.start(start),
		.A(SrcA),
		.B(SrcB),
		.MDU_OP(MDU_OP),
		.Busy(Busy),
		.hi(hi),
		.lo(lo)
	);
	ALU alu(  .A(SrcA),
			.B(SrcB),
			.op(ALUOP),
			
			.res(AO)
			);
	
	assign E_AO = 	AO_s == 1 ? lo :
					AO_s == 2 ? hi :
								AO;
	
	
	EX_MEM ex_mem(.reset(reset),
				.clk(clk),
				.E_I(E_I),
				.E_PC(E_PC),
				.E_AO(E_AO),
				.E_RD2(n_RD2),

				.M_I(M_I),
				.M_PC(M_PC),
				.M_AO(M_AO),
				.M_RD2(M_RD2),
				.s_w(s_w),
				.s_h(s_h),
				.s_b(s_b),
				.l_w(l_w),
				.l_h(l_h),
				.l_b(l_b),
				.ext(ext)
					);
	

	assign M_Addr = M_AO;
	//assign M_Data = M_RD2;
	//RD W_RD
	
	assign M_Data = M_Data_s == 4 ?  GRF_WD ://sw
									M_RD2;
	
	// DM dm( .clk(clk),
	// 		.reset(reset),
	// 		.WE(M_WE),
	// 		.Addr(M_Addr),
	// 		.WD(M_Data),
	// 		.PC(M_PC),
			
	// 		.RD(M_RD)
	// 		);
	
	assign m_data_addr =M_AO;
	assign m_data_wdata = 	s_w ? M_Data :
							s_h ? (M_AO[1] == 1 ? {{M_Data[15:0]},16'b0} : {0,{M_Data[15:0]}}) :
							s_b ? (M_AO[1:0] == 0 ? {0,{M_Data[7:0]}} :
									M_AO[1:0] == 1 ? {0,{M_Data[7:0]},8'b0}:
									M_AO[1:0] == 2 ? {0,{M_Data[7:0]},16'b0} :
									M_AO[1:0] == 3 ? {{M_Data[7:0]},24'b0}:
									0):
									0; 
	assign m_data_byteen = 	s_w ? 4'b1111 :
							s_h ? (M_AO[1] == 1 ? 4'b1100 : 4'b0011) :
							s_b ?   (M_AO[1:0] == 0 ? 4'b0001 :
									M_AO[1:0] == 1 ? 4'b0010 :
									M_AO[1:0] == 2 ? 4'b0100 :
									M_AO[1:0] == 3 ? 4'b1000 :
									0):
									0; 
	assign m_inst_addr = M_PC;
	assign M_RD = 	l_w ? m_data_rdata :
					l_h ? (M_AO[1] == 1 ? (ext == 1 ? {{16{m_data_rdata[31]}},{m_data_rdata[31:16]}} : {0,{m_data_rdata[31:16]}}) : 
										(ext == 1 ? {{16{m_data_rdata[15]}},{m_data_rdata[15:0]}} : {0, {m_data_rdata[15:0]}})):
					l_b ? (M_AO[1:0] == 0 ? (ext == 1 ? {{24{m_data_rdata[7]}},{m_data_rdata[7:0]}} : {0,{m_data_rdata[7:0]}}) :
							M_AO[1:0] == 1 ? (ext == 1 ? {{24{m_data_rdata[15]}},{m_data_rdata[15:8]}} : {0,{m_data_rdata[15:8]}}) :
							M_AO[1:0] == 2 ? (ext == 1 ? {{24{m_data_rdata[23]}},{m_data_rdata[23:16]}} : {0,{m_data_rdata[23:16]}}) :
							M_AO[1:0] == 3 ? (ext == 1 ? {{24{m_data_rdata[31]}},{m_data_rdata[31:24]}} : {0,{m_data_rdata[31:24]}}) :
							0) :
							0;

	
	
	MEM_WB mem_wb(.reset(reset),
				.clk(clk),
				.M_I(M_I),
				.M_PC(M_PC),
				.M_RD(M_RD),
				.M_AO(M_AO),

				.WE(W_WE),
				.GRF_PC(W_PC),
				.GRF_I(W_I),
				.WD_S(WD_sel),
				.ra(RaWrite),
				.RegDst(RegDst),
				.W_AO(W_AO),
				.W_RD(W_RD)
				);	
	assign GRF_WD = (WD_sel == 1) ? W_RD :
					(WD_sel == 2) ? (W_PC + 8):
									W_AO;

	
	
	assign GRF_WE = W_WE;
	assign GRF_PC = W_PC;
	
	assign GRF_A3 = RegDst == 1 ? W_I[15:11]:
					RaWrite == 1 ? 5'd31 :
									W_I[20:16];
	//outputs
	assign w_grf_we = GRF_WE;
	assign w_grf_addr = GRF_A3;
	assign w_grf_wdata = GRF_WD;
	assign w_inst_addr = GRF_PC;

	SFU sfu(.d_I(D_I),
			.ex_I(E_I),
			.mem_I(M_I),
			.wb_I(W_I),
			.Stall(Stall),
			.busy(Busy),
			.start(start),

			.RD1_s(RD1_s),
			.RD2_s(RD2_s),
			.SrcA_s(SrcA_s),
			.SrcB_s(SrcB_s),
			.M_Data_s(M_Data_s)
	);
	assign E = !Stall;
	assign if_ex_reset = Stall | reset;

endmodule