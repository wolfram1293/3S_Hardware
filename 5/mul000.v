module mul(A,B,O,ck,start,fin);
input [7:0] A, B;
input ck,start;
output [16:0] O;
output fin;

reg [3:0] st;
reg [7:0] AIN, BIN;
reg [16:0] O;
reg fin;

always @(posedge ck) begin

end

endmodule

