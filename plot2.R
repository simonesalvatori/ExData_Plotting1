source('get_data.R')
exData <- get_data()

# graphic device
png(filename = "plot2.png", width = 480, height = 480, units = "px")
# plot
plot(exData$DateTime, exData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
