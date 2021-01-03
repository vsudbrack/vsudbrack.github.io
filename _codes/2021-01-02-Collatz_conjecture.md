---
layout: post
title:  "Visualizing Collatz conjecture"
date:   2021-01-02
categories: codes
description: "Graph and circular-tree visualization of an intriguing open problem."
---


One of my favorite conjectures is the **Collatz conjecture**, for sure. Because it is so simple to pose and yet unsolved, it makes me think about the complexities in simplicity. And furthermore, you can share them with your family and friends.

{% include image.html image="/blog/collatz_joke.png" %}

In this hands-on, I'll present the conjecture and some of its properties as a general background. Afterwards, we move to simulating it in R, creating a graph and visualizing it. If you are familiar to the conjecture, skip to its visualization at the bottom of this page.

**Warning:** Unfortunately, I couldn't solve it (this time). Therefore, still a conjecture *hahahh*.

## The Collatz iteration

Before understanding the conjecture itself, let's take a look at the Collatz iteration (or mapping). An iteration is a function of a set of numbers on itself - and therefore it can repeatedly applied. This sequence of applications generates a sequence of numbers, represented as $x_n$, the number after $n$ iterations. The initial value is arbitrary and named $x_0$. On it, the **Collatz map** goes as follows:


$$
x_{n+1} = \frac{x_n}{2} \textrm{, if } x_n \textrm{ even} \\
x_{n+1} = 3x_n + 1 \textrm{, if } x_n \textrm{ odd}
$$

In words: *if your number is even, divide it by 2; and if it is odd, multiply by 3 and sum 1.* Execute it on and on, until you reach $1$. For instance, one possible sequences is $3\to 10\to 5\to 16\to 8\to 4\to 2\to 1$. Notice that every sub-sequence is a possible sequence (a general property of autonomous maps). In R, the Collatz map can be generated in a naughty function of ifs.

```r
collatz = function(num){
	if ((num%%2) == 0){ return(num/2) } # If Even
	else { 	if (num==1){ return(1) 	}   # If one
		else { return((3*num+1)) } }# If odd
}
map_collatz = function(vec, n=1){
	if (n==1) { return(sapply(vec, collatz)) } #Applies collatz(num) to a vector
	else{ return(map_collatz(map_collatz(vec), n-1)) } #Applies it recursively
} 
```

One important type of graph to understand maps are called **N-return graphs**. It is a graph that relates numbers in the map sequences separated by $N$ iterations. For instance, first return graphs are scatter-plots of $x_{n+1}$ and $x_n$. Second return would be $x_{n+2}$ and $x_n$, and so on. Check six return-graphs for the Collatz map with initial values between 1 and 100, where points in red have reached 1.

{% include image.html image="/blog/collatz_mapping.png" text="First, second, 4th, 10th, 50th and 100th return graphs of Collatz mapping, for x(n) from 1 to 100." %}

Notice that increasing the number of iterations increase the number of red points, i.e., points that reached 1. The **Collatz conjecture states that any initial condition leads to 1 eventually**. In other words, you can never get trapped in a mapping cycle. 

This statement has been extensively tested (for initial conditions up to billions!) and, yet, there is no formal proof of the affirmation. For the best of our knowledge, at any moment a computer can find a huge number that loops on itself and does not reach 1, breaking the conjecture. Although possible, mathematicians don't think it is likely and the conjecture is very probably true - we've just got to find a way to prove it. 

So... if we can't prove it, at least we can visualize it. 

#### Its irreducible version

An iteration has the property of 'self-application' and, in other words, after iterating number, you find yourself back to the same problem - but with a different number. Actually, if you carefully inspect the conditions of even/odd numbers and their algebra, you find it is not the case for Collatz map. 

Therefore, **Collatz map can actually be simplified** because the product of odd numbers is always odd, hence $3x_n$ is guaranteed to be an odd number - and summing $1$ to it will produce an even number for sure. Now, if in the original Collatz map we know always after an odd number comes an even number, then the system did not return to the previous state of 'possibilities' of evenness: we have an extra information about the next iteration and the problem has **a redundant operation** that could be eliminated automatically. 

We can encapsulate both operations when the number is odd, ending up with a **short-cut Collatz map**

$$
x_{n+1} = \frac{x_n}{2} \textrm{, if } x_n \textrm{ even} \\
x_{n+1} = \frac32x_n + \frac12 \textrm{, if } x_n \textrm{ odd}
$$

This is a very known computational optimization when calculating the number of iterations to reach $1$. But besides that, it highlights an fundamental fact: **when we update even numbers, we actually reduce them more (by factor of $2$) than we increase odd numbers (factor $1.5$)**. And hence the possibility of the conjecture. The mapping does not 'blow-up' for infinity in ever-increasing numbers.


## Visualization 


#### A graph of interactions

All code used in this hands-on is available to download at the end of this page. The main point is generating the graph, as follows:

