`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 04:28:17 PM
// Design Name: 
// Module Name: sum_func
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

function [7:0] sum (
    input [7:0] a, b
);
    begin
        sum = a + b;
    end
endfunction


module sum_func(
    input [7:0] a, b,
    output out
);
    assign out = sum (a, b);
endmodule
