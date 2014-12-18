
## The first function below  creates a special matrix which is a list containing 
## a function to function and and second one cache's its inverse.



## The below function, makeCacheMatrix creates a special "matrix", which is really
## a list containing a function to set and get the value of matrix along with setting
## and getting the value of inverse of the matrix that we pass as an argument.

makeCacheMatrix <- function(x=matrix())
{
        i <- NULL
        set <-function(y){
                x <<- y
                i<<-NULL
        }
        get<- function(){x}
        setinverse<-function(inverse){
                i<<-inverse
        }
        
        getinverse<-function(){i}
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
        
}




## The following function calculates the inverse of the special matrix created with 
## the above function. Provided that the inverse  has already been calculated,it gets 
## the inverse from the cache and skips the computation. Otherwise, it calculates the
## inverse and sets the value of the inverse in the cache via the setinverse function

cacheSolve<-function(x){
        
        i<-x$getinverse()
        if(!is.null(i)){
                
                message("getting cached data")
                return(i)
        }
        
        data<-x$get()
        i<-solve(data)
        x$setinverse(i)
        i
        
        
        
        
}