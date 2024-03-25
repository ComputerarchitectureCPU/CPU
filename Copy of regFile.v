`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 10:25:43 AM
// Design Name: 
// Module Name: regFile
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


module regFile #(parameter n=5) (
input rst,clk,
input  RegWrite,
input [31:0]data,
input [n-1:0] read1,read2,write,
output [31:0]r1,r2
    );
    
  reg[31:0] x[31:0];
    assign r1 = x[read1];
    assign r2 = x[read2];
    integer i;

    always @ (posedge clk or posedge rst) begin
    
    if (rst==1)begin 
    for (i=0; i<32; i=i+1)begin
    x[i]=0;
    end
    end
    else begin 
    if (RegWrite==1)begin
     if(write == 5'd0) begin
        x[write] = 0;
      end else begin
    x[write]= data;
      end
    end
    end
    
    end
    
endmodule
