makeCacheMatrix <- function(mat = matrix())
{
  pom <- NULL
  set <- function(y)
  {
  mat <<-y
  pom <<-NULL
  }
 get<-function() mat
 matrix1 <- function(solve) 
 pom <<- solve
 matrix2 <- function() pom
 list(set=set, get=get, matrix1=matrix1, matrix2=matrix2)
}

cacheSolve <- function(mat=matrix(), ...)
  {
    pom <- mat$matrix2()
    if(!is.null(pom))
    {
     return(pom)
    }
    matrix <- mat$get()
    pom <- solve(matrix, ...)
    mat$matrix1(pom)
    pom
  }
