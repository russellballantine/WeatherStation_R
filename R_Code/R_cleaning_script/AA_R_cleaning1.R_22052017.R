#setwd("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned")
#list.files(pattern=".txt$")
#list.filenames<-list.files(pattern=".txt$")
#list.data<-list()

##The code above is to facilitate further automation in the future

#==================================================================================
#==================================================================================
#
#
#THe code below prepares a dataframe for each of the weather stations. THe cleaning 
#process started by the Python script cleanData_2 is completed here by removing all
#remaining anomalies, sizing all data frames to the same size and then rearranging
#to form a sensible matrix for data analysis.
#
#

setwd("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned")

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Aberporth_52.139.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")



myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Aberporth_52.139 <- na.omit(myData8)

#------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Armagh_54.352.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Armagh_54.352 <- na.omit(myData8)



#---------------------------------------------------

#NB We lose this station because there is too much missing data from various fields

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Ballypatrick_55.181.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Ballypatrick_55.181 <- na.omit(myData8)

#---------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Bradford_53.813.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Bradford_53.813 <- na.omit(myData8)

#----------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Braemar_57.006.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Braemar_57.006 <- na.omit(myData8)

#----------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Camborne_50.218.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Camborne_50.218 <- na.omit(myData8)

#-----------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Cambridge_52.245.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Cambridge_52.245 <- na.omit(myData8)

#-------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Cardiff_51.488.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Cardiff_51.488 <- na.omit(myData8)

#-------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Chivenor_51.089.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Chivenor_51.089 <- na.omit(myData8)

#--------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Cwmystwyth_52.358.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Cwmystwyth_52.358 <- na.omit(myData8)

#-----------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Dunstaffnage_56.451.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Dunstaffnage_56.451 <- na.omit(myData8)

#-----------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Durham_54.768.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Durham_54.768 <- na.omit(myData8)

#-----------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Eastbourne_50.762.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Eastbourne_50.762 <- na.omit(myData8)

#------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Eskdalemuir_55.311.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Eskdalemuir_55.311 <- na.omit(myData8)

#------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Heathrow_51.479.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Heathrow_51.479 <- na.omit(myData8)

#-------------------------------------------------------------


myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Hurn_50.779.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Hurn_50.779 <- na.omit(myData8)

#---------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Lerwick_60.139.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Lerwick_60.139 <- na.omit(myData8)

#--------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Leuchars_56.337.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Leuchars_56.337 <- na.omit(myData8)


#--------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Lowestoft_52.483.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Lowestoft_52.483 <- na.omit(myData8)

#---------------------------------------------------------------
myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Manston_51.346.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Manston_51.346 <- na.omit(myData8)


#----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Nairn_57.593.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Nairn_57.593 <- na.omit(myData8)

#-----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Newton_Rigg_54.670.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Newton_Rigg_54.670 <- na.omit(myData8)

#-----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Oxford_51.761.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Oxford_51.761 <- na.omit(myData8)

#------------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Paisley_55.846.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Paisley_55.846 <- na.omit(myData8)

#----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Ringway_53.356.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Ringway_53.356 <- na.omit(myData8)

#----------------------------------------------------------------


myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Ross_Wye_51.911.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Ross_Wye_51.911 <- na.omit(myData8)

#---------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Shawbury_52.794.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Shawbury_52.794 <- na.omit(myData8)

#----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Sheffield_53.381.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Sheffield_53.381 <- na.omit(myData8)

#----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Southampton_50.898.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Southampton_50.898 <- na.omit(myData8)

#----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Stornoway_58.214.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Stornoway_58.214 <- na.omit(myData8)

#----------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Sutton_Bonington_52.833.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Sutton_Bonington_52.833 <- na.omit(myData8)

#---------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Tiree_56.500.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Tiree_56.500 <- na.omit(myData8)

#--------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Valley_53.252.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Valley_53.252<- na.omit(myData8)

#-------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Waddington_53.175.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Waddington_53.175<- na.omit(myData8)

#------------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Whitby_54.481.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Whitby_54.481 <- na.omit(myData8)

#----------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Wick_58.454.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Wick_58.454 <- na.omit(myData8)

#----------------------------------------------------------

myData <- read.table("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned/Yeovilton_51.006.txt")
colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

