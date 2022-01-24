# task1
set.seed(2)
#allows us to have randomly generated sets that can always be reproduced perfectly
sampleSize <- 30
#sets a size we can use for
studentPop <- rnorm(20000,mean=20,sd=3)
#creates a vector of 2000 that we can later use to take a sample from, the data if put into a histogram 
#would show normal distribution or a bell shape, the data averages out to 20 and it's standard
#deviation is 3
undergrads <- sample(studentPop,size=sampleSize,replace=TRUE)
#takes a sample of the studentPop the size of samplesize while replacing each value it takes to create a vector
grads <- rnorm(sampleSize,mean=25,sd=3)
#creates a vector the size of samplesize, the data if put into a histogram would show normal distribution or a bell 
#shape, the data averages out to 25 and it's standard deviation is 3
if (runif(1)>0.5) { testSample <- grads } else { testSample <- undergrads }
mean(testSample)
# generates random number between 1 and 0, and if it is higher than 0.5 testsample becomes grads
# if it is lower test sample becomes undergrads

# task2
sample(undergrads,size=10,replace=TRUE)
# task3
mean(sample(undergrads,size=10,replace=TRUE))
# task4
replicate(3,mean(sample(undergrads, size = sampleSize, replace = TRUE)))
# task5
sapleslist<-replicate(100,mean(sample(undergrads, size = sampleSize, replace = TRUE)))
# task6
mean(testSample)
quantile(sapleslist, probs=c(0.025,0.975))
# task7
quantile1<-as.character(quantile(sapleslist, probs=c(0.025,0.975))[1])
quantile2<-as.character(quantile(sapleslist, probs=c(0.025,0.975))[2])
quantile1<-as.numeric(gsub("2.5%","",quantile1))
quantile2<-as.numeric(gsub("97.5%","",quantile2))
if (mean(testSample) < quantile1 || mean(testSample) > quantile2) print("the sample mean is extreme") else  print("the sample mean is not extreme")
# task8
#I do not think the test sample is undergrads because it is extreme for that data set
# task9
sapleslist2<-replicate(100,mean(sample(grads, size = sampleSize, replace = TRUE)))
mean(testSample)
quantile(sapleslist2, probs=c(0.025,0.975))
quantile3<-as.character(quantile(sapleslist2, probs=c(0.025,0.975))[1])
quantile4<-as.character(quantile(sapleslist2, probs=c(0.025,0.975))[2])
quantile3<-as.numeric(gsub("2.5%","",quantile3))
quantile4<-as.numeric(gsub("97.5%","",quantile4))
if (mean(testSample) < quantile3 || mean(testSample) > quantile4) print("the sample mean is extreme") else  print("the sample mean is not extreme")
#I do think the test sample is undergrads because it is not extreme for that data set
