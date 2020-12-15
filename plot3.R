## Plot 3
plot(data$Datetime, data$Sub_metering_1, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")
lines(data$Datetime, data$Sub_metering_2, col='Red')
lines(data$Datetime, data$Sub_metering_3, col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

