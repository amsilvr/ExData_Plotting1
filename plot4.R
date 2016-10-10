# 2X2 plots
# Global Active Power,
# Voltage ~ Time, 3 Energy Sub-Meters,
# Global re-active power by time

par(mfrow = c(2,2))
    # Top-Left
    source("plot2.R")
    # Top Right
    with(dfp1, plot(
        datetime,
        Voltage,
        type = "l"
        )
    )
    #Bottom Left
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
           bty = "n",
           lwd = 1)

    #Bottom Right
    with(dfp1, plot(
        datetime,
        Global_reactive_power,
        type = "l"
    )
    )
