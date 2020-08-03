baltnei<-nei[nei$fips=="24510",]
totalemissionbalt<-aggregate(Emissions~year,baltnei,sum)
barplot(
  totalemissionbalt$Emissions,
  names.arg=totalemissionbalt$year,
  xlab="year",
  ylab="Emissions(ton)",
  main="PM2.5 total emissions from Baltimore city sources"
)