library(readr)
library(ggplot2)
library(lubridate)
library(rcompanion)
library(viridis)
library(dplyr)
library(ggthemes)
library(tidyverse)
library(rcartocolor)
library(tidylog)

# Bring in WDL files for ISt and FW
FW <- read_csv("Working files/A02170_Stage_Daily_Mean.csv", skip =8)
ISt <- read_csv("Working files/A02100_Stage_Daily_Mean.csv", skip = 8)

ISt <- ISt %>%
  rename(DateTime = 'Date Time',
         StageISt = 'Stage Daily Mean (FOOT)',
         QualityCodeISt = 'Quality Code')


FW <- FW %>%
  rename(DateTime = 'Date Time',
         StageFW = 'Stage Daily Mean (FOOT)',
         QualityCodeFW = 'Quality Code')