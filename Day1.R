#IIMLNC
#day1
?mtcars  #help on cars
x= 1:5
class(x)
str(mtcars)

y=c(1,3.5,5)
y
class(as.integer(y))
z=c(1L, 3L,5L)
class(z)
summary(mtcars)
as.integer(y)
?str

#vectors----
x=1:100
x
x-1:100
x3=c(2,4,36,3)
x3
print(x3)
x3[2]
(x4= rnorm(n=1000, mean=60, sd=10))
plot(x4)
plot(density(x4))
hist(x4, breaks=10, col=1:10)
range(x4)
min(x4); max(x4)
mean(x4); median(x4)
boxplot(x4)
sort(x4)
sort(x4, decreasing = TRUE)
plot(sort(x4), type='b')
plot(x4, type='b')
mean(x4[x4>65])
x4
x4[1:10]
x4[-c(1:10)]#
length(x4[x4>65])
sum(x4>65)
rev(x4)
?rev
x4[x4>60 & x4<70]


#matrices----
data=c(10,30,40,44,22,55)
(m1= matrix(data=data, nrow=2))
m1
rownames(m1)= c('R1', 'R2')
m1
colnames(m1)=  c('C1', 'C2', 'C3')
m1

m1[,c('C1','C2'.'C3')]
colSums(m1)
rowSums(m1)
colMeans(m1)

apply(m1,1,FUN=min)
apply(m1,1,FUN=max)
apply(m1,2,FUN=max)
max(m1)
min(m1)
(m1= matrix(data=data, nrow=2,byrow=T))

#dataframe----
(rollno= paste('IIMLN', 1:13,sep='-'))
(name=paste('Student', 1:13, sep='&'))
(age=round( runif(13, min=24, max=32), 2))
(marks=trunc(rnorm(13, mean=60, sd=10)))
set.seed(34)
(gender= sample(c('M','F'), size=13, replace=T, prob=c(.7,.3)))
table(gender)
(x=c(-14.35, 14.35, -14.55,15.35))
floor(x); ceiling(x); trunc(x)
(grade=sample(c('Ex', 'Good', 'Sat'), size=13, replace=T, prob=c(.6,.3,.1)))
table(grade)
prop.table(table(grade))
sapply(list(rollno,name,age,marks,gender,grade),length)
(students=data.frame(rollno,name,age,marks,gender,grade))
write.csv(students, 'data/students.csv')
write.csv(students, 'data/students.csv', row.names=F)
df1=read.csv( 'data/students.csv')
df1
df2=read.csv('https://raw.githubusercontent.com/SabyasachiSadhu/analytics/master/data/students.csv')
df2
df3=read.csv(file.choose())
df3

stud
library(dplyr)

class(students)
summary(students)
students %>% group_by(gender,grade) %>% summarise(mean(age))
students %>% group_by(gender) %>% tally()
mtcars %>% group_by(carb) %>% tally()
