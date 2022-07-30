png(file="C:/Users/prb/Documents/R Programming/exdata_data_NEI_data/plot3.png", width=720, height=480)

plot_3 <- subset(dfc, fips == "24510", c("Emissions", "year","type"))
plot_3 <- melt(plot_3, id=c("year", "type"), measure.vars=c("Emissions"))
plot_3 <- dcast(plot_3, year + type ~ variable, sum)

ggplot(data=plot_3, aes(x=year, y=Emissions, group=type, color=type)) + geom_line() + geom_point( size=4, shape=21, fill="white") + xlab("Year") + ylab("Emissions (tons)") + ggtitle("Baltimore PM2.5 Emissions by Type and Year")

dev.off()

# Question: Of the four types of sources indicated by the type\color{red}{\verb|type|}type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City?

# Answer: The non-road, nonpoint, and on-road sources decreased emissions overall from 1999 to 2008, whereas point increased.
