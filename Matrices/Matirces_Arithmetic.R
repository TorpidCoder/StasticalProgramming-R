mat <- matrix(data = (1:25) , byrow = T , nrow =5 )
print(mat)


#addition
print("The addition of mat with 2")
print(mat+2)
#subtaction
print("The subtraction of mat with 2")
print(mat-2)
#division
print("The division of mat with 2")
print(mat/2)
#multiplication
print("The multiplication of mat with 2")
print(mat*2)

#elements where mat is small than 5
print(mat<5)
# [,1]  [,2]  [,3]  [,4]  [,5]
# [1,]  TRUE  TRUE  TRUE  TRUE FALSE
# [2,] FALSE FALSE FALSE FALSE FALSE
# [3,] FALSE FALSE FALSE FALSE FALSE
# [4,] FALSE FALSE FALSE FALSE FALSE
# [5,] FALSE FALSE FALSE FALSE FALSE

print("This is using cat")
cat(mat[mat>2])
cat("\n")
print("This is using print")
print(mat[mat>2])

