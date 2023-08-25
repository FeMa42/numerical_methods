# 9.1 Quick Overview of the Definition of SVD

Assume we have a dataset of many Measurements stored in a matrix $X \in \mathbb{C}^{n \times m}$, where $m$ is the number of measurements and $n$ is the number of features. For example, we could have $m$ measurements of the position of a mass on a spring over time, where each measurement is a vector of $n$ features. We can write this as:

$$ 
X = \begin{bmatrix}
x_{11} & x_{12} & \dots & x_{1m} \\
x_{21} & x_{22} & \dots & x_{2m} \\
\vdots & \vdots & \ddots & \vdots \\
x_{n1} & x_{n2} & \dots & x_{nm} \\
\end{bmatrix}
$$

where each measurement is $x_i \in \mathbb{C}^n$ and the whole dataset is $X \in \mathbb{C}^{n \times m}$. We can think of each measurement as a point in an $n$-dimensional space. For example, if we have $n=2$ features, we could plot each measurement as a point in a 2D space. If we have $n=3$ features, we could plot each measurement as a point in a 3D space. If we have $n>3$ features, we cannot plot each measurement as a point in a 3D space, but we can still think of each measurement as a point in an $n$-dimensional space. 

We can transform our measurements using the Singular Value Decomposition (SVD), which is a matrix decomposition method for reducing a matrix to its constituent parts in order to make certain subsequent matrix calculations simpler. It provides the basis for many practical applications such as signal processing, image processing, and data reduction.

For our given $n \times m$ matrix $X$, the SVD is written as:

$$
X = UΣV^*
$$

Where:
- $U$ is an unitary $n \times n$ matrix, the columns of which are the eigenvectors of $XX^*$
- $Σ$ is an $n \times m$ diagonal matrix (real, non-negative entries on the diagonal and zeros off the diagonal), the diagonal elements of which are the square roots of the eigenvalues of $XX^*$ or $X^*X$.
- $V*$ (the conjugate transpose of V) is an unitary $m \times m$ matrix, the columns of which are the eigenvectors of $X^*X$

Note that $*$ is the conjugate transpose of a matrix. For a real matrix, the conjugate transpose is the same as the transpose $X^* = X^T$. For a complex matrix, the conjugate transpose is the transpose of the complex conjugate of the matrix. A square matrix $U$ is unitary if $UU^* = U^*U = I$.

The diagonal elements of Σ are known as the singular values of $X$. The columns of U and the columns of V* are called the left-singular vectors and right-singular vectors of $X$, respectively.
