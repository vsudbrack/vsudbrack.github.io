---
layout: post
title: 'Population dynamics in highly fragmented landscapes'
---

Human action fragments the natural habitat of several species all around the world. Understanding the effects of fragmentation to ecosystems is key to elaborate the best policies to avoid species extinctions. Therefore, it is important to study how the populations and ecosystems respond to these kinds of changes in landscapes.


In this work, we use numerical methods to simulate reaction-diffusion equations in artificial landscapes generated with different structural distributions while keeping the total amount of habitat constant. This guarantees we are observing phenomena caused by *fragmentation per se*. We discuss the net effects of fragmentation into the steady total population. 

In order to do that correctly, we established the correlation between fragmentation metrics with fixed amount of habitat, to ensure that conclusions are not biased by interdependencies of metrics. 


We have also analytically calculated the critical size to allow population growth for bidimensional landscapes within our model, with given symmetries. These results prove that habitat area is not the only factor when it comes to population settling, and hence patch shape matters. 


<!-- {% include image.html url="http://www.gratisography.com" image="projects/frag/slides.jpg" text="Check the poster for eSMB 2020"%} -->

In the future we will also explore consequences of fragmentation to communities. 

This work is done under **Roberto A. Kraenkel** supervision at IFT - UNESP and collaboration with **[Renato M. Coutinho](http://professor.ufabc.edu.br/~renato.coutinho/)** and financed by FAPESP (Grant #2018/23984-0).

There are a few subprojects available to undegrad students, if **this discussion sounds apealling to you, get in touch :)**

## How to measure fragmentation? How to create a landscape?

We measure fragmentation in a continous way throught *fragmentation metrics*. There are many metrics, some mesuare different fragmentations aspects and a few redundant, i.e. highly correlated to others, in a contexts. Some exemples are **complexity and entropy metrics**, such as Shannon Entropy and Mutual information; or metrics of **geometric features**, like Perimeter-Area fractal dimension, average Circumscribed Circle or simply, Perimeter-Area ratio. Others focous on average **patch shapes**, as their Mean Area or Edge density, while others yet focous on a **landscape-level**, as the number of patches, the % of habitat in the largest patch (LPI) or the average Eucledian distance between patches. 

Also, in order to study the effects of *fragmentation per se* in population dynamics numerically, we have to **simulate artificial landscapes**. There several different methods to generate them, and they are known as *Neutral Landscape Methods*. In the videos below, I show 2000 artificial landscapes, ordered from slightly fragmented to highly fragmented, for four methods. Firstly, I show the **Fractional Browning Motion (FBM) method**, in which we ordered the landscapes by the *fractal dimension* (between 0 and 2), going from slightly to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/788kqrvQnyA" %}

The second, artificial **Mosaic Tessellation (MTS)** landscapes ordered by number of germs, centroid points for a Voronoy tessellation, going from slightly to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/oZXa7XT80Gk" %}

Below, we have artificial **Random Rectangular Clustering (RRC)** landscapes, descendingly ordered by average rectangle area (average of minimum and maximum length of suporposing rectangles), going from slightly to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/xgNKsu7eK5M" %}

Finally, artificial **Midpoint Displacement (MPD)** landscapes ordered by spatial correlation  (roughness), going from highly  compact to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/Vx_gpdr_AYc" %}

Can you se how **different methods impose different characteristics to landscapes** and their fragmentation metrics? It also change how this set of metrics is coupled, i.e. their correlations. It is a challenge to understand **how these characteristics reflect ecologically** under basic mechanisms. 

## How do patches communicate?

Recent explorations on our model revel the presence of different movement scales, intra-patch and inter-patches. We are now woking on how fragmentation affects features of population spatial distribution and investigating about regimes of fragmentation that allow non-interactive (or weakly interacting) subpopulations to form - i.e. low interpatch communication.

This work is done under **[Cristóbal López](https://www.ifisc.uib-csic.es/en/people/cristobal-lopez/)** supervision at the *Institute for Cross-Disciplinary Physics and Complex Systems (IFISC)* of *University of the Balearic Islands (UiB)* in Palma de Mallorca, Spain,  financed by FAPESP (Grant #2019/02526-0).

