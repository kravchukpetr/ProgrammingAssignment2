# tests
setwd("C:/Users/Пето/Documents/Coursera projects/R/ProgrammingAssignment2")
source("cachematrix.R")


x <- rbind(c(1, -2/7), c(-3/9, 1))
m <- makeCacheMatrix(x)
m$get()
##      [,1]       [,2]
##[1,]  1.0000000 -0.2857143
##[2,] -0.3333333  1.0000000

cacheSolve(m)
## No cache in the first run
##    [,1]      [,2]
## [1,] 1.1052632 0.3157895
## [2,] 0.3684211 1.1052632

## Retrieving from the cache in the second run
cacheSolve(m)
## getting cached data.
##    [,1]      [,2]
##[1,] 1.1052632 0.3157895
##[2,] 0.3684211 1.1052632
