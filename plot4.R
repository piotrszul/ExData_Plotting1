data <- read.table(unz("household_power_consuption.zip", "household_power_consumption.txt"), sep=";", header=TRUE, na.strings= "?")
focus_data <-data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
focus_data$RDate = as.Date(focus_data$Date,"%d/%m/%Y")
png("plot4.png",504,504)
par(mfrow=c(2,2))
plot(focus_data$Global_active_power, type="l", ylab="Global Active Power", xlab="", xaxt="n")
axis(1, c(0,length(focus_data$Global_active_power)/2, length(focus_data$Global_active_power)), c("Tue", "Fri", "Sat"))
plot(focus_data$Voltage, type="l", ylab="Voltage", xlab="datetime", xaxt="n")
axis(1, c(0,length(focus_data$Global_active_power)/2, length(focus_data$Global_active_power)), 
     c("Tue", "Fri", "Sat"), xlab="datetime")

plot(focus_data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", xaxt="n")
axis(1, c(0,length(focus_data$Global_active_power)/2, length(focus_data$Global_active_power)), c("Tue", "Fri", "Sat"))
lines(focus_data$Sub_metering_2, col="red")
lines(focus_data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, 
       col=c("black", "red","blue"), bty="n")

with(focus_data, plot(Global_reactive_power, type="l",, xlab="datetime", xaxt="n"))
axis(1, c(0,length(focus_data$Global_active_power)/2, length(focus_data$Global_active_power)), 
     c("Tue", "Fri", "Sat"), xlab="datetime")
dev.off()

