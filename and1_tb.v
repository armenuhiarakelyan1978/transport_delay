`timescale 1ns/1ns
module andwithdelay_tb;
reg a,b;
wire out;
wire out1;
reg clk;

andwithdelay  a1(.out(out), .out1(out1),
.a(a), .b(b), .clk(clk));

initial
begin
	clk = 0;
forever	#3 clk = ~clk;
end

initial
begin
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;

       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=0; b=0;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
       @(posedge clk)	a=1; b=0;
       @(posedge clk)	a=1; b=1;
       @(posedge clk)	a=0; b=1;
end

initial
begin
	$dumpfile("andwithdelay_tb.vcd");
	$dumpvars();
	#1000 $finish;
end
endmodule
