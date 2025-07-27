class alu_bfm;
  virtual alu_int vif;
	transaction tx;

	function new();
      vif=top.pif;
	endfunction

	task run();
		$display("Inside BFM block");
      tx = new();
      forever begin
			gen2bfm.get(tx);         	
            drive_tx(tx);
            tx.print("BFM");
		end
	endtask
   task drive_tx(transaction tx);
     $display(" driving data to design under test");
        vif.a=tx.a;
        vif.b=tx.b;
        vif.opcode=tx.opcode;
        #1;
        tx.result=vif.result;
	endtask
endclass
