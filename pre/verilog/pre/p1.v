`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:13 09/15/2021 
// Design Name: 
// Module Name:    p1 
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
module counter10(
        //端口定义
        input                   rstn,   //复位端，低有效
        input                   clk,    //输入时钟
        output [3:0]    cnt,    //计数输出
        output                  cout);  //溢出位

        reg [3:0]               cnt_temp ;      //计数器寄存器
        always@(posedge clk or negedge rstn) begin
                if(! rstn)begin         //复位时，计时归0
                        cnt_temp        <= 4'b0 ;
                end
                else if (cnt_temp==4'd9) begin  //计时10个cycle时，计时归0
                        cnt_temp        <=4'b000;
                end
                else begin                                      //计时加1
                        cnt_temp        <= cnt_temp + 1'b1 ;
                end
        end

        assign  cout = (cnt_temp==4'd9) ;       //输出周期位
        assign  cnt  = cnt_temp ;                       //输出实时计时器

endmodule