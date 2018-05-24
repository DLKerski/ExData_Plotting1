#Electricuse file present from plot1.R
#datetime was created in plot2.R
subm1 <- as.numeric(Electricuse$Sub_metering_1)
subm2 <- as.numeric(Electricuse$Sub_metering_2)
subm3 <- as.numeric(Electricuse$Sub_metering_3)
plot(datetime, subm1, xlab ="", ylab = "Energy sub metering", type = "l")
points(datetime, subm2, type = "l", col = "red")
points(datetime, subm3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Submetering_3"), col = c("black", "red", "blue"), lty = 1, cex = 1)