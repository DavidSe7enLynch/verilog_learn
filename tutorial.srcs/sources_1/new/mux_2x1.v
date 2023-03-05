`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2023 06:20:08 PM
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
    input a, b, sel, 
    output out
);
    wire sel_n, out_0, out_1;

    not (sel_n, sel);

    and (out_0, a, sel);
    and (out_1, b, sel_n);

    or (out, out_0, out_1);
endmodule
