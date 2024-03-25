`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 10:51:22 AM
// Design Name: 
// Module Name: immGen
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


module immGen(
    output reg [31:0] gen_out,
    input  [31:0] inst
    );
    always @(*)begin
    if (inst[6:5]==2'b00) begin
        if (inst [31]==1)  gen_out={20'b11111111111111111111,inst[31:20]};
        else begin  gen_out={20'b00000000000000000000,inst[31:20]};        
        end
        end
    else if(inst[6:5]==2'b01) begin 
        if (inst [31]==1)  gen_out={20'b11111111111111111111,inst[31:25],inst[11:7]};
        else begin  gen_out={20'b00000000000000000000,inst[31:25],inst[11:7]};        
        end
    end
      else if (inst[6]==1) begin 
    if (inst [31]==1)  gen_out={20'b11111111111111111111,inst[31],inst[7],inst[30:25],inst[11:8]};
        else begin  gen_out={20'b00000000000000000000,inst[31],inst[7],inst[30:25],inst[11:8]};        
        end
    end
    else begin
     gen_out=32'b00000000000000000000000000000000;
    end   
    end
endmodule
