## Creates plot 1 as a PNG file according to the example found in /figure/unnamed-chunk-2.png
## FileSize is 480px x 480px

## Read the data using the script readdata.R
## This created the data frame 'pcsub' if it does not exists already
if (!exists("pcsub")) {
    source("~/git/ExData_Plotting1/readdata.R")
}

png(filename="~/git/ExData_Plotting1/plot1.png", width=480, height = 480, units = "px")

hist(pcsub$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global ACtive Power (kilowatts)", 
     ylab = "Frequency",
     col = "red")

dev.off()