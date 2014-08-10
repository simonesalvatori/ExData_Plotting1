source('get_data.R')
exData <- get_data()

# graphic device
png(filename = "plot1.png", width = 480, height = 480, units = "px")

# histogram
hist(exData$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
