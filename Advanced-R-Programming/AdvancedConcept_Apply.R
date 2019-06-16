#print a numeber from a sample range
print(sample(1:10,1))
#the second arguement here actually print the count of numbers you want


#add a random number

#add_rand <- function(x){
#  ran <- sample(1:100,1)
#  return(x+ran)
#}

#print(add_rand(10))


#use of apply

ve <- c(1,2,3,4,5)


add_rand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
}

result <- lapply(ve, add_rand)
print(result)


result2 <- sapply(ve, add_rand)
print(result2)


#aaplying it for finding the square of value in a vector

vec <- 1:10

square_num <- function(x){
  number <- x**2
  return(number)
}
print(vec)
sq_result <- sapply(vec, square_num)
print(sq_result)
