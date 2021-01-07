---
layout: post
title:  "Experiencing the Central Limit Theorem"
date:   2021-01-03
categories: codes
description: "Summary to uncomplicate the Central Limit Theorem and applications on data."
---


*Data* is a word in trend. We hear it in *data mining*, *data scrapping*, *big data*, and the list just increases as we gain acesses to more refined information. Two things we must know to work with *data*: it is a plural word (hence *these data*, *data were*...) & it requires lots of statistical knowledge to be processed. 

Here, I propose to uncomplicate the Central Limit Theorem (CLT) presenting an theoretical introduction based on a pictorial framework to always keep it in mind. Then, using synthetic data in R I present a few experiments we can perform in order to feel the CLT in practice. 


## The Central Limit Theorem 

The whole idea of descriptive statistics is dealing with numberical estimations of large populations of individuals - perhaps infinite. This is achived through the inspection of samplings out of this population. Because sample are parts of the population, they are also composed of individuals. 

Therefore, we have three 'statistical scales' to connect: population, samples and individuals.

Populations have a value for the number we want to estimate, regardless if it is a height, a rate or a weigh... There is one value that is the mean value of the population - it might even be uncessable. **We call this *true value* for the population as parameter**. If we make an analogy with numbers, the population would be a never-ending transcedental number, like $\pi = 3.141592...$. What is the average value of its digits? It is impossible to know, there are infinite of them. 

{% include image.html image="/blog/Central_limit_theorem_pictorial.png" text="Three statistical levels, its value and their nature" %}

Through out this hands-on I will keep the color-code of this image. Properties of the population I'll paint green. Properties of the samples, I'll paint red. And finally, the individual data will be blue. 

I downloaded the first million digits of $\pi$ from [this page](https://www.pi2e.ch/blog/wp-content/uploads/2017/03/pi_dec_1m.txt). Afterwords, I removed the '.' between 3 and 1, and added an space between digits with the commandline
```sh
sed -e 's/./& /g' pi_dec_1m.txt > digits_pi.txt 
```

#### The Gaussian distribution


## Expermenting the CLT in R

All codes we present here are avaible to you in the end of the page. Download them and repeat the simulations - it is indeed the second best way to learn! (The very best is writting a post explaining it to others).


#### Increasing the number of samples


#### Increasing the sample size


#### When $P(x)$ has infinite variance


#### Other statistics besides average

**Geometric average**

**Entropy**



In the meantime, if you discover some nice property by playing with the code in R, feel free to send it to me on my email *[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)*, or contact me on *[Twitter @vitorsudbrack](https://twitter.com/vitorsudbrack)* about your experience playing with this hands-on. All feedback is appreciated. 


---

Thank you so much for reading this post! I hope you enjoyed reading it as much as I did writing. Remember to share with your friends and classmates and make sure to never take a map - as simple as it is - for granted.  

:brazil: This page does not have a version in Portuguese yet. If you are Brazilian and want to help me translating this post (or other contents of this webpage) to reach more easily Brazilian students, your help would be highly appreciated and acknowledged. Mail me! :)

