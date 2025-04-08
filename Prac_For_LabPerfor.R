x<- 3
y<- 6
z<- 9
result<- x*y*z
result
#length
str1 = "Hello World"
nchar(str1)
#merge two string
str2 = "this is python"
paste(str1,str2)

str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
cat(str)

a<- 50
b<- 60
if(a>b){
  print("A is greater than b")
}else if(a==b){
  print("B is eual A")
}else{
  print("B is greater than A")
}
#Loop

k<- 30
if(k>20){
  print("Above 20")
if(k>25){
  print("Also above 20")
}else{
  print("not above 20")
}
  }else{
  print("below 10")
  }

#while
i<- 2
while(i<7)
{
  print(i)
  i<- i+1
  if(i==5){
    break
  }
}

i <- 0
while(i < 8) {
  i <- i + 1
  if(i == 6) {
    next
  }
  print(i)
}

for(x in 1:10){
  print(x)
}

fruits<- list("Apple","Banana","Orange")
for(x in fruits){
  print(x)
}

for(x in 1:2){
  for(y in 1:3){
    print(x*y)
  }
}

#Vector
X<- c(2,4,7,9,5)
X+1
X*2
X+ c(1,2,3,4)

Y<- c(8,4,9,1,3,5)
sort(Y)

Z<- c(4,6,7,8,9)
Z[2]
Z[c(1,3)]
Z[1]<- 10 
Z
#Matrix
myMatrix<- matrix(c(1,2,3,4,5,6,7,8),nrow=4,ncol=2)
myMatrix
myMatrix[3,2]
myMatrix[c(3,4),]
newMatrix<- rbind(myMatrix,c(11,12))
newMatrix
length(newMatrix)

mat1<- matrix(c("Apple","banana","Orange","Cheery"),nrow=2,ncol=2)
mat2<- matrix(c(50,60,70,80),nrow=2,ncol=2)
comMatrix<- rbind(mat1,mat2)
comMatrix

comMatrix<- cbind(mat1,mat2)
comMatrix

#Array
# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray

multiarray[3,2,2]

multiarray[c(1),,1]

Data_Frame<- data.frame(Training = c("Strength", "Stamina", "Other"),
                        Pulse = c(100, 150, 120),
                        Duration = c(60, 30, 45))
Data_Frame

Data_Frame[2]

#Factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

levels(music_genre)

music_genre[3]

music_genre[3] <- "Pop"

#List
thislist <- list("apple", "banana", "cherry")
thislist
append(thislist, "orange")
append(thislist, "orange", after = 2)
newlist<- thislist[-4] 
newlist
(thislist)[1:3]

