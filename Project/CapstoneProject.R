#Read the data
data <- read.csv('/Users/sahilnagpal/Desktop/R-Programming/R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/Training Exercises/Capstone and Data Viz Projects/Capstone Project/Batting.csv')

#columns present in data
colnames(data)

#head the data
head(data)

#getting the structure of column
str(data)

#geeting a single column
data$teamID
data[,'teamID']

#first 5 rows of At Bats (AB)
firstfive_At_Bats <- (data$AB)
head(firstfive_At_Bats)

#first 5 head of doubles (X2B)
head_doubles <- data$X2B
head(head_doubles)

#calculate the batting average
#AVG=H/AB
data$BA <- data$H / data$AB
print(tail(data$BA))
