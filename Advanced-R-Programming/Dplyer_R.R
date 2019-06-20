install.packages('dplyr')
install.packages('nycflights13')


library('dplyr')
library('nycflights13')


#getting the data set

data = head(flights)
summary(data)

#filterin the data

filteredbydate = filter(flights,month==3,day==11)
head(filteredbydate)

#count of rows present in data
count(filteredbydate)

#to get the proper number of rows only---use slice

top10rows = slice(flights,1:10)
top10rows

#to get the order by data --use arrange

orderData = arrange(flights,year,month,day,arr_time)
head(orderData)

neworderData = arrange(flights,year,month,day,desc(arr_time))
head(neworderData)
