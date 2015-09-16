PowerData <- read.table("C:/Users/Baktiyar/Desktop/courssera/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = T, quote ="",na.strings = "?")
PowerData <- PowerData[grep("^1/2/2007$|^2/2/2007$",PowerData$Date),]
PowerData$Date <- strptime(paste(PowerData$Date,PowerData$Time), "%d/%m/%Y %H:%M:%S")
hist(PowerData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()
