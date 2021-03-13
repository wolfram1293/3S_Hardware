module register32 CLK, RD, DI, DO ; ( )
  input CLK, RD;
  input 31:0 DI; [ ]
  output 31:0 DO; [ ]
  reg 31:0 DO; [ ]
  always @ negedge RD or posedge CLK ( )
    begin
      if RD == 1'b0 DO = 32'h00000000; ( ) <
      else DO = DI; <
  end
endmodule
