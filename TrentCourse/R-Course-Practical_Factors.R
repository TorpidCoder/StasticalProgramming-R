#Factors are the data objects which are used to categorize the data and store it as levels.
#They are useful in the columns which have a limited number of unique values.

height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

data <- data.frame(height,weight,gender)

factor(data$gender)
