#This program uses Kmeans to look for clusters in the cleaned data.
#It takes as its input the list.data list produced by the AA_R_cleaning2.R script


list.data <- lapply(list.data, function(x) {x["month"] <- NULL; x})
list.data <- lapply(list.data, function(x) {x["tmin"] <- NULL; x})

#Convert to data frame and do the clustering

cluster_Kmeans <- do.call(rbind, lapply(list.data, data.frame, stringsAsFactors=FALSE)) # ---- convert to data frame
final_df <- as.data.frame(t(cluster_Kmeans)) #------------------------------------------------ transpose the rows and columns
fit <- kmeans(cluster_Kmeans,3) #------------------------------------------------------------- do the clustering

#Plot the cluster

#install.packages("cluster")

library("cluster")

list.data <- do.call(rbind, lapply(list.data, data.frame, stringsAsFactors=FALSE)) # list needs to be data frame
clusplot(list.data,fit$cluster,main='2D representation of the Cluster Solution',color=TRUE,shade=TRUE,labels=1,lines=0)




