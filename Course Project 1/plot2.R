PowerData <- read.table("C:/Users/Baktiyar/Desktop/courssera/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = T, quote ="",na.strings = "?")
PowerData <- PowerData[grep("^1/2/2007$|^2/2/2007$",PowerData$Date),]
PowerData$Date <- strptime(paste(PowerData$Date,PowerData$Time), "%d/%m/%Y %H:%M:%S")
plot(PowerData$Date,PowerData$Global_active_power, type="l",ylab="Global_active_power",xlab="")
dev.copy(png,file="plot2.png")
dev.off()
