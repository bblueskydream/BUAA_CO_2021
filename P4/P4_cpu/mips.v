`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:26 11/11/2021 
// Design Name: 
// Module Name:    main 
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
	
	//datapath
	wire [15:0] imm_16;
	wire [25:0] imm_26;
	wire [5:0] opcode,func;
	wire [4:0] rs,rt,rd,shamt;
	
	wire [31:0] Instr;
	

	wire [31:0] RD1,RD2;
	wire [31:0]	RD;
	wire [4:0] A1,A2,A3;
	
	wire [31:0] WD,Data;
	
	wire [31:0] SrcA,SrcB,ALU_res;
	wire zero;
	wire [31:0] Addr;
	wire [31:0] PC,PC4;
	wire [31:0] Ext_16;
	
	wire [31:0] imm_jal;

	//controller
	wire [2:0] Branch;
	wire MemWrite;
	wire ExtOp;
	wire RegWrite,RegDst;
	wire [2:0] ALUOP;
	wire ALU_s;
	wire [2:0] WD_sel;
	wire RaWrite;
	
	
	assign opcode = Instr[31:26];
	assign imm_26 = Instr[25:0];
	assign imm_16 = Instr[15:0];
	assign rs = Instr[25:21];
	assign rt = Instr[20:16];
	assign rd = Instr[15:11];
	assign shamt = Instr[10:6];
	assign func = Instr[5:0];
	
	Ext ext(.imm_16(imm_16),
			  .ExtOp(ExtOp),
			  .Result(Ext_16)
				);
	
	assign imm_jal = {{PC[31:28]}, imm_26, 2'b0};
	
	wire [31:0] npc = (Branch == `BEQ && (zero == 1 || ^RD1 == 1))  ? (PC + 4 + (Ext_16 << 2)) :
							(Branch == `JAL)  ? imm_jal:
							(Branch == `REG)  ? RD1:
														(PC + 4);
	
	IFU ifu(.clk(clk),
			  .reset(reset),
			  .npc(npc),
			  
			  .PC(PC),
			  .PC4(PC4),
			  .Instr(Instr)
			  );
	
	Controller control(
					.opcode(opcode),
					.func(func),
					
					.Branch(Branch),
					.MemWrite(MemWrite),
					.ExtOp(ExtOp),
					.ALUOP(ALUOP),
					.ALU_s(ALU_s),
					.WD_sel(WD_sel),
					.RaWrite(RaWrite),
					.RegWrite(RegWrite),
					.RegDst(RegDst)
						);
	
	
	assign A1 = rs;
	assign A2 = rt;
	assign A3 = (RaWrite == 1) ? ((Branch == `BEQ) ? (^RD1 == 1 ? 31 : 0) : 5'd31):
					(RegDst == 1) ? rd :
										 rt ;
	GRF grf(.clk(clk),
			  .reset(reset),
			  .A1(A1),
			  .A2(A2),
			  .A3(A3),
			  .Data(WD),
			  .WE(RegWrite),
			  .PC(PC),
			  
			  .RD1(RD1),
			  .RD2(RD2)
			  );
	
	
	
	assign SrcA = RD1;
	assign SrcB = (ALU_s == 1) ? Ext_16 :
										  RD2;			
	
	ALU alu(.SrcA(SrcA),
			  .SrcB(SrcB),
			  .ALUOP(ALUOP),
			  
			  .Result(ALU_res),
			  .Zero(zero)
			  );
	
	
	assign Addr = ALU_res;
	assign Data = RD2;
	DM dm( .clk(clk),
			 .reset(reset),
			 .WE(MemWrite),
			 .Addr(Addr),
			 .WD(Data),
			 .PC(PC),
			 
			 .RD(RD)
			 );
		
	assign WD = (WD_sel == 1) ? RD :
					(WD_sel == 2) ? PC4 :
					(WD_sel == 3) ? {imm_16,16'b0}:
												ALU_res;


endmodule
