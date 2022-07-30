plot_1 <- aggregate(Emissions ~ year, dfc, sum)

plot(plot_1$Year,plot_1$Emissions, main="Total US PM2.5 Emissions", "b", xlab="Year", ylab="Emissions (thousands of tons)",xaxt="n")
axis(side=1, at=c("1999", "2002", "2005", "2008"))

# Question: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
# Answer: Yes, total emissions from PM2.5 have decreased in the United States from 1999 to 2008.
