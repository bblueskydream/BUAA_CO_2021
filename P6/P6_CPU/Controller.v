`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:30:19 11/21/2021 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
	
	//inputs
	// input [5:0] opcode,	//opcode
	// input [5:0] func,		//func
	input [31:0] I,
	//outputs
	output add,addi,addiu,addu,and1,andi,
	output beq,bgez,bgtz,blez,bltz,bne,
	output div,divu,j,jal,jalr,jr,
	output lb,lbu,lh,lhu,lui,lw,
	output mfhi,mflo,mthi,mtlo,mult,multu,
	output nor1,or1,ori,sb,sh,
	output sll,sllv,slt,slti,sltiu,sltu,sra,srav,srl,srlv,
	output sub,subu,sw,xor1,xori,
	output [4:0] rs,rt,rd,
	output R,load,store,type_i,j_l,j_rs,j_2reg,m_d,rw_hl

	);
	
	wire [5:0] opcode = I[31:26];
	wire [5:0] func = I[5:0];
	parameter ZERO = 0,
				ADD  = 6'b100000,//
				ADDI = 6'b001000,
				ADDIU= 6'b001001,
				ADDU = 6'b100001,
				AND  = 6'b100100,
				ANDI = 6'b001100,
				BEQ  = 6'b000100,
				BGEZ = 6'b000001,
				BGTZ = 6'b000111,
				BLEZ = 6'b000110,
				BLTZ = 6'b000001,
				BNE  = 6'b000101,
				DIV  = 6'b011010,
				DIVU = 6'b011011,
				J    = 6'b000010,
				JAL  = 6'b000011,
				JALR = 6'b001001,
				JR   = 6'b001000,
				LB   = 6'b100000,
				LBU  = 6'b100100,
				LH   = 6'b100001,
				LHU  = 6'b100101,
				LUI  = 6'b001111,
				LW   = 6'b100011,
				MFHI = 6'b010000,
				MFLO = 6'b010010,
				MTHI = 6'b010001,
				MTLO = 6'b010011,
				MULT = 6'b011000,
				MULTU= 6'b011001,
				NOR  = 6'b100111,
				OR   = 6'b100101,
				ORI  = 6'b001101,
				SB   = 6'b101000,
				SH   = 6'b101001,
				SLL  = 6'b000000,
				SLLV = 6'b000100,
				SLT  = 6'b101010,
				SLTI = 6'b001010,
				SLTIU= 6'b001011,
				SLTU = 6'b101011,
				SRA  = 6'b000011,
				SRAV = 6'b000111,
				SRL  = 6'b000010,
				SRLV = 6'b000110,
				SUB  = 6'b100010,
				SUBU = 6'b100011,
				SW   = 6'b101011,
				XOR  = 6'b100110,
				XORI = 6'b001110;
	// instruction
	wire zero;
	//R
	assign zero = (opcode == ZERO);


	assign add = zero & (func == ADD);//
	assign addu = zero & (func == ADDU);
	assign and1 = zero & (func == AND);
	assign jalr = zero & (func == JALR);
	assign jr = zero & (func == JR);
	assign mfhi = zero & (func == MFHI);
	assign mflo = zero & (func == MFLO);
	assign mthi = zero & (func == MTHI);
	assign mtlo = zero & (func == MTLO);
	assign mult = zero & (func == MULT);
	assign multu = zero & (func == MULTU);
	assign div = zero & (func == DIV);
	assign divu = zero & (func == DIVU);
	assign nor1 = zero & (func == NOR);
	assign or1 = zero & (func == OR);
	assign sll = zero & (func == SLL);
	assign sllv = zero & (func == SLLV);
	assign slt = zero & (func == SLT);
	assign sltu = zero & (func == SLTU);
	assign sra = zero & (func == SRA);
	assign srav = zero & (func == SRAV);
	assign srl = zero & (func == SRL);
	assign srlv = zero & (func == SRLV);
	assign sub = zero & (func == SUB);
	assign subu = zero & (func == SUBU);
	assign xor1 = zero & (func == XOR);

	// always @ * begin
	// 	$display("%d\n",ori);
	// end
	
	//I
	assign addi = (opcode == ADDI);
	assign addiu = (opcode == ADDIU);
	assign andi = (opcode == ANDI);

	assign beq = (opcode == BEQ);
	assign bgez = (opcode == BGEZ) && I[20:16] == 5'b00001;
	assign bgtz = (opcode == BGTZ);
	assign blez = (opcode == BLEZ);
	assign bltz = (opcode == BLTZ) && I[20:16] == 5'b00000;
	assign bne = (opcode == BNE);

	assign j = (opcode == J);
	assign jal = (opcode == JAL);
	assign lb = (opcode == LB);
	assign lbu = (opcode == LBU);
	assign lh = (opcode == LH);
	assign lhu = (opcode == LHU);
	assign lui = (opcode == LUI);
	assign lw = (opcode == LW);
	assign ori = (opcode == ORI);
	assign sb = (opcode == SB);
	assign sh = (opcode == SH);
	assign slti = (opcode == SLTI);
	assign sltiu = (opcode == SLTIU);
	assign sw = (opcode == SW);
	assign xori = (opcode == XORI);
	//sort instructions
	// j
	// rs op rt -> rd: add addu sub subu slt sltu and or nor xor srl srlv sll sllv sra srav
	// rs op rt -> {HI,LO}: mult multu div divu
	// rs op i -> rt : addi addiu andi lui ori slti sltiu xori
	// jump && rs: beq bne jr jalr bgez bgtz blez bltz
	// jump && rt: beq bne
	// load : lw lh lhu lb lbu
	// read HI: mfhi
	// read lo: mflo
	// write HI: mthi
	// write LO: mtlo
	// jump GPR[rs] : jr jalr
	// jump and link : jal jalr
	// store : sw sh sb
	// load : lw lh lhu lb lbu
	assign rs = I[25:21];
	assign rt = I[20:16];
	assign rd = jal ? 31 : I[15:11];
	assign R = zero & !jr & !jalr;
	assign m_d = mult | multu | div | divu;
	assign rw_hl = mflo | mfhi | mthi | mtlo;
	// assign 
	assign load = lw  | lh | lhu | lb | lbu;
	assign store = sw | sh | sb;
	assign type_i = addi | addiu | andi | lui | ori | slti | sltiu | xori ;	// rs
	assign j_l = jal | jalr;
	assign j_rs = jr | jalr | bgez | bgtz | blez | bltz;
	assign j_2reg = beq | bne;
	//assign jal
	//assign jr
	//assign beq



	
endmodule