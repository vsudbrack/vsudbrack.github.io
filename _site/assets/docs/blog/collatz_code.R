# Library igraph
library(igraph)

## Short-cut Collatz function
red_collatz = function(num) {if ((num%%2) == 0) {return(num/2)} else {return((3*num+1)/2)} }
 
## Collatz function
collatz = function(num) {if ((num%%2) == 0) {return(num/2)} else {if(num==1) {return(1)} else {return((3*num+1))}}}

## Collatz map
map_collatz = function(vec, n=1){if (n==1){return(sapply(vec, collatz))}else{return(map_collatz(map_collatz(vec), n-1))}} 


## Return graphs
png('~/Pictures/mapping.png', width=600, height=400, pointsize = 18, type = "cairo-png")
par(mfrow = c(2,3), mar = c(4.1,4.1,0.5,0.5))
XN=105; XZ = 1
for (n in c(1,2,4,10,50,100)) {
  m = map_collpaz(seq(XZ, XN), n)
  plot(seq(XZ, XN), m, type='p', pch=16, col=c('blue', 'red')[1*(m==1)+1], xlab="x(n)", ylab=paste0("x(n+",as.character(n),")"))
}
dev.off()

## Generate Collatz graphs
TAM=8000
g = make_empty_graph(TAM, directed = T)
V(g)$label = seq(1,TAM)

for (i in seq(2, TAM)) {
  j = map_collatz(i, n=1) #Change n>1 for higher order iterations
  if (j < TAM){g <- add.edges(g, c(as.character(i), as.character(j) ) )}
}

# Remove disconnected graphs
V(g)$dists = distances(g, to=1)
g = delete.vertices(g, which(V(g)$dists == Inf) )

# Color, size and shape of nodes
V(g)$degree = degree(g)
V(g)$size = V(g)$degree/2.5
V(g)$shape = 'circle'
V(g)$color = rgb(0,1,0, alpha=0.2)
V(g)$size[1] = 2/2.5
V(g)$shape[1] = 'square'
V(g)$color[ which(V(g)$degree == 3) ] = rgb(0,0,1, alpha=0.4)       # Bifurcations
V(g)$color[ which(V(g)$degree == 1) ] = rgb(0.8,0.8,0.8, alpha=0.2) # Leaves
V(g)$color[1] = rgb(1,0,0) #Vertex 1

# Plotting with layout kk
png('~/Pictures/collatz_main.png', width=8000, height=8000)
plot(g, edge.arrow.size=0.4, vertex.label=V(g)$label, vertex.size = V(g)$size, edge.size=0.7, vertex.shape = V(g)$shape, layout=layout_with_kk(g), edge.color=rgb(0,0,0,alpha = 0.5), vertex.frame.color = NA )
dev.off()

# Plotting with layout circular tree
png('~/Pictures/collatz_tree.png', width=8000, height=8000)
plot(g, edge.arrow.size=0.4, vertex.label=V(g)$label, vertex.size = V(g)$size, edge.size=0.7, vertex.shape = V(g)$shape, layout=layout_as_tree(g, root = 1, circular=T, mode = "in" ), edge.color=rgb(0,0,0,alpha = 0.5), vertex.frame.color = NA)
dev.off()

# Plotting with layout sphere - beautiful but huge in size
#png('~/Pictures/collatz_sphere.png', width=8000, height=8000)
#plot(g, edge.arrow.size=0.4, vertex.label=V(g)$label, vertex.size = V(g)$size, edge.size=0.7, vertex.shape = V(g)$shape, layout=layout_on_sphere(g), edge.color=rgb(0,0,0,alpha = 0.5), vertex.frame.color = NA)
#dev.off()

# Plotting modularity analysis
png('~/Pictures/collatz_mods.png', width=4000, height=4000)
ceb = cluster_edge_betweenness(g)
plot(ceb, g, edge.arrow.size=0.4, vertex.label=V(g)$label, vertex.size = V(g)$size, edge.size=0.7, vertex.shape = V(g)$shape, layout=layout_with_kk(g), vertex.frame.color = NA)
dev.off()

# Plotting distance as a function of initial number
png('~/Pictures/distance_from_1.png', width=660, height=400, pointsize = 18, type = "cairo-png")
par(mfrow=c(1,2), mar = c(5.5,4.5,1.0,0.5))
plot(V(g)$label, V(g)$dists, type='p', pch=16, col=V(g)$color, xlab="Number", ylab="Its distance from 1", sub="in Linear scales")
plot(V(g)$label, V(g)$dists, type='p', pch=16, log="xy", col=V(g)$color, xlab="Number", ylab="Its distance from 1", sub="in Log scales")
dev.off()

# This function plots the higher orders seperatly...
#plot(g, edge.arrow.size=0.04, vertex.label=NA, vertex.size = V(g)$size, edge.size=0.07, vertex.shape = V(g)$shape, layout=layout_with_kk(g), edge.color=rgb(0,0,0,alpha = 0.5), vertex.frame.color = NA )

