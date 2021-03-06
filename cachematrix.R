## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## make cache matrix

makeCacheMatrix <- function(x = matrix()) {

  I <- NULL
	set <- function( y ){
	  cacheMatrix <<- y
	  I <<- NULL
	}
	get <- function() x
	setinverse <- function( inv ) I <<- inv
	getinverse <- function() I
	list( set = set, get = get, setinverse = setinverse, getinverse = getinverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getinverse()
  if( !is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve( data )
  x$setinverse(I)
  I
}
