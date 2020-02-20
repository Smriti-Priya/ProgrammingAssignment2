## Put comments here that give an overall description of what your
## functions do

## It set and get the matrix and mean and return list of four function

library(matrix)

makeCacheMatrix <- function(x = matrix()) 
                       
  {
  i <- NULL
  set <- function(y) 
    {
    x <<- y
    i <<- NULL
    }
  get <- function() 
    x
  setinverse <- function(inverse) 
    i <<- inverse
  getinverse <- function()
    i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## its argument is return value of makeCacheMatrix function. It calls the getinverse function and if inverse is found it returns and if not found calculate the inverse and set it by calling function setinverse function





cacheSolve <- function(x, ...) 
{
 i <- x$getinverse()
  if(!is.null(i)) {
    print("getting cached data")
    return(i)
  }
  data <- x$get()
 i <- ginv(data, ...)
  x$setinverse(i)
  i
}