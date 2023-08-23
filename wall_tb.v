module wall_tb;
reg [3:0] a;
reg [3:0] b;
wire [7:0]prod;
WallaceTreeMult w(a,b,prod);
initial begin
$monitor($time,"a=%4d,b=%4d,prod=%4d",a,b,prod);
    $dumpfile("adder.vcd");
    $dumpvars(0, wall_tb);
#5 a=4'b1101; 
#5 b=4'b0101;
//$display("Product: %h", prod);
#25 $finish;
end
endmodule