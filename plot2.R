# Histogram

# x axis = Thurs - Fri - Sat
# y axis = Global Active Power (Kilowatts)

 png(filename = "plot2.png")

with(dfp1, plot(
      datetime,
      Global_active_power,
      type = "l",
      lab = c(3, 5, 5),
      ylab = "Global Active Power (Kilowatts)",
      xlab = "",
      xaxt = "n"
    ),
    axis.Date(1, at = "day", format = "%a")
)

#add weekday abbreviations to x axis tickmarks???


dev.off()
