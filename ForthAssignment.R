#Q1
X<-c(0,1,2,3,4)
px<-c(0.41,0.37,0.16,0.05,0.01)
s<-sum(X*px)
print(s)
weighted.mean(X,px)

#Q2
fx<-function(t){
  t*0.1*exp(-0.1*t)
}
expected=integrate(fx,lower = 0,upper = Inf)
print(expected$value)

#Q3

x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)
y<-10*x-12
py<-px
exp<-sum(y*py)
print(exp)


#Q4
a<-function(t){
  t*0.5*exp(-abs(t))
}
expected1<-integrate(a,lower = 1,upper=10)
print(expected1$value)

b<-function(t)
{
  t**2*0.5*exp(-abs(t))
}
expected2<-integrate(b,lower=1,upper = 10)
print(expected2$value)


variance=(expected2$value)-(expected1$value)**2
print(variance)


#Q5
# Define the probability mass function for X
prob_X <- function(x) {
  (3/4) * (1/4)^(x-1)
}

# Function to compute the expected value of Y
expected_value_Y <- function() {
  sum <- 0
  for (x in 1:100) {
    sum <- sum + (x^2) * prob_X(x)
  }
  return(sum)
}

# Function to compute the expected value of Y^2
expected_value_Y2 <- function() {
  sum <- 0
  for (x in 1:100) {
    sum <- sum + (x^4) * prob_X(x)
  }
  return(sum)
}

# Calculate expected value of Y
E_Y <- expected_value_Y()

# Calculate expected value of Y^2
E_Y2 <- expected_value_Y2()

# Calculate variance of Y
variance_Y <- E_Y2 - E_Y^2

# Probability of Y when X = 3
prob_Y_9 <- prob_X(3)

# Print results
cat("Expected value of Y:", E_Y, "\n")
cat("Variance of Y:", variance_Y, "\n")
cat("Probability of Y = 9:", prob_Y_9, "\n")

