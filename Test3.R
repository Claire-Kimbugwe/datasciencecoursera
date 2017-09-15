# Qn 1


# Q4.
#load Mtcars from R datasets 
#Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower
#of 4-cylinder cars and the average horsepower of 8-cylinder cars?

library(datasets)
data("mtcars')
> round(mean(mtcars[mtcars$cyl == "8",]$hp) - mean(mtcars[mtcars$cyl == "4",]$hp))
[1] 127
Q5.

