module testcount4rs;
  wire		[3:0] out;
  reg		ck, res;
  initial begin
	$monitor( "%t %b %b %b", $time, ck, res, out);
	ck<=0;
	res<=0;
	#40
	res <= 1;
	#350
	  if( out == 4'b1111 )  $display("OK\n");
     
	$finish;
  end
  always #10  ck <= ~ck;
  count4rs  cnt ( out, ck, res );
endmodule
