# Histogram

# x axis = Thurs - Fri - Sat
# y axis = Global Active Power

df5 <- mutate(df4, day = (wday(datetime, label = TRUE, abbr = TRUE)))

with(df5, plot(Global_active_power ~ datetime, type = "l"))



