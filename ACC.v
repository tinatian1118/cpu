module ACC(
input clk,
input rst,     //÷ÿ÷√–≈∫≈£¨rst=1«Â¡„
input [15:0]from_ALU,
output reg [15:0]to_MBR,
output reg [15:0]to_ALU,
output reg flag
    );
reg [15:0] accumulator;
always@ (posedge clk)
begin
    begin
        if(rst==1) accumulator<=0;
        else accumulator<=from_ALU;
    end
    begin
        if(from_ALU[15]==1) flag<=1;
        else flag<=0;       
    end
    to_MBR<=accumulator;
    to_ALU<=accumulator;
end
endmodule
