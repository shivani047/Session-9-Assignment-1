#Problem 1
#1.If Z is norm (mean = 0, sd = 1)
#Find P(Z > 2.64)
#Find P(|Z| > 1.39)

pnorm(2.64, mean = 0, sd = 1, lower.tail = FALSE)
# 0.004145301

#P(|Z| > 1.39)
#we can find by pnorm function too

#we have to find
#1 - P(-1.39<X<1.39)
#finding P(X>1.39)
x =pnorm(1.39, mean = 0, sd = 1, lower.tail = FALSE)
#0.08226444

#finding P(X<=-1.39)
y =pnorm(-1.39, mean = 0, sd = 1)
#0.08226444


#finding P(X=1.39)
z = dnorm(-1.39, mean = 0, sd = 1)
#0.1518308


#P(|Z| > 1.39) = P(X<=-1.39)+P(X<=-1.39)-P(X=1.39)
x+y-z
#0.01269808



#Problem 2
#2. Suppose p = the proportion of students who are admitted to the graduate school of the University of
#California at Berkeley, and suppose that a public relation officer boasts that UCB has historically had a
#40% acceptance rate for its graduate school. Consider the data stored in the table UCBAdmissions from
#1973. Assuming these observations constituted a simple random sample, are they consistent with the
#officerâ..s claim, or do they provide evidence that the acceptance rate was significantly less than 40%?
#Use an Î± = 0.01 significance level.

#Answer 2

#to check for wheather there is consistency with the officers claim or do they provide evidence 
#that the acceptance rate was significantly less than 40% 
#thus defining the null hypo as Ho:p is equal to 0.40
#and Ha:p less than 0.40

#Ho :  p = 0.4
#Ha :  p < 0.4
#alpha = 0.01   
#Thus to find we use qnorm() function 

-qnorm(0.99)
#-2.326348

#Now to find out our test statistic
ucbData <- as.data.frame(UCBAdmissions)
View(ucbData)
dim(ucbData)
summary(ucbData$Admit)
summary(ucbData)
phat <- 12/(24)
t <- (phat-0.4)/sqrt(0.4*0.6/(24))
t
#1

#by calculations it is clear that our test statistic is not less than -2.326348 
#So we accept our null hypothesis Ho
#hence we say that the observed data are consistent with the officer's claim at
#alpha = 0.01(Level of Significance)

