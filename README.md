# Introduction
Objective: implement basic matrix multiplication in Verilog
### Matrix Multiplication
Matrix multiplication is a process that produces an output matrix from two matrices. For this to be achieved, the number of rows from the first matrix has to be equal to the number of columns of the second one

For example, consider <strong>A</strong>, an <i>m x n</i> matrix, and <strong>B</strong>, an <i>n x p</i> matrix, the output matrix,<strong> C = AB</strong>, is the product <strong>A</strong> and <strong>B</strong>

![image](https://miro.medium.com/max/1400/1*HjcZkViYtPKg-Wm2o7DFDg.png)
[Image Source](https://charchithowitzer.medium.com/matrix-multiplication-why-is-it-a-big-deal-cc8ef7490008)



### Verilog Implementation
#### Source File: [matmul.v](./matmul.v)
#### Testbench: [tb_matmul.v](./tb_matmul.v)

In this code, two 32 bit matrices are created, A and B, yielding an output Res matrix of size 32 bits as well.
Matrices, A1, B1, and Res1 are used to convert 1D array to 2D array, where A1, B1, and Res1 are populated from A, B, and Res, respectively, as 2D arrays cannot be outputs of modules. A1 and B1 are multiplied using 3 nested for-loops and the product is stored in Res1. Res1 is converted back to Res, a 1D array as the output.

### Simulation Results
Run on Xilinx ISE 14.7
<img width="757" alt="image" src="https://user-images.githubusercontent.com/26263012/186754179-cf781384-6576-4118-9a30-5db4e2435bce.png">
