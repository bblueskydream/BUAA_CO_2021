`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:44:26 10/01/2021 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
	input [7:0] char,
	input clk,
	output out
    );
	reg [1:0] status;
	initial begin
			status <= 2'b00;
	end
	wire [1:0] char_type;
	assign char_type = (char >= 8'd48 && char <= 8'd57) ? 2'b10:
							 ((char >= 8'd65 && char <= 8'd90) || (char >= 8'd97 && char <= 8'd122))? 2'b01 :2'b00;
	assign out = (status == 2'b10) ? 1'b1 : 1'b0;
	
	always @(posedge clk) begin
			if(status == 2'b00)begin
				if(char_type == 2'b01)
					status <= 2'b01;
				else
					status <= 2'b00;
			end
			else if (status == 2'b01)begin
				if(char_type == 2'b00)
					status <= 2'b00;
				else if(char_type == 2'b10)
					status <= 2'b10;
				else if(char_type == 2'b01)
					status <= 2'b01;
				else
					status <= 2'b00;
			end
			else if(status == 2'b10)begin
				if(char_type == 2'b01)
					status <= 2'b01;
				else if(char_type == 2'b10)
					status <= 2'b10;
				else
					status <= 2'b00;
			end
			else
				status <= status;
	end

endmodule
