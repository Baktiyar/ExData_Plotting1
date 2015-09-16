PowerData <- read.table("C:/Users/Baktiyar/Desktop/courssera/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = T, quote ="",na.strings = "?")
PowerData <- PowerData[grep("^1/2/2007$|^2/2/2007$",PowerData$Date),]
PowerData$Date <- strptime(paste(PowerData$Date,PowerData$Time), "%d/%m/%Y %H:%M:%S")
plot(PowerData$Date,PowerData$Sub_metering_1, type="l",ylab="Energy sub metering",xlab="")
lines(PowerData$Date,PowerData$Sub_metering_2, type="l", col="red")
lines(PowerData$Date,PowerData$Sub_metering_3, type="l", col="blue")
legend("topright", legend=names(PowerData[7:9]), lty=1, col=c("black","red","blue"))
dev.copy(png,file="plot3.png")
dev.off()

