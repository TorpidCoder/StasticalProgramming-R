#question-1
library(ggplot2)
df <- read.csv('/Users/sahilnagpal/Desktop/R-Programming/R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/Training Exercises/Capstone and Data Viz Projects/Data Visualization Project/Economist_Assignment_Data.csv')

#question-2
head(df)

#question-3
pl <- ggplot(df,aes(x = CPI , y = HDI))

#question-4
pl2 <- pl + geom_point(aes(color = Region),shape=1,size =4)

#question -5
pl3 <- pl2 + geom_smooth(aes(group = 1),method = 'lm',formula = y ~ log(x),se = FALSE,color = 'red')


#question -6
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl4 <- pl3 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

print(pl4 + theme_bw())

#question -7

pl5 <- pl4 + scale_x_continuous(name = 'Corruption Perception Index , 2011 (10= least corrupt)',limits = c(1,10.5),breaks = 1:10)

#question -8

pl6 <- pl5 + scale_y_continuous(name = 'Human Development Index (2011)')
print(pl6 + ggtitle("Corruption and Human Development") + theme(plot.title = element_text(hjust = 0.5)))



