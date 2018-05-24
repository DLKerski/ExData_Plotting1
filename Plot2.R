#Note this plot uses GAP which was Global Active Power number set up in plot1.R
time <- as.character(Electricuse$Time)
date <- as.character(Electricuse$Date)
datetime <- as.POSIXct(paste(date, time), format ="%Y-%m-%d %H:%M:%S")
plot(datetime, GAP, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
