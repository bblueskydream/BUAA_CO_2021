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
        //�˿ڶ���
        input                   rstn,   //��λ�ˣ�����Ч
        input                   clk,    //����ʱ��
        output [3:0]    cnt,    //�������
        output                  cout);  //���λ

        reg [3:0]               cnt_temp ;      //�������Ĵ���
        always@(posedge clk or negedge rstn) begin
                if(! rstn)begin         //��λʱ����ʱ��0
                        cnt_temp        <= 4'b0 ;
                end
                else if (cnt_temp==4'd9) begin  //��ʱ10��cycleʱ����ʱ��0
                        cnt_temp        <=4'b000;
                end
                else begin                                      //��ʱ��1
                        cnt_temp        <= cnt_temp + 1'b1 ;
                end
        end

        assign  cout = (cnt_temp==4'd9) ;       //�������λ
        assign  cnt  = cnt_temp ;                       //���ʵʱ��ʱ��

endmodule