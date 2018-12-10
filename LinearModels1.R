
sat_orig=lm(formula = Satisfaction ~ Airline.Status + Gender + Age + Price.Sensitivity + Year.of.First.Flight +No.of.Flights.p.a.+ Percentage.of.Flight.with.other.Airlines
            +Type.of.Travel
            +No.of.other.Loyalty.Cards
            +Shopping.Amount.at.Airport
            +Eating.and.Drinking.at.Airport
            +Class
            +Day.of.Month
            +Flight.date
            +Airline.Code
            +Airline.Name
            +Origin.City
            +Origin.State
            +Destination.City
            +Destination.State
            +Scheduled.Departure.Hour
            +Departure.Delay.in.Minutes
            +Arrival.Delay.in.Minutes
            +Flight.time.in.minutes
            +Flight.Distance
            +Arrival.Delay.greater.5.Mins
            , data= project)
summary(sat_orig)

#Linear Model of each significant variable and corresponding plots

AirlineSat=lm(formula = Satisfaction ~ Airline.Status, data= project)
summary(AirlineSat)
AirlineSatPlot <- ggplot(project, aes(x=Airline.Status, y= Satisfaction)) +geom_count() + stat_summary(aes(y=project$Satisfaction, group=1),fun.y=mean, color = "red", geom = "point", group = 1) + labs(x = "Airline Status", y = "Satisfaction")


GenderSat=lm(formula = Satisfaction ~ Gender, data= project)
summary(GenderSat)
GenderSatPlot <- ggplot(project, aes(x=Gender, y= Satisfaction)) +geom_count() + stat_summary(aes(y=project$Satisfaction, group=1),fun.y=mean, color = "red", geom = "point", group = 1) + labs(x = "Gender", y = "Satisfaction")


AgeSat=lm(formula = Satisfaction ~ Age, data= project)
summary(AgeSat)
AgeSatPlot <- ggplot(project, aes(x=Age, y= Satisfaction)) +geom_count() + stat_smooth(method = "lm", col = "red") + labs(x = "Age", y = "Satisfaction")


PriceSat=lm(formula = Satisfaction ~ Price.Sensitivity, data= project)
summary(PriceSat)
PriceSatPlot <- ggplot(project, aes(x=Price.Sensitivity, y= Satisfaction)) +geom_count() + stat_smooth(method = "lm", col = "red") + labs(x = "Price Sensitivity", y = "Satisfaction")


YearSat=lm(formula = Satisfaction ~ Year.of.First.Flight, data= project)
summary(YearSat)
YearSatPlot <- ggplot(project, aes(x=Year.of.First.Flight, y= Satisfaction)) +geom_count() + stat_smooth(method = "lm", col = "red") + labs(x = "Year of First Flight", y = "Satisfaction")


FlightNumSat=lm(formula = Satisfaction ~ No.of.Flights.p.a., data= project)
summary(FlightNumSat)
FlightNumSatPlot <- ggplot(project, aes(x=No.of.Flights.p.a., y= Satisfaction)) +geom_count() + stat_smooth(method = "lm", col = "red") + labs(x = "Number of Flights per Airline", y = "Satisfaction")


TravelSat=lm(formula = Satisfaction ~ Type.of.Travel, data= project)
summary(TravelSat)
TravelSatPlot <- ggplot(project, aes(x=Type.of.Travel, y= Satisfaction)) +geom_count() + stat_summary(aes(y=project$Satisfaction, group=1),fun.y=mean, color = "red", geom = "point", group = 1) + labs(x = "Type of Travel", y = "Satisfaction")


ShoppingSat=lm(formula = Satisfaction ~ Shopping.Amount.at.Airport, data= project)
summary(ShoppingSat)
ShoppingSatPlot <- ggplot(project, aes(x=Shopping.Amount.at.Airport, y= Satisfaction)) +geom_count() + stat_smooth(method = "lm", col = "red") + labs(x = "Shopping Amount at Airport", y = "Satisfaction")


ClassSat=lm(formula = Satisfaction ~ Class, data= project)
summary(ClassSat)
ClassSatPlot <- ggplot(project, aes(x=Class, y= Satisfaction)) +geom_count() + stat_summary(aes(y=project$Satisfaction, group=1),fun.y=mean, color = "red", geom = "point", group = 1) + labs(x = "Class", y = "Satisfaction")
