empty <- data.frame()

c1 <- 1:10
print(c1)

#letters is a default letters vector here

c2 <- letters[1:10]
print(c2)

#creating a dataframe
df = data.frame(col.name.1 = c1 , col.name.2 = c2)
print(df)

#write a csv

write.csv(df,file = 'some_file.csv')
read.csv(file = 'some_file.csv') #will generate an extra column here

#information about the dataframe

print(nrow(df))

print(ncol(df))

#print the column names and row names

print(colnames(df))
print(rownames(df))

print(str(df))

print(summary(df))

#referencing a particular cells 

print(df[[5,2]])
print(df[[5,'col.name.2']])

#change the value in the data frame

print(df)

df[[2,'col.name.1']] <- 999

#referencing the rows

print(df[5,])


print(mtcars$mpg)
print(mtcars[,1])
print(mtcars[,'mpg'])



print(mtcars['mpg'])

head(mtcars[c('mpg','wt')])
      