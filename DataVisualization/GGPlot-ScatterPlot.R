#install.packages("ggplot2")
#install.packages("ggplot2movies")
library(ggplot2)
library(ggplot2movies)

data <- mtcars
datalayer <- ggplot(data,aes(x = wt , y = mpg))
geom_layer <- datalayer+geom_point(aes(alpha=0.5,shape = factor(cyl),color = factor(cyl)),size = 5)
label <- geom_layer + xlab('wt Data') + ylab('mpg Data')
print(label + ggtitle("First Colored Data"))



