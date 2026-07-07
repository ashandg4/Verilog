module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );

    assign out_both = in[3:1] & in[2:0];
    assign out_any = in[3:1] | in[2:0];
    assign out_different = in ^ {in[0],in[3:1]};
endmodule

/*
module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different 
    );
  
  integer i;

	always @(*)
	begin
		out_different[3] = in[3] ^ in[0];
		for(i=0; i<3; i++)
		begin
			out_both[i] = in[i] & in[i+1];
			out_any[i+1] = in[i] | in[i+1];
			out_different[i] = in[i] ^ in[i+1];
		end
	end

endmodule
*/
