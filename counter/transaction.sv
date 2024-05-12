class transaction;

  //declare the transaction fields for ALU DUT
  rand bit [3:0] A ;
  rand bit [3:0] B;
  rand bit[1:0] mode;
  bit [4:0] Y;

  bit rst_n =1;

  

  function void display(string name);
    $display("-------------------------");
    $display("- %s ", name);
    display_in("port in");
    display_out("port out");
    $display("-------------------------");

  endfunction

  function void display_in(string name);
    $display(name);
    $display("A = %b", A);
    $display("B = %b", B);
    $display("mode = %b", mode);

  endfunction

  function void display_out(string name);
    $display(name);
    $display("Y = %b", Y);
  endfunction

endclass
