`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 10:08:30 AM
// Design Name: 
// Module Name: NbitMUX
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

module NbitMUX#(parameter n=4)(
    input [n-1:0]A,
    input [n-1:0]B,
    input sel,
    output [n-1:0]out
    );
    
    genvar i;                                                            
    for (i=0; i<n; i=i+1) begin                                          
       MUX2x1 mux (.A(A[i]), .B(B[i]), .sel(sel),.out(out[i]));
    end                                                                  
endmodule
