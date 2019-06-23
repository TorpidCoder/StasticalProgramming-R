install.packages('dplyr')
install.packages('nycflights13')


library('dplyr')
library('nycflights13')

# to select a particular column from a data set

head(select(flights,sched_dep_time))


# rename a column

rename(flights,sched_dep_time_stamp=sched_dep_time)
summary(flights)

#select the distinct values

distinct(select(flights,month))

#change the column name

head(mutate(flights,actualtime = dep_time-dep_delay))


# to get the only new column
head(transmute(flights,actualtime = dep_time-dep_delay))


#to get the mean or to perform any aggregation

summarise(flights,avg_air_time = mean(air_time,na.rm = TRUE))

summarise(flights,total_air_time = sum(air_time,na.rm = TRUE))

#to create random rows or sample data 

sample_n(flights,10)

# to create a random rows by percentage 
sample_frac(flights,0,1)
         