##Load data file and convert date and time to correct classes
electric <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
electric <- subset(electric, Date == "1/2/2007" | Date == "2/2/2007")
electric$Date1 <- strptime(paste(electric$Date, electric$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

## Plot 3 - line plots of 3 sub meterings by day on Thu, Fri, Sat
png(file = "plot3.png")
plot(electric$Date1, electric$Sub_metering_1, xlab = "", ylab = "Energy sub metering", main = "", type = "l")
lines(electric$Date1, electric$Sub_metering_2, col = "red")
lines(electric$Date1, electric$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off()