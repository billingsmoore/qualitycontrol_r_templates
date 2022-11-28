require(lolcat)

#example 1
#calculate the area under the normal curve using the zscore
#q is the zscore
pnorm(q = -1.6, mean = 0, sd = 1, lower.tail = T)

#calculate the area under the normal curve using the pnorm function
pnorm(q = 172, mean = 180, sd = 5, lower.tail = T)

#example 2
#calculate the area under the normal curve using the zscore
#lower bound zscore is -1.6, upper bound is 3
pnorm(q = -1.6, mean = 0, sd = 1, lower.tail = T)
#note: for upper bound lower.tail is False because
#the upper bound is found in the right hand or upper tail
pnorm(q = 3, mean = 0, sd = 1, lower.tail = F)

#calculate the area under the normal curve using pnorm function
#instead of zscore, q = the bounds actual values
lower <- pnorm(q = 5.15, mean = 5.20, sd = .05, lower.tail = T)
upper <- pnorm(q = 5.35, mean = 5.20, sd = .05, lower.tail = F)

#sum for total area under the normal curve
total <- lower + upper
totalpercent <- total * 100
round.object(totalpercent, 2)

#shade areas under the normal curve
#create the normal curve
x=seq(5,5.45,length=200)
y=dnorm(x, mean = 5.22, sd=.05)
plot(x,y,type="l")

#shade the lower tail
x=seq(5,5.15,length=100)
y=dnorm(x, mean = 5.22, sd=.05)
polygon(c(5,x,5.15),c(0,y,0),col="red")

#shade the upper tail
x=seq(5.35,5.45,length=100)
y=dnorm(x, mean = 5.22, sd=.05)
polygon(c(5.35,x,5.45),c(0,y,0), col="red")

#add line at mean
abline(v = 5.22)

#Test for normality when n < 25
#make example data
normdata <- rnorm(n = 24, mean = 10, sd = 2)
anderson.darling.normality.test(normdata)
shapiro.wilk.normality.test(normdata)
summary.continuous(normdata)

#test for normality when n >= 25
normdata <- rnorm(n = 25, mean = 10, sd = 2)
normout <- dagostino.normality.omnibus.test(normdata)
skkupvals <- c(normout$estimate[6], normout$estimate[12])
summary.continuous(normdata)
