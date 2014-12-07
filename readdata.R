## This code reads and cleans the data necessary for the plots in plot[n].R
## The datafile should be in the working directory for this script to work

#required libraries
library(dplyr)

## read in the whole dataset (pre-read subsetting is not required)
powercon <- read.csv2("household_power_consumption.txt", dec=".", na.strings="?")
powercon <- tbl_df(powercon)

## Subset the relevant data & add a datetime column
powercon$Datetime <- paste(powercon$Date,powercon$Time)
powercon$Date <- as.Date(powercon$Date, "%d/%m/%Y")
range <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")

## GOAL: the clean dataset ##
pcsub <- subset(powercon, Date  %in% range)
pcsub$Datetime <- strptime(pcsub$Datetime, "%d/%m/%Y %H:%M:%S")

## clean environment
rm(powercon, range)

## Check on correct subset (data is correct, 2880 rows)
# head(pcsub)
# tail(pcsub)

## Check for missing values (none found)
# colSums(is.na(pcsub))


