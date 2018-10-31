
project= read.csv("SatisfactionSurvey.csv")
str(project)

project$Flight.date <- as.Date(project$Flight.date, "%m/%d/%Y")
project$Flight.date <- format(project$Flight.date, "%m-%d-%y")

project$Destination.City=gsub(",","", project$Destination.City)


project$Orgin.City=gsub(",","", project$Orgin.City)
View(project)

project$Flight.date=as.Date(project$Flight.date, "%m/%d/%y")
View(project)
project$Flight.date=gsub("-", "/", project$Flight.date, fixed=T )
View(project)

sum(is.na(project))
summary(project)

