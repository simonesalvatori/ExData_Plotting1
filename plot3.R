source('get_data.R')
exData <- get_data()

# graphic device
png(filename = "plot3.png", width = 480, height = 480, units = "px")

plot(exData$DateTime, exData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(exData$DateTime, exData$Sub_metering_2, type="l", col="red")
lines(exData$DateTime, exData$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()
