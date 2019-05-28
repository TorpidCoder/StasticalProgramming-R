data <- matrix(1:50, byrow = T,nrow = 5)
print(data)


#print only  3,4,5,13,14,15

print(data[1:2,3:5])

# print only 39 , 40

print(data[4,9:10])

# print 38 and 24

print(data[4,8])

print(data[3,4])