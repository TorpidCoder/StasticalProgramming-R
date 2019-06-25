#install.packages("ggplot2")
#install.packages("ggplot2movies")
library(ggplot2)
library(ggplot2movies)

#Data and Aesthetics Layer
datalayer <- ggplot(movies,aes(x=rating))

#Geometry Layer
#geomlayer <- datalayer + geom_histogram(binwidth = 0.1,color = 'red',fill='white',alpha = 0)
geomlayer <- datalayer + geom_histogram(binwidth = 0.1,aes(fill = ..count..))


#Facets

label <- geomlayer + xlab('Movie Rating') + ylab('Count of Movies')

#adding thr title

print(label + ggtitle("First Histogram",subtitle = "This is my Subtitle"))
