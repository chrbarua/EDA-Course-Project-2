png(file="C:/Users/prb/Documents/R Programming/exdata_data_NEI_data/plot4.png", width=720, height=480)

plot_4 <- subset(dfc, grepl('Coal',NEI_SCC$Short.Name, fixed=TRUE), c("Emissions", "year","type", "Short.Name"))
plot_4 <- aggregate(Emissions ~ year, plot_4, sum)

ggplot(data=plot_4, aes(x=year, y=Emissions)) + geom_line() + geom_point( size=4, shape=21, fill="white") + xlab("Year") + ylab("Emissions (thousands of tons)") + ggtitle("Total United States PM2.5 Coal Emissions")

dev.off()

# Question: Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
# Answer: Acroos the United States, emissions from coal combustion-related sources have decrease from 1999-2008.
