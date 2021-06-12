---
layout: post
title: 'Observatório<br> Covid-19 BR'
---


I joined a group of over 50 trans-disciplinary researches in the **Observatório COVID-19 BR** (Observatory COVID-19 BR), a project meant to make real-time studies of COVID-19 data and micro-data, to inform the population and guide authorities with scientific analysis in Brazil. We established partnerships with the Secretaries of Health of São Paulo State, 9 northeast Brazilian states (*Consórcio Nordeste*) and a few municipalities. 

We **applied statistical techniques**, such as *nowcasting*, to data; we simulated scenarios with mathematical modelings; we **calculated epidemic indices**, such as Effective Reproductive number ($$R_{eff}$$); we **projected the number of hospital beds needed, cases and deaths in the short-term**, among many other analyses. We **released few technical notes** about the state's reestablishment plannings and took part in several interviews and media agenda. Our homepage peaked 120.000 weekly viewers in March, and nowadays has an average of 29.400 weekly viewers.

This project is fully volunteering and there is no financial interest.

{% include image.html url="https://covid19br.github.io/" image="projects/obs/cover.jpg" text="Checkout our website!"%}

Next, I briefly point to some of the contributions of the group *Observatório COVID-19 BR* I participated: interviews, data curation, publications and analysis. 

## How can mathematical concepts help us to understand this pandemic crisis?

