##################
## Dependencies ##
##################
# install.packages("tidyverse")
# install.packages("lubridate")
# replace the xxx and remove the comment in the below line to set the working directory to your wd

#setwd(xxx)
#
 require(tidyverse)
 require(lubridate)

if (!file.exists("data")) {
    dir.create("data")
}

#################
## Download  ####
#################

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- "data/temp.zip"

if (!file.exists(temp)) {
    download.file(url = fileUrl, destfile = temp)
    date_Downloaded <- date()
}

df_Names <- unzip(temp, list = FALSE, exdir = "data")
# Get the column classes to speed up import (from http://www.biostat.jhsph.edu/~rpeng/docs/R-large-tables.html)
tab5rows <- read.table(df_Names, sep = ";",header = TRUE, nrows = 5)
classes <- sapply(tab5rows, class)
# Now back to our import
df <- read.table(df_Names, header = TRUE,
                sep = ";",
                na.strings = "?",
                nrows = 2075259,
                colClasses = classes
                )
df1 <- mutate(df, Date = as.Date(Date, format = "%d/%m/%Y"),
                datetime = dmy_hms(paste(df$Date, df$Time)))

dfp1 <- filter(df1, Date <= "2007-02-02", Date >= "2007-02-01")
#

png(filename = "plot1.png")
    source("plot1.R")
dev.off()

png(filename = "plot2.png")
    source("plot2.R")
dev.off()

png(filename = "plot3.png")
source("plot3.R")
dev.off()

png(filename = "plot4.png")
source("plot4.R")
dev.off()
