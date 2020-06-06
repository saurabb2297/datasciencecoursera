add2 <- function(a,b){
  a + b
}

above <- function(x,n=10){
  use <- x>n
  x[use]
}


#calculating mean of each column of dataframe 
#removeNA used to deal with missing values
columnmean <- function(x,removeNA = TRUE){
  nc <- ncol(x) #number of columns in df
  means <- numeric(nc) #empty vector of length number of col to store mean of each column
  for (i in 1:nc){
    means[i] <- mean(x[,i],na.rm = removeNA)
  }
  means #to return mean
}
