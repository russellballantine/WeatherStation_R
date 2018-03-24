#This script produces a classification algorithm which takes as input the output produced by the Kmeans clustering algorithm
#(AA_ClusterKmean.R ) created earlier(i.e the list.data dataframe). 
#
#THe classification uses K nearest neighbours, knn() which uses the class library. THe output is presented using
#a confusion matrix rendered via the gmodels class. 
#
#


library(class)
library(gmodels) #from install.packages(c("gmodels"))

#Separate data into training and test data

training_data <- head(list.data,-60)
test_data <- tail(list.data,60)


#Form the training and test labels to be used in the classification

training_factors <- c("region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region3","region3","region3","region3","region3",
                      "region3","region3","region3","region3","region3","region3","region3","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region3","region3",
                      "region3","region3","region3","region3","region3","region3","region3","region3","region3",
                      "region3","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2","region2","region2",
                      "region2","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region1","region1","region1","region3","region3",
                      "region3","region3","region3","region3","region3","region3","region3","region3","region3",
                      "region3","region1","region1","region1","region1","region1","region1","region1","region1",
                      "region1","region1","region1","region1","region2","region2","region2","region2","region2",
                      "region2","region2","region2","region2","region2","region2","region2")

test_factors <- c("region1","region1","region1","region1","region1","region1","region1","region1","region1","region1",
                 "region1","region1","region1","region1","region1","region1","region1","region1","region1","region1",
                 "region1","region1","region1","region1","region2","region2","region2","region2","region2","region2",
                 "region2","region2","region2","region2","region2","region2","region3","region3","region3","region3",
                 "region3","region3","region3","region3","region3","region3","region3","region3","region1","region1",
                 "region1","region1","region1","region1","region1","region1","region1","region1","region1","region1")



#Build the classification model using knn() which uses euclidean distance as the distance metric.

set.seed(1234)

latitude_pred <- knn(train = training_data, test = test_data, cl = training_factors, k=5)



#Evaluate the model on the test data

#1/ Form a data frame from 'test_factors'

real_weather_region <- data.frame(test_factors)

#2/ collate the predicted output with the test factors

merge <- data.frame(latitude_pred,real_weather_region)

#3/Specify the column names

names(merge) <- c("prediction", "observation")



#Display the results of the classification

merge
CrossTable(x = test_factors, y = latitude_pred, prop.chisq=FALSE)
