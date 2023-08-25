(Introduction-to-ODEs)=
# 8.1. Introduction to ODEs

*Ordinary Differential Equations (ODEs)* are a fundamental concept in mathematics and engineering, used to model systems that change over time. An ODE is an equation that contains a function of one independent variable and its derivatives. 

Many physical laws and relations can be expressed mathematically in the form of differential
equations. For example, the flow of a liquid in a pipe, the current in an electrical circuit, the motion of a pendulum, and the deformation of a beam can all be described by differential equations. In other areas of science and engineering, differential equations are also used to model the behavior of complex systems. For examples in biology species experience slowing growth as they approach a carrying capacity and therefore an ODE (Gompertz model) which  is able to model this effect can be used. Another example for the usage of differential equations is chemistry where they are used to perform the radiocarbon dating of artifacts. 

A **first-order ODE** can be written in the form:

$$
\dot{x}=\frac{dx}{dt} = f(t, x), \hspace{1cm} x(t_0)=x_0
$$

where $x$ is the dependent variable, $t$ is the independent variable, and $f(t, x)$ is a function that describes the rate of change of $x$ with respect to $t$. The function $f$ is called the right-hand side (RHS) of the ODE. If we can describe the ODE with $\dot{x} = f(t,x) = g(t) + u h(t)$, the ODE is linear, otherwise it is non-linear. The solution to this equation is a function $x(t)$ that satisfies the equation. 

> Note that we use the notation $\dot{x}$ to denote the derivative of $x$ with respect to $t$, which is often used if $t$ is meant to be time. The notation $x'$ is also more common, if the independent variable is not time.

A **second-order ODE** can be written in the form:

$$
\frac{d^2x}{dt^2} = f\left(t, x, \frac{dx}{dt}\right)
$$

where the function $f$ now also depends on the first derivative of $x$.

## Solution of an ODE

Solving an ODE involves finding a function that satisfies the given equation. This can be done analytically for simple ODEs, but for more complex ODEs, numerical methods such as the Euler method, Runge-Kutta methods, and others can be used. 

### Simple Example:
We start with the following ODE: 

$$\dot{x}=\frac{dx}{dt}=\cos(t)$$ 

We can solve this ODE directly by integrating both sides. Doing so, we obtain:

$$
x(t) = \int \cos(t) dt = \sin(t) + c
$$

where $c$ is an arbitrary constant. This is the **general solution** to the ODE, which is a family of solutions. Each value of $c$ gives us one of the curves in the family of solutions. To obtain a unique solution, also called **particular solution**, we can solve for a specific $c$ given an initial condition. For example, if we know that $x(0) = 0$, then we can solve for c and obtain the solution:

$$
x(0) = \sin(0) + c = 0 \Rightarrow c = 0
$$

which is the solution:

$$
x(t) = \sin(t)
$$

> **General and Particular Solution**
>
> In the example provided, the ODE has a general solution that includes an arbitrary constant c. This general solution of the ODE can be transformed into a particular solution by selecting a specific value for c, such as 0. Unlike the general solution, a particular solution does not contain any arbitrary constants.

### Initial Value Problem (IVP)

Often, the unique or particular solution to a given problem is derived from the general solution through an initial condition, represented as $y(x_0) = y_0$, where $x_0$ and $y_0$ are given values. This condition helps to determine the value of the arbitrary constant c, ensuring that the solution curve passes through the point $(x_0, y_0)$ in the xy-plane. When an ODE is combined with an initial condition, it forms what is known as an **initial value problem**.

$$
\dot{y}=\frac{dy}{dx}=f(x,y), \hspace{1cm} y(x_0)=y_0
$$

> **Initial Value Problem (IVP)**
>
> An ODE, together with an initial condition, is called an initial value problem (IVP). The solution to an IVP is a function that satisfies the ODE and the initial condition. 


## Partial Differential Equations (PDEs)
The term "ordinary" is used in contrast with the term *partial* from *Partial Differential Equations (PDEs)*. Which define the more difficult study of differential equations that depend on several variables. It involves partial derivatives of a function of several variables. A PDE with unknown function $u(x, y)$ is:

$$
\frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0
$$

PDEs also have important engineering applications. For example if we want to model the heat distribution in a room which depends on the position in the room and on time. They are more difficult to solve than ODEs and we will not discuss them further here. 
