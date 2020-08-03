comb<-grepl("comb",scc$scc.Level.One,ignore.case=TRUE)
coal<-grepl("coal",scc$scc.Level.Four,ignore.case=TRUE) 
coalComb<-(comb&coal)
combscc<-SCC[coalComb,]$scc
combnei<-nei[nei$scc%in%combscc,]
library(ggplot2)
plot4<-ggplot(combustionNEI,aes(factor(year),Emissions/10^4))+
  geom_bar(stat="identity",fill="blue",width=0.75)+
  theme_bw()+guides(fill=FALSE)+
  labs(x="year",y=expression("PM total emission(10⁴ton)"))+ 
  labs(title=expression("PM Coal combustion emissions in US from 1999-2008"))
print(plot4)