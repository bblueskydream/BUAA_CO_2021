`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:37 10/22/2021 
// Design Name: 
// Module Name:    block_checker 
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
module BlockChecker(
	input clk,
	input reset,
	input [7:0] in,
	output result
    );
	 
	 parameter S0 = 0,
				  S1 = 4'b1,
				  S2 = 4'b10,
				  S3 = 4'b11,
				  S4 = 4'b100,
				  S5 = 4'b101,
				  S6 = 4'b111,
				  S7 = 4'b1000,
				  S8 = 4'b1001,
				  S9 = 4'b1010,
				  S10 = 4'b1011,
				  S11 = 4'b1100;
	reg [3:0] state = S0;
	reg sign = 0;
	reg [31:0] begin_num = 0;	

	assign result = (reset)         ?      1 :
						 (sign)	 		  ?	   0 :
						 (state == S7  ) ?      0 :
						 (state == S8 && begin_num == 0) ? 0 :
						 (begin_num == 1 && state == S8) ? 1 :
						 (begin_num == 0) ? 1 : 0;

	  
	always @(posedge clk , posedge reset)begin
		if(reset)begin
			state <= S0;
			begin_num <= 0;
			sign <= 0;
		end
		else begin
			case(state)
				S0:begin
					if(in == " ")
						state <= S0;
					else if(in == "b" || in == "B")
						state <= S1;
					else if(in == "e" || in == "E")
						state <= S5;
					else
						state <= S9;
				end
				S1:begin
					if(in == "e" || in == "E")
						state <= S2;
					else 
						state <= S9;
				end
				S2:begin
					if(in == "g" || in == "G")
						state <= S3;
					else
						state <= S9;
				end
				S3:begin
					if(in == "i" || in == "I")
						state <= S4;
					else
						state <= S9;
				end
				S4:begin
					if(in == "n" || in == "N")
						state <= S7;
					else
						state <= S9;
				end
				S5:begin
					if(in == "n" || in == "N")
						state <= S6;
					else
						state <= S9;
				end
				S6:begin
					if(in == "d" || in == "D")
						state <= S8;
					else
						state <= S9;
				end
				S7:begin
					if(in == " ")begin
						state <= S0;
						begin_num <= begin_num + 1;
					end
					else
						state <= S9;
				end
				S8:begin
					if(in == " ")begin
						if(begin_num == 0)begin
							sign <= 1;
						end
						else
							begin_num <= begin_num - 1;
						state <= S0;
					end
					else
						state <= S9;
				end
				S9:begin
					if(in == " ")
						state <= S0;
					else
						state <= S9;
				end
			endcase
		end
		
	end
	

endmodule
