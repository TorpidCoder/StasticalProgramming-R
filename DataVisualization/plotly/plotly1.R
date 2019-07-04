#install.packages('plotly')
library(ggplot2)
library(plotly)
library(ggplot2movies)

print(colnames(movies))

pl <- ggplot(mtcars,aes(x = mpg, y = wt)) + geom_point()

plotp1 <- ggplotly(pl)

#plotting a histogram

pl2 <- ggplot(movies,aes(x= rating)) + geom_histogram(binwidth = 0.1, color = 'black',fill = 'blue')

plotp2 <- ggplotly(pl2)
print(plotp2)