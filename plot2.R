## Creates plot 2 as a PNG file according to the example found in /figure/unnamed-chunk-3.png
## FileSize is 480px x 480px

## Read the data using the script readdata.R
## This created the data frame 'pcsub' if it does not exists already
if (!exists("pcsub")) {
    source("~/git/ExData_Plotting1/readdata.R")
}

png(filename="~/git/ExData_Plotting1/plot2.png", 
    width=480, height = 480, units = "px",
    bg="transparent")

with(pcsub, 
     plot(Datetime, Global_active_power, 
          type="l",
          xlab="",
          ylab="Global Active Power (kilowatts)"))

dev.off()