#
#This script joins the weather and happiness datasets by attaching a fourth column indicating a measure of happiness
#to the list.data dataframe.THis script uses as its input the list.data dataframe output from the clustering algorithm
#and the manually cleaned excel spreadsheets which have been exported as '.txt' files.
#
#This script also performs a multivariate data analysis and provides various outputs to facilate statistical conclusions
#========================================================================================================================



#++++++++++++++++++++++++++++++++++++++++++++++++++++
#SECTION 1 Combining weather and happiness dataframes
#++++++++++++++++++++++++++++++++++++++++++++++++++++

#install.packages("dplyr")
library(dplyr)

#Make dataframes from the cleaned excel spreadsheets which have been exported as .txt files.

setwd("C:/Users/ballanr/.spyder-py3/Dataset2")

df1 <- read.table("20112012_cleaned.txt")
df2 <- read.table("20122013_cleaned.txt")
df3 <- read.table("20132014_cleaned.txt")
df4 <- read.table("20142015_cleaned.txt")

#Average these 4 dataframes to produce one vector.Which gives the average happiness value for each region
#of the country
#
all_df <- (df1 + df2 + df3) / 3
#all_df$mean.happy <- average

#Add happy column to list.data dataframe

list.data$happy <- 0

#Populate the happy column with appropriate region in all_df$mean.happy


for (i in 1:444){
  if (grepl("^Aberporth*",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[10]]
  } else if (grepl("^Armagh",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[12]]
  } else if (grepl("^Ballpatrick",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[12]]
  } else if (grepl("^Bradford",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[3]]
  } else if (grepl("^Braemar",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Camborne",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[9]]
  } else if (grepl("^Cambridge",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[6]]
  } else if (grepl("^Cardiff",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[10]]
  } else if (grepl("^Chivenor",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[9]]
  } else if (grepl("^Cwmystwyth",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[10]]
  } else if (grepl("^Dunstaffnage",row.names(list.data)[i]) ==TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Durham",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[1]]
  } else if (grepl("^Eastbourne",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[8]]
  } else if (grepl("^Eskdalemuir",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Heathrow",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[7]]
  } else if (grepl("^Hurn",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[8]]
  } else if (grepl("^Lerwick",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Leuchars",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Lowestoft",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[6]]
  } else if (grepl("^Manston",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[8]]
  } else if (grepl("^Nairn",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Newton_Rigg",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[2]]
  } else if (grepl("^Oxford",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[8]]
  } else if (grepl("^Paisley",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Ringway",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[2]]
  } else if (grepl("^Ross",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[5]]
  } else if (grepl("^Shawbury",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[5]]
  } else if (grepl("^Sheffield",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[4]]
  } else if (grepl("^Southampton",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[8]]
  } else if (grepl("^Stornoway",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Sutton_Bonington",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[4]]
  } else if (grepl("^Tiree",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else if (grepl("^Valley",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[10]]
  } else if (grepl("^Waddington",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[4]]
  } else if (grepl("^Whitby",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[3]]
  } else if (grepl("^Wick",row.names(list.data)[i]) == TRUE){
    list.data$happy[[i]] = all_df$mean.happy[[11]]
  } else {(grepl("^Yeovilton",row.names(list.data)[i]) == TRUE)
    list.data$happy[[i]] = all_df$mean.happy[[9]]
  }
}

#To facilitate weather against happiness analysis and because happiness data is aggregated on a yearly basis
#create a new list with the 12 monthly weather stations aggregated also to a yearly average.Also rename the rows
#to reflect the station and its latitude. Print out the final dataframe and a summary of standard plots.

weather_happiness <- aggregate(list.data,list(rep(1:(nrow(list.data)%/%12),each=12,len=nrow(list.data))),mean)

station_names <- c("Aberporth_52.139","Armagh_54.352","Ballypatrick_55.181","Bradford_53.813","Braemar_57.006",
                   "Camborne_50.218","Cambridge_52.245","Cardiff_51.488","Chivenor_51.089","Cwmystwyth_52.358",
                   "Dunstaffnage_56.451","Durham_54.768","Eastbourne_50.762","Eskdalemuir_55.311","Heathrow_51.479",
                   "Hurn_50.779","Lerwick_60.139","Leuchars_56.337","Lowestoft_52.483","Manston_51.346","Nairn_57.593",
                   "Newton_Rigg_54.670","Oxford_51.761","Paisley_55.846","Ringway_53.356","Ross_Wye_51.911","Shawbury_52.794",
                   "Sheffield_53.381","Southampton_50.898","Stornoway_58.214","Sutton_Bonington_52.833","Tiree_56.500",
                   "Valley_53.252","Waddington_53.175","Whitby_54.481","Wick_58.454","Yeovilton_51.006")

row.names(weather_happiness) <- station_names
weather_happiness



#++++++++++++++++++++++++++++++++
#SECTION 2 A Statistical Analysis
#++++++++++++++++++++++++++++++++

#Use this section by commenting out/in the particular part of the analysis you are interested in performing. 

#EXPLORATORY ANALYSIS

plot(weather_happiness)

#Pairs plots to check correlations
pairs(weather_happiness,panel=panel.smooth)

#Continue with application of non-parametric smoothers in a generalized additive model to look for suggestions
#of appropriate models and to look at the behaviour of confidence intervals.

library(mgcv)
attach(weather_happiness)
model <- gam(happy~s(tmax)+s(rain)+s(sun))
plot(model)

#Fit a tree model to see whether any complex interactions are evident between the explanatory variables.

install.packages("tree")
library(tree)
model <- tree(happy~.,data=weather_happiness)
plot(model)
plot(text)

#BEGIN LINEAR MODELLING

# Try first a quadratic model which includes interactions between all three explanatory variables and higher order
#quadratic terms to look for any curvature in the relationship. Depending on the results of the output other linear
#models can be tried. Uncomment the particular permutation of terms that you want to investigate.

model1 <- lm(happy~tmax*rain*sun+I(tmax^2)+I(rain^2)+I(sun^2))
summary(model1)
plot(model1)

#Remove three way interaction tmax:rain:sun
model2 <- update(model1,~.-tmax:rain:sun)
summary(model2)
plot(model2)

#Remove least sig 2way interaction
model3 <- update(model2,~.-tmax:rain)
summary(model3)

#Remove least sig 2way term
model4 <- update(model3,~.-rain:sun)
summary(model4)

#Remove remaining 2way term
model5 <- update(model4,~.-tmax:sun)
summary(model5)

#leave out least significant quadratic term - I(tmax^2)
model6 <- update(model5,~.-I(tmax^2))
summary(model6)

#leave out least significant quadratic term - I(tmax^2)
model7 <- update(model6,~.-I(rain^2))
summary(model7)

#leave out final quadratic term - I(tmax^2)
model8 <- update(model7,~.-I(sun^2))
summary(model8)

#==============================================================
