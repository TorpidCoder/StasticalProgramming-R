#equal to operator

df <- mtcars

print(df[df$mpg > 20,])

#for selecting specific column 

print(df[df$mpg>20,df$cyl])

print(subset(df,mpg > 20))

#use of logical operator

print(df[(df$mpg>20) & (df$hp>100) ,])
