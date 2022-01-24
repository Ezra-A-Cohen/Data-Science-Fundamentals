# Task 1 

library(readr) 
setwd("C:/Users/Student/Documents/New folder (2)")
airData <- read_csv("smallSurveyWithComments.csv")
View(airData) 

#The purpose of this first step is to allow access the data even though it is not a dataset built into r 
# Task 2 

hist(airData$Age, main="Age Distribution", xlab="Age (Years)") 
#This graph shows normal distribution with a center between 40 and 50 with the highest frequency being 50
hist(airData$Price.Sensitivity, main="Price Sensitivity", xlab="Price Sensitivity", breaks=10) 
#This histogram shows kind of normal distribution, there are only four elements with the two outer ones being lower than the center 2 but there are basically no zeros or threes so it's not really large enough to have a well-defined shape, the least common are 0 and 3 the most common is one and then in between them is number 2
hist(airData$Year.of.First.Flight, main="Year of First Flight", xlab="Year")  
#The shape of this histogram is quite flat, most people had their first flight in 2005 and after that it goes down a bit but from that point onward there are only minor fluctuations going a bit up or down
hist(airData$Flights.Per.Year, main="Number of Flights Per Year", xlab="Number of Flights")  
#This histogram shows an inverse J shape showing that it is more likely to have lower amounts of flights in a year rather than higher amounts 
hist(airData$Loyalty, main="Loyalty Towards Airline", xlab="Loyalty (-1-1 Scale)")  
#This histogram also shows an inverse J shape indicating that most people aren't loyal to a specific Airline
hist(airData$Total.Freq.Flyer.Accts, main="Number of Frequent Flyer Accounts", xlab="Frequent Flyer Accounts", breaks=6)  
#This graph also shows an inverse J shape although this one being a lot more exaggerated than all of the prior ones with an incredibly steep drop-off from 1 to 2
hist(airData$Shopping.Amount.at.Airport, main="Amount Spent Shopping at Airport", xlab="Amount (Dollars)")  
#This graph again shows and extreme inverse J shape with an incredibly large drop off from between 0 and 50 to 50 through 100 indicating that most people don't spend all that much money shopping at airports
hist(airData$Eating.and.Drinking.at.Airport, main="Amount Spent Eating/Drinking at Airport", xlab="Amount (Dollars")  
#This graph again shows an inverse J shape although not quite as extreme as the prior graphs, instead it has a more moderate drop over a couple of ranges instead of one large drop, it's still indicates that people don't spend all that money buying food and drinks at airports but that more people are willing to spend a bit more on food and drinks then they are on ordinary shopping
hist(airData$Day.of.Month, main="Day of Month When Flight Departed", xlab="Day of Month")  
#This graph has a slight downward trend with the most flight departure is being by the start of the month and the least being at the end of the month, though there is a slight Spike up words between the 20th and the 25th which I assume is because people are coming back from trips early in the month, also flights between the 30th and the 35th are incredibly rare because not all months have 30 days and also there are less days that are actually in that grouping of 5 because there is no month that has 35 days the longest month of the year is 31 
hist(airData$Scheduled.Departure.Hour, main="Hour of Scheduled Departure", xlab="Hour (24-Hour Scale)")  
#The shape of this graph is just weird, the ends look like normal distribution but the middle is lower than what is surrounding it, this indicates that most people are leaving early morning or mid to late afternoon and that people really aren't leaving in the middle of the day 
hist(airData$Departure.Delay.in.Minutes, main="Departure Delay Time", xlab="Time Delayed (Minutes)")  
#This graph is an inverse J with an extreme drop off after 50 minutes, this is showing that the delay time for flights arriving is almost always under an hour 
hist(airData$Arrival.Delay.in.Minutes, main="Arrival Delay Time", xlab="Time Delayed (Minutes)")  
#This graph shows basically the same Trend as the prior graph, it is an inverse J shape with an extreme drop off after 50 minutes showing that most flights are not delayed in their arrival to the destination for more than an hour 
hist(airData$Flight.time.in.minutes, main="Flight Time", xlab="Flight Time (Minutes)")  
#This graph is similar to the one above that was difficult to Define it shape, the ends are like normal distribution, but the middle is lower than its surroundings, in this case much lower, this shows that most flights Are between 50 minutes and 2 and 1/2 hours or between to 4 hour 10 minutes and 5 hours 50 minutes 
hist(airData$Flight.Distance, main="Distance Traveled", xlab="Distance (Miles)")  
#This graph is that same weird shape that is normal distribution at its ends but is lower at its middle, and the high peaks of distance traveled are between 500 and 1000, and 2000 and 2500
hist(airData$Likelihood.to.recommend, main="How Likely Customer is to Reccommend", xlab="Likelihood (0-10 Scale)") 
#This graph is mostly flat between 1 and 6 with 1 and 5 being lower points and the rest being a bit higher, nobody recommends it at a 7 and from 8 to 10 it shows normal distribution with the center obviously being at 9

