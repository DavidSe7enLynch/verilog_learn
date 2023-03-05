`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 02:54:49 PM
// Design Name: 
// Module Name: gen_loop
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


module half_adder(
    input a, b, 
    output sum, cout
    );

    assign sum = a ^ b;
    assign cout = a & b;
endmodule

module gen_loop
    #(parameter N = 4)
    (
        input [N-1:0] a, b,
        output [N-1:0] sum, cout
    );

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin
            half_adder u0(a[i], b[i], sum[i], cout[i]);
        end
    endgenerate
endmodule
