google <- c(342,672,322,142,989)
microsoft <- c(231,612,432,140,289)
print(google)
print(microsoft)

stock.price <- c(google,microsoft)
print(stock.price)

#create a matrix of that

matrix_data = matrix(stock.price,byrow = T , nrow = 2)
print(matrix_data)
print(typeof(matrix_data))

#alloting the name of that

covalues <- c('Monday','Tuesday','Wednesday','Thursday','Friday')
rovalues <- c('Google','Microsoft')


colnames(matrix_data) <- covalues
rownames(matrix_data) <- rovalues

print(matrix_data)


#sum the columns
print(colSums(x = matrix_data))

#sum the rows
print(rowSums(x = matrix_data))

#creating a new row and adding the new row named as 'FB'

FB <- c(111,222,333,444,555)
print(FB)

#adding the FB row by row bind known as rbind

tech_stock <- rbind(matrix_data,FB)
print(tech_stock)

#creating a new column as avg

avg <-rowMeans(tech_stock)
print(avg)

tech_stock <- cbind(tech_stock,avg)
print(tech_stock)


