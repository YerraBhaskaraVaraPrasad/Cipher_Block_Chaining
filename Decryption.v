`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2023 20:13:49
// Design Name: 
// Module Name: Decryption
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


module CBCdecryption#(parameter n=1024)(ct,key,iv,pt);
input [0:n-1]ct;
input [0:127]key,iv;
output reg [0:n-1]pt;

wire [0:127] tmp;
wire [0:127]tmp_pt[0:((n/128)-1)];

Decryption des1(ct[0+:128],key,tmp);
Exor des2(iv,tmp,tmp_pt[0]);
//Encryption des2(tmp,key,tmp_ct[0]);


genvar i;
generate

for(i=1;i<(n/128);i=i+1)
begin
DecRound des3(ct[(i*128)+:128],key,ct[(i-1)*128+:128],tmp_pt[i]);
end

endgenerate

integer j=0;
always@(tmp_pt)
begin
for(j=0;j<8;j=j+1)
begin
pt[(j*128)+:128]=tmp_pt[j];
end
end

















endmodule
