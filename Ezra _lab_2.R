#task1
MyIris<- iris
#task2
help("iris")
#task3
summary(MyIris)
#task4
MyIris$Sepal.Length
#task5
sort(MyIris$Sepal.Length)
#task6
order(MyIris$Sepal.Length)
#task7
#sort lists the numbers from lowest to highest and 
#order lists the index of the numbers from lowest to
#highest
#task8
sortedDF <- data.frame(order(MyIris$Sepal.Length),order(MyIris$Sepal.Width),order(MyIris$Petal.Length),order(MyIris$Petal.Width),MyIris$Species)
#task9
View(sortedDF)
#task10
help("scale")
#Scaling will scale and Center the dataframe, centering will subtract 
#a specific value from each number in a column and that value will be 
#different for each column, you can either set center equal to a 
#vector the same length as there are columns which will subtract the 
#first number in the vector from everything in the First Column the 
#second number in the vector from every number in the second column 
#and so on, or you can set it equal to true which will subtract the 
#mean of each column from that column, finally if it's set to 
#false then no centering is done, scaling will divide each number 
#in the column by a specific value and similarly each value will be 
#different for each column, in the same way if you set it equal to 
#a vector the same length as there are columns those will be the 
#numbers it  for each number in the column with the first number in 
#the vector going for the First Column and the second number going 
#for the second column and so on, otherwise if centering is true then 
#it will divide each column by the standard deviation, and if centering 
#is false then it will divide by the root mean Square, similarly to centering 
#if it is set to false the no scaling be done 
#task11
scale(MyIris$Sepal.Length,center=0,scale = T)
#task12
scaledSL <- scale(MyIris$Sepal.Length,center=0,scale = T)
#task13
scaledSW <- scale(MyIris$Sepal.Width,center=0,scale = T)
scaledPL <- scale(MyIris$Petal.Length,center=0,scale = T)
scaledPW <- scale(MyIris$Petal.Width,center=0,scale = T)
View(scaledSL)
View(scaledSW)
View(scaledPL)
View(scaledPW)
#task14
MyIris$scaledsum <- scaledSL + scaledSW + scaledPL + scaledPW
View(MyIris$scaledsum)
#task15
sortedDF <- data.frame(order(MyIris$Sepal.Length),order(MyIris$Sepal.Width),order(MyIris$Petal.Length),order(MyIris$Petal.Width),MyIris$Species,order(MyIris$scaledsum))
View(sortedDF)
