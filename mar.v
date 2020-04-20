`timescale 1ns / 1ps
module mar(clk,control,from_mbr,from_pc,to_memory);
    input clk;
    input [1:0]control;
    input [7:0]from_mbr;
    input [7:0]from_pc;
    output reg [7:0]to_memory;
    initial
    begin
        to_memory<=8'b00000000;
    end
    always@(posedge clk)
    begin
        if(control==01)
            to_memory<=from_mbr;
        else
            to_memory<=from_pc;
    end    
endmodule