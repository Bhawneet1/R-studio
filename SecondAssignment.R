#Q1
v=c(rep("Gold",20),rep("silver",30),rep("bronze",50))
sample(v,10)
print(sample(v,10))

y=c("failure","success")
print(sample(y,10,replace=TRUE,c(0.1,0.9)))


#Q2
#a.
N<-1000
n<-50
sum<-0
for(i in 1:N)
{
  result<-as.integer(any(duplicated(sample(365,n,replace=T))))
  sum<-sum+result
}
probab<- sum/N
print(probab)

#b.
qbirthday(prob=0.5,classes=365,coincident = 2)
pbirthday(23,classes=365,coincident = 2)
#Q3
cond_prob<-function(a,b,c)
{
  result<-c/b
  return(result)
}
a=0.4
b=0.2
c=0.85
d=b*c;
ans<-cond_prob(b,a,d)
print(ans)


#Q4
x=iris
print(head(x,10))
print(tail(x,10))
print(str(x))
print(range(x$Sepal.Length))
print(mean(x$Sepal.Length))
print(median(x$Sepal.Length))
q1<-quantile(x$Sepal.Length,0.25)
q3<-quantile(x$Sepal.Length,0.75)
print(quantile(x$Sepal.Length,0.25))
print(quantile(x$Sepal.Length,0.75))
print(q3-q1)

print(sd(x$Petal.Length))



print(var(x$Petal.Length))
print(summary(x))
print(lapply(x[1:4],sd))

#Q5

mode<-function(data){
  table_freq=table(data)
  max_freq=max(table_freq)
  mode_value=as.numeric(names(table_freq[table_freq==max_freq]))
  return(mode_value)
}

a<-mode(x)
print(a)

