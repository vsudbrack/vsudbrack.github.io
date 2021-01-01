---
layout: post
title:  "Methods of numerical integration for ODEs"
categories: courses
description: "Summary and diagrams for numerical integration of ODE and systems of ODEs."
permalink: /odes
---

This is a **summary of different methods for numerical integration**. It is supposed to be brief and sucint, pointing to the most important points. I wrote its first version in 2016 when I was tutor of the course for *Computational methods for physics - B* at the *Institute of Physics* of *Univerisidade Federal do Rio Grande do Sul*, to help students to prepare themselves for the final exam.

* Table of contents
{:toc}

## Introduction

Here we'll focus on elementary examples from physics, and therefore consider $2^{nd}$ order ordinary differential equations (ODEs) - such as *Newton's second law* - and name functions of time ($t$) as position ($x(t)$) and velocity/speed ($v(t)$). Naturally, the applications of these methods are much more general than mechanical systems. 

Also, we will focous on *initial value problems*. Hence, to solve a differential equation of order N numerically, it will be **necessary to know the value of the function and its $N-1$ first derivatives in an initial instant**, the *initial condition* of the problem. To solve such examples, it is usually employed finite element methods as the ones we summarize here. The standard notation of this discretization is 

$$
t_n = n\Delta t \\
x_n = x(t_n) \\
v_n = v(t_n)
$$

Keep in mind though, that in different kinds of problems involving ODEs, the ones with boundary conditions for instance, other families of methods may be more adequate, such as spectral methods. 

#### System of ODEs

It is important to know that **any differential equation of order N can be rewritten as a system of N first order ODEs**, through the definition of new functions - the derivatives. Hence, methods that solve $1^{st}$ order ODEs can be applied $N$ times in a row to solve any order ODE. For instance Newton's law

$$
\frac{d^2x}{dt^2} = a(v,x,t)
$$

can be rewritten as the system of two coupled equations, $\frac{dx}{dt} = v(x,t)$ and $\frac{dv}{dt} = a(v,x,t)$ by simply renaming the first derivative of $x$ as $v$. 

#### Local and global errors

It is fundamental to keep in mind that numerical solutions are always **approximations** to the real solutions, including (at least) two errors: **truncation errors** and **round-off errors**. 

Round-off errors are due to the **precision of the machine**. Currently, computers are extremely precise, operating with 8 or 16 significant digits (float and double, respectively). Although summing a large number to a small number can cause reductions on the precision of result. 

Now, the real-deal, it is the truncation errors due to the **finite mathematical terms used to represent a limiting operation**, such as derivatives. Typically, we'll be truncating the Taylor expansion for small time-steps, and therefore **these errors scale as power-laws of $\Delta t$.** 

Ignoring the round-off errors in face of the truncation errors, we call the last as the **local error** between time-steps. The error in the approximation of numerical solution is the accumulation oflocal errors on several time-steps, hence **global error**, depending on the local error and on the length integration interval, $t_f-t_0$. 

## Eulerian methods

#### Explicit & Implicit Euler method

The **Explicit Euler method** is the most elementary idea - substitute the limiting derivatives by very small finite steps. 

$$
x_{n+1} = x_n+v(x_n,t_n)\Delta t
$$

It solves $1^{st}$ order ODEs with a local error of order $\Delta t^2$. It is usually not recommended due to problems on stability, especially considering mechanical problems in which energy is conserved. 

When the equation of $v(x,t)$ is linear on $x$, we can write an improvement called **Implicit Euler method** by solving 

$$x_{n+1} = x_n+v(x_{n+1},t_n)\Delta t$$

for $x_{n+1}$. It increases the stability of Euler method drastically, altough it is rarely feasible. 

#### Euler-Cromer method

When it comes to $2^{nd}$ order ODE, then we can use Euler methods repeatedly from the highest derivative to the lowest one, employing the most recent updates forward. The **Euler-Cromer method** goes as follows

$$
{\bf v_{n+1}} = v_n+a(x_n,t_n)\Delta t \\
x_{n+1} = x_n+{\bf v_{n+1}}\Delta t
$$

Again, the local error is of order $\Delta t^2$, but this method is generally more stable than the previous *Explicit Euler method*. 

#### Verlet & Velocity-Verlet methods

If we Taylor-expand $x(t+\Delta t)$ and $x(t-\Delta t)$, we observe that we can conveniently sum both expansions to cancel all odd derivatives, especially the first! Hence, the so-called **Verlet method** allows us to integrate a $2^{nd}$ order ODE without the need of calculating its first derivative and local error of order $\Delta t^4$! 

The recipe is

$$
x_ {n+1} = 2x_n - x_{n-1} + a(x_n,t_n)\Delta t^2
$$

Although we have one less variable in the equation above ($v$ is gone!), we need to store $x$ on the previous instant $n-1$ as well as the current ($n$). And also the first integration has to be done outside the main loop, with $x_1=x_0-v_0\Delta t$. 

If wanted, you can estimate the velocity at any instant afterwards through midpoint derivative, $v_n = \frac{x_ {n+1}-x_{n-1}}{2\Delta t}$. 

But in order to better estimate the velocity, we can add it back into the numerical integration, in the **Velocity-Verlet method**. We improve the local error on velocity updating it twice, first to the midpoint ($v_{n+1/2}$) and then to the end of the time step.

$$
{\bf v_{n+1/2}} = v_n+a(x_n,t_n)\Delta t/2 \\
x_{n+1} = x_n+{\bf v_{n+1/2}}\Delta t \\
v_{n+1} = {\bf v_{n+1/2}}+a(x_{n+1},t_n)\Delta t/2
$$

