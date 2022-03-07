`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:39 12/17/2021 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
    input [31:0] PrAddr,
    input [31:0] PrWD,
    input [31:0] DEV0_RD,DEV1_RD,

    output [31:0] PrRD,DEV_WD,
    output [31:0] DEV_Addr,
    output HitDEV0,HitDEV1
    );
    
    assign DEV_WD = PrWD;
    assign DEV_Addr = PrAddr;
    assign HitDEV0 = (PrAddr >= 32'h0000_7F00 && PrAddr <= 32'h0000_7F0B);
    assign HitDEV1 = (PrAddr >= 32'h0000_7F10 && PrAddr <= 32'h0000_7F1B);

    assign PrRD =   HitDEV0 ? DEV0_RD :
                    HitDEV1 ? DEV1_RD :
                                    0;



endmodule
