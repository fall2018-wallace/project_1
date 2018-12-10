
SE=lm(formula = Satisfaction ~ Airline.Status + Gender + Age + Price.Sensitivity + Year.of.First.Flight +No.of.Flights.p.a.+ Percentage.of.Flight.with.other.Airlines
      +Type.of.Travel
      +No.of.other.Loyalty.Cards
      +Shopping.Amount.at.Airport
      +Eating.and.Drinking.at.Airport
      +Class
      +Day.of.Month
      +Flight.date
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
      ,data= project_SE)
summary(SE)

#2.Linear Model on all other airlines
other=lm(formula = Satisfaction ~ Airline.Status + Gender + Age + Price.Sensitivity + Year.of.First.Flight +No.of.Flights.p.a.+ Percentage.of.Flight.with.other.Airlines
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
         ,data= project_other)
summary(other)

dim(project_SE)
dim(project_other)
View(project_SE)
