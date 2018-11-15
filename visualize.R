
options(scipen=999)
library(ggplot2)

hist_sat=ggplot(project, aes(x=Satisfaction)) + geom_histogram(bins=50,color="black", fill="black", stat = "count")
hist_sat

travel_sat_bar=ggplot(project, aes(x=Type.of.Travel, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))
travel_sat_bar

travel_sat_box=ggplot(project,aes(x=Type.of.Travel,y=Satisfaction))+geom_boxplot(aes(fill=Type.of.Travel))
travel_sat_bar

airline_sat_bar=ggplot(project, aes(x=Airline.Status, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))
airline_sat_bar

airline_sat_box=ggplot(project,aes(x=Airline.Status,y=Satisfaction))+geom_boxplot()
airline_sat_box

price_sat_bar=ggplot(project, aes(x=Price.Sensitivity, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))
price_sat_bar

price_sat_box=ggplot(project,aes(x=Price.Sensitivity,y=Satisfaction))+geom_boxplot(aes(fill=Satisfaction, group= Price.Sensitivity))
price_sat_box

airline_sat_bar=ggplot(project, aes(x=Airline.Name, y= Satisfaction)) + geom_col(aes(fill=Satisfaction))+ theme(axis.text.x=element_text(angle=90, hjust=1))
airline_sat_bar

