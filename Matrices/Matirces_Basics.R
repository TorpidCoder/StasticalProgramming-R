# to print in range function
print(1:10)

#storing this into a variable
x <- (1:10)
print(x)


#create a matrices by row (it will fill the row sequnetially)

print(matrix(data = x,byrow = TRUE , nrow = 2))

#create a matrices by column by making the byrow= False (it will fill the column sequnetially)

print(matrix(data = x,byrow = FALSE , nrow = 2))


######################################


google <- c('342','672','322','142','989')
microsoft <- c('231','612','432','140','289')
print(google)
print(microsoft)

stock.price <- c(google,microsoft)
print(stock.price)

#create a matrix of that

matrix_data = matrix(stock.price,byrow = T , nrow = 2)
print(matrix_data)

#alloting the name of that

covalues <- c('Monday','Tuesday','Wednesday','Thursday','Friday')
rovalues <- c('Google','Microsoft')


colnames(matrix_data) <- covalues
rownames(matrix_data) <- rovalues

print(matrix_data)




