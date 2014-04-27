## The function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  get <- function() x
  set <- function(y) {
    x   <<- y
    inv <<- NULL
  }
  getinv <- function() inv
  setinv <- function(inverse){
    inv<<-inverse
  }
  list(get=get, set=set, getinv=getinv, setinv=setinv)
}


## The function computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
  
  if(!is.null(x$getinv())){ ## return existing value - if exist
    return (x$getinv())    
  }
  
  keep <- x$get()
  inv <- solve(data, ...)
  s$setinv(inv)

  return (inv)
}
