//*******************************************************//
//Project name:frequency divide by 3                     //
//Module name: fby3                                      //
//Design version: 1.0                                    //
//Tools used: Synopsys VCS
//Tools version:
//Desctiption:
//Developer name:
//Additional comments:
//******************************************************//

`timescale 1ns/10ps
module fby3(clk,rst, q);
input clk,rst;
output reg q;

reg q1;

always @(posedge (clk)) begin
if(rst)begin
q1<=0;
q<=0;
end else begin
q1<= !q1 && !q;
q<= q1;
end
end
endmodule
