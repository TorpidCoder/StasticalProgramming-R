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
