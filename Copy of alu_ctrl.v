`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/27/2024 11:27:33 AM
// Design Name: 
// Module Name: alu_ctrl
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


module alu_ctrl(
input [1:0] aluop, input [2:0] inst1,input inst2,
output reg [3:0] alusel
    );
     always @(*) begin
       
       case(aluop)
         2'b00: begin
           alusel = 4'b0010;
         end
         2'b01: begin
           alusel = 4'b0110;
         end
         2'b10: begin
           case({inst1,inst2})
             4'b0000: begin
               alusel = 4'b0010;
             end
             4'b0001: begin
               alusel = 4'b0110;
             end
             4'b1110: begin
               alusel = 4'b0000;
             end
             4'b1100: begin
               alusel = 4'b0001;
             end
             default: begin
               alusel = 4'b0010;
             end
           endcase
         end
         default: begin
           alusel = 4'b0010;
         end
       endcase
    /*case({aluop,inst1,inst2})
    
    6'b000000: begin 
    alusel = 4'b0010;
    end
    
    6'b010000 : begin 
    alusel = 4'b0110;
    end 
     6'b100000 : begin 
        alusel = 4'b0010;
    end 
     6'b100001 : begin 
        alusel = 4'b0110;
    end 

 6'b101110 : begin 
        alusel = 4'b0000;
    end 

 6'b101100 : begin 
        alusel = 4'b0001;
    end 
    default: begin
     alusel = 4'b1111;
    end
    endcase 
    */
    end
endmodule

