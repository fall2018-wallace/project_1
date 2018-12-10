
project_SE=subset(project, Airline.Name=="Southeast Airlines Co. ")
project_SE
dim(project_SE)

#Subset of SouthEast Airlines Co.
project_SE_samp=subset(project_samp, Airline.Name=="Southeast Airlines Co. ")
project_SE_samp
dim(project_SE_samp)

#All other airlines except SouthEast
project_other=subset(project, Airline.Name!="Southeast Airlines Co. ")
project_other
dim(project_other)

#Subset of all other airlines except SouthEast
project_other_samp=subset(project_samp, Airline.Name!="Southeast Airlines Co. ")
project_other_samp
dim(project_other_samp)

project_SE$Price.Sensitivity <- as.numeric(as.character(project_SE$Price.Sensitivity))
project_SE$Year.of.First.Flight <- as.numeric(as.character(project_SE$Year.of.First.Flight))
project_SE$No.of.Flights.p.a. <- as.numeric(as.character(project_SE$No.of.Flights.p.a.))
project_SE$Percentage.of.Flight.with.other.Airlines <- as.numeric(as.character(project_SE$Percentage.of.Flight.with.other.Airlines))
project_SE$No.of.other.Loyalty.Cards <- as.numeric(as.character(project_SE$No.of.other.Loyalty.Cards))
project_SE$Shopping.Amount.at.Airport <- as.numeric(as.character(project_SE$Shopping.Amount.at.Airport))
project_SE$Eating.and.Drinking.at.Airport <- as.numeric(as.character(project_SE$Eating.and.Drinking.at.Airport))
project_SE$Day.of.Month <- as.numeric(as.character(project_SE$Day.of.Month))
project_SE$Scheduled.Departure.Hour <- as.numeric(as.character(project_SE$Scheduled.Departure.Hour))
project_SE$Departure.Delay.in.Minutes <- as.numeric(as.character(project_SE$Departure.Delay.in.Minutes))
project_SE$Arrival.Delay.in.Minutes <- as.numeric(as.character(project_SE$Arrival.Delay.in.Minutes))
project_SE$Flight.time.in.minutes <- as.numeric(as.character(project_SE$Flight.time.in.minutes))
project_SE$Flight.Distance <- as.numeric(as.character(project_SE$Flight.Distance))
