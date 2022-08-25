////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Janet
//
// Create Date:   20:04:20 08/24/2022
// Design Name:   matmul
// Module Name:   /home/ise/matmul/
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


module matmul(A,B,Res);


  // each matrix is 32 bits (4 elements (2by2) and 8 bits wide)
    input [31:0] A;
    input [31:0] B;
    output [31:0] Res;
    //internal variables    
    reg [31:0] Res;
    reg [7:0] A1 [0:1][0:1];
    reg [7:0] B1 [0:1][0:1];
    reg [7:0] Res1 [0:1][0:1]; 
    integer i,j,k;

    always@ (A or B)
    begin
    //convert to 3D matrix
        {A1[0][0],A1[0][1],A1[1][0],A1[1][1]} = A;
        {B1[0][0],B1[0][1],B1[1][0],B1[1][1]} = B;
        i = 0;
        j = 0;
        k = 0;
        {Res1[0][0],Res1[0][1],Res1[1][0],Res1[1][1]} = 32'd0; //initialize to zeros.
        //Matrix multiplication
        for(i=0;i < 2;i=i+1)
            for(j=0;j < 2;j=j+1)
                for(k=0;k < 2;k=k+1)
                    Res1[i][j] = Res1[i][j] + (A1[i][k] * B1[k][j]);
        //output back to 1D array         
        Res = {Res1[0][0],Res1[0][1],Res1[1][0],Res1[1][1]};            
    end 

endmodule
