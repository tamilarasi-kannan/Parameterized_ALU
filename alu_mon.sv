class alu_mon;
   virtual alu_int vif;
  transaction tx;

	function new();
       this.vif=top.pif;
	endfunction

	task run();
		$display("Inside Monitor block");
      repeat(3) begin     
			this.tx=new();
            tx.a=vif.a;
            tx.b=vif.b;
            tx.opcode=vif.opcode;
          	#1; 
            tx.result=vif.result;
			mon2cov.put(tx);
			mon2sbd.put(tx);
        tx.print("MON");
		end
	endtask
endclass


