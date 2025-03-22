str1 <- "Today is"
str2 <- "Tuesday"
print(paste(str1,str2)) #paste used for merge

str3 <- "Today is"
str4 <- "Tuesday"
print(paste0(str3,str4))

a<- 100
b<- 50
c<-20

if(a>b & a>c){
  print("a is greater")
}else if(b>a & b>c){
  print("b is greater")
}else{
  print("c is greater")
}

#while loop

i<- 1
while(i<8){
  print(i)
  i<- i+1
}

#break

x<- 1
while(x<6){
  print(x)
  x<-x+1
  if(x==3)
    break
}
# For loop

for(x in 1:5)
  print(x)

car<- list("BMW","AUDI","Mazda")
for(i in car)
  print(i)

#skip iteration

car<- list("BMW","AUDI","Mazda")
for(i in car){
  if(i=="BMW"){
    next
  }
  print(i)
}

# creating function
my_function<- function(){
  print("Hello")
}
my_function()

t_function<- function(fname){
  paste(fname,"Chandpur")
}
t_function("I am from")


t_function<- function(fname,lname){
  paste(fname,lname)
}
t_function("I am from","Faridgonj")


#global variable

txt<- "Bangladesh"
y_function<- function(){
  paste("R is", txt)
}
y_function()
