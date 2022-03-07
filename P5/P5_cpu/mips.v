`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:49 11/21/2021 
// Design Name: �Module Name:    mips 
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
`define ADD4 0
`define BEQ  1
`define JAL  2
`define REG  3
module mips(
	input clk,
	input reset
);
	//ifu if_id
	wire zero,E;
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
	wire ExtOp,E_s;  
	wire [3:0] ALUOP;
	wire [31:0] E_RD1,E_RD2,E_AO;

	wire [31:0] SrcA,SrcB;
	wire [3:0] SrcA_s,SrcB_s;
	wire [31:0] AO;
	//M
	wire M_WE;
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
	assign npc = 	(D_Branch == `BEQ)  ? ( zero ? (D_PC + 4 + (imm_1 << 2)) : (D_PC + 8)) :
					(D_Branch == `JAL)  ? imm_jal :
					(D_Branch == `REG)  ? D_RD1 :
										(PC + 4);
	IFU ifu(.clk(clk),
			.reset(reset),
			.npc(npc),
			.WE(E),
			
			.PC(PC),
			.Instr(F_I)
			);
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
	
	assign zero = D_RD1 == D_RD2;//D_RD1 = RD1 / AO / mem_pc + 8 /Ex_PC + 8
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
				.E_RD2(E_RD2)
				);
	wire [31:0] E32;
	wire [15:0] imm_16 = E_I[15:0];		
	
	Ext ext(.imm_16(imm_16),
			.ExtOp(ExtOp),
			.Result(E32)
			);
	// wire [31:0] SrcA,SrcB;
	// wire [3:0] SrcA_s,SrcB_s;
	// assign SrcA = E_RD1;
	//mem_AO 
	//wb_WD
	//E_RD1
	assign SrcA = 	SrcA_s == 2 ? (M_PC + 8):
					SrcA_s == 3 ? M_AO :		
					SrcA_s == 4 ?  GRF_WD :
								E_RD1;
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
	assign SrcB = E_s ? E32 :
						n_RD2;
	ALU alu(  .A(SrcA),
			.B(SrcB),
			.OP(ALUOP),
			
			.res(AO)
			);
	
	assign E_AO = AO;
	
	
	EX_MEM ex_mem(.reset(reset),
				.clk(clk),
				.E_I(E_I),
				.E_PC(E_PC),
				.E_AO(E_AO),
				.E_RD2(n_RD2),
		
				.M_I(M_I),
				.M_PC(M_PC),
				.M_WE(M_WE),
				.M_AO(M_AO),
				.M_RD2(M_RD2)
					);
	

	assign M_Addr = M_AO;
	//assign M_Data = M_RD2;
	//RD W_RD
	
	assign M_Data = M_Data_s == 4 ?  GRF_WD ://sw
									M_RD2;
	
	DM dm( .clk(clk),
			.reset(reset),
			.WE(M_WE),
			.Addr(M_Addr),
			.WD(M_Data),
			.PC(M_PC),
			
			.RD(M_RD)
			);
	
	
	
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

	SFU sfu(.d_I(D_I),
			.ex_I(E_I),
			.mem_I(M_I),
			.wb_I(W_I),
			.Stall(Stall),
			.RD1_s(RD1_s),
			.RD2_s(RD2_s),
			.SrcA_s(SrcA_s),
			.SrcB_s(SrcB_s),
			.M_Data_s(M_Data_s)
	);
	assign E = !Stall;
	assign if_ex_reset = Stall | reset;

endmodule