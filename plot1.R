data <- read.table(unz("household_power_consuption.zip", "household_power_consumption.txt"), sep=";", header=TRUE, na.strings= "?")
focus_data <-data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
png("plot1.png",504,504)
hist(focus_data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()


