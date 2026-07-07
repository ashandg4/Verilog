module top_module( 
    input [254:0] in,
    output reg [7:0] out );

    always @(in)begin
        out=0;
        for (int i=0; i<255; i++)begin
            if (in[i] == 1'b1) out+=1;
            else out=out;
        end
    end
endmodule
