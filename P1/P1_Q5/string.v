`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:52 10/21/2021 
// Design Name: 
// Module Name:    string 
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
module string(
	input clk,
	input clr,
	input [7:0] in,
	output out
    );
	parameter S0 = 0,
				 S1 = 2'b1,
				 S2 = 2'b10;
	
	reg counter = 0;

	reg [1:0] state = S0;
	
	assign out = (state == S2) ? 1 : 0;
	
	always @(posedge clk or posedge clr)begin
		if(clr == 1)begin
			counter <= 0;
			state <= S0;
		end
		else begin
			if(counter == 0)begin
				counter <= counter + 1;
				if(in >= "0" && in <= "9")
					state <= S2;
				else if(in == "+" || in == "*")
					state <= S0;
			end
			else begin
				case(state)
					S0:
						state <= S0;
					S1:begin
						if(in >= "0" && in <= "9")
							state <= S2;
						else if(in == "+" || in == "*")
							state <= S0;
						else
							state <= S0;
					end
					S2:begin
						if(in >= "0" && in <= "9")
							state <= S0;
						else if(in == "+" || in == "*")
							state <= S1;
						else
							state <= S0;
					end
					
					
					
					
				endcase
				
			end
		end
		
	end
	


endmodule
