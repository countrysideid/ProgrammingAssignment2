## Put comments here that give an overall description of what your
## functions do

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
