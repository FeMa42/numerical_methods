module GiveODESolution
using OrdinaryDiffEq

export get_solution

# Define the function, this is the same as dydt above but reframed for the ODEProblem type
function simple_f(dy, y, p, t)
    dy[1] = t + y[1]
end

function get_solution(y_0=1.0)

    # Initial conditions
    y₀ = [y_0]
    tspan = (-3.0, 3.0)
    dt = 0.3

    # Define the problem
    prob = ODEProblem(simple_f, y₀, tspan, dt=dt)

    # Solve the problem using the RK4 (Runge-Kutta) algorithm
    sol = solve(prob, RK4())
    return sol
end
end 