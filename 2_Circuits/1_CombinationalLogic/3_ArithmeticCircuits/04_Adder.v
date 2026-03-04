module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

/*    module FA(input a, input b, output s, output c);
        assign sum = a ^ b ^ c;
   		assign cout = (a & b) + (b & c) + (c & a);
    endmodule */
    assign sum = x + y;
endmodule
