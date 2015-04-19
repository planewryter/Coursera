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
     
     data_must_be_framed <- TRUE
     
     for (i in id){
          
          file_str_raw <- paste("000", toString(i),sep='')
          ##  print(file_str_raw)
          file_str_raw_len <- nchar(file_str_raw)
          ##  print(file_str_raw_len)
          file_str <- substr(file_str_raw,file_str_raw_len-2,file_str_raw_len)
          ##  print(file_str)
          file_ptr <- paste(paste(directory,'/',sep=''),(paste(file_str,".csv", sep ="")),sep='')
          ##  print(file_ptr)
          
          file_values <- read.csv(file_ptr, header=TRUE)
          ##  print(file_values)
          
          if (data_must_be_framed) {
               
               data_frame <- file_values
               ##  print(data_frame)
               
               data_must_be_framed <- FALSE
               
          } else {
               
               data_frame <- rbind(data_frame,file_values)
               ##  print(nrow(data_frame))
                            
          }
          
     }
     
     ##  result <- mean(data_frame[pollutant], na.rm = TRUE)
     result <- mean(data_frame[[pollutant]], na.rm = TRUE)
     
     print(result)
}
