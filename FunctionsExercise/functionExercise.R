#question-1

hello_you <- function(name){
  
  print(paste("Hello",name))
}

hello_you("Nikki")

#question-2

product <- function(a,b){
  c = a+b
  print(paste("The product is :",c))
}

product(8,7)


#question-3

numcheck <- function(num,v){
  for (val in v){
    if(val==num){
      return(TRUE)
    }
  }
  return (FALSE)
}
print(numcheck(9,c(1,2,3,4,5)))


#question-4

countnum <- function(num1,v1){
  count <- 0
  for (vals in v1){
    if(vals == num1){
      count = count+1
    }
  }
  
  print(paste("The count is : ",count))
}

countnum(1,c(1,1,2,3,4))

#question-5

barvalues <- function(number){
  fivekgbar <- 5
  
  
  divident <- number%/%fivekgbar
  remainder <- number%%fivekgbar
  
  print(paste("Bar required of 5 kg: ",divident))
  print(paste("Bar required of 1 kg: ",remainder))
  print(paste("Total bar required : ",divident+remainder))
  
}

number <- readline(prompt = "Enter number : ")
intnumber = as.integer(number)
barvalues(intnumber)


#question-6

summer <- function(a, b, c){
  out <- c(0)
  if (a %% 3 != 0){
    out <- append(a,out)
  }
  if (b %% 3 != 0){
    out <- append(b,out)
  }
  if (c %% 3 != 0){
    out <- append(c,out)
  }
  return(sum(out))       
}

#question-7

prime_check <- function(num) {
  if (num == 2) {
    return(TRUE)
  } else if (any(num %% 2:(num-1) == 0)) {
    return(FALSE)
  } else { 
    return(TRUE)
  }
}