interface adder_if(input logic clk);
  
  logic [3:0] a;
  logic [3:0] b;
  logic [4:0] sum;
  
  modport master(input a,b,output sum);
  modport slave(input sum, output a,b);
  endinterface
  
