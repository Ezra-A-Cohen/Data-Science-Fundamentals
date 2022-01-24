#task1
help("state.x77")
#task2
dfStates77 <- data.frame(state.x77)
#task3
summary(dfStates77)
#task4
totalPop77 <- sum(dfStates77[1:50,1])
#task5
library(readr)
library(tidyverse)
urlToRead<- "https://ist387.s3.us-east-2.amazonaws.com/lab/states.csv"
dfStates17<-read.csv(url(urlToRead))
#task6
summary(dfStates17)
#task7
totalPop17 <- sum(dfStates17[1:50,10])
#task8
ratio <- totalPop77/totalPop17
#task9
popDensity <- function(pop,area){
popDens <- pop/area 
return(popDens)  
}
#task10
dfStates77 <- data.frame(state.x77)
#task11
tempPop <- dfStates77[1:50,1]
#task12
tempArea <- dfStates77[1:50,8]
#task13
popDensity(tempPop,tempArea)
#task14
dfStates77<-cbind(dfStates77,popDensity(tempPop,tempArea))
cname<-colnames(dfStates77)
cname[9]<-"popDensity"
#task15
which.max(dfStates77[1:50,9])
which.min(dfStates77[1:50,9])


#reason for indexing into dfstates77 is we initially didn't use data.frame(state.x77) so $ didn't work



