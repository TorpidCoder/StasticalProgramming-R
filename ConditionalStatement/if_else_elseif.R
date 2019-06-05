number <- 0

if(number==5){
  print("x is equal to 5")
}else if (number ==7){
  print("x is equal to 7")
}else{
  print("x is not equal to 5 and 7")
}



#ham and cheese example

ham <- 9
cheese <- 9
report <- 'blank'

if((ham>=10) & (cheese>=10)){
  report <- "Sold a lot today"
}else if((ham==0) &(cheese==0)){
  reports <- "Not much sale today"
}else{
  report <- "Little bit Sale today"
}

print(report)