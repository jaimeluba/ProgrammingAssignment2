## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                            m<-NULL
                            setmatrix<-function(y){
                                        x<<-y
                                        m<<-NULL
                            }
                            getmatrix<-function()x
                            setsolved<-function(solve) m<<-solve
                            getsolved<-function()m
                            list(setmatrix=setmatrix,getmatrix=getmatrix,
                                 setsolved=setsolved,getsolved=getsolved)
}

###Gives me 4 functions, one sets de matrix, other gets it, third inverts it and forth gets its invertion



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                      m <- x$getsolved()
                      if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                      }
                      data <- x$getmatrix()
                      m <- solve(data, ...)
                      x$setsolved(m)
                      m
}