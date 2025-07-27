module top;
   alu_int pif();
    alu_env env;
  
  alu #(.n(n)) uut(.a(pif.a),.b(pif.b),.opcode(pif.opcode),.result(pif.result));

	initial begin
		env=new();
		env.run();
	end
  initial begin
    #4; // To wait for the scoreboard to respond
    if(num_matches==count &&num_miss_matches==0)
      $display("-------------> TEST PASSED <-----------\n\t num_matches=%0d num_miss_matches=%0d",num_matches,num_miss_matches);
    else begin
      $display("-----------------> TEST FAILED <----------\n\t num_matches=%0d num_miss_matches=%0d",num_matches,num_miss_matches);
    end
  end

  
endmodule
