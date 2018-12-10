

project_SE_ar=project_SE
str(project_SE_ar)


change1_SE=function(vec)
{
  vBuckets <- replicate(length(vec), "Average")
  vBuckets[vec > 4]="High"
  vBuckets[vec < 4]="Low"
  return(vBuckets)
}

Satisfaction_SE_ar=change1_SE(project_SE$Satisfaction)
unique(Satisfaction_SE_ar)

Price.Sensitivity_SE_ar=change1_SE(project_SE$Price.Sensitivity)
unique(Price.Sensitivity_SE_ar)


change2_SE=function(v)
{
  q=quantile(v, c(0.4, 0.6))
  vBuckets=replicate(length(v), "Average")
  vBuckets[v <= q[1]]="Low"
  vBuckets[v > q[2]]="High"
  return(vBuckets)
}

Age_SE_ar=change2_SE(project_SE$Age)
unique(Age_SE_ar)

No.of.Flights.p.a_SE_ar=change2_SE(project_SE$No.of.Flights.p.a.)
unique(No.of.Flights.p.a_SE_ar)

Shopping.Amount.at.Airport_SE_ar=change2_SE(project_SE$Shopping.Amount.at.Airport)
unique(Shopping.Amount.at.Airport_SE_ar)

Percentage.of.Flight.with.other.Airlines_SE_ar=change2_SE(project_SE$Percentage.of.Flight.with.other.Airlines)
unique(Percentage.of.Flight.with.other.Airlines_SE_ar)

No.of.other.Loyalty.Cards_SE_ar=change2_SE(project_SE$No.of.other.Loyalty.Cards)
unique(No.of.other.Loyalty.Cards_SE_ar)

Eating.and.Drinking.at.Airport_SE_ar=change2_SE(project_SE$Eating.and.Drinking.at.Airport)
unique(project_SE_ar$Eating.and.Drinking.at.Airport_SE_ar)

Departure.Delay.in.Minutes_SE_ar=change2_SE(project_SE$Departure.Delay.in.Minutes)
unique(Departure.Delay.in.Minutes_SE_ar)

Arrival.Delay.in.Minutes_SE_ar=change2_SE(project_SE$Arrival.Delay.in.Minutes)
unique(Arrival.Delay.in.Minutes_SE_ar)

change3_SE=function(v)
{
  q=quantile(v, c(0.4, 0.6))
  vBuckets=replicate(length(v), "Average")
  vBuckets[v <= q[1]]= "Least Recent"
  vBuckets[v > q[2]]= "Most Recent"
  return(vBuckets)
}

Year.of.First.Flight_SE_ar=change3_SE(project_SE$Year.of.First.Flight)
unique(Year.of.First.Flight_SE_ar)

ProjectSurvey_SE=data.frame(Satisfaction_SE_ar, project_SE$Airline.Status, project_SE$Gender, Age_SE_ar, Price.Sensitivity_SE_ar, Year.of.First.Flight_SE_ar, No.of.Flights.p.a_SE_ar, project_SE$Type.of.Travel, Shopping.Amount.at.Airport_SE_ar, project_SE$Class)
ProjectSurveyx_SE=as(ProjectSurvey_SE, "transactions")

ruleset_SE=apriori(ProjectSurveyx_SE, parameter = list(support=0.05, confidence =0.05), appearance = list(default="lhs",rhs=("Satisfaction_SE_ar=High")))

inspect(ruleset_SE)
