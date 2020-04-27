module BR(
input clk,
input [1:0]control,       //control=1从MBR读，control=2从MBRdata读，其他时候不读
input [15:0]MBR,
input [15:0]MBRdata,      //两个不同的MBR输入
output reg [15:0]to_ALU
    );
always@ (posedge clk)
begin
    if(control==2'd1) to_ALU<=MBR;
    else if(control==2'd2) to_ALU<=MBRdata;
end
endmodule
