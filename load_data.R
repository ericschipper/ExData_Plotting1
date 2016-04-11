require(data.table)
require(dplyr)
require(tidyr)
require(lubridate)

rm(list = ls())

FileName <- "~/household_power_consumption.txt"
rawData <- read.table(FileName, sep = ";", stringsAsFactors = FALSE,header = TRUE, na.strings="?")

filteredData <- filter(rawData, Date == "1/2/2007" | Date == "2/2/2007")
filteredData$dateTime <- dmy_hms(paste(filteredData$Date, filteredData$Time))

rm(rawData)
gc(verbose = FALSE)
