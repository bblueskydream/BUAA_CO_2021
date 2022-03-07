`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:58 10/01/2021 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] input_a,
    input [31:0] input_b,
    input [1:0] op,
    input clk,
    input en,
    output reg [31:0] result
);

    wire [31:0] temp_result;

    assign temp_result = (op == 2'd0) ? (input_a + input_b) :
                         (op == 2'd1) ? (input_a - input_b) :
                         (op == 2'd2) ? (input_a & input_b) :
                                        (input_a | input_b);

    always @(posedge clk) begin
        if (en == 1'b1) begin
            result <= temp_result;
        end
        else begin
            result <= result;
        end
    end

endmodule
