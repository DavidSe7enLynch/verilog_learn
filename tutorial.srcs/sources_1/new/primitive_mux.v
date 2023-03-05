`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2023 06:38:47 PM
// Design Name: 
// Module Name: primitive_mux
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


primitive primitive_mux(
    out, sel, a, b
);
    input sel, a, b;
    output out;

    table
        // sel a b out
        0 1 ? : 1;
        0 0 ? : 0;
        1 ? 0 : 0;
        1 ? 1 : 1;
        x 0 0 : 0;
        x 1 1 : 1;
    endtable
endprimitive
