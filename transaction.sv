class transaction;
  rand bit[n-1:0]a,b;
  bit [n:0] result;
  rand bit [2:0] opcode;
  
  function new();
    
  endfunction
  
  task print(string name);
    $display("--------------- %s ---------------",name);
    $display("Transaction class");
    $display("a = %d : b = %d : opcode = %b",a,b,opcode);
    $display("result = %d",result);
    
  endtask
endclass
