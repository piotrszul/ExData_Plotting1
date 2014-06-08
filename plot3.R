data <- read.table(unz("household_power_consuption.zip", "household_power_consumption.txt"), sep=";", header=TRUE, na.strings= "?")
focus_data <-data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
focus_data$RDate = as.Date(focus_data$Date,"%d/%m/%Y")
png("plot3.png",504,504)
plot(focus_data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(focus_data$Sub_metering_2, col="red")
lines(focus_data$Sub_metering_3, col="blue")
dev.off()


