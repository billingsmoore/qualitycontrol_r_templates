#Two dependent sample test for means
require(lolcat)
ro <-round.object
nqtr <- function(x,d){noquote(t(round.object(x,d)))}
options(scipen = 999)

#Paired t Test for Mean (dependent by nature)

#example 1

#Check for Normal distributions
#show normality
summary.continuous(Noise)[-1,]
#calculate difference between new and old
#and add to dataframe
Noise$Diff <- Noise$Old - Noise$New
#check for normality
summary.continuous(Noise)[-1,]

#drop first and fourth column
#leaving just old and new
Noise <- Noise[-c(1,4)]

#transpose data and convert to independent format
Noise.I <- transform.dependent.format.to.independent.format(data = Noise)
Noise.I
str(Noise.I)
Noise.I$cell <- as.factor(Noise.I$cell)
Noise.I

#paired t test
t.test.twosample.dependent(x1 = Noise$Old,
                           x2 = Noise$New)

#DBAR METHOD
#get difference between old and new
Noise$Diff <- Noise$Old - Noise$New
t.test.twosample.dependent.simple.dbar(pair.differences.mean = mean(Noise$Diff),
                                       pair.differences.variance = var(Noise$Diff),
                                       sample.size = 10)
#Calculate Pearson Product Moment Correlation Coefficient
cor(Noise$Old, Noise$New)
#Or
cor.pearson.r.onesample(x = Noise$Old, y = Noise$New)

#Matched Pairs t Test for Means

#example 2
#ensure statistically significant relationship
cor.pearson.r.onesample.simple(sample.r = .60, sample.size = 30)


ro(t.test.twosample.dependent.simple.meandiff(sample.mean.g1 = 35.24,
                                              sample.mean.g2 = 38.02,
                                              sample.variance.g1 = 5.18^2,
                                              sample.variance.g2 = 5.63^2,
                                              sample.size = 30,
                                              rho.estimate = .60), 5)
