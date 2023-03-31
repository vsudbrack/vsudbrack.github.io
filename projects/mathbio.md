---
layout: post
title: 'Mathematical Biology Projects'
---

{% include quote.html text="Mathematics is biology's next microscope,<br>only better;<br>Biology is mathematics' next physics,<br>only better." author="Joel E Cohen" %}

Here, I wrote about a few of these mathematical lensings I have already worked on in several opportunities. 

---

## Duplication & Divergence networks

**Networks** (or graphs) are mathematical tools we use to model real problems (in biology, sociology, geography, economy,...) and study them systematically. In particular, it is possible to study *expanding networks*, given a node addition rule. We studied numerically the growth of some of these networks based on averages of random initialization and analytically, through a **master equation formulation** applied to these addition rules, accounting for all possible scenarios that may probabilistically happen within the model. 

The importance of this work is predicting the future behavior of the real systems described by the studied networks and understanding and quantifying the parameters related to this modeling. Here, we consider **Divergence and Duplication** networks, which mimic properties of *Protein-Protein Interaction Networks (PPI)* - i.e., given **mutation parameters**, the characteristic features of these graphs are similar to those found on experimental networks of related proteins. 

We established the parameter ranges where the mean number of connections between nodes converges to finite number, and when it diverges making the network more and more connected as we add new nodes. **When the total mutation exceeds a threshold, the mean degree of D&D networks diverge as the networks grow.** Check the visual distinctions where divergence is increased from left to right. 

{% include image.html image="/projects/mathbio/dd_networks.png" %}

This work is a collaboration with professors **[Leonardo G. Brunnet](http://pcleon.if.ufrgs.br/)**, Rita M. C. de Almeida, Ricardo M. Ferreira and Daniel Gamermann within LabCel group at the Physics Institute at UFRGS. It was funded by federal government (CNPq). All results of this project are published on the following article at *Physica A*. 

{% include cite.html title="Master equation for the degree distribution of a Duplication and Divergence network" author="Sudbrack, V.; Brunnet, L.G.; de Almeida, R.M.; Ferreira, R. M. & Gamermann, D." journal="Physica A: Statistical Mechanics and its Applications" year="2018" url="https://doi.org/10.1016/j.physa.2018.06.066" %}

You can also check the presentation below with a synthesis of the main results: determining parameter ranges for which networks reach a steady state and evaluating the time-dependent and asympthotic network degree distribution. 

{% include image.html url="/assets/docs/projects/mathbio/slidesDDNetworks.pdf" image="projects/mathbio/slidesDDN.jpg" text="Check my presentation with main results" %}

---

## Magnetoreception in Multicellular Magnetotactic Prokaryotes

**Magnetosensibility** is the ability of organisms to respond to the presence of a magnetic field, changing their behavior. This can be achieved actively through **magnetoreception**, when organisms detect the geomagnetic field and use this vector information in their spatial orientation, or passively, as in **magnetotaxia**, when just like a needle, organisms behave as magnetic dipoles and align themselves with the lines of the Earth's magnetic field. These kinds of responses have been observed, for instance, in dogs, ants, several birds and bees.

In order to further understand this kind of behaviour in a **Multicellular Magnetotactic Prokaryotes (MMP)** collected in Brazilian lake, we designed this experimental work aiming to study the **kinetic description** of a particular type of movement (*ping-pong motion* or **escape mobility**) in MMPs as the intensity of the magnetic field varies, as well as its probability of occurrence. Its characteristic of being **stratified in one dimension** can be seen in the following video-shot, where the left plot of parallel position varies in order of magnitude more than the perpendicular position (the right plot). 

{% include image.html image="/projects/mathbio/kinematics_biomag.jpeg" %}

Our main conclusion was that this type of motility has several characteristics that depend on the magnetic field intensity and, therefore, it is best explained by **magnetoreceptive mechanisms**. All results are publish in the following article from *European Biophysics Journal*.

{% include cite.html title="Magnetoreception in multicellular magnetotactic prokaryotes: a new analysis of escape motility trajectories in different magnetic fields" author="Sepulchro, A.G.V.; de Barros H.L.; de Mota H.O.L.; Berbereia K.S.; Huamani, K.P.T.; Lopes, L.C. da S.; Sudbrack, V. & Acosta‐Avalos, D." journal="European Biophysics Journal" year="2020" url="https://doi.org/10.1007/s00249-020-01467-4" %}

This work happened during the [4th Advanced School of Experimental Physics (**4th EAFExp**)](https://mesonpi.cat.cbpf.br/eafexp2019/) organized by **[Centro Brasileiro de Pesquisas Físicas (CBPF)](http://www.cbpf.br/)** in February 2019, supervised by professors **[Daniel Acosta-Avalos](https://scholar.google.es/citations?user=CZk6iHkAAAAJ)** and Henrique Lins de Barros, and done together with some amazing young researchers I had the chance to meet through this project: Ana Gabriela, Henrique, Karen, Katterine and Lis.

You can also check a summary of main points in this group presentation at the school (in Brazilian portuguese).

{% include image.html url="/assets/docs/projects/mathbio/slidesMMPs.pdf" image="projects/mathbio/slidesMMPs.jpg" text="Check the group presentation with main results (pt)" %}


---

## What is the future of ecological and evolutionary theory?

As the world continues to face unprecedented environmental challenges, it becomes increasingly important to understand the complex relationships between different ecological and environmental factors. This is where **synthesis research** comes in. By bringing together data, ideas, and tools from a range of disciplines and sources, synthesis research can help us gain a **better understanding of the challenges we face** and develop effective management strategies to address them.

I participed in a **virtual workshop at the National Center for Ecological Analysis and Synthesis (NCEAS)** to examine how synthesis research can address key questions and themes in ecology and environmental science in the coming decade. Through this workshop, seven **priority research topics emerged**, including diversity, equity, inclusion, and justice; human and natural systems; actionable and use-inspired science; scale; generality; complexity and resilience; and predictability. The outcomes of the discussions during this workshop can be found in the publication below.


{% include cite.html title="Priorities for synthesis research in ecology and environmental science
" author="Several authors, led by Benjamin S. Halpern" journal="Ecosphere" year="2023" url="https://doi.org/10.1002/ecs2.4342" %}


I do believe that this project is a critical step forward in our collective efforts to address the environmental challenges we face today. By working together and **bringing our diverse perspectives and expertise to the table**, we can develop a more global understanding of the complex relationships between human and natural systems and develop effective solutions to the challenges we face.

---

