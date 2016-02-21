## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        p <- NULL
        set <- function(y){
                x <<- y
                p <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) p <<- solve
        getinverse <- function() p
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        p <- x$getinverse()
        if(!is.null(p)){
                message("getting cached data")
                return(p)
        }
        matrix <- x$get()
        p <- solve(matrix, ...)
        x$setinverse(p)
        p        
}
