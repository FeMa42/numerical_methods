# 3. Derivatives

In this exercise we will look at how to numerically compute derivatives of a function. We will cover the following topics:
1. [Introduction to Derivatives of a function with multiple variables](Introduction-to-Derivatives)
2. [Computing Derivatives of functions](computing-derivatives)
    - [Finite Differences - Differenzenquotient](finite-differences)
    - [Automatic Differentiation (AD)](automatic-differentiation)
        - [Forward Mode](forward-mode)
        - [Reverse Mode](reverse-mode)


## Motivation for Computing Derivatives of a Function with Multiple Variables

In the last exercise we: 
- implemented the forward kinematic for the Openmanipulator-X
- and implemented a way to solve the inverse kinematic with NLSolve.jl

What did we actually do when we used the NLSolve.jl package? We used an implementation of a root finding method to find the solution to our inverse kinematic problem. We learned in the lecture how to find the root of a set of functions with multiple variables. For example we learned that we can find the root of a set of functions with the Newton method. Can we actually implement the Newton method for multiple variables ourself? 

Well we need to know how to calculate the derivative of a function with multiple variables. In the next exercise we will take a closer look into the Newton Method for multiple variables. For now we will just look at the algorithm of the Newton method for multiple variables. Similar to the one dimensional case we calculate the next $\mathbf{x}$ which is closer to the root with the following calculation rule:

$$
\begin{split}\begin{split}
  \mathbf{x}_{n+1} &= \mathbf{x}_n - \mathbf{J}(\mathbf{x}_n)^{-1}\mathbf{f}(\mathbf{x}_n).
\end{split}\end{split}
$$

The calculation rule for the next $\mathbf{x}$ which is closer to the root is thus iteratively called over and over again. The calculation rule according to the Newton method is therefore:

$$
\mathbf{x}_0 = \text{start value}
$$

$$
\mathbf{x}_{1} = \mathbf{x}_0 - \mathbf{J}(\mathbf{x}_0)^{-1}\mathbf{f}(\mathbf{x}_0)
$$

$$
\mathbf{x}_{2} = \mathbf{x}_{1} - \mathbf{J}(\mathbf{x}_{1})^{-1}\mathbf{f}(\mathbf{x}_{1})
$$

$$
...
$$

$$
\mathbf{x}_{n+1} = \mathbf{x}_n - \mathbf{J}(\mathbf{x}_n)^{-1}\mathbf{f}(\mathbf{x}_n)
$$

We do this until we have reached the desired accuracy, i.e., the desired distance of $\mathbf{f}(\mathbf{x}_{n+1})$ to $\mathbf{0}$.

In the calculation rule we see that we need to calculate the function $\mathbf{f}(\mathbf{x})$, the derivative of the function (the Jacobian $\mathbf{J}(\mathbf{x})$) and the inverse of the Jacobian matrix $\mathbf{J}(\mathbf{x})^{-1}$.

**We are still missing some Important Parts...**

So let's start with estimating the derivative of a function with multiple variables.






