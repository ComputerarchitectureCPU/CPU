`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 10:36:01 AM
// Design Name: 
// Module Name: nBitShifter
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



module nBitShifter#(parameter n = 8)(
input [n-1:0] x,
output [n-1: 0] y
    );
    
    assign y = {x[n-2:0], 1'b0};
endmodule
