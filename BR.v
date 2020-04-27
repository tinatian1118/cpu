module BR(
input clk,
input [1:0]control,       //control=1��MBR����control=2��MBRdata��������ʱ�򲻶�
input [15:0]MBR,
input [15:0]MBRdata,      //������ͬ��MBR����
output reg [15:0]to_ALU
    );
always@ (posedge clk)
begin
    if(control==2'd1) to_ALU<=MBR;
    else if(control==2'd2) to_ALU<=MBRdata;
end
endmodule
