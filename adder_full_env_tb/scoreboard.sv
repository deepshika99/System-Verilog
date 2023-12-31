module scoreboard(adder_if.slave scb_if);
  
  always@(posedge scb_if.sum) begin
    if(scb_if.sum != scb_if.a +scb_if.b) $fatal("mismatch! sum = %b, expected = %b", scb_if.sum, scb_if.a+scb_if.b);
  end
endmodule
