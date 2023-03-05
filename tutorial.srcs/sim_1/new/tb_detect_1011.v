`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 03:36:08 PM
// Design Name: 
// Module Name: tb_detect_1011
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


module tb_detect_1011(

    );
    reg clk, in, rstn, tb_in;
    reg [1:0] l_dly;
    wire out;
    integer loop = 1, i;

    always #10 clk = ~clk;

    detect_1011 u0(clk, rstn, in, out);

    initial begin
        clk <= 0;
        rstn <= 0;
        in <= 0;

        repeat(5) @(posedge clk);
        rstn <= 1;

        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;

        for (i = 0; i < loop; i = i + 1) begin
            l_dly = $random;
            repeat (l_dly) @(posedge clk);
            tb_in = $random;
            in <= tb_in;
        end

        #100 $finish;

    end
endmodule
