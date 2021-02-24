module  alu(A,B,O,CTR,ck);
input	[7:0]	A, B;
input	[3:0]	CTR;
input	ck;
output	[7:0] O;
reg	[7:0]	INA, INB, O;
reg	[3:0]	C;
wire	[7:0]	OUT;

always @(posedge ck) begin
INA <= A;
INB <= B;
C <= CTR;
O <= OUT;
end

assign OUT=(C=='b0000 ? INA + INB:
(C=='b0001 ? INA - INB:
(C=='b1000 ? INA & INB:
(C=='b1001 ? INA | INB:
(C=='b1010 ? INA ^ INB:
(C=='b1011 ? ~INA:
(C=='b1100 ? INA>>1:
(C=='b1101 ? INA<<1:
(C=='b1110 ? {INA[0], INA[7:1]}:
(C=='b1111 ? {INA[6:0], INA[7]}: 8'b0
))))))))));

endmodule