Here, the local error on $x$ is still order $\Delta t^4$ as Verlet, but the error in $v$ is improved to order $\Delta t^3$. 

Also, it is very important to notice that **we cannot apply neither Verlet nor Velocity-Verlet methods on velocity-dependent forces**, such as friction for instance ($a$ is *not* a function of $v$), because it destabilizes these numerical methods. 


## Runge-Kutta methods

In the last method, we introduced $v_{n+1/2}$ - one *partial update*. In **Runge-Kutta (RK) methods**, which is actually a family of several similar methods, we further explore the same idea of considering multiple midpoints in the interval $[t, t+\Delta t]$ and combining the information at these midpoints conveniently. 

We will be interested in the derivatives (slopes) at these midpoints, and we denote them by $k_i$. The final estimate of the derivative is a **weighted average** between the collection of $k_i$'s. The different methods choose different sampling points and different weights - and there is a whole mechanism on how to generate new RK methods, called **[Butcher tableau](https://en.wikipedia.org/wiki/Butcher_tableau)**. In fact, the previous Eulerian methods were also the most basic RK methods with one sampling point. 

The most used ones are in this diagram. 

{% include image.html image="/blog/rungekutta.svg" text="Diagram for equations of Runge-Kutta methods (click to maximize)" url="/assets/img/blog/rungekutta.svg" %}

The most famous are **RK23** (2 slopes to produce a local error of order $\Delta t^3$) and **RK45** (4 slopes to produce a local error of order $\Delta t^5$). Notice that when considering more than $5$ slopes, the local error exponent does not increase linearly - for that reason, the *RK45* is typically the best choice for numerical integrations. 

## Multistep methods: Adams-Bashforth & Adams-Moulton

We can use information about points previously calculated to improve the estimation of the next point. The explicit method (which uses only dots earlier) is called **Adams-Bashforth (AB) method** and the implicit method (which uses the point itself) is called **Adams-Moulton (AM) method**.

In both implicit and explicit methods, there are different orders $m$, which is the number of previous points employed.

{% include image.html image="/blog/multistep.svg" text="Diagram for equations of Multistep methods (click to maximize)" url="/assets/img/blog/multistep.svg" %}

Local errors scale as $\Delta t^m$ with AB and $\Delta t^{m+1}$ with AM - another example of the general principal that implicit methods are more accurate. 

## Predictor–Corrector method

Because to use the AM method it is necessary to know the slope at point $x_{n+1}$ to calculate it. As we still don't know $x_{n+1}$, we predict it with the AB method and then we correct its value with the AM method, and hence the name **Predictor–Corrector method**. 

Predict the next point $n+1$ explicitly with

$$
x^{pred}_{n+1} = AB(x_n, x_{n-1},...,x_{n-m})
$$

and afterwards correct it implicitly with

$$
x_{n+1} = AM(x^{pred}_{n+1}, x_n, x_{n-1},...,x_{n-m})
$$

When implementing it computationally, pay attention when updating the values on the correct positions - it must be done in reversed order! From the oldest to the most recent:

$$
x_{n-m} = x_{n-m+1} \\ 
x_{n-m+1} = x_{n-m+2} \\ 
... \\
x_{n-1} = x_{n} \\ 
x_{n} = x_{n+1} \\ 
$$

## Variable step-size methods

If slopes in functions aren't uniform during the integrating range, why should we take constant time step-sizes? The **time step-size should adapt across the interval of integration**. 

Hence, variable-step methods is an optimization which allows you to adapt the step size ($\Delta t$) to be as large as possible (consuming therefore less execution time) while controlling the function error. Intuitively, at the points where functions have sharp slopes the $\Delta t$ will be minimal and when functions have smooth derivatives, $\Delta t$ will be larger. 

If we updated the time step at every iteration, we'd end up adding a new calculation as costly as the integration, increasing the execution time. Therefore, we must **update $\Delta t$ every block of $N$ iterations**. If we have previously an estimation of the average time-step on the interval of integration $(t_0, t_f)$, we can make a polite guess for N:

$$
N \approx \sqrt{\frac{t_f-t_0}{\Delta t_{AVG}}}
$$

i.e., we are balancing $N$ blocks of $N$ iterations. 

This is *not* a new method itself, but an optimization for the previous methods, as it reduces the execution time while still controlling the size of the error. You can **implement variable time step-size in any of the previous method**, and it is important to know the order of local errors $m$. 

We also need to define an **arbitrarily tolerable error** ($\epsilon$), communly $10^{-6}$. Notice that much smaller tolerable errors are also subjected to **round-off errors**, i.e., errors due to the machine precision, that are independent of integrating method. 

The update follows 

$$
\Delta t_{new} = \Delta t \left(\frac{\epsilon}{\epsilon_C}\right)^{1/m}
$$

where $\epsilon_C$ is the **current error estimator** - and here is the key issue: *how to estimate the current error without increasing the number of calculations?* Typically one can use the fact that some of the methods are nested, for instance RK45 has inside it RK23 of double step-size. In this example, we could integrate the functions with RK45 and estimate the current error comparing RK45 with RK23. 

The last note is to **avoid abrupt changes in $\Delta t$** for the stability of the original method and better prediction of the current error. For that, estimate $\Delta t_{new}$ as mentioned and add a *if-else* statement where increments $>500\%$ or reductions $>-80\%$ are replaced for $5\Delta t$ or $\Delta t/5$, respect.  

*** 

My gratitude to Prof. Heitor Carpes Marques Fernandes, from *IF-UFRGS*, who was responsible for the course I was tutoring and helped me polish this summary in its first versions. 


