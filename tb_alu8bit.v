`timescale 1ns / 1ps

module testbenchalu8bit;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg [3:0] Sel;

    // Outputs
    wire [7:0] Answer;
    wire Carryout;

    // Instantiate the ALU
    alu_8bit uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Answer(Answer),
        .Carryout(Carryout)
    );

    initial begin
        // Dump waveforms
        $dumpfile("dump.vcd");
        $dumpvars(0, testbenchalu8bit);

        // Console display
        $display("Time\tSel\tA\tB\tAnswer\tCarryout");
        $monitor("%0dns\t%b\t%h\t%h\t%h\t%b", $time, Sel, A, B, Answer, Carryout);

        // Test cases
        A = 8'd10; B = 8'd20; Sel = 4'b0000; #100;
        A = 8'd30; B = 8'd20; Sel = 4'b0001; #100;
        A = 8'd11; B = 8'd3;  Sel = 4'b0010; #100;
        A = 8'd100; B = 8'd4; Sel = 4'b0011; #100;
        A = 8'b11100011; B = 8'b10101010; Sel = 4'b0100; #100;
        A = 8'b11100011; B = 8'b10101010; Sel = 4'b0101; #100;
        A = 8'b11100011; B = 8'b10101010; Sel = 4'b0110; #100;
        A = 8'b11100011; B = 8'b10101010; Sel = 4'b0111; #100;
        A = 8'b11110000; B = 8'd0; Sel = 4'b1000; #100;
        A = 8'b11100011; B = 8'b10101010; Sel = 4'b1001; #100;

        $finish;
    end

endmodule
