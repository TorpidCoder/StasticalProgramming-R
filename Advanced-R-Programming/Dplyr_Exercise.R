library(dplyr)

data <- mtcars
head(data)

#1st question 

filteredCars = filter(data,(mpg>20 & cyl==6))
count(filteredCars)

#2nd question

orderedDataframe <- arrange(data,cyl,desc(wt))
orderedDataframe

#3rd question

select(data,mpg,hp)

#4 question

distinctData <- distinct(data,gear)
distinctData

#5th question

newcolumnData = mutate(data,Performance=hp/wt)
newcolumnData

#6th question

meanValue <- summarise(data,mean(mpg))
meanValue

#7th questions

meanHP = data %>% filter(cyl==6)  %>% summarise(mean(hp))
meanHP