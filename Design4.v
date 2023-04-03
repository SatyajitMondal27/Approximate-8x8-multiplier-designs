module eightxeightmultiplier(input [7:0]a,[7:0]b,output [15:0]r);
wire [3:0]al,ah,bl,bh;
assign al[3:0]=a[3:0];
assign ah[3:0]=a[7:4];
assign bl[3:0]=b[3:0];
assign bh[3:0]=b[7:4];
wire [7:0]p1,p2,p3,p4;
fourxfourmultiplier inst1(al,bl,p1);
fourxfourmultiplier inst2(ah,bl,p2);
fourxfourmultiplier inst3(al,bh,p3);
fourxfourmultiplier inst4(ah,bh,p4);
assign r[0]=p1[0];
assign r[1]=p1[1];
assign r[2]=p1[2];
assign r[3]=p1[3];

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43;
ha had1(p2[0],p1[4],w1,w2);
ha had2(p2[1],p1[5],w3,w4);
ha had3(p2[2],p1[6],w5,w6);
ha had4(p2[3],p1[7],w7,w8);
fa fad1(p2[4],p3[4],p4[0],w9,w10);
fa fad2(p2[5],p3[5],p4[1],w11,w12);
fa fad3(p2[6],p3[6],p4[2],w13,w14);
fa fad4(p2[7],p3[7],p4[3],w15,w16);
ha had5(w1,p3[0],r[4],w17);
fa fad5(w2,w3,p3[1],w18,w19);
fa fad6(w4,w5,p3[2],w20,w21);
fa fad7(w6,w7,p3[3],w22,w23);
ha had6(w8,w9,w24,w25);
ha had7(w11,w10,w26,w27);
ha had8(w12,w13,w28,w29);
ha had9(w14,w15,w30,w31);
ha had10(w16,p4[4],w32,w33);
ha had11(w17,w18,r[5],w34);
fa fad8(w19,w20,w34,r[6],w35);
fa fad9(w21,w22,w35,r[7],w36);
fa fad10(w23,w24,w36,r[8],w37);
fa fad11(w25,w26,w37,r[9],w38);
fa fad12(w27,w28,w38,r[10],w39);
fa fad13(w29,w30,w39,r[11],w40);
fa fad14(w31,w32,w40,r[12],w41);
fa fad15(w33,w41,p4[5],r[13],w42);
ha had12(w42,p4[6],r[14],w43);
assign r[15]=p4[7]^w43;


endmodule