#Question - 1

Age <- c(22,25,26)
Wieght <- c(150,165,120)
Sex <- c('M','M','F')

df <- data.frame(Age,Wieght,Sex)
print(df)

#Question - 2

print(is.data.frame(mtcars))


#Question - 3

mat <- matrix(data = (1:10), nrow = 5, ncol = 2)
print(mat)
print(as.data.frame(mat))

#Question - 4

df <- mtcars

#Question - 5

print(head(df))

#Question - 6

print(mean(df$mpg))

#Question - 7

print(subset(df,cyl == 6))

#Question - 8

print(df[(df$cyl==6),c('am','gear','carb')])

#Question - 9

performance <- df$hp/df$wt

new_df <- cbind(df,performance)
print(head(new_df))

#Question - 10

performance = round(performance,2)

new_df = cbind(df,performance)
print(new_df)

#Question - 11

print(mean(new_df[new_df$hp>100 & new_df$wt>2.5,]$mpg))


#Question - 11

print(df['Hornet Sportabout',]$mpg)
