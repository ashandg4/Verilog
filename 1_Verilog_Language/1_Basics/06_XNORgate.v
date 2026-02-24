module top_module( 
    input a, 
    input b, 
    output out );
    
    //asiign out = ~(a^b);
    assign out = (~a&~b) | (a&b);
endmodule
