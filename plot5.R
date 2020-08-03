vehic<-grepl("vehicle",scc$scc.Level.Two,ignore.case=TRUE)
vehicSCC<-scc[vehic,]$scc
vehicnei<-nei[nei$scc %in% vehicscc,]
baltvehicnei<-vehicnei[vehicnei$fips==24510,]
library(ggplot2)
plot5<-ggplot(baltimoreVehiclesNEI,aes(factor(year),Emissions))+
  geom_bar(stat="identity",fill="blue",width=0.75)+
  theme_bw()+guides(fill=FALSE)+
  labs(x="year",y=expression("PM total emission"))+ 
  labs(title=expression("PM Coal combustion emissions in US from 1999-2008"))
print(plot5)