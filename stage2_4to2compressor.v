`timescale 1ns / 1ps
module four_twocompstage2(input x1,x2,x3,x4,output sum,carry);
assign sum=x1|x3;
assign carry = x2|x4;
endmodule