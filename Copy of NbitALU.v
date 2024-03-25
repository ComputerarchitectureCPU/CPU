`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 08:57:29 AM
// Design Name: 
// Module Name: NbitALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module NbitALU#(parameter N=32)(
input [3:0]sel,
input [N-1:0]A,B,
output reg [N-1:0] ALUout,
output ZeroFlag
    );
    wire [N-1:0]sum;
    wire [N-1:0]sub;
    wire ERR1, ERR2;
  RCA #(.n(32))  RCA1(.A(A),.B(B),.sum(sum),.err(ERR1));

  RCA #(.n(32))  RCA2(.A(A),.B(~B+1'b1),.sum(sub),.err(ERR2));
   
    always @(*)
    case (sel) 
    
        4'b0010: ALUout = sum;
        4'b0110: ALUout=sub;
        4'b0000: ALUout= A&B;
        4'b0001: ALUout = A|B;
        default :ALUout=32'b0;
    endcase
    
    
    
    assign  ZeroFlag=ALUout?0:1;
    
    
endmodule
