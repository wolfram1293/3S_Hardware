module testsub4;
  wire		[4:0] s;
  reg		[3:0] a, b;
  reg		ck;
  reg		flag;
  initial begin
	$monitor( "%t %b - %b = %b", $time, a, b, s);
	a <= 0;   b <= 0; flag <= 0;
	ck <= 0;
  end
  always  #10 ck <= ~ck;
  always @(negedge ck) begin
	if( s != a - b ) begin
           flag <= 1;
           $finish;
        end
        if( a == 'h f && b == 'h f ) begin
           $display( "OK\n" );
           $finish;
        end
  end
  always @(posedge ck) begin
	{b,a} <= {b,a} + 1;
  end
  sub4 sub ( s,a,b );
endmodule
