install.packages('dplyr')
library(ggplot2)
library(ggplot2movies)
library(dplyr)

data <- mpg
# to find out the distinct
distclass <- distinct(data,class)

#-----plotting the data-----

datalayer <- ggplot(data,aes(x=class))
plotlayer <- datalayer+geom_bar(aes(fill = drv),color = 'black',position = 'dodge')
print(plotlayer+xlab('Types of Classes')+ylab('Number of Cars'))
