`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2023 20:18:25
// Design Name: 
// Module Name: DecRound
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


module DecRound(ct,key,tmp_ct,pt);
input [0:127]ct,tmp_ct,key;
output [0:127]pt;

wire [0:127]tmp;
Decryption des1(ct,key,tmp);
Exor des2(tmp_ct,tmp,pt);













endmodule
