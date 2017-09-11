## PART ONE
#Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified
#list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a 
#vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in 
#the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values
#coded as NA.

pollutantmean <- function(directory, pollutant,id = 1:332){
  #list of files
  dirFiles <- dir(directory, full.names = TRUE)
  #create an empty data frame
  df <- data.frame()
  #iterrate through the monitor heets (id)
  for (item in id){
    #read data into a data frame
    df <- rbind(df, read.csv(dirFiles[item]))
  }
  #return the mean
  return(Our_mean <-  mean(df[,pollutant], na.rm = TRUE))
  
}
# Qn.2
#Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. 
#The function should return a data frame where the first column is the name of the file and the second column is the number
# of complete cases

#read the dirrectory for files
#find number of obs for each file
#create dataframme with two colums , Name of file, Nobs

#write function complete
complete <- function(directory, id = 1:332){
  #list files from directory
  files <- list.files(directory, full.names = TRUE)
  #create empty dataframe
  df <- data.frame()
  for(i in id){
    idata<- read.csv(files[i], header = TRUE)
    idata <- na.omit(idata)
    Nobs <-nrow(idata)
    df <- rbind(df, data.frame(i, Nobs))
  }
   return(df)
}
## PART THREE
#Write a function that takes a directory of data files and a threshold for complete cases and calculates the 
#correlation between sulfate and nitrate for monitor locations where the number of completely observed cases 
#(on all variables) is greater than the threshold. 
#The function should return a vector of correlations for the monitors that meet the threshold
 #requirement. If no monitors meet the threshold requirement, then the function should return a 
#numeric vector of length 0.


  corr<-function(directory,threshold=0){
#create list of file names
  files <- dir(directory,full.names = TRUE)
  
  # empty vector
  EmpVec <- vector(mode = "numeric", length = 0)
  
  for(i in 1:length(EmpVec)){
  #read in file
    df <- read.csv(files[i],header=TRUE)
    #delete NAs
    df <- df[complete.cases(df),]
    # nobs
    csum<-nrow(df)
    if(csum>threshold){
      EmpVec<-c(dat,cor(df$nitrate,df$sulfate))
    }
    return(EmpVec)
  }
