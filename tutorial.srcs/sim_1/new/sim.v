`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2023 03:45:31 PM
// Design Name: 
// Module Name: sim
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


module tb;

    reg tb_clk;
    reg tb_d;
    reg tb_rstn;
    wire tb_q;
    
    dff dff0 (
        .clk (tb_clk), 
        .d (tb_d), 
        .rstn (tb_rstn), 
        .q (tb_q)
    );
    
    initial begin
        tb_rstn <= 1'b0;
        tb_clk <= 1'b0;
        tb_d <= 1'b0;
    end
endmodule
