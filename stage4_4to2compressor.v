module fout_twocompstage3(input x1,x2,x3,x4,output sum,carry);
assign sum = x1|x3|x4;
assign carry = (x1&x2)|(x3&x4);
endmodule