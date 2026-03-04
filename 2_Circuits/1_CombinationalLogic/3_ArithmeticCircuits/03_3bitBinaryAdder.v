module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
	
    integer i;
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign cout[0] = (a[0] & b[0]) | (b[0] & cin) | (cin & a[0]);
    
    always @(*)begin
        for (i=1; i<3; i++)begin
            sum[i] = a[i] ^ b[i] ^ cout[i-1];
            cout[i] = (a[i] & b[i]) | (b[i] & cout[i-1]) | (cout[i-1] & a[i]);
        end
    end
endmodule
