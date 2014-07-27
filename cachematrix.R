## The goal of this part is to calculate the inverse of the matrix. As everyone know, computing 
##matrix inverse is a costly computation. Therefore, two functions have been use to lower the computation cost
## These two functions convert an invertible matrix to it's inverse.

## create cache matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(inv) m <<- inv
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)


}

#The function below converts the above function to it's inverse.
cacheSolve <- function(x, ...) {
m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
