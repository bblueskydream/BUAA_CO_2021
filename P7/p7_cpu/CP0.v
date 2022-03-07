`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:09 12/17/2021 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input clk,reset,
    input [4:0] A1,//read CP0   
    input [4:0] A2,//write CP0  
    input [31:0] Din,//WD   mtc0 CP0 
    input [31:0] PC, // PC
    input [6:2] ExcCode,//
    input [5:0] HWInt,//6 
    input WE,           //CP0_en    mtc0 CP0 
    input EXLClr,       //SR[EXL] = 0 
    input nBD,

    output IntReq,IRP,      //
    output [31:0] EPC,  //EXC 
    output [31:0] DOut  //CP0 
    );

    reg [31:0] SR,Cause;
	//SR R/W
    wire EXL,IE;
    wire [15:10] IM;//6
    // assign SR = (A2 == 12 && WE) ? Din : {16'b0, IM, 8'b0, EXL, IE};
    assign EXL = (A2 == 12 && WE) ? Din[1] : SR[1];
    assign IM = (A2 == 12 && WE) ? Din[15:10] : SR[15:10];
    assign IE = (A2 == 12 && WE) ? Din[0] : SR[0];

    //Cause R
    wire BD;
    wire [15:10] IP;
    wire [6:2] Exc_Code;
    // assign Cause = {BD,15'b0,IP,3'b0,Exc_Code,2'b0};//1 15 6 3 5 2

    assign BD = Cause[31];
    assign IP = Cause[15:10];
    // assign Exc_Code = Cause[6:2];

    //EPC R/W
    reg [31:0] epc;
    assign EPC = (A2 == 14 && WE) ? Din : epc;
    
    //PRPRID R
    reg [31:0] PRID;
    
    wire out_exc;

    initial begin
		SR <= 0;
		Cause <= 0;
        epc <= 0;
        PRID <= 32'h11223344;
    end

	// always @ * begin
	// 	Exc_Code <= ExcCode;
	// end
	
    always @(posedge clk) begin
        if(reset)begin
            SR <= 0;
			Cause <= 0;
            epc <= 0;
            PRID <= 32'h11223344;
        end
        else begin
            Cause[15:10] <= HWInt;
            if(WE)begin
                case(A2)
                    12 : SR <= Din;
                    14 : epc <= Din;
                endcase
            end
            if(IntReq)begin
                SR[1] <= 1;
                epc <= (nBD ? (PC - 4) : PC);
                Cause[6:2] <= ExcCode;
                Cause[31] <= nBD;
            end
            if(EXLClr)
                SR[1] <= 0;
        end
    end
    assign out_exc = |(HWInt[5:0] & IM[15:10]) && IE;
    assign IRP = HWInt[2] && IM[12] && IE && !EXL;
    assign IntReq = (ExcCode || out_exc) && !EXL;
    

    assign DOut =   A1 == 12 ? (SR) :
                    A1 == 13 ? (Cause) :
                    A1 == 14 ? (EPC):
                    A1 == 15 ? (PRID) :
                                0;

endmodule
