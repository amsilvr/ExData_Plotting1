# Histogram

# x axis = Thurs - Fri - Sat
# y axis = Global Active Power (Kilowatts)

png(filename = "plot2.png")

with (df4, plot(
      datetime,
      Global_active_power,
      type = "l",
      ylab = "Global Active Power (Kilowatts)",
      xlab = "")
)

dev.off()

