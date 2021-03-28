dwnldtxt <- "./household_power_consumption.txt"
dwnldtable <- read.table(dwnldtxt, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subtab <- dwnldtable[which(dwnldtable$Date == '2/2/2007' | dwnldtable$Date=='1/2/2007'),]
gap <- as.numeric(subtab$Global_active_power)
png(filename = "plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

