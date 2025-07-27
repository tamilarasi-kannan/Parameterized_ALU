class alu_cov;
   transaction tx;
	covergroup alu_cg();
		 coverpoint tx.a{
           bins b1 = {[1:100]};
		 }
      coverpoint tx.b{
        bins b2 = {[1:100]};
        
      }
      coverpoint tx.opcode{
        bins b3 = {[1:100]}; 
      }
	endgroup

	function new();
      alu_cg = new();
	endfunction

	task run();
		$display("Inside Coverage block");
       forever begin
			mon2cov.get(tx);
			alu_cg.sample();
		end
	endtask
endclass
