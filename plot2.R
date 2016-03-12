##Load data file and convert date and time to correct classes
electric <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
electric <- subset(electric, Date == "1/2/2007" | Date == "2/2/2007")
electric$Date1 <- strptime(paste(electric$Date, electric$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

## Plot 2 - line plot of Global active Power by Time
png(file = "plot2.png")
plot(electric$Date1, electric$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", main = "", type = "l")
dev.off()