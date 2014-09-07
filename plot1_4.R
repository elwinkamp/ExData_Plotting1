hist(data$Global_active_power, col = "red", main = "Global active power", xlab= "Global active power (kilowatts)")

dev.copy(png, file="plot1.png", height=480, width=480)

dev.off()



plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()

with(data, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file="plot3.png", height=480, width=480)

dev.off()

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(data, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power", xlab="", cex.lab=0.8)
  plot(Voltage~Datetime, type="l",
       ylab="Voltage", xlab="datetime", cex.lab=0.8)
  plot(Sub_metering_1~Datetime, type="l", 
       ylab="GEnergy sub metering", xlab="", cex.lab=0.8)
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), cex=0.5, lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~Datetime, type="l",
       ylab="Global_reactive_power",xlab="datetime", cex.lab=0.8)
})

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()