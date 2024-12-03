`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 04:12:20 PM
// Design Name: 
// Module Name: bcdSelector
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


module bcdSelector(in, screen, out);

input [15:0] in;

input [1:0] screen;

output reg [3:0] out = 0;

always @( * )

begin
   
case(screen)
    
    2'b00: out = in[3:0];
    2'b01: out = in[7:4]; 
    2'b10: out = in[11:8];
    2'b11: out = in[15:12];
    default: out = 4'b0000;
     
endcase

end


endmodule