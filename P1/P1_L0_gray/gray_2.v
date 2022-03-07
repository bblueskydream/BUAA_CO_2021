`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:32 10/21/2021 
// Design Name: 
// Module Name:    gray_2 
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
module gray (
    input Clk,
    input Reset,
    input En,
    output reg [2:0] Output,
    output reg Overflow
);
	initial begin
		Output <= 0;
		Overflow <= 0;
	end
    reg [2:0] res = 0;
    always @(posedge Clk) begin
        if (Reset) begin
            Overflow <= 0;
            res <= 0;
        end
        else begin
            if(En) begin
                if (res == 3'b111) begin
                    Overflow <= 1;
                    res <= res + 3'b001;
                end
                else begin
//						Overflow <= Overflow;
						res <= res + 3'b001;
					 end
            end
            else begin
                Overflow <= Overflow;
                res <= res;
            end
        end 
    end
    always @(*) begin
        case (res)
            3'b000: Output <= 3'b000; 
            3'b001: Output <= 3'b001; 
            3'b010: Output <= 3'b011; 
            3'b011: Output <= 3'b010; 
            3'b100: Output <= 3'b110; 
            3'b101: Output <= 3'b111; 
            3'b110: Output <= 3'b101; 
            3'b111: Output <= 3'b100;
            default: Output <= 0; 
        endcase

    end
endmodule

