## load the source data if not already loaded
if(!exists("filteredData")) {
  source("load_data.R")
}

## initialize the file
png(filename = "plot3.png", width=480, height=480)

## generate plot 3
par(mfcol = c(1,1))
plot.colors <- c("black","red","blue")
plot(filteredData$Sub_metering_1~filteredData$dateTime,type = "l", main = "", xlab = "", ylab = "Energy sub metering", col = plot.colors[1])
lines(filteredData$Sub_metering_2~filteredData$dateTime,type = "l", col = plot.colors[2])
lines(filteredData$Sub_metering_3~filteredData$dateTime,type = "l", col = plot.colors[3])
leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright",leg.txt, col = plot.colors, lwd = 1)

## save the plot
dev.off()
