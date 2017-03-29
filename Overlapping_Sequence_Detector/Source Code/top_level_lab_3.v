`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Author:         Victor Espinoza
// Email:          victor.alfonso94@gmail.com
// Create Date:    17:16:59 09/29/2013 
// Module Name:    top_level_lab_3 
// File Name:      top_level_lab_3.v
//
// Description:    This top level module is used to pull together all of the other
//                 modules that we created into one place in order to produce
//                 a sequence detector that outputs a 1 when the sequence 101101
//                 is detected.
//
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module top_level_lab_3(clk, reset, M, X, step, Z,  Q, annode, a, b, c, d, e, f, g);

   //Declare Inputs and Outputs
   input clk, reset, M, X, step;
   output Z;
   output [2:0] Q;
   output [3:0] annode;
   output a, b, c, d, e, f, g;
   wire   one_shot, clk_to_sd; 
   
   clk_500HZ                           u1(clk, reset, one_shot);
   debounce                            u2(step, one_shot, reset, clk_to_sd);
   overlapping_sequence_detector       u3(clk_to_sd, reset, M, X, Z, Q);
   hex_to_7segment                     u4({1'b0, Q[2], Q[1], Q[0]}, a, b, c, d, e, f, g);
   
   assign annode[3] = 4'b1111;
   assign annode[2] = 4'b1111;
   assign annode[1] = 4'b1111;
   assign annode[0] = 4'b1110;

endmodule
