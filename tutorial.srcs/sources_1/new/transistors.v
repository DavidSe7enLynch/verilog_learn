`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2023 06:32:36 PM
// Design Name: 
// Module Name: transistors
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


module transistors(
    input d, ctrl, nctrl, pctrl, 
    output outn, outp, out
);
    nmos (outn, d, ctrl);
    pmos (outp, d, ctrl);
    cmos (out, d, nctrl, pctrl);
endmodule
