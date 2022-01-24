1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
# adds all numbers from 1 to 10
list <- c(1,2,3,4,5,6,7,8,9,10)
# creates vector "list" with all numbers from 1 to 10
sum(list)
# adds all numbers in list
newlist <- list + 10
# creates new list with each element being ten higher
# than in list and assigns them to vector "newlist"
newlist
# calls newlist
sum(newlist)
# adds all numbers in newlist
sum(c(1:100))
# adds all numbers from 1 to 100 without assigning
# them to any variable
list
# calls list again
mean(list)
# finds the average of list
median(list)
# finds the median of list
max(list)
# finds the maximum of list
min(list)
# finds the minimum of list
length(list)
# finds the length of list
list > 5
# the first 5 numbers (1 through 5) aren't grater 
#than 5 but the last 5 are (6 through 10)
bignum <- list[list > 5]
bignum
# it only takes the numbers at an index where the 
# command list > 5 was true
?mean
help(mean)

#?if
#help(if) 
#?control
#help(control)
# I had to tag all of this for it to work when compiling it
# none of these are working but I know what they are

if (sum(list) > 40) print("the sum is greater than 40")