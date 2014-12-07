## Creates plot 3 as a PNG file according to the example found in /figure/unnamed-chunk-4.png
## FileSize is 480px x 480px

## Read the data using the script readdata.R
## This created the data frame 'pcsub' if it does not exists already
if (!exists("pcsub")) {
    source("~/git/ExData_Plotting1/readdata.R")
}

## NOTE: dev.copy resulted in legend labels being cut off. Lesson learned.
png(filename="~/git/ExData_Plotting1/plot3.png", width=480, height = 480, units = "px")

with(pcsub, {
    plot(Datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(Datetime, Sub_metering_1)
    lines(Datetime, Sub_metering_2, col="red")
    lines(Datetime, Sub_metering_3, col="blue")
})
legend("topright", lty = 1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"))

dev.off()    