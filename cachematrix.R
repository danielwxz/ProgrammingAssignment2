## Put comments here that give an overall description of what your
## functions do

## I taked the example of the course "Caching the Mean of a Vector"
## and change the central function mean() for solve().

## This function take a matrix whit inverse then save the matrix in x
## and the inverse in m.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix) m <<- matrix
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function
## This function take the saved matrix of x$getmatrix() and whether 
## don't exist then it solve the matrix in x$get(). In other way take the matrix inverse
## from x$getmatrix()

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m  
}
