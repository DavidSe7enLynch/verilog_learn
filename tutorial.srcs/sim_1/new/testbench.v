`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 03:21:10 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
    integer int_a;
    real real_b;
    time time_c;
    
    initial begin
        int_a = 32'hAEf0_4afc;
        real_b = 0.128345;
        
        #20;
        
        $display("int_a = 0x%0h", int_a);
        $display("real_b = %0.5f", real_b);
        $display("time_c = %0t", time_c);
    end     
endmodule
