`timescale 1ns / 1ps

module Attendant_Call(
    input CLK100MHZ,
    input BTNC,
    output [1:0] LED,
    input [1:0] SW
    );

    reg [1:0] state;
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;

    always @(posedge CLK100MHZ, posedge BTNC)
        if (BTNC)
            state <= S0;
        else
            case (state)
                S0: if (SW[1]) state <= S1; else state <= S0;
                S1: if (SW[0]) state <= S2; else state <= S1;
                S2: if (SW[0]) state <= S1; else state <= S0;
            endcase

    assign LED[0] = (state == S1) || (state == S2);
    assign LED[1] = 1'b0;
endmodule
