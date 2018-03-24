#This script further automates the functionality of AA_R_cleaning1.R
#THe script iterates through the Python cleaned files removing remaining
#anomolies, spurious text and the air frost column, year column.
#THe script produces a collated list of all the weather station data where each station
#is referenced by 'list.data$Aberporth_52.139.txt' or 'list.data[i].
#
#The data for each weather station is then converted to type numeric columns before
#aggregating over the monthly values across all the yearly data. THis makes use of the 
#assumption that the underlying weather distribution's mean and variance is the same 
#from year to year. This provides concise 12 x 5 data frames for each weather station
#based on monthly means. 
#
#Separate lists for each individual weather station are also provided.
#Naming convention is 'stationID_latitude'.  
#



setwd("C:/Users/ballanr/.spyder-py3/Dataset1_Cleaned")
list.files(pattern=".txt$")
list.filenames<-list.files(pattern=".txt$")
list.data<-list()


for (i in 1:length(list.filenames))
  {
    #list.data[[i]]<-read.table(list.filenames[i])
    myData <- read.table(list.filenames[i])
    colnames(myData) <- c("year","month","tmax","tmin","frost","rain","sun")

    myData$frost <- NULL
    myData$year <- NULL
    
    #myData2 <- myData[!myData$year == "---",]
    myData3 <- myData[!myData$month == "---",]
    myData4 <- myData3[!myData3$tmax == "---",]
    myData5 <- myData4[!myData4$tmin == "---",]
    myData6 <- myData5[!myData5$rain == "---",]
    myData7 <- myData6[!myData6$sun == "---",]
    
   
    
    list.data[[i]] <- na.omit(myData7)
    
    #ensure the columns are set to type numeric
    
    list.data[[i]]$sun <- as.numeric(as.character(list.data[[i]]$sun))
    list.data[[i]]$rain <- as.numeric(as.character(list.data[[i]]$rain))
    list.data[[i]]$tmin <- as.numeric(as.character(list.data[[i]]$tmin))
    list.data[[i]]$tmax <- as.numeric(as.character(list.data[[i]]$tmax))
    
    #Aggregate on the mean values of monthly data across the years
    
    list.data[[i]] <- aggregate(x = list(tmax=list.data[[i]]$tmax,tmin=list.data[[i]]$tmin,rain=list.data[[i]]$rain,sun=list.data[[i]]$sun),
                                by = list(month=list.data[[i]]$month),FUN=mean,na.rm=TRUE)
    
}

#Clean the work space by removng interim myData files

rm(myData)
rm(myData2)
rm(myData3)
rm(myData4)
rm(myData5)
rm(myData6)
rm(myData7)


#Add names of data lists to facilitate indexing

names(list.data)<-list.filenames


#Each weather station data can be accessed by 'list.data$Aberporth_52.139.txt' etc
#However the code below produces individual data lists for each weather station with
#a naming convention of 'stationID_latitude'

Aberporth_52.139 <- list.data$Aberporth_52.139.txt
Armagh_54.352 <- list.data$Aberporth_52.139.txt
Ballypatrick_55.181 <- list.data$Ballypatrick_55.181.txt
Bradford_53.813 <- list.data$Bradford_53.813.txt
Braemar_57.006 <- list.data$Braemar_57.006.txt
Camborne_50.218 <- list.data$Camborne_50.218.txt
Cambridge_52.245 <- list.data$Cambridge_52.245.txt
Cardiff_51.488 <- list.data$Cardiff_51.488.txt
Chivenor_51.089 <- list.data$Chivenor_51.089.txt
Cwmystwyth_52.358 <- list.data$Cwmystwyth_52.358.txt
Dunstaffnage_56.451 <- list.data$Dunstaffnage_56.451.txt
Durham_54.768 <- list.data$Durham_54.768.txt
Eastbourne_50.762 <- list.data$Eastbourne_50.762.txt
Eskdalemuir_55.311 <- list.data$Eskdalemuir_55.311.txt
Heathrow_51.479 <- list.data$Heathrow_51.479.txt
Hurn_50.779 <- list.data$Hurn_50.779.txt
Lerwick_60.139 <- list.data$Lerwick_60.139.txt
Leuchars_56.337 <- list.data$Leuchars_56.337.txt
Lowestoft_52.483 <- list.data$Lowestoft_52.483.txt
Manston_51.346 <- list.data$Manston_51.346.txt
Nairn_57.593 <- list.data$Nairn_57.593.txt
Newton_Rigg_54.670 <- list.data$Newton_Rigg_54.670.txt
Oxford_51.761 <- list.data$Oxford_51.761.txt
Paisley_55.846 <- list.data$Paisley_55.846.txt
Ringway_53.356 <- list.data$Ringway_53.356.txt
Ross_Wye_51.911 <- list.data$Ross_Wye_51.911.txt
Shawbury_52.794 <- list.data$Shawbury_52.794.txt
Sheffield_53.381 <- list.data$Sheffield_53.381.txt
Southampton_50.898 <- list.data$Southampton_50.898.txt
Stornoway_58.214 <- list.data$Stornoway_58.214.txt
Sutton_Bonington_52.833 <- list.data$Sutton_Bonington_52.833.txt
Tiree_56.500 <- list.data$Tiree_56.500.txt
Valley_53.252 <- list.data$Valley_53.252.txt
Waddington_53.175 <- list.data$Waddington_53.175.txt
Whitby_54.481 <- list.data$Whitby_54.481.txt
Wick_58.454 <- list.data$Wick_58.454.txt
Yeovilton_51.006 <- list.data$Yeovilton_51.006.txt
