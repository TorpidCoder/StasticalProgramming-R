#thats just a normal sequence
print(1:10)

#using seq method
print(seq(0,10,by = 2))

#for loop usage

data = seq(0,20,by = 3)

for (values in data){
  print(values)
}


#sorting a vector 

vec <- c(23,56,2,67,25,1,8)

print(sort(vec, decreasing = TRUE))

# print the structure of object

print(str(mtcars))


# struture and summary are same

print(summary(mtcars))


# mergre two vectors or list

v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)

v3 <- append(v1,v2)
print(v3)
