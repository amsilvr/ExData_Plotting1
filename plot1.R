# Histogram (red)
p1t <- "Global Active Power"
# x axis = Global Active Power
p1y <- "Frequency"


hist(dfp1$Global_active_power,
      col = "red",
      main = p1t,
      xlab = c(p1t, "(kilowats)"),
      ylab = p1y
     )

