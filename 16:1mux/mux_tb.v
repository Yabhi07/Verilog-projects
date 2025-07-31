`timescale 1ps/1ps 
`include "mux.v"  

module mux_tb();
reg [15:0] A ;
 reg [3:0] S ;
 wire F ;

mux uut (.in(A),.sel(S),.out(F));   
initial begin
    $dumpfile("mux_tb.vcd");
    $dumpvars(0,mux_tb); 
    #5 A=16'h3f0a; S=4'h0;
    #5 S=4'h1;
    #5 S=4'h6;
    #5 S=4'hc; 
    $finish;
 end  
 endmodule




