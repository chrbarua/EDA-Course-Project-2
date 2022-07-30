NEI <- readRDS("summarySCC_PM25.rds") 
SCC <- readRDS("Source_Classification_Code.rds")
df <- subset(SCC, select = c("SCC", "Short.Name"))
dfc <- merge(NEI, df, by.x="SCC", by.y="SCC", all=TRUE)

dfc$Emissions <- dfc$Emissions/1000
