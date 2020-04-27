module IR(
input clk,
input control,         //控制字，control=1将BR数据写入CU，否则不写
input [7:0]from_BR,
output reg [7:0]to_ControlUnit
    );
always@ (posedge clk)
begin
    if(control==1) to_ControlUnit<=from_BR;
end
endmodule
