`timescale 1ns / 1ps

module button_sync(
    input  wire clk4Hz,
    input  wire button,
    output reg  button_sync
);

    reg sync1;

    always @(posedge clk4Hz) begin
        sync1       <= button;
        button_sync <= sync1;
    end
endmodule