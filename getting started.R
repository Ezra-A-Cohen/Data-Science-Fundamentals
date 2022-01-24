1 + 1
familyages <- c(43,42,12,8,5)
sum(familyages)
mean(familyages)
range(familyages)
notarealfunction(familyages)
therange <- range(familyages)
therange
length(theclrange)
newfamilyages <- c(familyages, 0)
newfamilyages
myFamilyNames <- c("Dad","Mom","Sis","Bro","Dog")
myFamilyNames
myFamilyGenders <- c("Male","Female","Female","Male","Female")
myFamilyGenders
myFamilyWeights <- c(188,136,83,61,44)
myFamilyWeights
myfamily <- data.frame(myFamilyNames,familyages,myFamilyGenders,myFamilyWeights)
myfamily
str(myfamily)
summary(myfamily)
head(myfamily, 2)
tail(myfamily, 2)
myfamily$familyages<-c(myfamily$familyages, 11)
myfamily
myFamilygreetings <- c("hi","how are you","hello","hows it going","woof")
myFamilygreetings
myfamily <- data.frame(myfamily, myFamilygreetings)
summary(myfamily)
myfamily 
myfamily[1,1]
myfamily[1,]
myfamily[,1]
myfamily[-1,]
myfamily[,-1]

randomnumbers <- c(7,7,2,5,2,42,1,3,7,1,5,2,4,42,7,6,42,8,42,7,42)
MyMode <- function(myVector){
uniqueValues <- unique(myVector)
uniqueCounts <- tabulate(match(myVector,uniqueValues))
return(uniqueValues[which.max(uniqueCounts)])
}
randomnumbers
MyMode(randomnumbers)
tabulate(randomnumbers)
library(modeest)
mfv(randomnumbers)
mfv

var(myfamily$familyages)
sd(myfamily$familyages)
hist(myfamily$familyages, breaks = 40)
hist(rnorm(51, 6043834, 6823984), main="Example of Normal Distribution",xlab="Distribution with a Mean of 6,043,834 and standard deviation of 6,823,984")


mean(replicate(4000, mean(sample(dfStates17$population, size=8,replace = TRUE)), simplify=TRUE))
mean(dfStates17$population)
hist(replicate(4000, mean(sample(dfStates17$population, size=8,replace = TRUE)), simplify=TRUE))
mean(replicate(100, mean(sample(dfStates17$population, size=51,replace = TRUE)), simplify=TRUE))
samplemeans <- replicate(4000, mean(sample(dfStates17$population, size=8,replace = TRUE)), simplify=TRUE)
length(samplemeans)
mean(samplemeans)
summary(samplemeans)
quantile(samplemeans, probs=c(0.25,0.50,0.75))
quantile(samplemeans, probs=c(0.025,0.975))
MysterySample <- c(3706690, 159358, 106405,55519, 53883)
mean(MysterySample)
quantile(samplemeans, probs=c(0.0025,0.9975))
#this result makes it really unlikely that MysterySample is a sample of state populations
sd(samplemeans)

barplot(dfStates17$population,names.arg =dfStates17$state, las = 2)
library(ggplot2)
g<-ggplot(dfStates17,aes(x=population))
g<-g + geom_histogram(binwidth = 5000000, color = "black", fill = "white")
g<-g + ggtitle("states population histogram")
g
ggplot(dfStates17,aes(x=factor(0),population)) + geom_boxplot()
g2<-ggplot(dfStates17,aes(x=reorder(state.name,population),y=population,group=1)) 
g2<-g2 + geom_line()
g2<-g2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g2
g3<-ggplot(dfStates17,aes(x=reorder(state.name,population),y=population,group=1)) 
g3<-g3 + geom_col()
g3<-g3 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g3

library(ggmap)
us<-map_data("state")
dummydf<-data.frame(state.name, stringsAsFactors = FALSE)
dummydf$state<- tolower(dummydf$state)
map.simple<-ggplot(dummydf, aes(map_id=state))
map.simple<-map.simple+geom_map(map=us,fill="white",color="black")
map.simple<-map.simple+expand_limits(x=us$long,y=us$lat)
map.simple<-map.simple+coord_map()+ggtitle("Basic map of continental USA")
map.simple
dfStates17$statename<-tolower(dfStates17$state)
map.popcolor<-ggplot(dfStates17, aes(map_id=statename))
map.popcolor<-map.popcolor+geom_map(map=us,aes(fill=population))
map.popcolor<-map.popcolor+expand_limits(x=us$long,y=us$lat)
map.popcolor<-map.popcolor+coord_map()+ggtitle("state population")
map.popcolor
map.simple+geom_point(aes(x=-100,y=30))
library(tmaptools)
latlon<-geocode_OSM("syracuse ,ny")
latlon$lon<-as.numeric(gsub("x","",latlon$coords[1]))
latlon$lat<-as.numeric(gsub("y","",latlon$coords[2]))
map.popcolor+geom_point(aes(x=latlon$lon,y=latlat$lon),color="darkred", size=3)
latlon2<-geocode_OSM("colorado")
latlon2$lon<-as.numeric(gsub("x","",latlon2$coords[1]))
latlon2$lat<-as.numeric(gsub("y","",latlon2$coords[2]))
latlon3<-geocode_OSM("denver, colorado")
latlon3$lon<-as.numeric(gsub("x","",latlon3$coords[1]))
latlon3$lat<-as.numeric(gsub("y","",latlon3$coords[2]))
lat<-c(latlon$lat,latlon2$lat,latlon3$lat)
lon<-c(latlon$lon,latlon2$lon,latlon3$lon)
dflatlon<-data.frame(lat,lon)
map.popcolor+geom_point(data=dflatlon,aes(x=lon,y=lat),color="darkred", size=3)
dflatlon$statename<-"?"
map.popcolor+geom_point(data=dflatlon,aes(x=lon,y=lat),alpha=.5,color="darkred", size=3)


library(kernlab)


