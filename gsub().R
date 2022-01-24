names<-c("Alex","Shu","Tanya")
ages<-c(28,17,35)
users<-c("alp@syr.edu","sh67@syr.edu","tans@syr.edu")
students<-data.frame(names,ages,users)
students$usernames<-gsub("@syr.edu","",students$users)
gsub("Good","","Goodbye")
gsub("Good","","goodbye")
sentence<-"I am 29 years old, and weigh 130 lbs"
gsub("29","X",sentence)
gsub("\\d+","X",sentence)
#\\d+ will go for every number and stands for digit
gsub("\\w+","X",sentence)
#\\w+ will go for everything and I assume it stands for word
gsub("\\s","X",sentence)
#\\s will go for spaces and I assume it stands for space
students$gpa<-c("gpa_4.3","gpa_3.6","gpa_2.9")
students
students$gpa<-gsub("gpa_","",students$gpa)
students$gpa
#mean(as.numeric(students$gpa))
#I know that I am probably skipping a step, or there might be a different way to do this but it said to just put mean but GPA is still a string so it will only work if I do this
#I did skip a step and it's saying to make student$GPA as numeric so I'm just going to tag out the original code and do it the way it says
mean(students$gpa)
students$gpa<-as.numeric(students$gpa)
mean(students$gpa)
averageGPAcalculator<-function(input){
  step1<-"do something here"
  step2<-"do something else"
  step3<-"maybe even some more"
  return(step3)
}
averageGPAcalculator("what can I do with this?")
averageGPAcalculator<-function(input){
  step1<-gsub("gpa_","",input$gpa)
  step2<-as.numeric(step1)
  step3<-mean(step2)
  return(step3)
}
averageGPAcalculator(students)
name<-c("Bree","Grace","Akshat","Penny","Leon")
gpa<-c(2.3,4.0,3.9,3.5,2.8)
anotherGroupOfStudents<-data.frame(name,gpa)
averageGPAcalculator(anotherGroupOfStudents)