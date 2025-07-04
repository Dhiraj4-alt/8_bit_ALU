module alu_8bit(
    input [7:0] A,
    input [7:0] B,
    input [3:0] Sel,
    output reg [7:0] Answer,
    output reg Carryout
);

reg [15:0] temp; // Use 16 bits to support full result of multiplication

always @(*) begin
    temp = 0;
    Answer = 0;
    Carryout = 0;
    
    case(Sel)
        4'b0000: begin  // Addition
            temp = A + B;
            Answer = temp[7:0];
            Carryout = temp[8];
        end

        4'b0001: begin  // Subtraction
            temp = A - B;
            Answer = temp[7:0];
            Carryout = (A < B); // Borrow indicator
        end

        4'b0010: begin  // Multiplication
            temp = A * B;
            Answer = temp[7:0];
            Carryout = |temp[15:8]; // Set if any upper bits are non-zero
        end

        4'b0011: begin  // Division
            Answer = (B != 0) ? (A / B) : 8'd0;
            Carryout = (B == 0); // Carryout indicates divide by zero
        end

        4'b0100: begin  // AND
            Answer = A & B;
        end

        4'b0101: begin  // OR
            Answer = A | B;
        end

        4'b0110: begin  // NAND
            Answer = ~(A & B);
        end

        4'b0111: begin  // XOR
            Answer = A ^ B;
        end

        4'b1000: begin  // NOT (A)
            Answer = ~A;
        end

        4'b1001: begin  // NOR
            Answer = ~(A | B);
        end

        default: begin
            Answer = 8'd0;
            Carryout = 0;
        end
    endcase
end

endmodule
