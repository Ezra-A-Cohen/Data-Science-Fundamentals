urlToRead<- "https://ist387.s3.us-east-2.amazonaws.com/lab/states.csv"
dfStates17<-read.csv(url(urlToRead))
# I put this here from the lab so it would knit without error
barplot(dfStates17$population,names.arg =dfStates17$state, las = 2)
library(ggplot2)
g<-ggplot(dfStates17,aes(x=population))
g<-g + geom_histogram(binwidth = 5000000, color = "yellow", fill = "red")
g<-g + ggtitle("states population histogram")
g
ggplot(dfStates17,aes(x=factor(0),population)) + geom_boxplot()
g2<-ggplot(dfStates17,aes(x=reorder(state.name,population),y=population,group=1)) 
g2<-g2 + geom_line()
g2<-g2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g2
g3<-ggplot(dfStates17,aes(x=reorder(state.name,population),y=population,group=1)) 
g3<-g3 + geom_col(color="black",fill="white")
g3<-g3 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g3