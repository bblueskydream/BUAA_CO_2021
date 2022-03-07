`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:59 10/03/2021 
// Design Name: 
// Module Name:    cpu_checker 
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
`define s0 3'b000
`define s1 3'b001
`define s2 3'b010
`define s3 3'b011
`define s4 3'b100
`define s5 3'b101
`define s6 3'b110
`define s7 3'b111
module cpu_checker(
	input clk,
	input reset,
	input [7:0] char,
	output [1:0] format_type
    );
	reg [2:0] state = `s0;
	reg [2:0] time_num = 0;//代表一开始输入的十进制数
	reg [2:0] grf_num = 0;//代表寄存器的grf
	reg [3:0] pc_num = 0;//代表 寄存器/数据存储器 8 位PC
	reg [3:0] addr_num = 0;//代表 数据存储器 8位 addr
	reg [3:0] data_num = 0;//代表 寄存器/数据存储器 的 8位 data
	reg [1:0] flag = 0;
	reg [1:0] type = 2'b00;
	reg       signal = 0;
	//assign type = (char == "$") ? 2'b01:
	//				    (char == "*") ? 2'b10: 
	//						  				  2'b00;
	assign format_type = (state != `s7) ? 2'b00 :
								(type == 2'b01) ? 2'b01:
														2'b10;
	always@(posedge clk)begin
		if(reset == 1'b1)begin// reset 具有最高优先级
			state <= `s0;
			time_num <= 0;
			grf_num <= 0;
			pc_num <= 0;
			addr_num <= 0;
			data_num <= 0;
		end
		else begin
			if(state == `s0)begin
				if(char == "^")
					state <= `s1;
				else
					state <= `s0;
			end
			else if(state == `s1)begin
				if(char >= "0" && char <= "9")begin
					time_num <= time_num + 1;
					state <= state;
				end
				else if(char == "@" && time_num >=1 && time_num <= 3'b100 )begin//跳转到S2
					time_num <= 0;
					state <= `s2;
				end
				else if(char == "^")begin
					time_num <= 0;
					state <= `s1;
				end
				else begin//输入混乱 回到初始状态
					time_num <= 3'b000;
					state <= `s0;
				end
				if(time_num > 3'b100)begin//判断time_num的个数是否大于4
					time_num <= 0;
					state <= `s0;
				end
				else begin
					time_num <= time_num;
					state <= state;
				end
			end
			else if(state == `s2)begin
				if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin//代表16进制数
					pc_num <= pc_num + 1;
					state <= state;
				end
				else if(char == ":" && pc_num == 4'b1000)begin//跳转到S3
					state <= `s3;
					pc_num <= 0;
				end
				else if(char == "^")begin
					state <= `s1;
					pc_num <= 0;
				end
				else begin
					state <= `s0;
					pc_num <= 0;
				end
				if(pc_num > 4'b1000)begin//pc_num过大
					state <= `s0;
					pc_num <= 0;
				end
				else begin
					state <= state;
					pc_num <= pc_num;
				end
			end
			else if(state == `s3)begin
				if(char == "$")begin
					type <= 2'b01;
					state <= `s4;
				end
				else if(char == "*")begin
					type <= 2'b10;
					state <= `s4;
				end
				else if(char ==" ")begin
					state <= state;
				end
				else if(char == "^")begin
					state <= `s1;
				end
				else begin
					state <= `s0;
				end
			end
			else if(state == `s4)begin
				if(type == 2'b01)begin
					if(char >= "0" && char <= "9")begin
						grf_num <= grf_num + 1;
						state <= state;
					end
					else if((char == "<" || char == " ") && grf_num >= 3'b001 && grf_num <= 3'b100)begin//跳转到S5
						grf_num <= 0;
						state <= `s5;
						if(char == "<")
							flag <= 2'b01;
						else
							flag <= 2'b00;
					end
					else if(char == "^")begin
						grf_num <= 0;
						state <= `s1;
					end
					else begin
						grf_num <= 0;
						state <= `s0;
					end
					if(grf_num > 3'b100)begin
						grf_num <= 0;
						state <= `s0;
					end
					else begin
						grf_num <= grf_num;
						state <= state;
					end
				end
				else begin
					if((char >= "0" && char <= "9")||(char >= "a" && char <= "f"))begin
						addr_num <= addr_num + 1;
						state <= state;
					end
					else if((char == "<"||char == " ") && addr_num == 4'b1000)begin
						addr_num <= 0;
						state <= `s5;
						if(char == "<")
							flag <= 2'b01;
						else
							flag <= 2'b00;
					end
					else if(char == "^")begin
						addr_num <= 0;
						state <= `s1;
					end
					else begin
						addr_num <= 0;
						state <= `s0;
					end
					if(addr_num > 4'b1000)begin
						addr_num <= 0;
						state <= `s0;
					end
					else begin
						addr_num <= addr_num;
						state <= state;
					end
				end
			end
			else if(state == `s5)begin
				if(flag == 2'b00 && char == "<")begin
					flag <= 2'b01;
				end
				else if(flag == 2'b01 && char == "=")begin
					state <= `s6;
					flag <= 0;
				end
				else if(flag == 2'b00 && char == " ")begin
					state <= state;
					flag <= flag;
				end
				else if(char == "^")begin
					state <= `s1;
					flag <= 0;
				end
				else begin
					state <= `s0;
					flag <= 0;
				end
			end
			else if(state == `s6)begin
				if(char == " " && data_num == 0)begin
					data_num <= data_num;
				end
				else if((char >= "0" && char <= "9") || (char >= "a" && char <= "f"))begin
					data_num <= data_num +1;
				end
				else if(char == "^")begin
					state <= `s1;
					data_num <= 0;
				end
				if(data_num == 4'b1000 && char == "#")begin
					state <= `s7;
					data_num <= 0;
				end
				else begin
					state <= state;
					data_num <= data_num;
				end
			end
			else if(state == `s7)begin
				if(char == "^")
					state <= `s1;
				else
					state <= `s0;
			end
		end
	end

endmodule
