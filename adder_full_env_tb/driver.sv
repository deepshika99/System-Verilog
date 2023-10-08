module driver(adder_if.master drv_if);
  
  task run;
    #20; drv_if.a = 4'b1010; drv_if.b = 4'b0101;
    #20; drv_if.a = 4'b1111; drv_if.b = 4'b1011;
    #20; drv_if.a = 4'b1101; drv_if.b = 4'b0011;
  endtask
  initial run;
endmodule
