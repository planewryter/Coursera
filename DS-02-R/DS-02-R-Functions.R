## DS-02-R-Functions.R
## Rick Hubbard
## Version: 2015-04-19

#Determine current Working Directory
getwd()

#Build directory part of string that will point to the Dataset
dir_path <- "/Users/rickwrites/Dropbox/Data-Science/Coursera/DS-02-R/"
dir_path

#Adorn directory string with name of folder containing Dataset
data_path <- paste(dir_path, "specdata", sep='')
data_path

#Set Working Directory to location of Dataset
setwd(data_path)

#Instructor provided example of pollutantmean function
pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
}
