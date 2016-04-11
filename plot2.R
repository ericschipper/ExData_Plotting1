## load the source data if not already loaded
if(!exists("filteredData")) {
  source("load_data.R")
}

## initialize the file
png(filename = "plot2.png", width=480, height=480)

## generate plot 2
par(mfcol = c(1,1))
plot(filteredData$Global_active_power~filteredData$dateTime,type = "l", main = "", xlab = "", ylab = "Global Active Power (kilowatts)")

## save the plot
dev.off()
