##################
## Dependencies ##
##################
# install.packages("tidyverse")
# install.packages("lubridate")
# # replace the xxx and remove the comment in the below line to set the working directory to your wd
#
# #setwd(xxx)
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
df <- read.table(df_Names, header = TRUE,
                sep = ";",
                na.strings = "?",
                nrows = 2000000)
df2 <- mutate(df, datetime = dmy_hms(paste(Date, Time)))
df3 <- select(df2, datetime, Global_active_power, Global_intensity)
df4 <- filter(df3, datetime <= "2007-02-02", datetime >= "2007-02-01")
#
# plot1.R()
 plot2.R()
 plot3.R()
# plot.R()
