# ref https://www.displayr.com/sankey-diagrams-r/
library(networkD3)
nodes = data.frame("name" = 
 c("Energies-Renouvelables", # Node 0
 "HydroElectricité", # Node 1
 "SolaireEolienBiomassGeothermique", # Node 2
 "ReductionDeCarbone"))# Node 3
links = as.data.frame(matrix(c(
 0, 1, 20, # Each row represents a link. The first number
 0, 2, 10, # represents the node being conntected from. 
 1, 3, 90, # the second number represents the node connected to.
 2, 3, 10),# The third number is the value of the node
 byrow = TRUE, ncol = 3))
names(links) = c("source", "target", "value")
sankeyNetwork(Links = links, Nodes = nodes,
 Source = "source", Target = "target",
 Value = "value", NodeID = "name",
 fontSize= 30, nodeWidth = 30)