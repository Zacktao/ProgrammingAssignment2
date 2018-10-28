## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the function creat a list that contains four functions, which are set, get, setinverse,getinverse. 
## and these function will set the value and get the value of input, and set the value and get the value of inverse
makeCacheMatrix <- function(x = matrix()) {
  INV<- NULL
  set<- function(y){
    x<<-y
    INV<- NULL
  }
  get<- function(){x}
  setInverse<-function(d){INV <<-d}
  getInverse<- function(){INV}
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
## the function read the value of inverse from the list 
## if there is no such thing, it calculates the inverse and set it to the list
## if there is one from the calculation in the past, it returns the inverse
cacheSolve <- function(x, ...) {
  INV <- x$getInverse()
  if(!is.null(INV)){
    message("getting cached data")
    return(INV)
  }
  mdata<-x$get()
  Inverse<- solve(mdata)
  x$setInverse(Inverse)
  Inverse
}