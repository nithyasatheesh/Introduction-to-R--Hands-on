###Solution## Hands-on practice in Data structures-R

##-------------- Vector-----------------------#

#1. Create a vector V with numeric values
V=c(1,2,3,4)
#V=c(1:4)
#V=seq(1,4,1)

#2. Add each element in a vector V with the value 10
V=V+10
V

#3. Find the sum and mean of a vector 'v'.
sum(V);mean(V)

#4. Create empty vector 'New' and append the values "hello",45,21,"Hi"
new=c(); new[1:4]=c("hello",45,21,"Hi")

#5. Insert value 14.5 at last position in the vector 'New'
new[5]= 14.5
new
#new[length(new)+1]=14.5

#6. Extract the values 2.1 and 3.3 from the vector x<-c(2.1,4.2,3.3,5.4)
x<-c(2.1,4.2,3.3,5.4)
x[c(1,3)]

###------------------Matrix------------------------------###
# 1. Create a matrix 'y' with 9 integers of no of rows is 3 and give colnames as A,B,C
# Extract the values at rows 1 & 2 and columns 2 & 3 from the matrix y

y<-matrix(1:9,nrow=3,ncol=3)
colnames(y)<-c("A","B","c")
#y<-matrix(1:9,nrow=3,ncol=3,byrow=TRUE,dimnames=(list(c(1,2,3),c("a","B","C"))))
y
y[1:2,2:3]
#y[1:2,c(2,3)]

# 2. Multiply a matrix 'y' by the vector v=c(1,2,3)
v=c(1:3)
v*y

##------------- Array----------------------------------##
# Create an array of 25 elements by using array()
# Assign dimension names by using dimnames()

z<-array(1:25,c(2,4,3))
dimnames(z)<-list(c('a','b'),c('u','v','w','x'),c('p','q','r'))
z

##----------------List---------------------------###
#1. Create a list 'newlist' from the given two vector objects p and q
# p <- c(2,7,8),q <- c("A", "B", "C") 
# And find the value of newlist[2]

p <- c(2,7,8);q <- c("A", "B", "C")
newlist<-list(p,q)
newlist
newlist[2]
#newlist[[2]][1]

#2.If b <- list(a=1:10, c="Hello", d="AA"), write an R expression that
# will give all elements, except the second, of the first vector of b.

b <- list(a=5:10, c="Hello", d="AA")
b
b[[1]][-2]
#b$a[-2]

#3.Let x <- list(a=5:10, c="Hello", d="AA"), write an R statement 
# to add a new item z = "NewItem" to the list x.
x <- list(a=5:10, c="Hello", d="AA")
x$z<-'New Item'


##---------------DataFrame--------------#

# 1. Create a simple data frame from 3 vectors. 
# 2. Order the entire data frame by the first column.

Name<-c('r','y','t')
age<-c(23,34,56)
weight<-c(50,67,65)
df<-data.frame(Name,age,weight)

df[order(df$Name),]

#df[order(df$Name, decreasing=TRUE),]

# Set your working directory
setwd("D://Files")
#1. Load given Csv file in R and and name it as 'oj'
oj<-read.csv('oj.csv')

##2. Load given excel file in R and name it as 'Insurance'
install.packages("readxl")
library("readxl")
Insurance <- read_excel("Insurance Dataset.xlsx")
                  
##3. Load given json file in R and name it as 'data'
install.packages('rjson')
library('rjson')
data<-fromJSON(file='D://Files//data.json')

## Convert JSON file to a data frame.
data<-as.data.frame(data)

####### ---------------------------------------------######


