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

#calculate the on base percentage
#OBP = H+BB+HBP/AB+BB+HBP+SF

data$OBP <- (data$H+data$BB+data$HBP)/(data$AB+data$BB+data$HBP+data$SF)

#calculate the X1B column
#1B = H-2B-3B-HR

data$X1B <- data$H - data$X2B - data$X3B - data$HR

data$SLG <- ((1 * data$X1B) + (2 * data$X2B) + (3 * data$X3B) + (4 * data$HR) ) / data$AB
print(str(data))
