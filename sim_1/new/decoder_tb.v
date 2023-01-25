`timescale 1ns/1ps
module decoder_tb();
	reg  [2:0]i_addr;
	reg       i_en;
	wire [7:0]o_a,o_b,o_c,o_d,o_e,o_f,o_g,o_h;

decoder instan_decoder(
			             .i_addr(i_addr),
			             .i_en(i_en),
			             .o_a(o_a),
			             .o_b(o_b),
			             .o_c(o_c),
                         .o_d(o_d),
                         .o_e(o_e),
                         .o_f(o_f),
                         .o_g(o_g),
                         .o_h(o_h)
	   	               );
always #5 i_en = 1;
initial
    begin
           i_addr = 3'b000;
       #10 i_addr = 3'b001;
       #10 i_addr = 3'b010;
       #10 i_addr = 3'b011;
       #10 i_addr = 3'b100;
       #10 i_addr = 3'b101;
       #10 i_addr = 3'b110;
       #10 i_addr = 3'b111;
       
       #10 $stop;
       
   end  
endmodule
