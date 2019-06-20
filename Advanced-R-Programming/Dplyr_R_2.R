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
         