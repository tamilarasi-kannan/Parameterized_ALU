module alu #(parameter n=4) (
  input [n-1:0] a,b,
  output reg [n:0] result,
  input[2:0] opcode
);
  always@(*) begin
        case (opcode)
            3'b000: result = a + b;       // Addition
          	3'b001: result = a - b;       // Subtraction
          	3'b010: result = a & b;       // Bitwise AND
          	3'b011: result = a | b;       // Bitwise OR
          	3'b100: result = a ^ b;       // Bitwise XOR
          	3'b101: result = ~a;          // Bitwise NOT of A
          	3'b110: result = a << 1;      // Logical left shift
          	3'b111: result = a >> 1;      // Logical right shift
          	default: result = 3'b000;                          
        endcase
    end

endmodule
