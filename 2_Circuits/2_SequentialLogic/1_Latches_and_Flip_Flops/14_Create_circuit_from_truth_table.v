/*
module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always @(posedge clk)begin
        Q <= (j & ~Q) | (~k & Q);
    end
endmodule
*/

module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always @(posedge clk) begin
        case({j,k})
            2'b01: Q = 1'b0;
            2'b10: Q = 1'b1;
            2'b00: Q = Q;
            2'b11: Q = ~Q;
        endcase
    end
endmodule
