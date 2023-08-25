# 6. Least Squares 

## Introduction with a linear function
In the lecture we started the discussion of the least squares method using the example of a linear function $f(x) = ax + b$ and a set of data points $(x_i, y_i)$, $i=1,\ldots,n$. We defined the error function as

$$
L(a,b) = \sum_{i=1}^n (y_i - y(x_i))^2 = \sum_{i=1}^n r_i = r^T r=\|r\|^2,
$$

where $y(x_i) = ax_i + b$ is the linear function and $r_i$ is the residual for the $i$-th data point. The least squares method then consists in finding the values of $a$ and $b$ that minimize the error function $L(a,b)$:

$$
\min_{a,b} L(a,b).
$$

In general this is an optimization problem that can be solved using the methods discussed in the lecture. However, in the case of a linear function $f(x) = ax + b$ we learned that the solution can be found in closed form. We can rewrite the error $r$ as

$$
r = \begin{pmatrix}
r_1 \\
r_2 \\
\vdots \\
r_n
\end{pmatrix} =
\begin{pmatrix}
1  x_1 \\
1  x_2 \\
\vdots \vdots \\
1  x_n
\end{pmatrix}
\begin{pmatrix}
a \\
b
\end{pmatrix} -
\begin{pmatrix}
y_1 \\
y_2 \\
\vdots \\
y_n
\end{pmatrix} = A p - y,
$$

where $p = (a,b)^T$ is the vector of parameters. This is similar to the linear system $Ax = b$ that we discussed in the lasst exercise. However, this time our system of equations is overdetermined, i.e. we have more equations than unknowns. In this case we cannot expect to find a solution $p$ such that $Ap = y$ (i.e. $r=0$). Instead we have to find a solution $p$ such that $Ap \approx y$, i.e. $r \approx 0$. The least squares solution is defined as the solution that minimizes the error $\|r\|^2$. We can find this solution by solving the normal equations

$$
A^T A p^* = A^T y.
$$

In the case of a linear function $f(x) = ax + b$ we can solve these equations in closed form and obtain the solution

$$
p^* = (A^T A)^{-1} A^T y.
$$

Remember that $(A^T A)^{-1} A^T$ is called the Moore-Penrose pseudoinverse of $A$ and is denoted by $A^+$. We can now compute the least squares solution $p^*$ for a given set of data points $(x_i, y_i)$, $i=1,\ldots,n$ if $A$ is not rank deficient. 