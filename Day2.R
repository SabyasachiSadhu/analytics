mtcars
table(mtcars$cyl)
summary(mtcars$cyl)
mtcars %>% group_by(cyl) %>% tally()
mtcars %>% group_by(cyl) %>% summarise(count=n())
xtabs(-cyl, data=mtcars)
ftable(mtcars$cyl)
mtcars %>% group_by(cyl, gear) %>% summarise(count=n())
mtcars %>% group_by(cyl, gear) %>% tally()
xtabs(~cyl + gear, data=mtcars)
ftable(mtcars$cyl, mtcars$gear)
?mtcars
table(mtcars$cyl, mtcars$gear, mtcars$am, dnn=c('cyl', 'Gear', 'AutoManual'))
df=mtcars
head(df)
tail(df)
df$am= ifelse(df$am==0, 'Auto', 'Manual')
df
mtcars %>% mutate(TxType = ifelse(am==0, 'Auto', 'Manual')) %>% group_by (TxType) %>% summarise(count = n())
df= df %>% mutate(TxType = ifelse(am==0, 'Auto', 'Manual'))
df
head(df)
df=df %>% mutate(Mapg= 1.1*mpg)
df$mpg * 1.1
head(df)
df=df %>% mutate(Total= mpg+wt)
head(df)
?mutate

df %>% group_by (gear) %>% top_n(n=2, wt= mpg)
df %>% group_by (gear) %>% top_n(n=2, wt= -mpg)

df %>% sample_n(2)
df %>% sample_frac(.25)
arrange (df,desc(mpg))

df %>% sample_frac(.25) %>% arrange(gear, desc(mpg))
df %>% group_by (gear) %>% summarise_at(c('mpg', 'hp','wt', 'disp'),c(mean))
df %>%  select(gear, mpg, wt, disp) %>% group_by (gear) %>% summarise_all(mean)
df %>%  select(mpg, wt, gear) %>% group_by (gear) %>% summarise_each(c(min, max))


#graphs----
hist(df$mpg)
barplot(table(df$gear), col=1:4)
L1 <- paste(round(table(df$gear)/nrow(df)*100,%)
pie(table(df$gear), labels=c('gear3', 'gear4', 'gear5'))
plot(df$wt, df$mpg)

library(ggplot2)
library(reshape2)
library(dplyr)
#
(rollno = paste('IIM', 1:10, sep= '_'))
(name= paste('SName', 1:10, sep= '_'))
(gender= sample(c('M', 'F'),size=10, replace=T))
(program= sample(c('BBA','MBA'), size=10, replace=T))
(marketing= trunc(rnorm(10, mean=60, sd=10)))
(finance= trunc(rnorm(10, mean=55, sd=12)))

