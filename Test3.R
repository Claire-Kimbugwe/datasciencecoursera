# Qn 1
How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
> library(datasets)
> data(mtcars)
> sapply(split(mtcars$mpg, mtcars$cyl), mean)
       4        6        8 
26.66364 19.74286 15.10000 

> tapply(mtcars$mpg, mtcars$cyl, mean)
       4        6        8 
26.66364 19.74286 15.10000 

> with(mtcars, tapply(mpg, cyl, mean))
       4        6        8 
26.66364 19.74286 15.10000 

# Q4.
#load Mtcars from R datasets 
#Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower
#of 4-cylinder cars and the average horsepower of 8-cylinder cars?

library(datasets)
data("mtcars')
> round(mean(mtcars[mtcars$cyl == "8",]$hp) - mean(mtcars[mtcars$cyl == "4",]$hp))
[1] 127
Q5.

