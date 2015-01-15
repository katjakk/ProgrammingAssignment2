## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix takes a matrix as an argument that is assummed
# to be always inverseable (solve(x)). It stores the matrix
# and provides get function to retrieve the matrix and 
# getinverse to retrieve its cached inversion which is initialized to NULL.
# setinverse sets the cache value and set sets the new matrix.
makeCacheMatrix <- function(x = matrix()) {
  c <- NULL
  set <- function(y) {
    x <<- y
    c <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) c <<- solve
  getinverse <- function() c
  list(set = set, get = get,
       setinverse = setinverse, 
       getinverse = getinverse)
}


## Write a short comment describing this function

# cacheSolve takes makeCacheMatrix object as a function argument and
# get its cached inversion and returns it. If it is null cacheSolve
# then calculates and returns it, and sets the value to makeCacheMatrix object.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  c <- x$getinverse()
  if(!is.null(c)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  c <- solve(data)
  x$setinverse(c)
  c
}
