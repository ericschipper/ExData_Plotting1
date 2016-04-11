## load the source data if not already loaded
if(!exists("filteredData")) {
  source("load_data.R")
}

## initialize the file
png(filename = "plot4.png", width=480, height=480)

## generate plot 4
par(mfcol = c(2,2))
plot(filteredData$Global_active_power~filteredData$dateTime,type = "l", main = "", xlab = "", ylab = "Global Active Power")

plot.colors <- c("black","red","blue")
plot(filteredData$Sub_metering_1~filteredData$dateTime,type = "l", main = "", xlab = "", ylab = "Energy sub metering", col = plot.colors[1])
lines(filteredData$Sub_metering_2~filteredData$dateTime,type = "l", col = plot.colors[2])
lines(filteredData$Sub_metering_3~filteredData$dateTime,type = "l", col = plot.colors[3])
leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright",leg.txt, col = plot.colors, lwd = 1, bty="n")

plot(filteredData$Voltage~filteredData$dateTime,type = "l", main = "", xlab = "datetime", ylab = "Voltage")

plot(filteredData$Global_reactive_power~filteredData$dateTime,type = "l", main = "", xlab = "datetime", ylab = "Global_reactive_power")

## save the plot
dev.off()

