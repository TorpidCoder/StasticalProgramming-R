students <- c("Sean","Lousia","Frank","Farhad","Li")
midterm <- c(80,90,93,82,95)
final <- c(78,84,95,82,91)
students
midterm


#Indexing 

#To print the first element

print(students[1])

print(students[3])

#To miss one from the list just use '-' and the index number

print(students[-2])
#this will print all the other elments except the element at second position.

##########Arithmetic Operations############

midterm
final
#Sum
print(midterm+final)

#Average
print((midterm+final)/2)

course.grade <- 0.4*midterm + 0.6*final
course.grade



#########Pair Wise Comparison#############

#is final course higher than the mid term one 

print(final>midterm)
#to select the index we used 
which(final>midterm)


#performing the boolean opertion
(midterm>final) & (midterm>80)

which((midterm>final) & (midterm>80))


#Functions used in vector

#sum
sum(final)

#mean
mean(final)

#median
median(final)

#max
max(final)

#min
min(final)

#standard deviation
sd(final)

#variance
var(final)

#length - tells about the number of elements in a vector
length(final)

#sort
sort(final)

#unique
unique(final)

#summary
summary(final)


##########Refrencing the elements##############
#vector of indices
students[c(2,4)]

final[c(1,2)]

#vector of negative indices
students[c(-1,-3)]


#find the course grades where marks are above 90 (taking the threshold value)

threshold.value <- 90
student.score <- which(course.grade>= threshold.value)

students[student.score]

#Named Components
course.grade
students
final
midterm
names(course.grade) <- students
names(course.grade)

course.grade[c("Frank")]


#Generating sequences
0:10

15:5

seq(1,10,2)


#Generating repeats
#repeat 1 for 3 times
rep(1,3)

#repeat numbers from 5 to 10 for 2 times
rep(5:10,2)

#repeat numebrs from 1 to 3 for 3 and each will come 2 times
rep(1:3,each=2,3)


rep(1:4,c(1,2,3,4))

#Random Numbers

?runif

#this will create one sample number in between 2 and 3.
runif(1,2,3)

#this will create 10 sample number between 7 and 9.
runif(10,7,9)

#sample number
sample(1:19,2)



#normal distrubution and Exponential distribution
rnorm(5,mean = 100 , sd=10)

?rexp()

rexp(1,2)
