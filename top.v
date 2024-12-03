`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:44:57 PM
// Design Name: 
// Module Name: top
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


module top(clk, seg, anode); 

input clk;
output [6:0] seg; 
wire [1:0] an;

reg en = 1;

wire rdy;

output [3:0] anode;


wire [11:0] count;

wire [15:0] bcds;

wire [3:0] bcdSelected;

upCount counter(clk, count);

angen gen(clk, an);

binToBcd bcdConv( clk, en, count, bcds, rdy );

bcdSelector bcdSelect(bcds, an, bcdSelected);

bcd7 bcdOut(clk, bcdSelected, seg, rdy);

anConv conv(an, anode);

endmodule
