data <- read.table(unz("household_power_consuption.zip", "household_power_consumption.txt"), sep=";", header=TRUE, na.strings= "?")
focus_data <-data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
focus_data$RDate = as.Date(focus_data$Date,"%d/%m/%Y")
png("plot2.png",504,504)
plot(focus_data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")
axis(1, c(0,length(focus_data$Global_active_power)/2, length(focus_data$Global_active_power)), c("Tue", "Fri", "Sat"))
dev.off()

