png(file="C:/Users/prb/Documents/R Programming/exdata_data_NEI_data/plot2.png", width=720, height=480)

plot_2 <- subset(dfc, fips == "24510", c("Emissions", "year","type"))
plot_2 <- aggregate(Emissions ~ year, plot_2, sum)
plot(plot_2$year,plot_2$Emissions, main="Total Baltimore PM2.5 Emissions", "b", xlab="Year", ylab="Emissions (thousand tons)",xaxt="n")
axis(side=1, at=c("1999", "2002", "2005", "2008"))

dev.off()

# Question: Have total emissions from PM2.5 decreased in Baltimore City, Maryland from 1999 to 2008?
# Answer: Yes, total emissions from PM2.5 have decreased in Baltimore City, Maryland from 1999 to 2008.
