
project= read.csv("satisfactionSurvey.csv")
View(project)
str(project)
summary(project)
dim(project)

#DATA CLEANING
library(data.table)
setnames(project, old=c('X..of.Flight.with.other.Airlines'), new = c('Percentage of Flight with other Airlines'))
setnames(project, old=c('Percentage of Flight with other Airlines'), new = c('Percentage.of.Flight.with.other.Airlines'))
setnames(project, old=c('Orgin.City','No..of.other.Loyalty.Cards'), new = c('Origin.City','No.of.other.Loyalty.Cards'))

project$Flight.date=gsub("-", "/", project$Flight.date, fixed=T )
project$Flight.date=as.Date(project$Flight.date, "%m/%d/%Y")
project$Flight.date= format(project$Flight.date, "%m-%d-%y")
project$Destination.City=gsub(",","", project$Destination.City)
project$Origin.City=gsub(",","", project$Origin.City)
project=project[order(project$Satisfaction),]

trimws(project$Type.of.Travel)
trimws(project$Class)
trimws(project$Airline.Code)
trimws(project$Airline.Name)
trimws(project$Origin.City)
trimws(project$Origin.State)
trimws(project$Destination.City)
trimws(project$Destination.State)

check<-which((is.na(project$Flight.time.in.minutes)&project$Flight.cancelled=="No"))
check
project<-project[-check,]

unique(project$Satisfaction)
project$Satisfaction[(project$Satisfaction == "2.5")]=3
project$Satisfaction[(project$Satisfaction == "4.00.2.00")|(project$Satisfaction == "4.00.5")]=4
project$Satisfaction=factor(project$Satisfaction, levels = c("1", "2","3","4","5"))
project$Satisfaction[(project$Satisfaction == "4.5")]=5
unique(project$Satisfaction)
num=project$Satisfaction
num
project$Satisfaction=as.numeric(levels(num))[num]
project$Price.Sensitivity <- as.numeric(as.character(project$Price.Sensitivity))
project$Year.of.First.Flight <- as.numeric(as.character(project$Year.of.First.Flight))
project$No.of.Flights.p.a. <- as.numeric(as.character(project$No.of.Flights.p.a.))
project$Percentage.of.Flight.with.other.Airlines <- as.numeric(as.character(project$Percentage.of.Flight.with.other.Airlines))
project$No.of.other.Loyalty.Cards <- as.numeric(as.character(project$No.of.other.Loyalty.Cards))
project$Shopping.Amount.at.Airport <- as.numeric(as.character(project$Shopping.Amount.at.Airport))
project$Eating.and.Drinking.at.Airport <- as.numeric(as.character(project$Eating.and.Drinking.at.Airport))
project$Day.of.Month <- as.numeric(as.character(project$Day.of.Month))
project$Scheduled.Departure.Hour <- as.numeric(as.character(project$Scheduled.Departure.Hour))
project$Departure.Delay.in.Minutes <- as.numeric(as.character(project$Departure.Delay.in.Minutes))
project$Arrival.Delay.in.Minutes <- as.numeric(as.character(project$Arrival.Delay.in.Minutes))
project$Flight.time.in.minutes <- as.numeric(as.character(project$Flight.time.in.minutes))
project$Flight.Distance <- as.numeric(as.character(project$Flight.Distance))

project=subset(project, Flight.cancelled=="No")


project$Arrival.Delay.in.Minutes[is.na(project$Arrival.Delay.in.Minutes)]=round(median(project$Arrival.Delay.in.Minutes, na.rm=TRUE))
project$Flight.time.in.minutes[is.na(project$Flight.time.in.minutes)]=round(median(project$Flight.time.in.minutes, na.rm=TRUE))

dim(project)
sum(is.na(project))

na<-which(!(project$Satisfaction %in% c(1,2,3,4,5)))
project<-project[-na,]


str(project)
summary(project)

new=replicate(length(project$Satisfaction), "nil")
new[project$Satisfaction >= 4]="Happy"
new[project$Satisfaction < 4]="notHappy"
project$happycustomers=new
project$happycustomers


str(project)
summary(project)
sum(is.na(project))
dim(project)

table(project$Airline.Name)

stddev_project=sapply(project, sd)
stddev_project
original=data.frame(stddev_project)
colnames(original)=c("original")

dim(original)

set.seed(1)
index=sample(1:dim(project)[1], 60000 )
project_samp=project[index, ]
summary(project_samp)
str(project_samp)
View(project_samp)
dim(project_samp)
dim(project)

stddev_project_samp=sapply(project_samp, sd)
stddev_project_samp
sample=data.frame(stddev_project_samp)
colnames(sample)=c("sample")

dim(sample)

std=cbind(sample, original)


summary(project_samp)
summary(project)

project=project[,-25]
project_samp=project_samp[,-25]

summary(project_samp)
summary(project)
dim(project_samp)
dim(project)