#This step is making a histogram for each of the numeric values so that we can visualize the distribution For all of the numeric variables or factors that will come into effect

# Task 3 

table(airData$Destination.City) 
#Most cities have very few planes coming to them, but places like Chicago Illinois, Phoenix Arizona, Seattle Washington, Boston Massachusetts, Denver Colorado, Los Angeles California, Orlando Florida, Atlanta Georgia, New York New York, And Philadelphia Pennsylvania all have 10 or more
table(airData$Origin.City) 
#Most cities also don't have very many planes coming from them, But places like Atlanta Georgia, San Francisco California, Boston Massachusetts, Los Angeles California, Seattle Washington, Houston Texas, And New York New York All have 10 or more
table(airData$Airline.Status) 
#A vast majority of the statuses are blue, the next most common is silver after that is gold, after that is platinum 
table(airData$Gender) 
#A bit more than half the people flying are female and the rest are male
table(airData$Type.of.Travel) 
#More than half of people fly as business travel, almost all of the rest fly as personal travel, and very few fly as a mileage ticket
table(airData$Class) 
#A vast majority fly as economy, Very few fly as business, and a couple last fly as economy Plus 
table(airData$Partner.Name) 
#Most of the partner names pop up 25 times or less, with the notable exceptions being Cheapseats airlines Incorporated which came up 41 times, Oursin airlines Incorporated which came up 30  times, Sigma airlines Incorporated which came up 35 times, And Southeast Airlines corporation which came up 29 times
table(airData$Origin.State) 
#Most of the origin States pop up 15 or less times, With the notable exceptions being Florida which popped up 20 times, Georgia Massachusetts and Texas which each popped up 16 times, California which popped up 49 times, the most out of any state, and  New York which popped up 25 times 
table(airData$Destination.State) 
#Most of the destination States appeared 15 * or less, with the notable exceptions being California which popped up 52 times, the most out of any state again, New York which popped up 17 times, and Florida was popped up 23 times 

#The purpose of this step is to create a table so that we can see how many times the non-numeric variables common app, for example it can help us see that 142 people going on this flight were female and that 108 were male

# Task 4 

library(ggplot2) 

ggplot(airData,aes(x=Gender,y=Likelihood.to.recommend)) + geom_boxplot() + ggtitle("Likelihood to Recommend - Gender") + labs(y="Likelihood to Recommend (0-10 Scale)") 
#Males tend to rate the flight higher than females do
ggplot(airData,aes(x=Type.of.Travel,y=Likelihood.to.recommend)) + geom_boxplot() + ggtitle("Likelihood to Recommend - Travel Type") + labs(y="Likelihood to Recommend (0-10 Scale)") + labs(x="Type of Travel")  
#Business travel and mileage tickets are almost always rated quite High, but personal travel is usually rated a lot lower
ggplot(airData,aes(x=Flight.cancelled,y=Likelihood.to.recommend)) + geom_boxplot() + ggtitle("Likelihood to Recommend - Flight Cancellation") + labs(y="Likelihood to Recommend (0-10 Scale)") + labs(x="Flight Cancelled") 
#if the flight was canceled then people are more likely to rate it lower

#By accessing ggplot2 we are able to make plots like the box plots that we are able to make in this step, these box plots compares three different variables to the likelihood to recommend in order to see how they relate

# Task 5 

airData <- na.omit(airData) 

#This step is cleaning our data set and getting rid of missing values

# Task 6 

library(ggmap) 

usmap <- get_stamenmap(bbox=c(left=-167.50,bottom=7.45,right=-50.29,top=71.58),zoom=3,maptype="toner") 

ggmap(usmap) + geom_point(data=airData,aes(x=dlong,y=dlat,color=Likelihood.to.recommend)) 
#This shows us a map of the u.s., and a bit more because some of the points didn't land on the US, and it is colored by how people rated the flight so the lighter the dot the more the person enjoyed their flight going to that location


detractors <- data.frame(airData[airData$Likelihood.to.recommend<7,]) 

promoters <- data.frame(airData[airData$Likelihood.to.recommend>8,]) 



ggmap(usmap) + geom_point(data=detractors,aes(x=olong,y=olat,color=Likelihood.to.recommend)) 
#It is the same map as before but only with points where people rated it between 1 and 6, with the lightest dot being 6 and the darkest being 1
ggmap(usmap) + geom_point(data=promoters,aes(x=olong,y=olat,color=Likelihood.to.recommend)) 
#This map is the same as the one above it except instead of only having ratings between 1 and 6 instead it has all the ratings between 9 and 10 with the darkest dot being 9 and the lightest being 10 

