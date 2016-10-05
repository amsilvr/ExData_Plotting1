##################
## Dependencies ##
##################
# install.packages("tidyverse")
# install.packages("lubridate")
# # replace the xxx and remove the comment in the below line to set the working directory to your wd
#
# #setwd(xxx)
#
# require(tidyverse)
# require(lubridate)

if (!file.exists("data")) {
    dir.create("data")
}

#################
## Download  ####
#################

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- "data/temp.zip"

if(!file.exists(temp)) {
    download.file(url = fileUrl, destfile = temp)
    date_Downloaded <- date()
}

df_Names <- unzip(temp, list = FALSE, exdir = "data")
df <- read.table(df_Names, header = TRUE,
                 sep = ";",
                 na.strings = "?",
                 colClasses = c("Date", "POSIXlt", "num", "num", "num", "num", "num", "num", "num")
                 )

