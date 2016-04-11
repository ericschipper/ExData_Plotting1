require(data.table)
require(dplyr)
require(tidyr)
require(lubridate)

rm(list = ls())
gc(verbose = FALSE)

FileName <- "~/household_power_consumption.txt"
rawData <- read.table(FileName, sep = ";", stringsAsFactors = FALSE,header = TRUE)
filteredData <- filter(rawData, Date == "1/2/2007" | Date == "2/2/2007")

filteredData$dateTime <- dmy_hms(paste(filteredData$Date, filteredData$Time))
filteredData$Date <- as.Date(filteredData$Date, "%d/%m/%Y")
filteredData$Time <- strptime(filteredData$Time, "%H:%M:%S")
filteredData$Global_active_power <- as.numeric(filteredData$Global_active_power)
filteredData$Global_reactive_power <- as.numeric(filteredData$Global_reactive_power)
filteredData$Voltage <- as.numeric(filteredData$Voltage)
filteredData$Global_intensity <- as.numeric(filteredData$Global_intensity)
filteredData$Sub_metering_1 <- as.numeric(filteredData$Sub_metering_1)
filteredData$Sub_metering_2 <- as.numeric(filteredData$Sub_metering_2)
filteredData$Sub_metering_3 <- as.numeric(filteredData$Sub_metering_3)

