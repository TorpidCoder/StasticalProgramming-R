#question -1

A <- c(1,2,3)
B <- c(4,5,6)
print(A)
print(B)

mat.Data <- c(A,B)
print(mat.Data)

matrix.Data <- matrix(data = mat.Data, byrow = T , nrow = 2, ncol = 3)
print(matrix.Data)

rovalues <- c('A','B')

rownames(matrix.Data) <- rovalues
print(matrix.Data)
print(rbind(A,B))


#question-2

mat = matrix((1:9), nrow = 3, ncol = 3 , byrow = T)
print(mat)

#question -3

print(is.matrix(mat))


#question-4

mat2 = matrix((1:25), nrow = 5, ncol = 5 , byrow = T)
print(mat2)

#question-5

print(mat2[2:3,2:3])

#question -6 

print(mat2[4:5,4:5])


# question -7

print(sum(mat2))

#question - 8

help("runif")

run.if.mat = matrix(runif(20)*100,4,5)
print(run.if.mat)
