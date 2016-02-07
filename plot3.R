# This script will read in data from file in working directory and produce single graph to PNG file
# Specs: bar chart, red bars, title = Global Active Power, plot global active power by frequency

dat <- read.table(file.choose(), sep = ";", na.strings = "?", header = TRUE)
dat <- dat[dat$Date == "1/2/2007" | dat$Date == "2/2/2007",]
dat$DateTime <- strptime(paste(dat$Date,dat$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480, units = "px")
plot(dat$DateTime, dat$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dat$DateTime, dat$Sub_metering_2, col = "red")
lines(dat$DateTime, dat$Sub_metering_3, col = "blue")
legend("topright", lty = c(1,1,1), col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()