library(dplyr)

data <- mtcars

result <- arrange(sample_n(filter(data,mpg>20),size = 5),desc(mpg))
result

# or to bifurcate that we can write it as

df <- mtcars

filterData <- filter(df,mpg>20)
samplefilteredData <- sample_n(filterData,size = 5)
result2 <- arrange(samplefilteredData,desc(mpg))
result2


#by using pipe opartor of dplyr

result3 <- df %>% filter(mpg>20) %>% sample_n(size = 5) %>% arrange(desc(mpg))
result3

