module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
endmodule

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] cout_ki_wires;
    genvar i;
    generate
        bcd_fadd(a[3:0], b[3:0], cin, cout_ki_wires[0], sum[3:0]);
        for (i=4; i<400; i+=4) begin: New_Adder
            bcd_fadd bcd_ka_instance(a[3+i:i], b[3+i:i], cout_ki_wires[i/4 - 1], cout_ki_wires[i/4], sum[3+i:i]);
        end
    endgenerate
endmodule
