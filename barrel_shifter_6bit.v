`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 23:18:18
// Design Name: 
// Module Name: barrel_shifter_6bit
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


module barrel_shifter_6bit(input [5:0]data_in,
                           input dir,
                           input [2:0]shift,
                           output [5:0]out);
wire [5:0]stage0;
wire [5:0]stage1;
assign stage0=(shift[0]==1'd1)?(dir?{1'b0,data_in[5:1]}
                                   :{data_in[4:0],1'b0})
                              :data_in;
assign stage1=(shift[1]==1'd1)?(dir?{2'b0,stage0[5:2]}
                                   :{stage0[3:0],2'b0})
                              :stage0;
assign out=(shift[2]==1'd1)?(dir?{4'b0,stage1[5:4]}
                                   :{stage1[1:0],4'b0})
                              :stage1;

endmodule