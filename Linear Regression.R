women
head(women)
model=lm(weight~height, data=women)
summary(model)
plot(x=women$height, y=women$weight)
abline(model, col=2)
residuals(model)
women$weight
predwt <- predict(model, newdata=women, type='response')
predwt
head(women)
3.45*58-87
cbind(women, predwt, res= women$weight - predwt, res2=residuals(model))
summary(model)
sqrt(sum(residuals(model)^2))
range(women$height)
ndata = data.frame(height=c(66.5,75.8))
predict(model, newdata=ndata, type='response')
confint(model)
#case2

link = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=2023826519"
library(gsheet)
df= as.data.frame(gsheet2tbl(link))
head(df)
model2 = lm(Y ~ X, data=df)
plot(df$X, df$Y)
abline(model2)


#write your inferences
summary(model2)
resid(model2)
range(df$X)
ndata=data.frame(X=c(3,4))
predict(model2, newdata=ndata, type='response')
plot(model)


link1='https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231'
library(gsheet)
df1=as.data.frame(gsheet2tbl(link1))
head(df1)
model3= lm(sqty~ price + promotion, data=df1)
summary(model3)
plot(df1$price, df$sqty)
plot(df1$promotion, df$sqty)
abline(model3)
abline(model3, col=2)
abline(model3, col=3)

range(df1$price)
range(df1$promotion)
ndata2= data.frame(price=c(60,75), promotion= c(300,500))
predict(model3, newdata=ndata2, type='response')


path= 

library(titanic)
titanic::titanic_train
#M2
data('titanic_train', package='titanic')
titanic_train
data('titanic_test', package='titanic')
titanic_test

lapply(list(titanic_train,titanic_test), dim )



## Create dummy variables for categorical variables
library(dummies)
titanic_data <- dummy.data.frame(titanic_train, names=c("Pclass","Sex","Embarked"), sep="_")


# Decision Tree - Classification
#we want predict for combination of input variables, is a person likely to survive or not

#import data from online site
path = 'https://raw.githubusercontent.com/DUanalytics/datasets/master/csv/titanic_train.csv'
titanic <- read.csv(path)
head(titanic)
names(titanic)
data = titanic[,c(2,3,5,6,7)]  #select few columns only
head(data)
dim(data)
#load libraries
library(rpart)
library(rpart.plot)
str(data)
#Decision Tree
names(data)
table(data$Survived)
str(data)
data$Pclass = factor(data$Pclass)
fit <- rpart(Survived ~ ., data = data, method = 'class')
fit
rpart.plot(fit, extra = 104, cex=.8,nn=T)  #plot
head(data)
printcp(fit) #select complexity parameter
prunetree2 = prune(fit, cp=.018)
rpart.plot(prunetree2, cex=.8,nn=T, extra=104)
prunetree2
nrow(data)
table(data$Survived)
# predict for Female, pclass=3, siblings=2, what is the chance of survival

#Predict class category or probabilities
(testdata = sample_n(data,2))
predict(prunetree2, newdata=testdata, type='class')
predict(prunetree2, newdata=testdata, type='prob')
str(data)
testdata2 = data.frame(Pclass=factor(2), Sex=factor('male'), Age=15, SibSp=2)
testdata2
predict(prunetree2, newdata = testdata2, type='class')
predict(prunetree2, newdata = testdata2, type='prob')

#Use decision trees for predicting
#customer is likely to buy a product or not with probabilities
#customer is likely to default on payment or not with probabilities
#Student is likely to get selected, cricket team likely to win etc

#Imp steps
#select columns for prediction
#load libraries, create model y ~ x1 + x2 
#prune the tree with cp value
#plot the graph
#predict for new cases

#rpart, CART, classification model
#regression decision = predict numerical value eg sales

library(rpart)
library(rpart.plot)
str(data)
