
#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified
#list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a 
#vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in 
#the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values
#coded as NA. A prototype of the function is as follows

pollutantmean <- function(directory, pollutant,id = 1:332){
  #list of files
  dirFiles <- dir(directory, full.names = TRUE)
  #create an empty data frame
  df <- data.frame()
  #iterrate through the monitor dheets (id)
  for (item in id){
    #read data into a data frame
    df <- rbind(df, read.csv(dirFiles[item]))
  }
  Our_mean <-  mean(df[,pollutant], na.rm = TRUE)
  
}
