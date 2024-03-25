
module main(
input [7:0]A,B,
input clk,

output [3:0] Anode,
output [6:0] LED_out
    );
wire [8:0] sum;
wire err;

RCA   add(.A(A),.B(B),.sum(sum),.err(err));

Four_Digit_Seven_Segment_Driver_Optimized ssd( .clk(clk),.num({4'b0,sum}),.err(err),.Anode(Anode), .LED_out(LED_out));
endmodule
