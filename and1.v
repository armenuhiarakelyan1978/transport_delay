`timescale 1ns/1ns 
module andwithdelay(out,
out1,
a,
b,
clk
);
output reg out;
output reg out1;
input a,b;
input clk;
always@(posedge clk)
begin
out = #(6:2:1) a&b;
out1 = a & b; 
end
endmodule
