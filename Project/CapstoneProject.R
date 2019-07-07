library(ggplot2)
library(dplyr)
library(plotly)

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


#Reading the salaries file
sal <- read.csv('Salaries.csv')

#Getting the summary of data
print(summary(data))

#getting the data where Year is above 1985
new_data <- subset(data,yearID>=1985)
print(summary(new_data))

#merging both data sets >> new_data and sal

combo <-merge(new_data,sal,by=c('playerID','yearID'))
print(summary(combo))

#searching three players

players <- c('giambja01','damonjo01','saenzol01')
lost_players <- subset(combo,playerID %in% players)
print(count(lost_players))

#Subset where year was 2001

lost_players_years <- subset(lost_players,yearID==2001)

head(lost_players_years)

#select selected columns 

select_lost_players_years <- lost_players_years %>% select('playerID','H','X2B','X3B','HR','OBP','SLG','BA','AB')
print(head(select_lost_players_years))

#plotting the data 
avail.players <- filter(combo,yearID==2001)
pl1 <- ggplot(avail.players,aes(x= OBP , y = salary,fill='white',color = 'red')) + geom_point()
print(ggplotly(pl1))
