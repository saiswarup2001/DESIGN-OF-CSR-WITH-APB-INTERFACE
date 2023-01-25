module mux41(
                input [7:0] a,
                input [7:0] b,
                input [7:0] c,
                input [7:0] d,
                input [7:0] e,
                input [7:0] f,
                input [7:0] g,
                input [7:0] h,
                input [2:0] sel,
                input       en,
                output reg [7:0] out
             );

always@(*) begin
if(en) begin
    case (sel)
         3'b000 :out <= a;
         3'b001 :out <= b;
         3'b010 :out <= c;
         3'b011 :out <= d;
         3'b100 :out <= e;
         3'b101 :out <= f;
         3'b110 :out <= g;
         3'b111 :out <= h;
         default : out <= 4'b0;
   endcase
end
end
endmodule

