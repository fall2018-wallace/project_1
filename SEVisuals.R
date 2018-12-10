
#DATA VISUALIZATION

#1.Satisfaction vs. Age for Southeast
SatSE <- ggplot(project_SE,aes(x=project_SE$Age,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#2.Satisfaction Vs. Age for all other airlines
SatAgeSE <- ggplot(project_other,aes(x=project_other$Age,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#3.Satisfaction vs. Arrival Delay for SouthEast
SatArrive <- ggplot(project_SE,aes(x=project_SE$Arrival.Delay.in.Minutes,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#4.Satisfaction vs. Arrival Delay for Other airlines
SatArriveOther <- ggplot(project_other,aes(x=project_other$Arrival.Delay.in.Minutes,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#5.Satisfaction vs. Departure Delay for Southeast
ggplot(project_SE,aes(x=project_SE$Departure.Delay.in.Minutes,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#6.Satisfaction vs. Departure Delay for other airlines
ggplot(project_other,aes(x=project_other$Departure.Delay.in.Minutes,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#7.Satisfaction vs. Airline Status for SE
ggplot(project_SE,aes(x=project_SE$Airline.Status,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#8.Satisfaction vs. Airline Status for other airlines
ggplot(project_other,aes(x=project_other$Airline.Status,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#9.Satisfaction vs. Gender for SE
ggplot(project_SE,aes(x=project_SE$Gender,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#10.Satisfaction vs. Gender for other airlines
ggplot(project_other,aes(x=project_other$Gender,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#11.Satisfaction vs. No of Flights per airline for SE
ggplot(project_SE,aes(x=project_SE$No.of.Flights.p.a.,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#12.Satisfaction vs.No. of Flights per airline for all other airlines
ggplot(project_other,aes(x=project_other$No.of.Flights.p.a.,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#13.Satisfaction vs.class for SE
ggplot(project_SE,aes(x=project_SE$Class,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#14.Satisfaction vs. class for all other airlines
ggplot(project_other,aes(x=project_other$Class,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#15.Satisfaction vs. Price Sensitivity for SE
ggplot(project_SE,aes(x=project_SE$Price.Sensitivity,y=project_SE$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_SE$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

#16.Satisfaction vs.No. of Flights per airline for oall other airlines
ggplot(project_other,aes(x=project_other$Price.Sensitivity,y=project_other$Satisfaction))+geom_count()+
  stat_summary(aes(y =project_other$Satisfaction,group=1), fun.y=mean, colour="red", geom="point",group=1)

