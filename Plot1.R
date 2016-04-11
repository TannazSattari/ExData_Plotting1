#Read Data set
filedir<-"C://Users//tsatt//OneDrive//Documents//R//household_power_consumption.txt"
data_full <- read.table(filedir, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
