class alu_gen;
  transaction tx;

	function new();

	endfunction

	task run();
		$display("Inside generator block");
      repeat(count)begin
      	tx=new();
      	assert( tx.randomize());
		gen2bfm.put(tx);
      end
	endtask
endclass
