class alu_sbd;
  transaction tx;
  bit[n-1:0]result_t;

	function new();
	endfunction

	task run();
		$display("Inside Scoreborad");
       repeat(3)begin
            mon2sbd.get(tx);
         	tx.print("SBD");
      
         case (tx.opcode)
           
            3'b000: result_t = tx.a + tx.b;      
          	3'b001: result_t = tx.a - tx.b;      
          	3'b010: result_t = tx.a & tx.b;      
          	3'b011: result_t = tx.a | tx.b;       
          	3'b100: result_t = tx.a ^ tx.b;       
            3'b101: result_t = ~ tx.a;          
          	3'b110: result_t = tx.a << 1;      
          	3'b111: result_t = tx.a >> 1;   
                                     
        endcase
         if(result_t==tx.result)num_matches++;
        else begin
          		 num_miss_matches++;
        end
      end
	endtask
endclass

