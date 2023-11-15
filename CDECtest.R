library(cder)
library(tidyverse)
library(tidylog)
library(data.table)
library(readr)
library(lubridate)


stations <- c("BAC", "BET", "BLP", "LIS")
sensordataset <- list() 
for(i in 1:length(stations)){
  dataset <- cdec_sensors(stations[i])
  dataset$station <- stations[i]  # just for an identifier
  sensordataset[[i]] <- dataset
} 