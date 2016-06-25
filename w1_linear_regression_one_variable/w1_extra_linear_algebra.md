# Linear Algebra Review

## 1. Matrices and Vectors

### 1a. Matrices
- Rectangular array of numbers
- 2D array
- Number of **Rows** x Number of **Columns**
![alt text](matrices.png)


### 1b. Vector 
- n x 1 matrix
- y(i): i-th element
- 1-indexed (start from 1-th)
    - Normally this
- 0-indexed (start from 0-th)
    - Used in Machine Learning

## 2. Addition and Scalar Multiplication

### 2a. Addition
- You can only add matrices with the same dimensions (r x c)
![alt text](matrices_add.png)

### 2b. Scalar (Number) Multiplication
- Example
![alt text](matrices_scalar_multiply.png)

## 3. Matrix Vector Multiplication
- Example
![alt text](matrices_vector_multiply.png)
- Theory
![alt text](matrices_vector_multiply2.png)
- Application to hypothesis by converting given data to matrix
- prediction = data_matrix x parameters
![alt text](matrices_vector_multiply_convert.png)


## 4. Matrix Matrix Multiplication
- Example
![alt text](matrix_matrix.png)
![alt text](matrix_matrix3.png)
- Theory 
![alt text](matrix_matrix2.png)
- Application to hypothesis by converting given data to matrix
    - There are linear algebra libraries to do these calculations
![alt text](matrix_matrix4.png)



## 5. Properties of Matrix Multiplication

### 5a. Commutative Property
- Not commutative
![alt text](commutative.png)

- Associative
    - A x B x C = (A x B) x C = A x (B x C)

- Identity Matrix
![alt text](matrix_properties.png)

## 6. Inverse and Transpose

### 6a. Inverse
- A * A_inverse = Identity Matrix
- A_inverse = pinv(A) 
    - You can use octave code pinv(A)
- Matrices without inverse --> singular or degenerate
![alt text](inverse.png)

### 6b. Transpose
- Example and theory
![alt text](transpose.png)

