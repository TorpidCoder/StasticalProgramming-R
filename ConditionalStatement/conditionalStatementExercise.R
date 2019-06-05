#question-1

var <- 2

if(var ==1 ){
  print("Hello")
}else{
  print("")
}


#question-2


var <- readline(prompt = "Enter the number : ")
int.var = as.integer(var)
class(var)
class(int.var)
print(paste("The number you have entered is :",int.var))

if(int.var%%2==0){
  print("The number is even")
}else{
  print("The number is odd")
}

#question-3

matrix <- matrix((1:10), nrow =2, ncol = 5,byrow = T)
print(matrix)

if(is.matrix(matrix)){
  print("Yes it is ")
}else{
  print("No it is not")
}




