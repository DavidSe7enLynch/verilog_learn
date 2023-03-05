`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 03:52:16 PM
// Design Name: 
// Module Name: register
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


module register(
    input clk, rstn, wr, sel,
    input [15:0] wdata,
    output [15:0] rdata
);
    reg [15:0] register;

    always @(posedge clk) begin
        if (!rstn)
            register <= 0;
        else begin
            if (sel & wr)
                register <= wdata;
            else
                register <= register;
        end 
    end
    assign rdata = (sel & ~wr) ? register : 0;
endmodule
