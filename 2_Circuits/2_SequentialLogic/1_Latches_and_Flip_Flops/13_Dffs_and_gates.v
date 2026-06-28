module top_module (
    input clk,
    input x,
    output z
); 

    wire [2:0] d;
    reg [2:0] q;
    assign d[0] = x ^ q[0];
    assign d[1] = x & ~q[1];
    assign d[2] = x  | ~q[2];
    
    always @(posedge clk)begin
        q<=d;
    end
    
    assign z = ~(q[0] | q[1] | q[2]);
endmodule
2