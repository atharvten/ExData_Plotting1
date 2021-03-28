dwnldtxt <- "./household_power_consumption.txt"
dwnldtable <- read.table(dwnldtxt, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subtab <- dwnldtable[which(dwnldtable$Date == '2/2/2007' | dwnldtable$Date=='1/2/2007'),]
gap <- as.numeric(subtab$Global_active_power)
dt <- strptime(paste(subtab$Date, subtab$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subtab$Global_active_power)
subM1 <- as.numeric(subtab$Sub_metering_1)
subM2 <- as.numeric(subtab$Sub_metering_2)
subM3 <- as.numeric(subtab$Sub_metering_3)
 
png("plot3.png", width=480, height=480)
plot(dt, subM1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, subM2, type="l", col="red")
lines(dt, subM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
