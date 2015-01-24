## makeCacheMatrix creates a special "Matrix" object that contains a list of functions for
## the matrix input:
##  
##  get() - get the value of the input matrix
##  set() - set the value of the input matrix
##  getInverse() - get the inverse of the input matrix
##  setInverse(inverse) - set the inverse of the input matrix 

## Arguement
##    x -  a n-by-n matrix and is a invertible matrix.

## Usage
## makeCacheMatrix(x) 
##
makeCacheMatrix <- function(x = matrix()) {
   matrixinverse <- NULL   ## initialize matrix inverse
   
   ## Set the value of the matrix to override the matrix x 
   set <- function(y) {
     x <<- y
     matrixinverse <<- NULL 
   }
   ## get the value of the input matrix
   get <- function() x
   
   ## set the inverse of the matrix
   setinverse<- function(inverse) matrixinverse <<- inverse
   
   ## get the inverse of the matrix
   getinverse <- function() c
   
   ## returns the list containing functions
   list(set=set, get=get, getinverse=getinverse, setinverse=setinverse)

}

## cacheSolve function
##  calculates the inverse of the special "matrix" created with makeCacheMatrix(x).
##  if the inverse is null i.e., has not been calculated, it calculates the inverse 
##  of the matrix and sets the inverse in the cache using the setInverse function;
##  otherwise,it returns the inverse from the cache (without re-calculate the inverse). 
##
##  Arguements: 
##    x -  where x is a n-by-n matrix and is a invertible matrix i.e., inverse can be calculated
##    ... - further arguments passed to or from other methods
##
## Usage:
##   cacheSolve(x)
##
cacheSolve <- function(x, ...) {

  matrixinverse <- x$getinverse()
  ## check if matrixinverse in cache has a value assigned
  if (!is.null(matrixinverse)) {
      message("getting cache data")
      mattrixinverse
  }
  ## calculate the inverse
  matrix <- x$get()
  matrixinverse <- solve(matrix, ...)
  x$setinverse(matrixinverse)
 
 ## Return a matrix that is the inverse of 'x'
 matrixinverse

}