```r
library(igraph)
TAM=8000 # Limit size of numbers
g = make_empty_graph(TAM, directed = T) # Makes the graph empty
V(g)$label = seq(1,TAM) # Generate labels for vertices
for (i in seq(2, TAM)) {
  j = map_collatz(i) # Applies the map
  if (j<TAM){g <- add.edges(g, c(as.character(i), as.character(j)) )} # Links numbers
}
```

After removing the unconnected vertices (not connected to 1 due to the finite size of the network), we can inspect the zoom below to observe that **there are 3 kinds of numbers** in our Collatz graph.  We realize that **numbers are generally connected to other two numbers** - its double and its half. I painted all these numbers in green. But eventually there are numbers that can be reached from both its double as its odd $\frac{x_{n-1}-1}{3}$ ancestor. These numbers end up being fundamental because **they cause the bifurcations** in this graph. I painted them in blue. Finally there are some large numbers with 1 neighbor, because its other neighbor is greater than the size of the network I drew. I painted them as gray in order to be ignored since they are the artificial effect of the finitude of the graph. The central number 1 in sparkling red.

{% include image.html image="/blog/collatz_zoom.png" text="Visualization of Collatz graph close to 1" %}

Looking at the whole graph in *layout_with_kk()* position, we see **beautiful effects of these blue bifurcations and green elongations**. The number one is sparkling on the *center rightish position*. Here is a reduced quality image, and clicking on it you can maximize to a high definition image and find all sequences you want to (or use it as your wallpaper, because that is totally what I'm going to do).

{% include image.html image="/blog/collatz_main_red.png" text="Visualization of Collatz graph (click to maximize)" url="/assets/img/blog/collatz_main.png" %}

Collatz conjecture assures that there are no cycles in this directed graph, and therefore it is more precisely a **tree**. In a **circular tree** with number $1$ at its center, the possible sequences can be contemplated as follows (again, click to maximize).

{% include image.html image="/blog/collatz_tree_red.png" text="Visualization of Collatz graph as circular tree (click to maximize)" url="/assets/img/blog/collatz_tree.png" %}

Can you also see Patrick from Bob Sponge running right or have I watched too much Nickelodeon? 

#### Higher iteration graphs

In the previous graphs, we connected $x_n$ and $x_{n+1}$ - two subsequent iterations. We can form **high order of iteration graphs by connecting successive iterations**, for instance a second iteration graph would connect $x_n$ with $x_{n+2}$. Compare the first, second and third iteration graphs. 

{% include image.html image="/blog/collatz_higher_order_graphs.png" text="Higher order of iteration graphs of Collatz map" %}

Because $1$ is an absorbing state - i.e. after you reach it, you stick to it - the graphs are condensing to its center more and more at each step, getting more and more directly connected to $1$.  

## Graph Properties

#### Modularity

What happens when searching for clusters (modules) employing a method of detection of clusters based on properties of distance? **We can  actually recover the structure of sub-graphs of bifurcations** by applying the *cluster_edge_betweenness* criterion, in which highly crossed edges in paths between any pairs of vertices are more likely to become an inter-module edge. Once again, you can click to maximize the result.

{% include image.html image="/blog/collatz_mods_red.png" text="Modularity of Collatz graph (click to maximize)" url="/assets/img/blog/collatz_mods.png" %}


#### Distance from 1

The final question (*so far!*) is how the distance from $1$ increases as initiate with larger and larger numbers. We calculate distances on R using the following function.

```r
V(g)$dists = distances(g, to=1)
```

When we plot the **distances as a function of the initial number**, in which we observe they grow quite slowly, in fact it seems slower than any power-law. Numbers of order of magnitude $10^4$ present distances of tens of interactions. Also, there doesn't seem to be different patterns regarding green (regular) or blue (bifurcations) vertices on the graph.

{% include image.html image="/blog/collatz_distance.png" text="Distance from 1 (in # of iterations) in the Collatz graph" %}

In fact, the quickest numbers to converge are the powers of $2$, because they follow repeated reductions. The distance of $2^n$ is $n$, showing therefore that the **lower-bound grows logarithmically**. 

## Code in R

**Download it and play freely**! I'm curious to see similar analysis on other maps. For instance if instead of summing $1$ you subtract it, then loops appear, making the graphs richer in structure. Soon I'll update this page with more examples.


<a href="/assets/docs/blog/collatz_code.R"><button class="mybutton">Download the R code</button></a>


In the mean time, if you discover some nice property by playing with the code in R, feel free to send it to me on my email *[vitorsudbrack@gmail.com](mailto:vitorsudbrack@gmail.com)*, or contact me on *[Twitter @vitorsudbrack](https://twitter.com/vitorsudbrack)* about your experience playing with this hands-on.


---

Thank you so much for reading this post! I hope you enjoyed reading it as much as I did writing. Remember to share with your friends and classmates and make sure to never take a map - as simple as it is - for granted.  

:brazil: This page does not have a version in Portuguese. If you are Brazilian and want to help me translating this post (or other contents of this webpage) to reach more easily Brazilian students, your help would be highly appreciated and acknowledged. Mail me.

