## load the source data if not already loaded
if(!exists("filteredData")) {
  source("load_data.R")
}

## initialize the file
png(filename = "plot1.png", width=480, height=480)

## generate plot 1
par(mfcol = c(1,1))
hist(filteredData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## save the plot
dev.off()
