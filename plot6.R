png(file="C:/Users/prb/Documents/R Programming/exdata_data_NEI_data/plot6.png", width=720, height=480)

plot_6 <- subset(dfc, (fips == "24510" | fips == "06037") & type =="ON-ROAD", c("Emissions", "year", "type", "fips"))
plot_6$fips <- factor(plot_6$fips, levels=c("06037", "24510"), labels=c("Los Angeles, CA", "Baltimore, MD"))
plot_6 <- melt(plot_6, id=c("year", "fips"), measure.vars=c("Emissions"))
plot_6 <- dcast(plot_6, fips + year ~ variable, sum)
plot_6[2:8,"Change"] <- diff(plot_6$Emissions)
plot_6[c(1,5),4] <- 0

ggplot(data=plot_6, aes(x= year, y= Change, group = fips, color = fips)) + geom_line() + geom_point( size=4, shape=21, fill="white") + xlab("Year") + ylab("Change in Emissions (tons)") + ggtitle("Motor Vehicle PM2.5 Emissions Changes: Baltimore vs. LA")

dev.off()

# Question: Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"\color{red}{\verb|fips == "06037"|}fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?
# Answer: Los Angeles has seen greater changes in motor vehicle emissions over time.
