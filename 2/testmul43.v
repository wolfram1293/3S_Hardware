module testmul4;
  wire		[7:0] s, ss;
  reg		[3:0] a, b;
  reg		ck;
  reg		flag;
   assign ss = a*b;
   
  initial begin
	$monitor( "%t %b * %b = %b", $time, a, b, s);
	a <= 0;   b <= 0; flag <= 0;
	ck <= 0;
  end
  always  #10 ck <= ~ck;
  always @(negedge ck) begin
     
	if( s != ss ) begin
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
  mul4 mul ( s,a,b );
endmodule
