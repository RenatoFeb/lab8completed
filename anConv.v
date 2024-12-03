`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 01:46:51 PM
// Design Name: 
// Module Name: anConv
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


module anConv(input [1:0] an, output reg [3:0] conv = 0);

always@(*)
begin
case(an)
    2'b00 : conv = 4'b1110;
    2'b01 : conv = 4'b1101;
    2'b10 : conv = 4'b1011;
    2'b11 : conv = 4'b0111;
    default: conv  = 4'b1111;
endcase
end    
    
endmodule
