## load the source data if not already loaded
if(!exists("filteredData")) {
  source("load_data.R")
}

## initialize the file
png(filename = "plot1.png")

## generate plot 1
hist(filteredData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## save the plot
dev.off()
