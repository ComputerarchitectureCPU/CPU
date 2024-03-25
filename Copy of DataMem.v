`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 10:04:18 AM
// Design Name: 
// Module Name: DataMem
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


module DataMem
(input clk, input MemRead, input MemWrite,
 input [4:0] addr, input [31:0] data_in, output reg [31:0] data_out);reg [31:0] mem [0:63];

always @(posedge clk) begin
if (MemWrite == 1) begin
mem[addr] = data_in;
end
end

always @(*) begin
if (MemRead == 1) begin
data_out = mem[addr];
end
end

  initial begin 

    mem[0]=32'd17;
    mem[1]=32'd9;
    mem[2]=32'd25;
  end


endmodule 
