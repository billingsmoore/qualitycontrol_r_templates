require(lolcat)
ro <- round.object
nqtr<-function(x,d){noquote(t(ro(x,d)))}
options(scipen=999)

#confidence interval for mean (sigma is known)
#example 1
n <- 150
xbar <- 20
sd <- 5
conf <- 0.95
#rounded output
ro(z.test.onesample.simple(sample.mean = 20,
                        known.population.variance = 5^2,
                        sample.size = 150,
                        conf.level = 0.95), 2)

#confidence interval for mean (sigma is unknown)
#example 2
n <- 14
xbar <- 15000
sd <- 500
conf <- 0.99

t.test.onesample.simple(sample.mean = xbar,
                        sample.variance = sd^2,
                        sample.size = n,
                        conf.level = conf)

#confidence interval for variance
#example3
sd <- 10
n <- 25
conf <- 0.95

ci.var <- variance.test.onesample.simple(sample.variance = 10^2,
                                         sample.size = 25,
                                         conf.level = 0.95)
#confidence interval for variance
ci.var$conf.int
#confidence interval for standard deviation
sqrt(ci.var$conf.int)

#Generate Confidence Intervals using a file
#using the point estimate file, calculate the 95% confidence interval
#estimates for the mean, variance, and standard deviation for the weight data

#Test for normality
#Anderson-Darling test (adtest)
#Shapiro-Wilkes test (swtest)
#if any are >.5 then it is normally distributed
nqtr(summary.continuous(Point_Estimates$Weight), 4)

#Calculate confidence intervals
t.test.onesample(Point_Estimates$Weight, conf.level = 0.95)
