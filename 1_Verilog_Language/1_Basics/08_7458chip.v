module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    //using wire approach

    wire two_and1;
    wire two_and2;
    wire three_and1;
    wire three_and2;
    assign two_and1 = p2a & p2b;
    assign two_and2 = p2c & p2d;
    assign three_and1 = p1a & p1b & p1c;
    assign three_and2 = p1d & p1e & p1f;
	assign p2y = two_and1 | two_and2;
	assign p1y = three_and1 | three_and2;
endmodule
