`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 09:07:12 AM
// Design Name: 
// Module Name: N_bitReg
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

module N_bitReg#(parameter n =8)(

input [n-1:0]D,
input clk,
input rst,
input load,
output  [n-1:0]Q


    );
   
    

    wire [n-1:0] inp;
    
    assign inp=load? D:Q;
    
    genvar i;
    for (i=0; i<n; i=i+1) begin 
         DFlipFlop DFF(.clk(clk), .rst(rst), .D(inp[i]), .Q(Q[i]));
    end 
    
endmodule