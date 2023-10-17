//TO PRACTICE ASSERTIONS

module pri_enc(in1,in2,in3,in4, req,clk);

input in1,in2,in3,in4,clk;
output reg [1:0] req;

always @(posedge clk, in1 or in2 or in3 or in4)
begin

casez({in1,in2,in3,in4})
4'b???1: req=2'd0;
4'b??10: req=2'd1;
4'b?100: req=2'd2;
4'b1000: req=2'd3;
4'b0000: req=2'dx;
endcase

end

endmodule 
