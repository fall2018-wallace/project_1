
project= read.csv("satisfactionSurvey.csv")
str(project)

project$Flight.date=gsub("-", "/", project$Flight.date, fixed=T )
project$Flight.date <- as.Date(project$Flight.date, "%m/%d/%Y")
project$Flight.date <- format(project$Flight.date, "%m-%d-%y")

project$Destination.City=gsub(",","", project$Destination.City)

project$Orgin.City=gsub(",","", project$Orgin.City)

project=project[order(project$Satisfaction),]
project$Price.Sensitivity=as.numeric(project$Price.Sensitivity)

sum(is.na(project))
summary(project)
project
