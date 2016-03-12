##Load data file and convert date and time to correct classes
electric <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
electric <- subset(electric, Date == "1/2/2007" | Date == "2/2/2007")
electric$Date1 <- strptime(paste(electric$Date, electric$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

## PLot 4
plot(electric$Date1, electric$Global_active_power, xlab = "", ylab = "Global Active Power", main = "", type = "l")
plot(electric$Date1, electric$Voltage, xlab = "datetime", ylab = "Voltage", main = "", type = "l")
plot(electric$Date1, electric$Sub_metering_1, xlab = "", ylab = "Energy sub metering", main = "", type = "l")
lines(electric$Date1, electric$Sub_metering_2, col = "red")
lines(electric$Date1, electric$Sub_metering_3, col = "blue")
legend("topright", bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
plot(electric$Date1, electric$Global_reactive_power, xlab = "datetime", ylab = "Global _reactive_power", main = "", type = "l")