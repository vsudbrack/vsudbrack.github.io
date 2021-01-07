---
layout: post
title:  "Solving ODEs numerically in Python and R"
date:   2021-01-03
categories: codes
description: "Examples of numerical solutions (and plots) of ODEs with standard functions of Python and R."
---



There are two types of codes of numerical integration: the ones we use to learn the method and the ones we use to numerically integrate functions we don't know the solution analytically. 

Because it is such a major problem in mathematics, scientists and software and hardware engineers have built functions and libraries that integrate function as optimally as possible. *No problem you ever write will be as efficient as this standard functions.* 

In Python they are called *odeint* from *Scipy*, and in R it is called *ode* from *deSolve* library. 


## One dimensional systems: 

#### Python

#### R

## Two dimensional systems: Van der Pol oscillator

Check the examples below for [Van der Pol oscillator](https://en.wikipedia.org/wiki/Van_der_Pol_oscillator),

$$
\frac{d^2x}{dt^2} - \mu(1-x^2)\frac{dx}{dt}+x -Asin(\omega t)= 0
$$

#### Python

```py
import numpy as np # load libraries
import matplotlib.pyplot as plt
from scipy.integrate import odeint

dt = 0.01 #This is the dt for plotting!
t = arange(0, 10., dt) # Vector of time steps

# parameters
mu = 8.3
amp = 1.2
omega = 2*M_PI/10.0

x0 = 0.1 # initial condition

def VdPOsc(x, t, omega):
    return -mu*x*x

# We call the numerical integrator
x = odeint(VdPOsc, x0, t, (r, K))

# plot the solution
plt.plot(t, x, '-r', lw=3)
plt.xlabel('t')
plt.ylabel('x(t)') 
plt.show()
```

#### R

```r
library(deSolve) # load library

## time sequence: sequential vector
dt = 0.01 #This is the dt for plotting!
time = seq(from=0, to=10, by = dt)

parameters = c(mu = 8.3, amp=1.2, omega=2*pi/10) # parameters: a named vector

x0 = c(x = 0.1) # initial condition: also a named vector

## The right-hand-side of ODE to be integrated
VdPOsc <- function(t, state, parameters){
    with(as.list(c(state, parameters)){
        dxdt <- -omega*x*x
        return(list(dxdt))
        }
    )
}

## The numerical integrator
sol <- ode(y = x0, times = time, func = VdPOsc, parms = parameters)

## Plotting the solution
plot(sol, lwd=3, col="red", main="", xlab="t", ylab="x(t)")
```