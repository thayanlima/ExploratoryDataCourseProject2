library(ggplot2)
plot3<-ggplot(baltnei,aes(factor(year),Emissions,fill=type))+geom_bar(stat="identity")+theme_bw()+guides(fill=FALSE)+facet_grid(.~type,scales="free",space="free")+labs(x="year",y=expression("PM total emission(ton)"))+labs(title=expression("PM emission,Baltimore city 1999/2008 by type"))
print(plot3)