myData2 <- myData[!myData$year == "---",]
myData3 <- myData2[!myData2$month == "---",]
myData4 <- myData3[!myData3$tmax == "---",]
myData5 <- myData4[!myData4$tmin == "---",]
myData6 <- myData5[!myData5$frost == "---",]
myData7 <- myData6[!myData6$rain == "---",]
myData8 <- myData7[!myData7$sun == "---",]

Yeovilton_51.006 <- na.omit(myData8)


#Clean the work space by removng interim myData files

rm(myData)
rm(myData2)
rm(myData3)
rm(myData4)
rm(myData5)
rm(myData6)
rm(myData7)
rm(myData8)


#THen find the smallest dataframe so we can resize all data frames to the same size.


sprintf("Aberporth"); dim(Aberporth_52.139);sprintf("    ")
sprintf("Armagh"); dim(Armagh_54.352);sprintf("    ")
sprintf("Ballypatrick_55.181"); dim(Ballypatrick_55.181);sprintf("    ")
sprintf("Bradford_53.813"); dim(Bradford_53.813);sprintf("    ")

sprintf("Braemar_57.006"); dim(Braemar_57.006);sprintf("    ")
sprintf("Camborne_50.218"); dim(Camborne_50.218);sprintf("    ")
sprintf("Cardiff_51.488"); dim(Cardiff_51.488);sprintf("    ")
sprintf("Cambridge_52.245.txt"); dim(Cambridge_52.245);sprintf("    ")

sprintf("Chivenor_51.089"); dim(Chivenor_51.089);sprintf("    ")
sprintf("Cwmystwyth_52.358"); dim(Cwmystwyth_52.358);sprintf("    ")
sprintf("Dunstaffnage_56.451"); dim(Dunstaffnage_56.451);sprintf("    ")
sprintf("Durham_54.768"); dim(Durham_54.768);sprintf("    ")

sprintf("Eastbourne_50.762"); dim(Eastbourne_50.762);sprintf("    ")
sprintf("Eskdalemuir_55.311"); dim(Eskdalemuir_55.311);sprintf("    ")
sprintf("Heathrow_51.479"); dim(Heathrow_51.479);sprintf("    ")
sprintf("Hurn_50.779"); dim(Hurn_50.779);sprintf("    ")

sprintf("Lerwick_60.139"); dim(Lerwick_60.139);sprintf("    ")
sprintf("Leuchars_56.337"); dim(Leuchars_56.337);sprintf("    ")
sprintf("Lowestoft_52.483"); dim(Lowestoft_52.483);sprintf("    ")
sprintf("Manston_51.346"); dim(Manston_51.346);sprintf("    ")

sprintf("Nairn_57.593"); dim(Nairn_57.593);sprintf("    ")
sprintf("Newton_Rigg_54.670"); dim(Newton_Rigg_54.670);sprintf("    ")
sprintf("Oxford_51.761"); dim(Oxford_51.761);sprintf("    ")
sprintf("Paisley_55.846"); dim(Paisley_55.846);sprintf("    ")

sprintf("Ringway_53.356"); dim(Ringway_53.356);sprintf("    ")
sprintf("Ross_Wye_51.911"); dim(Ross_Wye_51.911);sprintf("    ")
sprintf("Shawbury_52.794"); dim(Shawbury_52.794);sprintf("    ")
sprintf("Sheffield_53.381"); dim(Sheffield_53.381);sprintf("    ")

sprintf("Southampton_50.898"); dim(Southampton_50.898);sprintf("    ")
sprintf("Stornoway_58.214"); dim(Stornoway_58.214);sprintf("    ")
sprintf("Sutton_Bonington_52.833"); dim(Sutton_Bonington_52.833);sprintf("    ")
sprintf("Tiree_56.500"); dim(Tiree_56.500);sprintf("    ")

sprintf("Valley_53.252"); dim(Valley_53.252);sprintf("    ")
sprintf("Waddington_53.175"); dim(Waddington_53.175);sprintf("    ")
sprintf("Whitby_54.481"); dim(Whitby_54.481);sprintf("    ")
sprintf("Wick_58.454"); dim(Wick_58.454);sprintf("    ")
sprintf("Yeovilton_51.006"); dim(Yeovilton_51.006);sprintf("    ")





