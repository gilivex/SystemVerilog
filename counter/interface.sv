interface inf (input logic clk,rst_n);
  
  //declare the signals for the interface ALU DUT

  bit [3:0] A;
  bit [3:0] B;
  bit [1:0] mode;
  bit [4:0] Y;
  
           
  modport DUT( input A,B,mode,rst_n,clk, output Y);
  
endinterface