#The first thing we do in this step is Library ggmap which allows us to create maps in order to further visualize our data, the first map we create plots points based on where the destination was and colors them by how much they enjoyed the flight, with lighter dots being more enjoyment and darker dots being less enjoyment, then we created two more maps but this time instead of having all of the points in one map the first one only included the people who didn't like the flight, and the second one only included people who did

# Task 7 

library(quanteda) 

library(quanteda.textmodels) 

library(quanteda.textplots) 

library(quanteda.textstats) 



corpusBonus <- corpus(promoters$freeText) 

bonusDFM <- dfm(corpusBonus,remove_punct=TRUE,remove=stopwords("english")) 

textplot_wordcloud(bonusDFM,min_count=1) 
#The biggest and therefore most common words in this word cloud are good, service, flight, comfortable, and Southeast


corpusMalus <- corpus(detractors$freeText) 

malusDFM <- dfm(corpusMalus,remove_punct=TRUE,remove=stopwords("english")) 

textplot_wordcloud(malusDFM,min_count=1) 
#The biggest and therefore most common words in this word cloud are service, flight, Southeast, Airline, flight time, delayed, worst

#First we installed a couple of packages into our which allows us to deal with bodies of text, and then we made to word clouds that show which words are most common with the promoters, the people who really enjoyed the fight, and which words are most common with the detractors, those who didn't like the fight
# Task 8 

library(arules) 

library(arulesViz) 

airCat <- data.frame(gender=as.factor(airData$Gender),type=as.factor(airData$Type.of.Travel),old=(airData$Age>median(airData$Age)),delay=(airData$Departure.Delay.in.Minutes>15),detractor=(airData$Likelihood.to.recommend<7)) 

airTrans <- as(airCat,"transactions") 

airRules <- apriori(airTrans,appearance=list(default="lhs",rhs=("detractor"))) 

arules::inspect(airRules) 
#Rules 2 and 5 both have high confidence, rule 2 says the type is personal travel and Delay causes someone to be more likely to be a detractor, and Rule 5 says that a type of personal travel and being old causes someone to be more likely to be a detractor, personal travel is involved and it is in fact in every single rule, this relates to the boxplot we made earlier that showed that people who travel as personal travel instead of Business travel or mileage ticket rated it much lower, this is because most of the time the people who are traveling for personal travel don't get the same accommodations as are given to people flying for other reasons, for rule 2 delay makes sense, people will rate the experience as worse if they had to wait longer than expected to either get where they're going or for the plane to come in the first place especially if it disrupts plans, 4 Rule 5 older people rating it worse also make sense, they're less likely to enjoy accommodations that are given even on most personal flights like the ability to watch something, and are less likely to just have fun on the plane ride like most younger people might

#The purpose of this step is to create rules of Association between different variables and detractors in order to see what factors are more likely to influence someone to rate the flight as lower


# Task 9 

airModel <- lm(data=airData,formula=Likelihood.to.recommend ~ Age+Gender+Type.of.Travel+Flight.Distance+Departure.Delay.in.Minutes) 

summary(airModel)
#lm returned that personal travel is inversely related to how it was rated, and that this was incredibly significant when it came to determining the rating, also the delay in minutes was slightly significant and also inversely related, the adjusted r-squared value was about .49 
#This step is creating a linear model between how people rated the flight and a couple of different variables in order to see what is most significantly related does someone in order to predict how people will rate their flight

#extra code
#The reason for these bits of extra code is just a further support the rules which don't really have much else other than them being stated as a rule to show that they are accurate
ggplot(airData,aes(x=Age,y=Likelihood.to.recommend))+geom_point()
#This first graph shows age, and what is most important is the end of the graph which shows a drop off, the reason we are only focusing on this part of the graph is because the rules stated that old people were more likely to rate the flight lower
ggplot(airData,aes(x=Departure.Delay.in.Minutes,y=Likelihood.to.recommend))+geom_point()
#This graph is the first of 2 in order to support the rule that delay is one of the factors that influences if someone is a detractor or not, we can see that as delay gets longer on this graph last and the last people rate the flight as good
ggplot(airData,aes(x=Arrival.Delay.in.Minutes,y=Likelihood.to.recommend))+geom_point()
#This graph is the second of 2 in order to support the rule that delay influences how people rate their flight, and it shows the same trend

#The reason for this extra code is in order to provide a bit more support for the rules that we said would make someone more likely to rate the flight as lower if there wasn't much else to support it in the rest of our results
