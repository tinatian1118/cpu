`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/20 15:37:04
// Design Name: 
// Module Name: pc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pc(clk,rst,control,addr,to_mar

    );
    input clk,rst;
    input [1:0]control;
    input [7:0]addr;
    output reg[7:0]to_mar;
    reg [7:0]pc;
    initial 
    begin
        to_mar<=8'b00000000;
        pc<=8'b00000000;
    end
    always@(posedge clk)
    begin
        if(rst==1)
        begin
            pc<=0;
        end
        else
        begin
            if(control==01)
            begin
                pc<=pc+1;
            end
            if(control==10)
            begin
                pc<=addr;
            end
            to_mar<=pc;    
        end
    end
endmodule
