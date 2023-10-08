`include "environment.sv"
module top;
  
  env e();
  adder dut(.a(e.adder_intf.a),.b(e.adder_intf.b), .sum(e.adder_intf.sum));
endmodule
