archiveFile<-"NEI_data.zip"
archiveURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(url=archiveURL,destfile=archiveFile,method="curl")
if(!(file.exists("summarySCC_PM25.rds")&& 
     file.exists("Source_Classification_Code.rds"))){unzip(archiveFile)}
nei<-readRDS("summarySCC_PM25.rds")
scc<-readRDS("Source_Classification_Code.rds")
totalEmission<-aggregate(Emissions~year,nei,sum)
barplot(
  (totalEmission$Emissions)/10^5,
  names.arg=totalEmission$year,
  xlab="year",
  ylab="Total Emissions(10^5ton)",
  main="PM2.5 total emissions US Sources"
)