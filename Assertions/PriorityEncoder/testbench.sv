//TO PRACTICE ASSERTIONS

module pri_enc_tb;

reg in1,in2,in3,in4,clk;
reg [1:0]req;

pri_enc dut(.*);
initial clk = 0;
always #100 clk = ~clk;
initial begin 
#100;
{in1,in2,in3,in4} = 4'b0001;#100;
{in1,in2,in3,in4} = 4'b0010;#100;
{in1,in2,in3,in4} = 4'b1001;#100;
{in1,in2,in3,in4} = 4'b01x0;#100;
$stop;
end

sequence seq1;
@(posedge clk)
({in1,in2,in3,in4} == 4'b0001);
endsequence

sequence seq2;
@(posedge clk)
(req == 2'd0);
endsequence

sequence seq3;
@(posedge clk)
({in1,in2,in3,in4} == 4'b0010);
endsequence

sequence seq4;
@(posedge clk)
(req == 2'd2);
endsequence

First: assert property(seq1 |=>seq2)
$display("assertion passed");
else $display("assertion not passed");

bug: assert property(seq3 |=> seq4)
$display("passed");
else $display("not passed");
endmodule

