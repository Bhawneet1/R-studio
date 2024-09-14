#Q1
vect<-c(5,10,15,20,25,30);
print(max(vect));
print(min(vect));


#Q2
num =as.integer(readline(prompt="Enter a number: "))
fact=1;
if(num<0){
  print("Factorial does not exist")
}else if(num==0)
{
  print("The factorial of 0 is 1")
}else
{
  for(i in 1:num)
  {
    fact=fact*i;
  }
  print(paste("The factorial of ",num," is ",fact))
}

#Q3
n=as.integer(readline(prompt = "Enter a number "))
n1=0
n2=1
fib=0
count=2
if(n<=0)
{
  print("Error!!!")
}else if(n==1)
{
  print(n1)
}else 
{
  print(n1)
  print(n2)
}

while(count<n)
{
  c=n1+n2
  print(c)
  n1=n2
  n2=c
  count=count+1
}

#Q4
n3=as.integer(readline(prompt = "Enter instruction here "))
a=10
b=2
switch (n3,
  "1" = print(a+b),
  "2" = print(a-b),
  "3" = print(a/b),
  "4" = print(a*b)
)


#Q5
x=c(1,2,3,4)
y=c(3,7,5,4)
plot(x,y)

pie(x)

plot(1:10,type='b',col='red',cex=2,pch=10)

