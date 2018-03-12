/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Sun Mar 11 17:22:39 2018
/////////////////////////////////////////////////////////////


module fby3 ( clk, rst, q );
  input clk, rst;
  output q;
  wire   q1, N4, N5;

  CFD1QXL q1_reg ( .D(N4), .CP(clk), .Q(q1) );
  CFD1QXL q_reg ( .D(N5), .CP(clk), .Q(q) );
  CNR2IXL U5 ( .B(q1), .A(rst), .Z(N5) );
  CNR3XL U6 ( .A(q1), .B(q), .C(rst), .Z(N4) );
endmodule

