`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2023 15:45:14
// Design Name: 
// Module Name: Exor
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


module Exor(tmp_pt,in,out);
input [0:127]tmp_pt,in;
output  [0:127] out;
assign out=tmp_pt^in;


/*
module Exor(i,tmp_pt,iv,tmp_ct,out);
input [31:0]i;
input [0:127]tmp_pt,iv,tmp_ct;
output reg [0:127] out;

always@*
begin
if(i==0) out=tmp_pt^iv;
else out=tmp_pt^tmp_ct;
end
*/





















endmodule
