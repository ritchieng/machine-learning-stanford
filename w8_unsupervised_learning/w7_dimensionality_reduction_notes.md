# Dimensionality Reduction

## 1. Motivation
### 1a. Motivation I: Data Compression
- You are able to reduce the dimension of the data from 2D to 1D
    - For example, pilot skill and pilot happiness can be reduced to pilot's aptitude
    ![](unsupervisedlearning14.png)
    - Generally, you can reduce x1 and x2 to z1
    ![](unsupervisedlearning15.png)
- Your are able to reduce the dimension of the data from 3D to 2D
    - Project the data such that they lie on a plane
    - Specify two axes
        - z1
        - z2
    - You would then be able to reduce the data's dimension from 3D to 2D
    ![](unsupervisedlearning16.png)

### 1b. Motivation II: Visualization
- Given a set of data, how are able to examine the data such as this?
![](unsupervisedlearning17.png)
- We can use reduce the data's dimensionality from 50D to 2D 
    - Typically we do not know what the 2 dimensions' meanings are
    - But we can make sense of out of the 2 dimensions
![](unsupervisedlearning18.png)
![](unsupervisedlearning19.png)

## 2. Principal Component Analysis (PCA)
### 2a. Principal Component Analysis Problem Formation
- Let's say we have the following 2D data
![](unsupervisedlearning20.png)
    1. We can project with a diagonal line (red line)
        - PCA reduces the blue lines (the projection error)
            - Before performing PCA, perform mean normalization (mean = 0) and feature scaling
    2. We can also project with another diagonal line (magenta)
        - But the projection errors are much larger
        - Hence PCA would choose the red line instead of this magenta line
- Goal of PCA
    - It's trying to find a lower dimensional surface onto which to project the data, so as to minimize this squared projection error
    - To minimize the square distance between each point and the location of where it gets projected. 
    ![](unsupervisedlearning21.png)
- PCA is not linear regression
    - PCA is a minimization of the orthogonal distance
    ![](unsupervisedlearning22.png)

### 2b. Principal Component Analysis Algorithm
- Data pre-processing step
    - You must always do this before doing PCA
    ![](unsupervisedlearning23.png)
- PCA intuition
    - You need to compute the vector or vectors
        ![](unsupervisedlearning24.png)
        - Left graph: compute vector z(1)
        - Right graph: compute vector z(1) and z(2)
- Procedure
    - You can use eig (eigen) or svd (singular value decomposition) but the later is more stable
        - You can use any library in other languages that does singular value decomposition
        - You will get 3 matrices: U, S and V
        - But we only need matrix U where we manipulate to get z that is a k x 1 vector
        ![](unsupervisedlearning25.png)
        ![](unsupervisedlearning26.png)
- Summary of PCA algorithm in octave
![](unsupervisedlearning27.png)

## 3. Applying PCA
### 3a. Reconstruction from Compressed Representation
- We can go from lower dimensionality to higher dimensionality
![](unsupervisedlearning28.png)

### 3b. Choosing the Number of Principal Components
- k is the number of principal components 
    - But how do we choose k?
    ![](unsupervisedlearning29.png)
- There is a more efficient method on the right compared to the left
    - We then use the S matrix for calculations 
    ![](unsupervisedlearning30.png)
    ![](unsupervisedlearning31.png)
- You would realise that PCA can retain a high percentage of the variance even after compressing the number of dimensions of the data

### 3c. Advice for Applying PCA
- Supervised learning
    - For many data sets, we can reduce by 5-10x easily to ensure our learning algorithm runs much faster
    ![](unsupervisedlearning32.png)
- Application of PCA
    1. Compression
        - Reduce memory or disk needed to store data
        - Speed up learning algorithm   
            - We choose k by percentage of variance retained
    2. Visualization
        - We choose only k = 2 or k = 3 
- Bad uses of PCA
    1. To prevent over-fitting
        - Regularization is better because it is less likely to throw away valuable information as it knows the labels
        ![](unsupervisedlearning33.png)
    2. Running PCA without consideration
        ![](unsupervisedlearning34.png)