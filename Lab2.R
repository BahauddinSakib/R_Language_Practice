#while

i<-0
while(i< 4){
  print(i)
  i<-i+1
}

i<-0
while(i< 8){
  print(i)
  i<-i+1
  if(i==5)
    break
}

#continue
i<-0
while(i< 7){
  i<-i+1
  
  if(i==5){
    next
  }
    print(i) 
}
#for
for( x in 1:5){
  print(x)
}

versity<- list("AIUB","NSU","IUB")
for(y in versity){
  print(y)
}
#nested for loop
for(a in 1:7){
  for(b in 2:6){
    print(paste(a,b))
  }
}

for(x in 1:2){
  for(y in 1:3){
    print(x*y)
  }
}

my_func<- function(a,b){
  sum<-a+b
  return(sum)
}

print(my_func(5,6))

n_func<- function(m_name,l_name){
  paste(m_name,l_name)
}
print(paste("Bahauddin","Sakib"))

#vector.    at a time one type of data holds
a<- c(1,2,3,4,5,6)
a
b<-c("apple","Banana","Mango")
b
d<- c(TRUE,FALSE,FALSE)
d
numbers1<- c(1.5:7.5)
numbers1

#mathMatical operation
x<- c(7,8,9,4)
x+3
x*3
x^3
# ascending and descending order
k<- c(45,24,78,11,33)
sort(k)

k<- c(45,24,78,11,33)
val <- sort(k,decreasing=TRUE)
print(val)

#access vector

g<- c(55,88,99,33)
g[3]

g<- c(55,88,99,33)
g[1:3]

g<- c(55,88,99,33)
g[c(1,4)]

#Matrices
#By default matrics value use column wise
my_matrics<- matrix(1:10,nrow=4,ncol=3)
my_matrics



