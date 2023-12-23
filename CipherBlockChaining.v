`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2023 16:13:02
// Design Name: 
// Module Name: CipherBlockChaining
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


module CipherBlockChaining #(parameter n=1024)(pt,key,iv,ct);
input [0:n-1]pt;
input [0:127]key,iv;
output reg [0:n-1]ct;

wire [0:127] tmp;
wire [0:127]tmp_ct[0:((n/128)-1)];

Exor des1(pt[0+:128],iv,tmp);
Encryption des2(tmp,key,tmp_ct[0]);


genvar i;
generate

for(i=1;i<(n/128);i=i+1)
begin
CBCround des3(pt[(i*128)+:128],key,tmp_ct[i-1],tmp_ct[i]);
end

endgenerate

integer j=0;
always@(tmp_ct)
begin
for(j=0;j<(n/128);j=j+1)
begin
ct[(j*128)+:128]=tmp_ct[j];
end
end





endmodule
