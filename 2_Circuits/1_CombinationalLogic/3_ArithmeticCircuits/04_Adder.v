//Method-1:
module top_module1 (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [3:0]cout;
    Full_Adder FA1(x[0],y[0],0,cout[0],sum[0]);
    Full_Adder FA2(x[1],y[1],cout[0],cout[1],sum[1]);
    Full_Adder FA3(x[2],y[2],cout[1],cout[2],sum[2]);
    Full_Adder FA4(x[3],y[3],cout[2],sum[4],sum[3]);
endmodule

module Full_Adder( 
    input a, b, cin,
    output cout, sum );
    
    assign sum  = a^b^cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
endmodule



//Method-2:
module top_module2 (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

/*    module FA(input a, input b, output s, output c);
        assign sum = a ^ b ^ c;
   		assign cout = (a & b) + (b & c) + (c & a);
    endmodule */
    assign sum = x + y;
endmodule
