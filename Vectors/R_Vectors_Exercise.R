#1st question
print(2**5)
print(2^5)

#2nd question
stock.price <- c(23,27,23,21,34)
print(stock.price)

#3rd question
names(stock.price)<-c('Mon','Tues','Wed','Thu','Fri')
print(stock.price)

#4th question
print(mean(stock.price))

#5th question
over.23 <-(stock.price>23)
print(over.23)

#6th question
print(stock.price[over.23])

#7th question
print(max(stock.price))
#this did not actually tell us the day! Only the max price, let's use a filter to grab the day!

max.price <- stock.price == max(stock.price)
print(max.price)

print(stock.price[max.price])