In this interview on G1 by Laís Modelli and Lara Pinheiro, **[Exponential growth and epidemic curve: understand the main mathematical concepts that explain the coronavirus pandemic](https://g1.globo.com/bemestar/coronavirus/noticia/2020/03/31/crescimento-exponencial-e-curva-epidemica-entenda-os-principais-conceitos-matematicos-que-explicam-a-pandemia-de-coronavirus.ghtml)** (in portuguese), we give some of the main epidemiological concepts to understand an epidemic curve, such as the epidemic cycle that is formed by three stages: exponential growth, saturation and exponential decay. 

Besides the exponential growth in the number of case of the COVID-19, there is, however, a more **complex underlying dynamics**, because not only the local transmission of the virus happens through the **dynamics of spread** by contagion (from one person to other people), but also by a **dynamical spread of focuses** - intercommunications between countries/states resulting new focuses of communitary transmission.

Some metrics helped us to understand the **pace of the pandemics** in its beginning, as the *doubling time*, i.e., the time it takes to double the number of (notified) cases. We estimated this doubling time to several countries based on data from John Hopkins University, as reported by Eduardo Pierre from G1 Saúde in **[Covid-19 death curve in Brazil is faster than in Spain, say academics](https://g1.globo.com/bemestar/coronavirus/noticia/2020/04/23/curva-de-mortes-de-covid-19-no-brasil-esta-mais-rapida-que-a-da-espanha-dizem-universidades.ghtml)** (in portuguese).

## Why should we correct notification delays?

Daily notified cases come from the results of confirming laboratory exams, such as PCR. But the results confirmed today belong to patients who got infected a few days ago - this is the so-called **notification delay**. It is the time interval between infection and notification, and it includes many bureaucratic and epidemiological stages, such as the incubation period of SARS-Cov-2, the time for having symptoms, going to a health care unit and collecting the sample, the time to analyze that sample and, finally, the time to type the result into the database of cases - which in Brazil is the SIVEP and eSUS-VE. 

Such **statistical technique** is called *nowcasting* and it's based on Bayesian statistics. It allows a more **realistic and accurate real-time epidemic curve** of cases and deaths. I talk more about it in this interview with Karina Toleto to Agência FAPESP, **[Tool allows monitoring realtime progress of COVID-19 in São Paulo city](https://agencia.fapesp.br/ferramenta-permite-monitorar-em-tempo-real-o-avanco-da-covid-19-na-cidade-de-sao-paulo/32987/)** (in portuguese): 

{% include quote.html author="Vitor Sudbrack" text="If I have a friend who is always 10 minutes late for an appointment, I know I can arrive 10 minutes after the scheduled time. Thus, there is a greater chance that we will arrive together. I adapted my response based on average behavior. The logic of the tool is more or less the same." %}

You can see **nowcasted data of cases and deaths** of a few [Brazilian municipalities](https://covid19br.github.io/municipios.html?aba=aba1&uf=SP&mun=Sao_Paulo&q=dia), [health regions of SUS](https://covid19br.github.io/drs.html?aba=aba1&uf=SP&mun=Grande_Sao_Paulo&q=dia) and all [Brazilian states](https://covid19br.github.io/estados.html?aba=aba1&uf=SP&q=dia), updated as soon as new microdata is available by the Ministry of Health. Based on nowcasted data, we calculate the $$R_{eff}$$, an index to measure the progression of the pandemic in cities and states. 

## How to model non-pharmaceutical interventions in SARS-CoV-2 disease dynamics?

Authorities had to dynamically adapt the response to the pandemics in order to preserve lives. Most SIR-like models in literature treat these non-pharmaceutical interventions (NPIs) in SARS-CoV-2 disease dynamics by reducing the contagious rate linearly with coverage of social distancing and mobility loss - which works as a good approximation to cases of soft NPIs - or fitting a contagious rate as a function of time - easily leading to overfittings.

In this work, we explore how SIR-like models can import the **implementation of strict NPIs**, i.e. those that move the system far from the assumptions of well-mixed population, fundamental to the kind of compartmental models typically employed. We start from a SIR-like model with compartments divided on epidemiological stages, ages, hospital dynamics and notification system, as summarized in the following diagram. 

{% include image.html url="https://www.medrxiv.org/content/10.1101/2021.06.07.21258403v1" image="projects/obs/epimodel_diagram.jpg" text="Checkout our preprint!"%}

The properties of connectivity and connectance are related to the **theory of percolation** in contact networks among people or households. As the communication between nodes are continuously removed, the response of the graph in transmitting information (or a disease) across the network varies non-linearly. At some point known as the *percolation threshold*, the global communication of the graph is lost.  With 2 extra parameters to be adjusted to data, the **non-linear response can be incorporated to the SIR-like model**, resulting in a better fitting to daily cases and deaths in São Paulo city and improving the plausibility between data and model (measured by AIC). 

This work is available at the following pre-print, led by [Caroline Franco](https://scholar.google.com/citations?user=S7lUYf0AAAAJ&hl=en). 

{% include cite.html title="Percolation across households in mechanistic models of non-pharmaceutical interventions in SARS-CoV-2 disease dynamics" author="C.Franco, L.S. Ferreira, V. Sudbrack, M.E. Borges, S. Poloni,P.I. Prado, L.J. White, R. Águas, R.A. Kraenkel,R.M. Coutinho" journal="Preprint at medRxiv" year="2021" url="https://www.medrxiv.org/content/10.1101/2021.06.07.21258403v1" %}

Besides better agreement to data, this new methodology employed can also allow us to access a more reliable estimation of the impact of NPIs on the epidemiological dynamics.

## How does this pandemics affect Brazilian social inequality?

The pandemic clearly **accentuated** the huge Brazilian social inequality. The (mis-)belief that the health crisis and financial crisis belong to opposite ideals boosted all over the country. The following quote describes the Brazilian scenario of this pandemic in a nutshell. 

{% include quote.html author="Maria Amélia Veras" text="[...] as the economy is weakened by the pandemic - not only in Brazil, but worldwide, - will the same people suffer twice? I mean... those from the periphery, the poorest, the least educated, those who have already been more affected by the disease than anyone else, will they also necessarily be more affected by the economic crisis?" %}
 
It was asked by Maria Amélia Vegas, epidemiologist, to the economist Mônica de Bolle in this excellent talk in Portuguese below, organized by the Observatório COVID-19 BR.

{% include video.html src="https://www.youtube.com/embed/5Mq0x_V5KH4" %}

In order to further understand the impacts of Brazilian Emergency Income Aid, **Caio Jardim-Sousa** and **Mel Veneroso**, from *Rede Análise COVID*, develop this Analysis of **[Emergency Income Aid coverage in Brazilian municipalities](https://covid19br.github.io/analises.html?aba=aba9#)**, which I was very happy to help and give suggestions. 




