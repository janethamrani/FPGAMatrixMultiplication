////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Janet
//
// Create Date:   20:04:20 08/24/2022
// Design Name:   matmul
// Module Name:   /home/ise/matmul/tb_matmul.v
// Project Name:  matmul
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: matmul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module matmul_tb;

    // Inputs
    reg [31:0] A;
    reg [31:0] B;
    // Outputs
    wire [31:0] Res;

    // Instantiate the Unit Under Test (UUT)
    Mat_mult uut (
        .A(A), 
        .B(B), 
        .Res(Res)
    );

    initial begin
        // Apply Inputs
        A = 0;  B = 0;  #100;
        A = {8'd1,8'd2,8'd3,8'd4};
        B = {8'd5,8'd6,8'd7,8'd8};
    end
      
endmodule
