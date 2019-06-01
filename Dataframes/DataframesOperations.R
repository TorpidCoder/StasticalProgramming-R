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



#bind a new row to the existing dataframe

print(df)

df2 <- data.frame(col.name.1 = 200 , col.name.2 = 'k')
new.df = rbind(df,df2)
print(new.df)

#bind a new column to the existing dataframe

print(df)

colval <- 2*df$col.name.1
print(colval)

new.df = cbind(new.df,colval)
print(new.df)

#selecting multiple rows

print(df[1:3,])

#selecting everything but not the second row
print(df[-2,])      

#print the conditional data into mtcars

print(mtcars[mtcars$mpg>21,])


print(mtcars[(mtcars$mpg>21) & (mtcars$cyl>2),])


print(mtcars[(mtcars$mpg>21) & (mtcars$cyl>2),c('qsec','vs','am')])

#by using subset

print(subset(mtcars,mpg>21 & cyl>2))

      