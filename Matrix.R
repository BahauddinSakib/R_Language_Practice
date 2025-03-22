MyMatrix <- matrix(c(2,4,6,7,8,9),nrow=4,ncol=3)
MyMatrix

MyMatrix1 <- matrix(c("Apple","bananan","Cherry","Orange"),nrow=2,ncol=2) #value enters row wise
MyMatrix1

MyMatrix1[1,2]
MyMatrix1[2,]

MyMatrix2 <- matrix(c("BMW","Audi","Toyota","Mazda","tata","MG","Honda"),nrow=3,ncol=3)
MyMatrix2[c(1,2),]

MyMatrix2 <- matrix(c("BMW","Audi","Toyota","Mazda","tata","MG","Honda"),nrow=3,ncol=3)
newMatrix <- rbind(MyMatrix2, c("Allion","Premio"))
newMatrix