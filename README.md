# Introduction
Objective: implement basic matrix multiplication in Verilog
### Matrix Multiplication
Matrix multiplication is a process that produces an output matrix from two matrices. For this to be achieved, the number of rows from the first matrix has to be equal to the number of columns of the second one

For example, consider <strong>A</strong>, an <i>m x n</i> matrix, and <strong>B</strong>, an <i>n x p</i> matrix, the output matrix,<strong> C = AB</strong>, is the product <strong>A</strong> and <strong>B</strong>

![image](https://miro.medium.com/max/1400/1*HjcZkViYtPKg-Wm2o7DFDg.png)
[Image Source](https://charchithowitzer.medium.com/matrix-multiplication-why-is-it-a-big-deal-cc8ef7490008)



### Verilog Implementation
To implement this method using Verilog, two fixed-point
In this code, the two input matrices are stores as Block RAMs as well as the product of the two matrices. First, the two BRAMs are created to store the two input matrices
