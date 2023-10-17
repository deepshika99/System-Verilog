//TO PRACTICE ASSERTIONS

module alu_tb;

reg clk;
reg [7:0] A,B;
reg [2:0] op;

reg [7:0] R;

alu dut(.*);

initial clk = 0;
always #100 clk = ~clk;

initial begin

$dumpfile("dump.vcd");
$dumpvars;

A = 8'b10101010;
B = 8'b01010101;
op = 0; #200;
op = 1; #100;

op = 2; #100;
op = 1; #100;
op = 3; #100;
op = 4; #100;
op = 5; #100;
op = 6; #100;
op = 7; #100;

$stop;
end

sequence seq1;
@(posedge clk)
(op == 3'b000);
endsequence

sequence seq2;
@(posedge clk)
(R == (A+B));
endsequence 

sequence seq5;
@(posedge clk)
(op == 3'b101);
endsequence

sequence seq6;
@(posedge clk)
(R == (A&B));
endsequence 

sequence seq3;
@(posedge clk)
(op == 3'b001);
endsequence 

sequence seq4;
@(posedge clk)
(R == ~(A));
endsequence
 
ADD: assert property(seq1 |=>seq2)
	$display("Assertion ADD passed");
	else
	$display("Assertion add NOT passed");
andd: assert property(seq5 |=>seq6)
	$display("Assertion andd passed");
	else
	$display("Assertion andd NOT passed");
BUG: assert property(seq3 |=> seq4)
	else $display("BUG Encountered");

endmodule
