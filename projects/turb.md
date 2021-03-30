---
layout: post
title: 'Turbulence in bidimensional fluids'
---

## Turbulence in fluid dynamics

Fluid dynamics (the study of liquid and gases behaviour) has had some open problems for centuries. The reason for that is its **non-linear equations of motion**, which need state-of-the-art mathematical and computational tools to solve and understand the particular behaviours of self-organizing structures in bidimensional turbulent flows.


{% include quote.html author="Werner Heisenberg" text="When I meet God, I am going to ask him two questions: why relativity? And why turbulence? I really believe he will have an answer for the first." %}


Through spectral methods, we studied in this project the instability and turbulence in incompressible 2D fluids solving numerically **Navier-Stokes equation in the vanishing viscosity limit** and, then, comparing the results with data from **point-vortex methods, which simulates an ideal fluid** (zero viscosity). You can see below both simulations: the solution for NS-Eq and the point-vortex, both experiencing the Kelvin-Helmholtz instability.

{% include video.html src="https://www.youtube.com/embed/SJYyEOP0KVE" %}

{% include video.html src="https://www.youtube.com/embed/fUS3b7OAdtM" %}

## Kelvin-Helmholtz instability

Kelvin-Helmholtz instability occurs when the interface of two
fluid layers presenting relative motion is perturbed, generating turbulence. In the description of the vorticity field, it happens when a vorticity line is perturbed. 

In the case of Kelvin-Helmholtz instability, we could find many similarities in the behaviour of both fluids, although we found differences in the energy spectra of an ideal and viscous fluid. We can see there exists **energy and enstrophy transfers between multiple scales** of structures.

The theoretical description of bidimensional turbulence is an open problem in classical physics, with great contributions of Kolmogorov and Kraichnan, Leith and Batchelor (KLB) to local forcing and isotropic scenarios. There
is yet no theoretical description in the literature of **bidimensional turbulence with a spectrally non-localized input of energy and space anisotropy**, which is the case of KHI generated turbulence. My final undergraduate thesis described phenomenologically the KHI scenario in an ideal and vanishing-viscosity bidimensional fluids. 

{% include cite.html title="Estudo da turbulência bidimensional na instabilidade de Kelvin-Helmholtz: descrição fenomenológica" author="V. Sudbrack" journal="Federal University of Rio Grande do Sul repository" year="2018" url="/assets/docs/projects/turb/tcc.pdf" %}

This work was done under **[Alexei Mailybaev](http://alexei.impa.br/)** supervision and in collaboration with **Simon Thalabard** at the [Fluid Lab - IMPA](http://fluid.impa.br/). It was funded by the federal government (CNPq).

{% include image.html url="/assets/docs/projects/turb/TCC_slides.pdf" image="/projects/turb/slides.jpg" text="Check my presentation about this project" %}



