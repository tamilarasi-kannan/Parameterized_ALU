class alu_agent;
alu_gen gen;
alu_bfm bfm;
alu_mon mon;
alu_cov cov;

	function new();
		gen=new();
		bfm=new();
		mon=new();
		cov=new();
	endfunction

	task run();
	$display("Inside Agent");
      fork
	gen.run();
	bfm.run();
	mon.run();
	cov.run();
      join
	endtask
endclass
