module monitor (adder_if.slave mon_if);
  
  always@(posedge mon_if.a, mon_if.b) begin
    $display("A = %d, B = %d,sum = %d", mon_if.a, mon_if.b, mon_if.sum);
  end
endmodule
