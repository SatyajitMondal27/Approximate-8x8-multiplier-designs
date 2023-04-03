module fourxfourmultiplier(input [3:0]a,[3:0]b,output [7:0]p);
wire c1,c2,c3,c4,c5;
wire P20,G20,pp20,pp02,pp30,pp03,pp12,pp21,P30,P21,G21,G30,GpG3021,pp22,pp31,pp13,P31,G31,pp32,pp23,pp33;
//stage0
assign p[0]=a[0]&b[0];
//stage1
ha a1(a[0]&b[1],a[1]&b[0],p[1],c1);
//stage2
assign pp20=a[2]&b[0];
assign pp02=a[0]&b[2];
assign P20=pp20|pp02;
assign G20=pp20&pp02;
four_twocompstage1 inst1(P20,G20,a[1]&b[1],c1,p[2],c2);
//stage3
assign pp30=a[3]&b[0];
assign pp03=a[0]&b[3];
assign pp21=a[2]&b[1];
assign pp12=a[1]&b[2];
assign P21= pp21|pp12;
assign G21= pp21&pp12;
assign P30= pp30|pp03;
assign G30= pp30&pp03;
assign GpG3021= G30|G21;
four_twocompstage1 inst2(c2,GpG3021,P21,P30,p[3],c3);
//stage4
assign pp31=a[3]&b[1];
assign pp13=a[1]&b[3];
assign P31=pp31|pp13;
assign G31=pp31&pp13;
assign pp22=a[2]&b[2];
four_twocompstage1 inst3(P31,G31,pp22,c3,p[4],c4);
//stage5
assign pp32=a[3]&b[2];
assign pp23=a[2]&b[3];
fa a2(pp32,pp23,c4,p[5],c5);
//stage6
assign pp33=a[3]&b[3];
ha a3(pp33,c5,p[6],p[7]);
endmodule