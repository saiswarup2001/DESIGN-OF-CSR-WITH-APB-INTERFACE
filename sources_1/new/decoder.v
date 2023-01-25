`timescale 1ns/1ps
module decoder #(
			parameter ADDR_WIDTH = 3,
			parameter DATA_WIDTH = 8
		)
		(
			input 		    [ADDR_WIDTH-1:0]i_addr,
			input                           i_en,
			output 	reg 	[DATA_WIDTH-1:0]o_a,o_b,o_c,o_d,o_e,o_f,o_g,o_h
		);


always@(i_addr or i_en)
    begin
    if(i_en) begin
        case(i_addr)
	    3'b000  : o_a = 8'b00000001;
	    3'b001  : o_b = 8'b00000010;
	    3'b010  : o_c = 8'b00000100;
	    3'b011  : o_d = 8'b00001000;
	    3'b100  : o_e = 8'b00010000;
	    3'b101  : o_f = 8'b00100000;
	    3'b110  : o_g = 8'b01000000;
	    3'b111  : o_h = 8'b10000000;
	    //default : o_en = 8'b00000000;
	endcase
    end
 end
endmodule