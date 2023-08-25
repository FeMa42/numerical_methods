# 5. Root Finding with Multiple Variables
When we want to find a solution for the inverse kinematic we need to find a solution of a set of functions with multiple variables. We can use the Newton method to find the root of a function. In Exercise 2, we learned how to find the root of a function with one variable: 

## From previous Exercise: Newton Method with one variable

To implement the Newton method, we used the first Taylor approximation (tangent) at the point $x_n$:

$$f(x) = f(x_n) + f'(x_n)(x-x_n)$$

We set $f(x_{n+1}) = 0$ and solved for $x$:

$$0 = f(x_n) + f'(x_n)(x_{n+1}-x_n)$$

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$$  

The calculation rule for the next x which is closer to the root is thus iteratively called over and over again. The calculation rule according to the Newton method is therefore:

$$x_0 = start value$$

$$x_{1} = x_0 - \frac{f(x_0)}{f'(x_0)}$$

$$x_{2} = x_{1} - \frac{f(x_1)}{f'(x_{1})}$$

$$\vdots$$

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$$ 

We do this until we have reached the desired accuracy, i.e., the desired distance of $f(x_{n+1})$ to 0.

**Summary**: The Newton method is an iterative method for finding the root of a function. The calculation rule for the next x which is closer to the root is thus iteratively called over and over again. When look at the calculation rule of the Newton method:

$$x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$$

We see that we need the function $f(x)$ and its derivative $f'(x)$. 

## Content of this Exercise
1. [Defining the Root Finding Prblem with Multiple Variables](Defining-the-Root-Finding-Prblem-with-Multiple-Variables)
2. [Newton Method with multiple variables](Newton-Method-with-multiple-variables)
