
randIndex_SE=sample(1:dim(project_SE)[1])
randIndex_SE

cutPoint2_3_SE=floor(2 * dim(project_SE)[1]/3)
cutPoint2_3_SE


trainData_SE=project_SE[randIndex_SE[1:cutPoint2_3_SE],]
trainData_SE
View(trainData_SE)

testData_SE=project_SE[randIndex_SE[(cutPoint2_3_SE+1):dim(project_SE)[1]],]
testData_SE
str(testData_SE)
View(testData_SE)

dim(trainData_SE)
dim(testData_SE)

newtrainData_SE=trainData_SE[,c(2,3,4,7,9,28)]
newtestData_SE=testData_SE[,c(2,3,4,7,9,28)]
str(newtestData_SE)
str(newtrainData_SE)
View(newtestData_SE)

svmop_SE=ksvm(happycustomers ~., data=newtrainData_SE, kernel = "vanilladot",kpar="automatic", C=5,cross=3, prob.model=TRUE)
svmop_SE

#Output of support vectors
hist(alpha(svmop_SE)[[1]], main="support vector histogram with C=5",
     xlab="support vector values")

svmPred_SE=predict(svmop_SE, newtestData_SE, type = "votes")
svmPred_SE
str(svmPred_SE)
head(svmPred_SE)
dim(svmPred_SE)
svmPred_SE[1,]

#Creating a confusion matrix
comTable_SE=data.frame(newtestData_SE[ ,6], svmPred_SE[1, ])
comTable_SE[comTable_SE=="0"]="notHappy"
comTable_SE[comTable_SE=="1"]="Happy"
table(comTable_SE)

#calculating the error rate
t_SE<-table(comTable_SE)
sum(t_SE[1,2]+t_SE[2,1])/sum(t_SE)
