`timescale 1ns / 1ps

module Attendant_Call_TB();

    reg clk, reset;
    wire [1:0] y_out;
    reg [1:0] inputs;

    Attendant_Call M1 (clk, reset, y_out[1:0], inputs[1:0]);

    initial #120 $finish;

    initial begin
        reset = 1;
        clk = 0;
        #5 reset = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        inputs[1:0] = 2'b0;
        #15 reset = 0;
        #15 inputs[1] = 1'b1;
        #15 inputs[1] = 1'b0;
        #15 inputs[0] = 1'b1;
        #15 inputs[0] = 1'b0;
    end

endmodule
