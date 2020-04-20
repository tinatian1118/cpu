`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/20 15:25:49
// Design Name: 
// Module Name: mbr
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


module mbr(clk,control,from_memory,from_acc,to_memory,to_br,addr_out,to_ir
    );
    input clk;
    input [1:0]control;
    input [15:0]from_memory,from_acc;
    output reg [15:0]to_memory,to_br;
    output reg [7:0]addr_out,to_ir;
    always@(posedge clk)
    begin
        if(control==01)
        begin
            if(from_memory[15]==1)
            begin
                to_br<=from_memory&16'b0000000011111111;
            end
            else
            begin
                addr_out<=from_memory[7:0];
            end
            to_ir<=from_memory[15:8];
        end
        if(control==10)
        begin
            to_br<=from_memory;
        end
        if(control==11)
        begin
            to_memory<=from_acc;
        end
    end
endmodule
