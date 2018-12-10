
library(kernlab)
randIndex=sample(1:dim(project_samp)[1])
randIndex

cutPoint2_3=floor(2 * dim(project_samp)[1]/3)
cutPoint2_3


trainData=project_samp[randIndex[1:cutPoint2_3],]
trainData
View(trainData)

testData=project_samp[randIndex[(cutPoint2_3+1):dim(project_samp)[1]],]
testData
str(testData)
View(testData)

dim(trainData)
dim(testData)

newtrainData=trainData[,c(2,3,4,5,6,7,9,11,13,28)]
newtestData=testData[,c(2,3,4,5,6,7,9,11,13,28)]
str(newtestData)
str(newtrainData)
svmop=ksvm(happycustomers ~., data=newtrainData, kernel = "vanilladot",kpar="automatic", C=5,cross=3, prob.model=TRUE)
svmop

#Output of support vectors
hist(alpha(svmop)[[1]], main="support vector histogram with C=5",
     xlab="support vector values")

svmPred <- predict(svmop, newtestData, type = "votes")
svmPred
str(svmPred)
head(svmPred)
dim(svmPred)
svmPred[1,]

# Creatin a confusion matrix
comTable=data.frame(newtestData[ ,10], svmPred[1, ])
comTable[comTable=="0"]="notHappy"
comTable[comTable=="1"]="Happy"
table(comTable)

#calculating the error rate
t<-table(comTable)
sum(t[1,2]+t[2,1])/sum(t)
