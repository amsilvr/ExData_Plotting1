# Histogram

# x axis = Thurs - Fri - Sat
# y axis = Global Active Power (Kilowatts)

with (dfp1,
      plot(x = datetime,
        y = Sub_metering_1,
        type = "l",
        ylab = "Energy sub metering",
        xlab = "",
        col = "black"))
  with(dfp1,lines(x = datetime,
           y = Sub_metering_2,
           type = "l",
           xlab = "",
           col = "red"))
  with(dfp1,lines(x = datetime,
           y = Sub_metering_3,
           type = "l",
           ylab = "Energy sub metering 3",
           xlab = "",
           col = "blue"))

  legend("topright",
         legend = colnames(df1)[7:9],
         col = c("black", "blue", "red"),
         lwd = 3)


