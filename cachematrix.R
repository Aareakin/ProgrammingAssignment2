## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function set the value of the matrix and get the value of the matrix
## it also set the value of the inverse and get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

## This function will computes the inverse of the "matrix" 
## returned by makeCacheMatrix above. cacheSolve should retrieve the inverse
# from the cache. If the matrix has not change
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
