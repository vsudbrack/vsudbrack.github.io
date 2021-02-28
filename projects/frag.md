---
layout: post
title: 'Population dynamics in highly fragmented landscapes'
---

{% include image.html url="/assets/docs/projects/frag/Poster_PopDinHighlyFragmented.pdf" image="projects/frag/posterCover.jpg" text="Click here to maximize the research poster" %}

Human action or geographical features fragment the natural habitat of several species all around the world. Understanding the effects of fragmentation on ecosystems is key to elaborate the best policies to avoid species extinctions and better manage ecological reserves. Hence, it is important to study how the populations and ecosystems respond to habitat spatial distribution. 

Well, if you experienced the ecological debates from the 70s, these ideas might remind you of the question: **single large or several small** ecological reserves?. This simple question, abbreviated by *SLOSS*, has evolved for almost half a century and the answer is, up to this day, very arguable. It paved the way to the discussion on the effects of fragmentation (including number of patches, edge density, patch isolation, mean area per habitat patch, etc) into the ecological value of landscapes (either single species metrics, such as abundance, or community metrics, as richness or evenness). Today we have shifted the binary point of view - i.e. *compact versus fragmented* -  to a continuous problem, **investigating the effect of the degree of fragmentation to the ecological value of landscapes**. 

And at this point it is also important to emphasize the difference between fragmentation and the *fragmentation process*. This latter occurs simultaneously with habitat loss and, therefore, is always detrimental to ecosystems. To make this distinction even clearer, we refer to the difference of spatial configuration while keeping the total habitat amount constant as *fragmentation per se*. 

Because in real data habitat loss and habitat fragmentation present low variability (at least in the scale of observations) and high correlation, statistical analysis are required to infer and differentiate between effects of habitat loss and *fragmentation per se*. On top of that, different authors use different fragmentation metrics and many results are context-dependent, leading to a heated discussion which we humorously refer to as **FragWars**.

In fact, that was precisely the title of a seminar I delivered on *EcoEncontros* at IB-USP in 2020. There, I presented the main conflicts pointed by the authors in this debate, such as **spatial scales and interdependence**. You can check the slides and the link for the video with the lecture, in Portuguese, below.

{% include image.html url="/assets/docs/projects/frag/FragWars.pdf" image="projects/frag/fragwars.png" text="Check the slides of this presentation" %}

Truth is... the study of habitat fragmentation lacks an underlying and consistent ecological theory. Hence, different authors commonly measure and refer to different things indistinguishably, making it hard to establish patterns from observations. 

{% include quote.html text="Theory without fact is fantasy; but fact without theory is chaos. Divorced, both are useless; united, they are equally essential and fruitful." author="Charles Otis Whitman" %}

This point is exactly where we believe that computational techniques may be a powerful tool to help researchers to **test hypotheses, mechanisms and concepts** and even **generate controlled artificial data** in order to analyze the suitability of statistical models. Knowing the behavior of statistical models in controlled data in factorial simulations helps us better understand the behavior of these models in our interdependent and noised databases. 

In our project, we use numerical methods to simulate **Reaction-Diffusion Equations** (*FKPP Equations*) in **artificial landscapes** generated with different structural distributions while keeping the total amount of habitat constant, i.e. we control for degree of fragmentation and habitat amount. This guarantees we are able to fully observe the emergent effects caused by *fragmentation per se* in a factorial simulation. Hence, we can contrast different statistical models of the mixed effects of habitat amount+fragmentation with the real effects of *fragmentation per se* on the same artificial data. 

