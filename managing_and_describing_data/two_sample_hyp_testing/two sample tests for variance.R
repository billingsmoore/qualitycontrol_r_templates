require(lolcat)
ro <-round.object
nqtr <- function(x,d){noquote(t(round.object(x,d)))}
options(scipen = 999)

#Two Independent Sample F Test for Variances
#example 1
ro(variance.test.twosample.independent.simple(sample.variance.g1 = 0.0015^2,
                                              sample.size.g1 = 25,
                                              sample.variance.g2 = 0.0013^2,
                                              sample.size.g2 = 30),7)

#Dependent Sample t Test for Variance
#test for significance of correlation
cor.pearson.r.onesample.simple(sample.r = 0.60, sample.size = 30)

variance.test.twosample.dependent.simple(sample.variance.g1 = 5.18^2,
                                         sample.variance.g2 = 5.63^2,
                                         sample.size = 30,
                                         rho.estimate = 0.60,
                                         conf.level = 0.95)
