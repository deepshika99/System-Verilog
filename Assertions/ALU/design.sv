module alu(A,B,op,clk,R);
input [7:0] A,B;
input clk;
input [2:0] op;
output [7:0] R;

wire [7:0] R1,R2;
reg [7:0] R3;

assign R1 = A;
assign R2 = B;
assign R = R3;

always @ (posedge clk)
begin 
case(op)
0: R3 = R1 + R2;
1: R3 = R1-R2;
2: R3 = ~R1;
3: R3 = ~(R1 & R2);
4: R3 = ~(R1 | R2);
5: R3 = R1 & R2;
6: R3 = R1 | R2;
7: R3 = R1 ^ R2;
endcase
end 

endmodule

