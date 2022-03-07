`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:56 12/11/2021 
// Design Name: 
// Module Name:    MDEX 
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
module MDU(
	input [31:0] A,B,
	input [3:0] MDU_OP,
    input start,clk,reset,
    output Busy,
	output [31:0] hi,lo
    );

    reg [31:0] HI,LO;
	reg [3:0] count = 0;
    parameter 	MU_cycle = 5,
				D_cycle = 10;

	assign hi = HI;
	assign lo = LO;
	assign Busy = count != 0;
	
    always @(posedge clk) begin
        if(reset)begin
            HI <= 0;
            LO <= 0;
			count <= 0;
        end
		else if(count != 0)begin
			count <= count - 1;
		end
        else begin
			case(MDU_OP)
				1:begin
					if(start)begin
						{HI,LO} <= A * B;
						count <= MU_cycle;
					end
				end
				2:begin
					if(start)begin
						{HI,LO} <= $signed(A) * $signed(B);
						count <= MU_cycle;
					end
				end
				3:begin
					if(start)begin
						HI <= A % B;
						LO <= A / B;
						count <= D_cycle;
					end
				end
				4:begin
					if(start)begin
						HI <= $signed(A) % $signed(B);
						LO <= $signed(A) / $signed(B);
						count <= D_cycle;
					end
				end
				5:HI <= A;
				6:LO <= A;
			endcase
        end
    end

endmodule
