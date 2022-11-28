#Confidence Interval for a Proportion
#example 1
(proportion.test.onesample.exact.simple(sample.proportion = 0.12,
                                        sample.size = 100,
                                        conf.level = 0.95))

#Using the Point Estimate File, calculate the 
#90% confidence interval for the Proportion
(prop <- mean(Point_Estimates$Proportion)) #avg proportion


#Confidence Interval for Poisson Counts
#using point estimate file, calculate
#the 95% confidence interval for Poisson Counts

#Make sure data are Poisson distributed
#p > 0.5
poisson.dist.test(Point_Estimates$Count)

#Get Total Counts in the sample
(counts <- sum(Point_Estimates$Count))

#Get sample size
(n <- length(Point_Estimates$Count))

poisson.test.onesample.simple(sample.count = 501, #counts
                               sample.size = 20, #n
                               conf.level = 0.95)
