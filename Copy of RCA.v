`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 09:31:54 AM
// Design Name: 
// Module Name: RCA
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


module RCA#(parameter n=32)(
input [n-1:0] A,B,
output [n:0] sum,
output err

    );

assign err = (A[n-1] != B[n-1])? 1'b0:
            (A[n-1] == sum[n-1])? 1'b0: 1'b1;
    wire [n:0]Cin;
    genvar i;
    assign Cin[0]=1'b0;
    generate 
    for (i=0; i<n; i=i+1) begin        
        FullAdder FA(.A(A[i]), .B(B[i]),.Cin(Cin[i]), .sum(sum[i]), .Cout (Cin[i+1]));
       end 
    endgenerate

       
        
endmodule

       
        
endmodule