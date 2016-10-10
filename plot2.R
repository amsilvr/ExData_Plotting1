# Histogram

# x axis = Thurs - Fri - Sat
# y axis = Global Active Power (Kilowatts)


with(dfp1, plot(
      datetime,
      Global_active_power,
      type = "l",
      ylab = "Global Active Power (Kilowatts)",
      xlab = ""
       ))

