`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2023 18:15:03
// Design Name: 
// Module Name: CBCround
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


module CBCround(pt,key,tmp_ct,ct);
input [0:127]pt,tmp_ct,key;
output [0:127]ct;

wire [0:127]tmp;

Exor des2(pt,tmp_ct,tmp);
Encryption des3(tmp,key,ct);























endmodule
