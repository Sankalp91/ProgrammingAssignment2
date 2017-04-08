## Put comments here that give an overall description of what your
## functions do
## The function has been written to catch the inverse of a matrix
## It creates a special object-"matrix" which is able to catch it's inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
            set <- function(a){
                    x <<- a
              inverse <<- NULL
}
        get <- function () x
        setInverse <- function(matrixinverse) inverse <<- matrixinverse
        getInverse <- function() inverse
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## The function stated above will return a special "matrix". This function computes the inverse of that matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        if(!is.null(inverse){
                message("Getting cached data")
                return(inverse)
                }
           data <- x$get()
       inverse  <- solve(data)
           x$setInverse(inverse)
           inverse
}
