#Q1
p1=pbinom(9,12,1/6)-pbinom(6,12,1/6)
print(p1)
p2=dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)
print(p2)


#Q2
p3=1-pnorm(84,72,15.2)
print(p3)
p4=pnorm(100,84,15.2)
print(p4)

#Q3
p5=dpois(0,5)
print(p5)
p6=ppois(50,50)-ppois(47,50)
print(p6)


#Q4
p7=dhyper(3,17,233,5)
print(p7)


#Q5
x=seq(0:31)
pmf=dbinom(x,31,0.447)
plot(x,pmf)
cdf=pbinom(x,31,0.447)
plot(x,cdf)
n=31
np=n*pmf
mean=np
var=np*(1-0.447)
sd=sqrt(var)
print(sd)

