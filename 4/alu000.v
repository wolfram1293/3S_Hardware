module  alu(A,B,O,CTR,ck);
input	[7:0]	A, B;
input	[3:0]	CTR;
input	ck;
output	[7:0] O;
reg	[7:0]	INA, INB, O;
reg	[3:0]	C;
wire	[7:0]	OUT;

always @(posedge ck) begin

end
endmodule
