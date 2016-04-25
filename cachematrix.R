## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	minv= NULL
	set= function(y) {
	`x<<- y
	minv <<- NULL
	}
	get <- function() {
	setinverse <- funtion(inverse) minv<<- inverse
	getinverse <- function() minv {}
	list(set=set,get=get, setinverse=setinverse, getinverse=getinverse)
	}

}


## Write a short comment dcribing this function


## This fuction creates a matrix checks to see it if is blank and square. 
##It then gets the matrix and creates a matching one, and then getting  
## this new inverted matrix, and finally lists out the new matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	minv<- x$getinverse()
	if(!is.null(minv)){
		message("Getting Cached Data")
		return(minv)
	}
	data<- x$get()
	minv = cacheSolve(data,...)
	x$setinverse(minv)
	return(minv)
}
