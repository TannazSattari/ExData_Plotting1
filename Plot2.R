#Read Data set
filedir<-"C://Users//tsatt//OneDrive//Documents//R//household_power_consumption.txt"
data_full <- read.table(filedir, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subsetting
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)

#Converting date
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

#Plotting and Saving file
plot(data$Global_active_power~data$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
