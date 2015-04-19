rm(list=ls())
cat('\014')

getwd()
source("pollutantmean.R")

pollutantmean("specdata", "sulfate", 1:10)