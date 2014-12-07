## Creates plot 4 as a PNG file according to the example found in /figure/unnamed-chunk-5.png
## FileSize is 480px x 480px

## Read the data using the script readdata.R
## This created the data frame 'pcsub' if it does not exists already
if (!exists("pcsub")) {
    source("~/git/ExData_Plotting1/readdata.R")
}

png(filename="~/git/ExData_Plotting1/plot4.png", width=480, height = 480, units = "px")

## SET a 2x2 grid for the plots (creating row-wise)
par(mfrow = c(2,2))

#### PLOT1 - topleft
with(pcsub, 
     plot(Datetime, Global_active_power, 
          type="l",
          xlab="",
          ylab="Global Active Power"))

#### PLOT2 - topright
with(pcsub, 
     plot(Datetime, Voltage, 
          type="l",
          xlab="datetime",
          ylab="Voltage"))


#### PLOT3 - bottomleft
with(pcsub, {
    plot(Datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(Datetime, Sub_metering_1)
    lines(Datetime, Sub_metering_2, col="red")
    lines(Datetime, Sub_metering_3, col="blue")
})
legend("topright", lty = 1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       bty="n")

#### PLOT4 - bottomright
with(pcsub, 
     plot(Datetime, Global_reactive_power, 
          type="l",
          xlab="datetime",
          ylab="Global_reactive_power"))

dev.off()    