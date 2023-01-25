module mux41_tb;
reg [7:0] a;
reg [7:0] b;
reg [7:0] c;
reg [7:0] d;
reg [7:0] e;
reg [7:0] f;
reg [7:0] g;
reg [7:0] h; 
reg [2:0] sel;    
reg       en;        
wire [7:0] out;


mux41 uut(
            .a(a),
            .b(b),
            .c(c),
            .d(d),
            .e(e),
            .f(f),
            .g(g),
            .h(h),
            .sel(sel),
            .en(en),
            .out(out)
         );

initial begin
a=1'b0; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; sel=1'b0; en=1'b0;
#500 $finish; 
end 
always  #10  en = ~en;
always #1 a=8'd1;
always #2 b=8'd2;
always #3 c=8'd3;
always #4 d=8'd4;
always #5 e=8'd5;
always #6 f=8'd6;
always #7 g=8'd7;
always #8 h=8'd8;
always #9 sel=~sel;
endmodule