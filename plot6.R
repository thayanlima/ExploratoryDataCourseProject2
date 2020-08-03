vehicbaltnei<-vehicnei[vehicnei$fips==24510,]
vehicbaltnei$city<-"Baltimore City"
vehicLAnei<-vehicnei[vehicnei$fips=="06037",]
vehicLAnei$city<-"Los Angeles County"
bothNEI<-rbind(vehiclesBaltimoreNEI,vehiclesLANEI)
library(ggplot2)
plot6<-ggplot(bothNEI,aes(x=factor(year),y=(Emissions/1000),fill=city)) +
  geom_bar(aes(fill=year),stat="identity") +
  facet_grid(scales="free",space="free",.~city) +
  guides(fill=FALSE)+theme_bw() +
  labs(x="year",y=expression("PM total emission")) + 
  labs(title=expression("PM vehicle emissions in Baltimore and LA 1999-2008"))
print(plot6)