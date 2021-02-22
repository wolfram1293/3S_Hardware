module testadd4;
  wire		[4:0] s;
  reg		[3:0] a, b;
  reg		ck;
  initial begin
	$monitor("%t %b + %b = %b" , $time, a, b, s);
	a <= 0;   b <= 0;
	ck <= 0;
	#400
	$finish;
  end
  always  #10 ck <= ~ck;
  always @(posedge ck) begin
	a <= $random;
	b <= $random;
  end
  add4 add ( s,a,b );
endmodule
