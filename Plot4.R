dwnldtxt <- "./household_power_consumption.txt"
dwnldtable <- read.table(dwnldtxt, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subtab <- dwnldtable[which(dwnldtable$Date == '2/2/2007' | dwnldtable$Date=='1/2/2007'),]
gap <- as.numeric(subtab$Global_active_power)
png(filename="plot4.png",width=480, height=480)
par(mfrow=c(2,2))
plot(x=subtab$POSIX ,y=subtab$Global_active_power, type = 'l', xlab='',ylab = 'Global Active Power')
plot(x=subtab$POSIX ,y=subtab$Voltage, type = 'l', xlab='datetime',ylab = 'Voltage')
plot(x=subtab$POSIX,y=subtab$Sub_metering_1, type='l', col = 'black', ylab = 'Energy sub metering', xlab = '')
lines(x=subtab$POSIX,y=subtab$Sub_metering_2, col='red')
lines(x=subtab$POSIX,y=subtab$Sub_metering_3, col='blue')
legend('topright', legend = c('Sub_metering_1',"Sub_metering_2","Sub_metering_3"), col = c('black','red','blue'), lty = 1, bty = "n")
plot(x=subtab$POSIX ,y=subtab$Global_reactive_power, type = 'l', xlab='datetime',ylab = 'Global_reactive_power')
dev.off()
