library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering visualization
library(dendextend) 
df <- mtcars
df <- na.omit(df)
df <- scale(df)
head(df)
# compute divisive hierarchical clustering
hc4 <- diana(df)

# Divise coefficient; amount of clustering structure found
hc4$dc
## [1] 0.8514345

# plot dendrogram
pltree(hc4, cex = 0.6, hang = -1, main = "Dendrogram of diana")

"""Cluster is initialized with all the datapoints, and splits into different smaller cluster based on metrics. From observation, the dataset is optimally divided
into clusters with not so different number of points at each step. Reverse of agglomerative. The height of dendogram in
clustering is only 8, suggesting the optimal clusters were formed with minimal steps. Whereas for our previous dataset, it took