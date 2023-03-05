`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 05:00:01 PM
// Design Name: 
// Module Name: tb_task_disable
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


module tb_task_disable(

);
    initial display();

    initial begin
        #50 disable display.T_DISPLAY;
    end

    task display();
    begin
        begin: T_DISPLAY
            $display("[%0t] T_Task started", $time);
            #100;
            $display("[%0t] T_Task ended", $time);
        end

        begin: S_DISPLAY
            $display("[%0t] S_Task started", $time);
            #20;
            $display("[%0t] S_Task ended", $time);
        end
    end
    endtask
endmodule
