module simfulladd;
    wire s, cout;
    reg x, y, cin;
    initial begin
        $monitor( "%t In (x, y, cin) -> Out (s, cout): (%b, %b, %b) -> (%b, %b)", $time, x, y, cin, s, cout);
        x <= 0; y <= 0; cin<=0;
        #40 x <= 0; y <= 0; cin<=1;
        #40 x <= 0; y <= 1; cin<=0;
        #40 x <= 0; y <= 1; cin<=1;
        #40 x <= 1; y <= 0; cin<=0;
        #40 x <= 1; y <= 0; cin<=1;
        #40 x <= 1; y <= 1; cin<=0;
        #40 x <= 1; y <= 1; cin<=1;
        #40
        $finish;
    end
    FullAdderStructure add ( x, y, cin, cout, s );
endmodule