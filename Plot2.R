dwnldtxt <- "./household_power_consumption.txt"
dwnldtable <- read.table(dwnldtxt, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subtab <- dwnldtable[which(dwnldtable$Date == '2/2/2007' | dwnldtable$Date=='1/2/2007'),]
gap <- as.numeric(subtab$Global_active_power)

subtab$POSIX <-as.POSIXlt.character(paste(subtab$Date,subtab$Time),format = "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480, height=480)
plot(x=subtab$POSIX ,y=subtab$Global_active_power, type = 'l', xlab='',ylab = 'Global Active Power (kilowatts)')
dev.off()
