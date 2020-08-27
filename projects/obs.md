---
layout: post
title: 'Observatório Covid-19 BR'
---


I joined a group of over 50 trans-disciplinary researches in the **Observatório COVID-19 BR** (Observatory COVID-19 BR), a project meant to make real-time studies of COVID-19 data and micro-data, to inform population and guide authorities with scientific analysis in Brazil. We established partnerships with the Secretaries of Health of São Paulo State, 9 northeast Brazilian states (*Consórcio Nordeste*) and a few municipalities. 

We **applied statistical techniques**, such as *nowcasting*, to data; we simulated scenarios with mathematical modelings; we **calculated epidemic indices**, such as Effective Reproductive number ($$R_{eff}$$); we **projected the number of hospital beds needed, cases and deaths in the short-term**, among many other analysis. We **released few technical notes** about state's reestablishment plannings and took part in several interviews and media agenda. Our homepage peaked 120.000 weekly viewers in March, and nowadays has an average of 29.400 weekly viewers.

This project is fully volunteering and there is no financial interest.

{% include image.html url="https://covid19br.github.io/" image="projects/obs/cover.jpg" text="Checkout our website!"%}

## How can mathematical concepts help us to understand this pandemic crisis?

In this interview on G1 by Laís Modelli and Lara Pinheiro, **[Exponential growth and epidemic curve: understand the main mathematical concepts that explain the coronavirus pandemic](https://g1.globo.com/bemestar/coronavirus/noticia/2020/03/31/crescimento-exponencial-e-curva-epidemica-entenda-os-principais-conceitos-matematicos-que-explicam-a-pandemia-de-coronavirus.ghtml)** (in portuguese), we give some of the main epidemiological concepts to understand a epidemic curve, such as the epidemic cycle that is formed by three stages: exponential growth, saturation and exponential delay. 

Besides the exponential growth in the number of case of the COVID-19, there is, however, a more **complex underlying dynamics**, because not only the local transmission of the virus happens throght the **dynamics of spread** by contagion (from one person to other people), but also by a **dynamical spread of focuses** - intercommunications between countries/states resulting new focuses of communitary transmission.

## Why should we correct notification delays?

Daily notified cases come from the results of confirming laboratory exams, such as RT-PCR. But the results confirmed today belong to patients who got infected a few days ago - this is the so-called **notification delay**. It is the time interval between infection and notification, and it includes many bureaucratic and epidemiological stages, such as the incubation period of SARS-Cov-2, the time for having symptoms, going to a health care unit and collecting the sample, the time to analyze that sample and, finally, the time to type the result into the database of cases - which in Brazil is the SIVEP and eSUS-VE. 

Such **statistical technique** is called *nowcasting* and it's based on Bayesian statistics. It allows a more **realistic and accurate real-time epidemic curve** of cases and deaths. I talk more about it in this interview with Karina Toleto to Agência FAPESP, **[Tool allows monitoring realtime progress of COVID-19 in São Paulo city](https://agencia.fapesp.br/ferramenta-permite-monitorar-em-tempo-real-o-avanco-da-covid-19-na-cidade-de-sao-paulo/32987/)** (in portuguese): 

{% include quote.html author="Vitor Sudbrack" text="If I have a friend who is always 10 minutes late for an appointment, I know I can arrive 10 minutes after the scheduled time. Thus, there is a greater chance that we will arrive together. I adapted my response based on average behavior. The logic of the tool is more or less the same." %}

You can see **nowcasted data of cases and deaths** of a few [Brazilian municipalities](https://covid19br.github.io/municipios.html?aba=aba1&uf=SP&mun=Sao_Paulo&q=dia) and all [Brazilian states](https://covid19br.github.io/estados.html?aba=aba1&uf=SP&q=dia), updated as soon as new microdata is available by the Ministry of Health. Based on nowcasted data, we calculate the $$R_{eff}$$, an index to measuare the progression of the pandemic in cities and states. 

## How this pandemic increases Brazilian giant social inequality?

The following quote describes the Brazilian scenario of this pandemic in a nutshell. 

{% include quote.html author="Maria Amélia Veras" text="[...] as economy is weakened by the pandemic - not only in Brazil, but worldwide, - will the same people suffer twice? I mean... those from the peripheries, the poorest, the least educated, those who have already been more affected by the disease than anyone else, will they also necessarily be more affected by the economic crisis?" %}
 
It was asked by Maria Amélia Vegas, epidemiologist, to the economist Mônica de Bolle in this excelent talk in Portuguese below, organized by the Observatório COVID-19 BR.

{% include video.html src="https://www.youtube.com/embed/5Mq0x_V5KH4" %}


In order to further understand the impacts of Brazilian Emergency Income Aid, **Caio Jardim-Sousa** and **Mel Veneroso**, from *Rede Análise COVID*, develop this Analysis of **[Emergency Income Aid coverage in Brazilian municipalities](https://covid19br.github.io/analises.html?aba=aba9#)**, which I was very happy to help and suggeste. 

