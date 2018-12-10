
library(arules)
library(arulesViz)

project_ar=project
str(project_ar)


change1=function(vec)
{
  vBuckets <- replicate(length(vec), "Average")
  vBuckets[vec > 4]="High"
  vBuckets[vec < 4]="Low"
  return(vBuckets)
}

Satisfaction_ar=change1(project$Satisfaction)
unique(Satisfaction_ar)

Price.Sensitivity_ar=change1(project$Price.Sensitivity)
unique(Price.Sensitivity_ar)


change2=function(v)
{
  q=quantile(v, c(0.4, 0.6))
  vBuckets=replicate(length(v), "Average")
  vBuckets[v <= q[1]]="Low"
  vBuckets[v > q[2]]="High"
  return(vBuckets)
}

Age_ar=change2(project$Age)
unique(Age_ar)

No.of.Flights.p.a_ar=change2(project$No.of.Flights.p.a.)
unique(No.of.Flights.p.a_ar)

Shopping.Amount.at.Airport_ar=change2(project$Shopping.Amount.at.Airport)
unique(Shopping.Amount.at.Airport_ar)

Percentage.of.Flight.with.other.Airlines_ar=change2(project$Percentage.of.Flight.with.other.Airlines)
unique(Percentage.of.Flight.with.other.Airlines_ar)

No.of.other.Loyalty.Cards_ar=change2(project$No.of.other.Loyalty.Cards)
unique(No.of.other.Loyalty.Cards_ar)

Eating.and.Drinking.at.Airport_ar=change2(project$Eating.and.Drinking.at.Airport)
unique(Eating.and.Drinking.at.Airport_ar)

Departure.Delay.in.Minutes_ar=change2(project$Departure.Delay.in.Minutes)
unique(Departure.Delay.in.Minutes_ar)

project_ar$Arrival.Delay.in.Minutes_ar=change2(project$Arrival.Delay.in.Minutes)
unique(project_ar$Arrival.Delay.in.Minutes_ar)

change3=function(v)
{
  q=quantile(v, c(0.4, 0.6))
  vBuckets=replicate(length(v), "Average")
  vBuckets[v <= q[1]]= "Least Recent"
  vBuckets[v > q[2]]= "Most Recent"
  return(vBuckets)
}

Year.of.First.Flight_ar=change3(project$Year.of.First.Flight)
unique(Year.of.First.Flight_ar)


ProjectSurvey=data.frame(Satisfaction_ar, project$Airline.Status, project$Gender, Age_ar, Price.Sensitivity_ar, Year.of.First.Flight_ar, No.of.Flights.p.a_ar, project$Type.of.Travel, Shopping.Amount.at.Airport_ar, project$Class)
ProjectSurveyx=as(ProjectSurvey, "transactions")

ruleset=apriori(ProjectSurveyx, parameter = list(support=0.05, confidence =0.05), appearance = list(default="lhs",rhs=("Satisfaction_ar=High")))

inspect(ruleset)
