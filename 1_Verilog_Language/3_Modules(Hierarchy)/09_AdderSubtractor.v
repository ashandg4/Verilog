module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout1;
    wire [31:0] b_xor_sub;
    assign b_xor_sub = {32{sub}} ^ b;
    add16 add1(a[15:0], b_xor_sub[15:0], sub, sum[15:0], cout1);
    add16 add2(a[31:16], b_xor_sub[31:16], cout1, sum[31:16]);
endmodule
