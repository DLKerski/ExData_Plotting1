setwd("C:/Users/Owner/Documents/r/data/Exploratory data")
test <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
#Makes factor into date formate
test$Date <- as.Date(test$Date, format = "%d/%m/%Y")
#subsets data by 2 days required, 2/1/2007 and 2/2/2007
Electricuse <- subset(test, Date >= "2007-02-01")
Electricuse <- subset(Electricuse, Date <= "2007-02-02")
#Make Global active power into number field
GAP <- as.numeric(levels(Electricuse$Global_active_power))[Electricuse$Global_active_power]
hist(GAP, col = "red", xlab = "Global Active Power (kilowatts)")