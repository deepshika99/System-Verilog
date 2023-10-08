`include "interface.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
module env;
  
  logic clk;
  
  adder_if adder_intf(.clk(clk));
  
  driver drv(adder_intf);
  monitor mon(adder_intf);
  scoreboard scb(adder_intf);
  
  always #20 clk = ~clk;
  initial clk = 0;
endmodule
