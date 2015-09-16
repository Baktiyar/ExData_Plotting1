PowerData <- read.table("C:/Users/Baktiyar/Desktop/courssera/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = T, quote ="",na.strings = "?")
PowerData <- PowerData[grep("^1/2/2007$|^2/2/2007$",PowerData$Date),]
PowerData$Date <- strptime(paste(PowerData$Date,PowerData$Time), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2,2))
plot(PowerData$Date,PowerData$Global_active_power, type="l",ylab="Global_active_power",xlab="")
plot(PowerData$Date,PowerData$Voltage, type="l",ylab="Voltage",xlab="datetime")
plot(PowerData$Date,PowerData$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="")
lines(PowerData$Date,PowerData$Sub_metering_2, type="l", col="red")
lines(PowerData$Date,PowerData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=names(PowerData[7:9]), lty=1, col=c("black","red","blue"))
plot(PowerData$Date,PowerData$Global_reactive_power, type="l",ylab="Voltage",xlab="datetime")
dev.copy(png,file="plot4.png")
dev.off()

