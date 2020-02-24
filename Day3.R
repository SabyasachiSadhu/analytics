(x=c(1,2,3,4,5))
#(x2=c(1,2,,4, ,5))
(x2=c(1,2,NA,4,NA,5))
sum(x2)
?sum
sum(x2, na.rm=T)
is.na(x2)
length(x2)
sum(is.na(x2))
length(is.na(x2))
sum(is.na(x2))/length(x2)
mean(x2, na.rm=T)
x2[is.na(x2)]= mean(x2,na.rm=T)
x2 
library(VIM)
pinstall <- c('rpart', 'rpart.plot', 'catools', 'caret', 'arules', 'arulesviz', 'factoextra', 'dendextend', 'NbClust', 'cluster', 'fpc', 'amap','animation')
pinstall1 <-c ('gsheet', 'readxl', 'rJava', 'xlsx', 'wordcloud2', 'modeest', 'fdth','e1071')
install.packages(pinstall1)
data(sleep, package = "VIM")
sleep()
?sleep
head(sleep)
tail(sleep)
str(sleep)
dim(sleep)
?dim
length(sleep)
summary(sleep)
(x=200:300)
quantile(x, seq(0,1,.25))
quantile(x, seq(0,1,.1))
library(dplyr)
head(sleep)
is.na(sleep)
sum(is.na(sleep))
colSums(is.na(sleep))
rowSums(is.na(sleep))
complete.cases(sleep)
sum(complete.cases(sleep))
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
xy= colSums(is.na(sleep))
xy
xy[xy>0]
c1 <- names(xy[xy>0])
c1
sleep[,c1]
sleep %>%  select(c1) %>% length()
sleep %>% select(-c1) %>% length()
'%notin' <- Negate('%in%')
c2 <- names(sleep) %notin% c1
sleep [ ,c2]


#data partitioning.....
(x=1:100)
set.seed(134)
s1 <- sample(x, size=70)
length(s1)
sum(s1)
s2 <- sample(x, size=.7*length(x))
length(s2)

library(cartools)

mtcars
mtcars %>% sample_n(24)
mtcars %>% sample_frac(.7)
dim(mtcars)
(index=sample(1:nrow(mtcars), size =.7*nrow(mtcars)))
mtcars[index,]
index
dim(mtcars[index,])
mtcars[-index,]

#clusterpackages <- c('factoextra', 'dendextend','NbClust', 'cluster','fpc', 'amap','animation')
#arulepackages <- c('arules','arulesViz')
#classpackages <- c('rpart','rpart.plot')
#iepackages <- c('gsheet', 'readxl', 'rJava', 'xlsx')
statspackages <- c('caTools' )
tspackages <- c('timeSeries','xts','zoo','forecast','TTR','quantmod', 'lubridate','smooth','Mcomp')
tmpackages <- c('rtweet',"curl", 'twitterR', 'ROAuth', 'syuzhet','wordcloud', 'wordcloud2')
lppackages <- c('lpSolve', 'linprog', 'lpSolveAPI')

install.packages(c(statspackages,tspackages ,tmpackages,lppackages))  #replace pinstall with name of vector of package list

#Multiple Install
list.of.packages <- plist #substitute plist with name of list of packages
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

#load if avl, install if not avl---
#Load if available, install packages if not available in the system & then load
if (!require("quantmod")) {
  install.packages("quantmod")
  library(quantmod)
}
library(caTools)
sample = sample.split(Y=mtcars$am, SplitRatio= .70)
?sample.split
sample
table(sample)
prop.table(table(sample))
y1=mtcars[sample==T, ]
y2=mtcars[sample==F, ]
prop.table(table(y1$am))
prop.table(table(y2$am))

library(caret)
(intrain <- createDataPartition(y=mtcars$am, p=.7, list=F))
train <- mtcars[intrain, ]
test <- mtcars[-intrain, ]
prop.table(table(train$am))
prop.table(table(test$am))
create

#Linear regression----

women
head(women)
model=lm(weight ~ height, data=women)
summary(model)
plot(x=women$height, y=women$weight)
abline(model, col=2)
residuals(model)
women$weight
predwt <- predict(model, newdata=women, type='response')
head(women)
3.45*58-87
cbind(women, predwt, res= women$weight ~ predwt, res2=residuals(model))