We discuss the **net effects of fragmentation into the steady total population** on these landscapes. Our model suggests that in soft matrices, the effects of fragmentation are positive, because it increases the effective area of presence of species, leading to greater communication between patches. On the other hand, in hostile matrices, larger patches have greater populations. You can check the main results of this work in the following presentation (or in [this video on Youtube](https://www.youtube.com/watch?v=-ti5vJHCknU&t=2s)). 

{% include image.html url="/assets/docs/projects/frag/ThesisSlides.pdf" image="projects/frag/ThesisCover.png" text="Check the slides with the main results of my thesis" %}

This work was done under **Roberto A. Kraenkel** supervision at IFT - UNESP and collaboration with professor **[Renato M. Coutinho](http://professor.ufabc.edu.br/~renato.coutinho/)** and financed by [FAPESP (Grant #2018/23984-0)](https://bv.fapesp.br/pt/bolsas/183763//). It was presented on February 10th 2021 as my Master thesis, **[Population dynamics in highly fragmented landscapes](/assets/docs/projects/frag/My_Master_thesis.pdf)**, and was approved by the examining board. 


## Fragmentation metrics

We measure fragmentation in a continuous way through *fragmentation metrics*. There are many metrics, some measure different fragmentation aspects and a few are redundant, i.e. highly correlated to others in a context. Some examples are **complexity and entropy metrics**, such as Shannon Entropy and Mutual information; or metrics of **geometric features**, like Perimeter-Area fractal dimension, average Circumscribed Circle or simply, Perimeter-Area ratio. Others focus on average **patch shapes**, as their Mean Area or Edge density, while others yet focus on a **landscape-level**, as the number of patches, the % of habitat in the largest patch (LPI) or the average Euclidean distance between patches. 

## Neutral landscape models (NLMs)

Also, in order to study the effects of *fragmentation per se* in population dynamics numerically, we have to **simulate artificial landscapes**. There several different methods to generate them, and they are known as *Neutral Landscape Methods*. In the videos below, I show 2000 artificial landscapes, ordered from slightly fragmented to highly fragmented, for four methods. Firstly, I show the **Fractional Brownian Motion (FBM) method**, in which we ordered the landscapes by the *fractal dimension* (between 0 and 2), going from slightly to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/788kqrvQnyA" %}

The second, artificial **Mosaic Tessellation (MTS)** landscapes ordered by number of germs, centroid points for a Voronoy tessellation, going from slightly to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/oZXa7XT80Gk" %}

Below, we have artificial **Random Rectangular Clustering (RRC)** landscapes, descendingly ordered by average rectangle area (average of minimum and maximum length of suporposing rectangles), going from slightly to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/xgNKsu7eK5M" %}

Finally, artificial **Midpoint Displacement (MPD)** landscapes ordered by spatial correlation  (roughness), going from highly  compact to highly fragmented. 

{% include video.html src="https://www.youtube.com/embed/Vx_gpdr_AYc" %}

Can you se how **different methods impose different characteristics to landscapes** and their fragmentation metrics? It also change how this set of metrics is coupled, i.e. their correlations. It is a challenge to understand **how these characteristics reflect ecologically** under basic mechanisms. 

## Patches communication & functional landscapes

Recent explorations on our model revealed the presence of different movement scales, intra-patch and inter-patches. We are now working on how fragmentation affects features of population spatial distribution and investigating regimes of fragmentation that allow non-interactive (or weakly interacting) subpopulations to form - i.e. low interpatch communication. Forming **networks of patches** can help us understand further the *functional patches*, patches of "populations" rather than the geographical ones. 

This sub-projects is available to undergraduate/Master students, if **this discussion sounds appealing to you, get in touch :)**

## Multiple species systems

In the particular scenario of competition, how does fragmentation affect the coexistance of species? Could this model explain the interspecific competition release due to the presence of matrix mentioned in the literature? How the geographical fragmentation induces population clustering in two species?

This work is done with **[Cristóbal López](https://www.ifisc.uib-csic.es/en/people/cristobal-lopez/)** and **[Emilio Hernández-García](https://ifisc.uib-csic.es/users/emilio/)** at the *[Institute for Cross-Disciplinary Physics and Complex Systems (IFISC)](https://www.ifisc.uib-csic.es/en/)* of *[University of the Balearic Islands (UiB)](https://www.uib.eu/)* in Palma de Mallorca, Spain,  financed by [FAPESP (Grant #2019/02526-0)](https://bv.fapesp.br/pt/bolsas/190605/padroes-espaciais-na-distribuicao-populacional-em-paisagens-altamente-fragmentadas/).




