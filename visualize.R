
options(scipen=999)

library(ggplot2)

#1.Customer Satisfaction Based on Airline
sat=table(project$Satisfaction, project$Airline.Name)
sat
airlinenamesat=barplot(sat, main="How many customers are Satisfied with an Airline?", cex.names = 0.45,
                       col=c("darkblue","red", "yellow", "orange", "pink"),ylab="Number of Customers",
                       las=2, legend=rownames("counts2"), args.legend = list(x = "top", ncol=5, inset=c(0, 0), cex=.4))


#2. PriceSensitivity with respect to AirlineName
Count1=nrow(project[which(project$Price.Sensitivity == "1"),])
Count2=nrow(project[which(project$Price.Sensitivity == "2"),])
Count3=nrow(project[which(project$Price.Sensitivity == "3"),])
Count4=nrow(project[which(project$Price.Sensitivity == "4"),])
Count5=nrow(project[which(project$Price.Sensitivity == "5"),])
NewData1=table(project$Price.Sensitivity, project$Airline.Name)
NewData1
NewData1=data.frame(NewData1)
colnames(NewData1)=c("PriceSensitivity","AirlineName","Frequency")

x=NewData1
x$Satisfaction[which(x$PriceSensitivity=="1")]=x$Satisfaction[which(x$PriceSensitivity=="1")]/Count1*100
x$Satisfaction[which(x$PriceSensitivity=="2")]=x$Satisfaction[which(x$PriceSensitivity=="2")]/Count2*100
x$Satisfaction[which(x$PriceSensitivity=="3")]=x$Satisfaction[which(x$PriceSensitivity=="3")]/Count3*100
x$Satisfaction[which(x$PriceSensitivity=="4")]=x$Satisfaction[which(x$PriceSensitivity=="4")]/Count4*100
x$Satisfaction[which(x$PriceSensitivity=="5")]=x$Satisfaction[which(x$PriceSensitivity=="5")]/Count5*100
NewData1=x
ggplot(NewData1,aes(x = PriceSensitivity, fill=AirlineName, y = Frequency))+geom_col(position = "dodge")

#3. Satisfaction vs Age 
ggplot(project,aes(x=project$Age,y=project$Satisfaction))+geom_count()+
  stat_summary(aes(y =project$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#4.Class of Travel with respect to Type of travel
Count6=nrow(project[which(project$Type.of.Travel == "Personal Travel"),])
Count7=nrow(project[which(project$Type.of.Travel == "Business travel"),])
Count8=nrow(project[which(project$Type.of.Travel == "Mileage tickets"),])
NewData2=table(project$Type.of.Travel, project$Class)
NewData2=data.frame(NewData2)
colnames(NewData2)=c("TypeofTravel","ClassofTravel","Frequency")

x=NewData2
x$Satisfaction[which(x$Type.of.Travel=="Personal Travel")]=x$Satisfaction[which(x$Type.of.Travel=="Personal Travel")]/Count1*100
x$Satisfaction[which(x$Type.of.Travel=="Business travel")]=x$Satisfaction[which(x$Type.of.Travel=="Business Travel")]/Count2*100
x$Satisfaction[which(x$Type.of.Travel=="Mileage tickets")]=x$Satisfaction[which(x$Type.of.Travel=="Mileage Travel")]/Count3*100
NewData2=x
ggplot(NewData2,aes(x = TypeofTravel, fill=ClassofTravel, y = Frequency))+geom_col(position = "dodge")

#5.Satisfaction vs. Gender
GenderSatisfaction=ggplot(project, aes(Gender, Satisfaction))+geom_boxplot(aes(fill = Gender))+labs(x="Gender", y="Satisfaction")
GenderSatisfaction=GenderSatisfaction + stat_summary(fun.y=mean, colour="darkred", geom="point", 
                                                     shape=18, size=3,show_guide = FALSE)
GenderSatisfaction

#6.Satisfaction vs. Type of Travel
TypeoftravelSat=ggplot(project, aes(x=Type.of.Travel, y=Satisfaction, colour= "red")) + geom_boxplot(fill="yellow")
TypeoftravelSat=TypeoftravelSat + stat_summary(fun.y=mean, colour="darkred", geom="point", 
                                               shape=18, size=3,show_guide = FALSE)
TypeoftravelSat

#7.Satisfaction with respect to airline status
AirlineStatSatisfaction=ggplot(project, aes(x=Airline.Status, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))
AirlineStatSatisfaction=AirlineStatSatisfaction +xlab("Airline Status") + ylab("Count")
AirlineStatSatisfaction

#8.Satisfaction with respect to price Sensitivity
PriceSensitivitySatisfaction=ggplot(project, aes(x=Price.Sensitivity, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))
PriceSensitivitySatisfaction=PriceSensitivitySatisfaction + xlab("Price Sensitivity") + ylab("Count")
PriceSensitivitySatisfaction

#9. Satisfaction with respect to Type of Travel
TypeofTravelSatisfaction=ggplot(project, aes(x=Type.of.Travel, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))
TypeofTravelSatisfaction=TypeofTravelSatisfaction + xlab("Type of Travel") + ylab("Count")
TypeofTravelSatisfaction

#10.Satisfaction vs. Shopping Amount
ShoppingAmountSatisfaction=ggplot(project, aes(x=project$Shopping.Amount.at.Airport,y=project$Satisfaction))+geom_count()
ShoppingAmountSatisfaction=ShoppingAmountSatisfaction + xlab("Shopping Amount") + ylab("Satisfaction")
ShoppingAmountSatisfaction

