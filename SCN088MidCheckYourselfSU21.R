# SCN.088 - Mid Check Yourself
#
# Student name: Ezra Cohen
#
# Attribution statement: By submitting this homework on Blackboard, you
# attest that you completed this exam without assistance from any living
# person except the instructor.
#
# Type in your SUID in place of the zeros below and execute the code

suid <- 455254492


# Then select all of the code in the following block  and run it.
# Do not modify any of the code between the ======== separators
#========================================================
if (suid == 0) {cat("Please type in your SUID before running this code.")} else {
#if you didn't type in the suid it prints out statement that you need to do that first in order to continue, if you have done it you can continue
cat(paste("Lyft/Uber Fare Comparison Study Number:",suid,"\n"))
# prints out Lyft/Uber Fare Comparison Study Number: 455254492 
set.seed(suid)
#makes sure our random samples are perfectly replicatable
grp1id <- paste("Lyft",substr(as.hexmode(suid),1,2),sep="_"); grp2id <- paste("Uber",substr(as.hexmode(suid),1,2),sep="_")
#grp1id is set to lyft_1b 
ssize <- floor(runif(n=1,min=100,max=140))
#
driver <- 1:ssize
#
base <-round(rnorm(n=ssize,mean=25,sd=5), digits=2)
#
lyft <- round(rowMeans(cbind(base, runif(ssize,min=15,max=35))),digits=2)
#
if ((suid %% 2)==1) {uber <- round(rowMeans(cbind(base, runif(ssize,min=10,max=40))),digits=2) 
} else { uber <- round(rowMeans(cbind( base + rexp(n=ssize,rate=0.25), rnorm(n=ssize,mean=25,sd=5))),digits=2)}
testDF <- data.frame(driver,lyft,uber)
names(testDF)[2]<-grp1id; names(testDF)[3]<-grp2id
cat(paste("Sample size for this study:",ssize)) 
rm(base); rm(lyft); rm(uber); rm(ssize); rm(grp1id); rm(grp2id); rm(driver) }
#========================================================

str(testDF) # Your data set is called testDF; it has three variables

# Add your code and comments below here. Make sure to run the code above first.