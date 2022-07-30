png(file="C:/Users/prb/Documents/R Programming/exdata_data_NEI_data/plot5.png", width=720, height=480)

plot_5 <- subset(dfc, fips == "24510" & type =="ON-ROAD", c("Emissions", "year","type"))
plot_5 <- aggregate(Emissions ~ year, plot_5, sum)

ggplot(data=plot_5, aes(x=year, y=Emissions)) + geom_line() + geom_point( size=4, shape=21, fill="white") + xlab("Year") + ylab("Emissions (tons)") + ggtitle("Motor Vehicle PM2.5 Emissions in Baltimore")

dev.off()

# Question: How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
# Answer: In Baltimor City, emissions from motor vehicle sources have dcreased from 1999-2008.
