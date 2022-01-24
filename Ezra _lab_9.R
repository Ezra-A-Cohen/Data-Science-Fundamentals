library(arules)
#library(arulesVis) need to tag this for it to knit
data (Groceries) # Load data into memory 
myGroc <- Groceries # Make a copy for safety 
summary(myGroc) # What is the structure? 
#task1
#It is a sparse Matrix full of different items that people can buy at a grocery store, it has frequently bought items and how many times they pop up in the data set And it also gives the information about the minimum maximum first and third quartiles and the median for how many items each person bought 
#task2
itemFrequency<-itemFrequency(myGroc)
str(itemFrequency)
#2 rows, first is a list of numbers all between 0 and 1 and the second is the item that each number corresponds to
soreditems<-sort(itemFrequency)
head(soreditems)
tail(soreditems)
#The most frequently purchased item is whole milk
#task3
itemFrequencyPlot(myGroc, topN=20)
#The plot confirms that whole milk is the most frequently purchased item, and the y-axis represents the percent of people who bought the item, with that number being the number from zero to one that was the first row provided when we made mygroc
#task4
ct <- crossTable(myGroc, sort=TRUE)
ct[1:2, 1:3]
#The first diagonal going from top left to bottom middle chose the total number of people who bought each item since whole milk corresponds to whole milk and other vegetables corresponds to other vegetables, the other diagonal from bottom left to top middle shows the amount of people who bought both items, the right most column isn't on a diagonal and it just shows how many people who bought whole milk or other vegetables also bought bread/rolls, if we included a third row with buns/rolls then it would be on a diagonal
#task5
rules1 <- apriori(myGroc,  
                  parameter=list(supp=0.0008, conf=0.55),  
                  control=list(verbose=F), 
                  appearance=list(default="lhs",rhs=("bottled beer")))
#task6
inspect(rules1)
#My interpretation of these rules is that people often buy alcohol for a party or event and the reason it made these 4 rules it's because of other drinks you might want to get for an event and napkins which is a common item you would I want if you are hosting an event
#task7
rules2 <- apriori(myGroc,  
                  parameter=list(supp=0.0005, conf=0.55),  
                  control=list(verbose=F), 
                  appearance=list(default="lhs",rhs=("bottled beer")))
inspect(rules2)
#I would say that mostly it still supports the idea that there is an event that they are buying this for, most of the rules seem like they're also getting ingredients to make dishes for an event, although a couple Of the new rules seem to indicate that some people are buying it just as an ordinary drink as they're buying it with stuff like sunflower seeds or whole milk something that you wouldn't really see at an event 
#task8
cars<-mtcars
goodorbad<-(7)
for(i in 1:nrow(cars)){
  if (cars$mpg[i]>=25) goodorbad<-c(goodorbad,1)
  else goodorbad<-c(goodorbad,0)
}
cars$goodorbad<-goodorbad[-match(7,goodorbad)]
cars$mpg<-as.factor(cars$mpg)
cars$cyl<-as.factor(cars$cyl)
cars$disp<-as.factor(cars$disp)
cars$hp<-as.factor(cars$hp)
cars$drat<-as.factor(cars$drat)
cars$wt<-as.factor(cars$wt)
cars$qsec<-as.factor(cars$qsec)
cars$vs<-as.factor(cars$vs)
cars$am<-as.factor(cars$am)
cars$gear<-as.factor(cars$gear)
cars$carb<-as.factor(cars$carb)
cars$goodorbad<-as.factor(cars$goodorbad)
cars_t<-as(cars,"transactions")
summary(cars_t)
rules <- apriori(cars_t, parameter = list(supp=0.4, conf=0.55),control=list(verbose=F))
subrules <- subset(rules, subset = rhs %in% c("goodorbad=0"))
inspect(subrules)
#https://stackoverflow.com/questions/18131792/creating-specific-rules-with-arules-in-r 
#I was having a lot of trouble with this part, so I used to Google and this was the link that eventually gave me the Information I needed to get this part done