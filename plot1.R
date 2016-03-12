##Load data file and convert date and time to correct classes
electric <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
electric <- subset(electric, Date == "1/2/2007" | Date == "2/2/2007")

##Plot 1 - Histogram of Global Active Power
png(file = "plot1.png")
hist(electric$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()