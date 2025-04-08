#List

g<- "My first list"
h<- c(25,26,18,39)
j<- c("one","two","three")
mylist<- list(title=g,ages=h,j,k)
mylist
mylist[[2]]

#User input

var1<- readline(prompt= "Enter first value:")
var2<- readline(prompt="Enter 2nd value:")

var2 = as.integer(var2)
print(var1)
print(var2)

x<- scan()
print(x)

x<- scan(what = list(string=""))
print(x)

mydata<- data.frame(age= numeric(0),gender= character(0),weight= numeric(0))
mydata<- edit(mydata)


mydata <- read.csv("/Users/bahauddinsakib/Downloads/Iris.csv", header = TRUE, sep = ",")
mydata
mydata[2:6,]
mydata[,1:4]
mydata[1:3,2:4]

subset(mydata,Species=="Iris-setosa")
subset(mydata,Species=="Iris-virginica")
subset(mydata,SepalLengthCm==6.5)
subset(mydata,SepalLengthCm==6.5 | SepalWidthCm==3.0)

#install 
install.packages("dplyr")

#package load
library(dplyr)

stats<- data.frame(fruits= c('Apple','Banana','Orange','Cherry','Apple'),
                   price= c(100,200,300,400,200),
                   weight= c(2,12,6,8,10))
filter(stats,price>100)
distinct(stats)
distinct(stats,fruits, .keep_all=TRUE)
select(stats,weight)
#adding new column
mutate(stats, avg= price/4)

#drop all and keep new column
transmute(stats,avg= price/4)

