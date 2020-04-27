module IR(
input clk,
input control,         //�����֣�control=1��BR����д��CU������д
input [7:0]from_BR,
output reg [7:0]to_ControlUnit
    );
always@ (posedge clk)
begin
    if(control==1) to_ControlUnit<=from_BR;
end
endmodule
