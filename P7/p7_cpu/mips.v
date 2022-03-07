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
	input interrupt,
	output [31:0] macroscopic_pc,
	
	output [31:0] i_inst_addr,// F PC
    input [31:0] i_inst_rdata,//i_inst_addr  
	
	output [31:0] m_data_addr,//Addr
	input [31:0] m_data_rdata,//m_data_addr  
    output [31:0] m_data_wdata,//WD
    output [3 :0] m_data_byteen,//byte_en
	
    output [31:0] m_inst_addr,//M_PC
	
    output w_grf_we,//grf   
	output [4:0] w_grf_addr,//grf_A3
	output [31:0] w_grf_wdata,//grf_WD
    output [31:0] w_inst_addr//W_PC
);
    wire [31:0] macro_pc;
	wire HitDM;
    //
    wire [3:0] cpu_we;
    wire [31:0] PrAddr,PrWD,PrRD;
    wire [31:0] DEV0_RD,DEV1_RD;

    reg tempIRP;
    wire [31:0] DEV_RD,DEV_WD;
    wire [31:0] DEV_Addr;
    wire HitDEV0,HitDEV1;
    //Timer
    wire TC0_WE,TC1_WE;
    wire TC0_IRQ,TC1_IRQ;
    wire [31:0] TC0_Addr, TC1_Addr;
    wire [31:0] TC0_WD, TC1_WD;
    wire [31:0] TC0_RD, TC1_RD;
    wire [5:0] HWInt = {3'b0,interrupt,TC1_IRQ,TC0_IRQ};

    CPU cpu(
        .clk(clk),
        .reset(reset),
		.HWInt(HWInt),
		
        .i_inst_addr(i_inst_addr),
        .i_inst_rdata(i_inst_rdata),

        .macro_pc(macroscopic_pc),
        .m_data_addr(PrAddr),
        .m_data_rdata(PrRD),
        .m_data_wdata(m_data_wdata),
        .m_data_byteen(cpu_we),

        .m_inst_addr(m_inst_addr),
        .IRP(IRP),
        .w_grf_we(w_grf_we),
        .w_grf_addr(w_grf_addr),
        .w_grf_wdata(w_grf_wdata),

        .w_inst_addr(w_inst_addr)
    );
    initial begin
        tempIRP <= 0;
    end

    always @(posedge clk) begin
        tempIRP <= IRP;
    end


    assign m_data_addr = tempIRP ? 32'h7F20 :
                                PrAddr ;
    assign m_data_byteen =  tempIRP ? 4'b1111 :
                            HitDM ? cpu_we :
                                        0;
    //0x0000_0000 - 0x0000_2FFF
    assign HitDM = m_data_addr>=32'h0 && m_data_addr <= 32'h0000_2FFF;
    assign PrRD = HitDM ? m_data_rdata :
                            DEV_RD;
    Bridge bridge(
        .PrAddr(m_data_addr),
        .PrWD(m_data_wdata),
        .DEV0_RD(DEV0_RD),
        .DEV1_RD(DEV1_RD),

        .PrRD(DEV_RD),
        .DEV_WD(DEV_WD),
        .DEV_Addr(DEV_Addr),
        .HitDEV0(HitDEV0),
        .HitDEV1(HitDEV1)
    );
	assign TC0_WE = cpu_we == 4'b1111 & HitDEV0;
    assign TC1_WE = cpu_we == 4'b1111 & HitDEV1;


    TC timer1(
        .clk(clk),
        .reset(reset),
        .Addr(DEV_Addr[31:2]),
        .WE(TC0_WE),
        .Din(DEV_WD),
        .Dout(DEV0_RD),
        .IRQ(TC0_IRQ)
    );

    TC timer2(
        .clk(clk),
        .reset(reset),
        .Addr(DEV_Addr[31:2]),
        .WE(TC1_WE),
        .Din(DEV_WD),
        .Dout(DEV1_RD),
        .IRQ(TC1_IRQ)
    );

endmodule