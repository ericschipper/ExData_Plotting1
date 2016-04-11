## load the source data if not already loaded
if(!exists("filteredData")) {
  source("load_data.R")
}

## initialize the file
png(filename = "plot2.png")

## generate plot 2
plot(filteredData$Global_active_power~filteredData$dateTime,type = "l", main = "", xlab = "", ylab = "Global Active Power (kilowatts)")

## save the plot
dev.off()
