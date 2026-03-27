`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 23:53:50
// Design Name: 
// Module Name: tb_barrel_shifter_6bit
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


module tb_barrel_shifter_6bit;
reg [5:0]data_in1;
reg dir1;
reg [2:0]shift1;
wire [5:0]out1;
barrel_shifter_6bit dut(.data_in(data_in1), .dir(dir1), .shift(shift1), .out(out1));
initial begin
    //LEFT shift tests
    dir1=0;
    data_in1 = 6'b101010;
    shift1 = 3'd0; #10;
       $display("  L ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd1; #10;
       $display("  L ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd2; #10;
       $display("  L ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd3; #10;
       $display("  L ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd4; #10;
       $display("  L ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd5; #10;
       $display("  L ==> %b |    %0d     | %b", data_in1, shift1, out1);
       
    //RIGHT shift tests
    dir1 = 1;
    data_in1 = 6'b101010;
    shift1 = 3'd0; #10;
       $display("  R ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd1; #10;
       $display("  R ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd2; #10;
       $display("  R ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd3; #10;
       $display("  R ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd4; #10;
       $display("  R ==> %b |    %0d     | %b", data_in1, shift1, out1);
    shift1 = 3'd5; #10;
       $display("  R ==> %b |    %0d     | %b", data_in1, shift1, out1);
    $display("-------------------------------------------------------------");
    $finish;
    end
endmodule
