# Histogram (red)
p1t <- "Global Active Power"
# x axis = Global Active Power
p1y <- "Frequency"

png(filename = "plot1.png")
hist(df4$Global_active_power,
      col = "red",
      main = p1t,
      xlab = c(p1t, "(kilowats)"),
      ylab = p1y
     )
dev.off()
