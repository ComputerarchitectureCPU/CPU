`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 11:08:18 AM
// Design Name: 
// Module Name: ctrl_unit
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

module ctrl_unit(
     input [4:0] inst,
     output reg Branch ,reg MemRead ,reg MemtoReg,reg MemWrite,reg ALUSrc,reg RegWrite,
     output reg [1:0] ALUOp
    );
    
    always @(*) begin
    
    case(inst)
    
    5'b01100: begin 
    Branch=1'b0 ;MemRead=1'b0 ;MemtoReg=1'b0; MemWrite=1'b0; ALUSrc=1'b0; RegWrite=1'b1;ALUOp=2'b10;
    end
    
    5'b00000 : begin 
        Branch=1'b0 ;MemRead=1'b1 ;MemtoReg=1'b1; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1;ALUOp=2'b00;

    end 
     5'b01000 : begin 
        Branch=1'b0 ;MemRead=1'b0 ;MemtoReg=1'b0; MemWrite=1'b1; ALUSrc=1'b1; RegWrite=1'b0;ALUOp=2'b00;

    end 
     5'b11000 : begin 
        Branch=1'b1 ;MemRead=1'b0 ;MemtoReg=1'b0; MemWrite=1'b0;ALUSrc=1'b0; RegWrite=1'b0;ALUOp=2'b01;

    end 
    
    endcase 
    
    end
    
    
endmodule
