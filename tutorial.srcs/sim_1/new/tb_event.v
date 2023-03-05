`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 05:48:24 PM
// Design Name: 
// Module Name: tb_event
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_event(
);
    event a_event;
    event b_event[4:0];

    initial begin
        #20 -> a_event;

        #30;
        -> a_event;

        #50 -> a_event;
        #10 -> b_event[3];
    end

    always @(a_event) begin
        $display("T=%0t [always] a_event is triggered", $time);
    end

    initial begin
        #25;
        @(a_event) $display("T=%0t [initial] a_event is triggered", $time);

        #10 @(b_event[3]) $display("T=%0t [initial] b_event is triggered", $time);
    end
endmodule
