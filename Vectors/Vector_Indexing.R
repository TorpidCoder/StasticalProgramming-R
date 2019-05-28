vector1 <- c(1,2,3,4)
vector2 <- c(5,6,7,8)

print(vector1[3])

#fetch two data from a vector

print(vector1[c(1,2)])

print(vector2[1:3])


#here names is a function

values <- c(1,2,3,4,5)
names(values) <- c('a','b','c','d','e')
print(values)



v <- c(1,2,3,4,5)
names(v) <- c('sun','mon','tues','wed','thu')
print(v)

myfilter <- v<2
print(myfilter)

