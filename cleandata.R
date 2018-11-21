
project= read.csv("satisfactionSurvey.csv")
str(project)

project$Flight.date=gsub("-", "/", project$Flight.date, fixed=T )
project$Flight.date <- as.Date(project$Flight.date, "%m/%d/%Y")
project$Flight.date <- format(project$Flight.date, "%m-%d-%y")

project$Destination.City=gsub(",","", project$Destination.City)

project$Orgin.City=gsub(",","", project$Orgin.City)

project=project[order(project$Satisfaction),]
project$Price.Sensitivity=as.numeric(project$Price.Sensitivity)

unique(project$Satisfaction)
project$Satisfaction[(project$Satisfaction == "4.00.2.00")|(project$Satisfaction == "4.00.5")]=4
project$Satisfaction <- factor(project$Satisfaction, levels = c("1", "2", "2.5","3","3.5","4","4.5","5"))
unique(project$Satisfaction)


sum(is.na(project))
summary(project)
project
