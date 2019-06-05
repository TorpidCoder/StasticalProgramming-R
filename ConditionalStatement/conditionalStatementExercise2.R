x <- c(24, 2, 3)

if ((x[1] > x[2]) & (x[1] > x[3])) {
  print(x[1])
} else if ((x[2] > x[1]) & (x[2] > x[3])) {
  print(x[2])
} else{
  print(x[3])
}


x <- c(3,7,1)

if (x[1] > x[2]){
  fir <- x[1]
  sec <- x[2]
} else {
  fir <- x[2]
  sec <- x[1]
}
if ( x[3] > fir & x[3] > sec ) {
  thi <- sec
  sec <- fir
  fir <- x[3]
} else if ( x[3] < fir & x[3] < sec ) {
  thi <- x[3]
} else {
  thi <- sec
  sec <- x[3]
}

print(paste(fir, sec, thi))

