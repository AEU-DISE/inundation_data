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
         QualityCodeISt = 'Quality Code') %>%
  select(-c(QualityCodeISt))

FW <- FW %>%
  rename(DateTime = 'Date Time',
         StageFW = 'Stage Daily Mean (FOOT)',
         QualityCodeFW = 'Quality Code') %>%
  select(-c(QualityCodeFW))

StagesJoined <- FW %>%
  left_join(ISt, by = "DateTime")

str(StagesJoined)

Inundation <- StagesJoined %>%
  mutate(InundationFW = ifelse(StageFW >= 32, "Inundated", "Not Inundated"),
       InundationISt = ifelse(StageISt >= 17, "Inundated", "Not Inundated")) %>%
  select(c(DateTime, StageFW, InundationFW, StageISt, InundationISt))

#issue with incorrect inundation values was "" around the numbers. do not put in markdown

