## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL ## assigning the input matrix(y) to a temporary matrix(x)
        }
        get <- function() {x}
        setinverse <- function(inverse) {m <<- inverse} ## taking the inverse of matrix(x) and storing it in memory
        getinverse <- function() {m} ## getting the inverse of matrix from memory 
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
} 



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getinverse()
        if(!is.null(m)) { 
                message("getting cached data")  ## checking if the cache already exists in the memory
                return(m)
        }
        data <- x$get()  ## if invers3e already exists in memory, get that copy of the solved matrix
        m <- solve(data) ## if it doesn't exist, solve it again
        x$setinverse(m) 
        m  ## return the inverse to the main program
}
