par(mfrow=c(2,2))
#Note this plot uses GAP which was Global Active Power number set up in plot1.R
time <- as.character(Electricuse$Time)
date <- as.character(Electricuse$Date)
datetime <- as.POSIXct(paste(date, time), format ="%Y-%m-%d %H:%M:%S")
plot(datetime, GAP, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(datetime, Electricuse$Voltage, ylab = "Voltage", type = "l")
#Electricuse file present from plot1.R
#datetime was created in plot2.R
subm1 <- as.numeric(Electricuse$Sub_metering_1)
subm2 <- as.numeric(Electricuse$Sub_metering_2)
subm3 <- as.numeric(Electricuse$Sub_metering_3)
plot(datetime, subm1, xlab ="", ylab = "Energy sub metering", type = "l")
points(datetime, subm2, type = "l", col = "red")
points(datetime, subm3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Submetering_3"), col = c("black", "red", "blue"), lty = 1, cex = 1)
plot(datetime, Electricuse$Global_reactive_power, ylab = "Global_reactive_power", type = "l")