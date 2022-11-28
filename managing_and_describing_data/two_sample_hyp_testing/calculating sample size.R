#calculating sample size
#sample size calculations for changes in means

require(lolcat)

alpha <- 0.05
beta <- 0.02
deltamu <- 1
sd <- 2

#sigma unknown, non-directional, one sample
sample.size.mean.t.onesample( effect.size = 1,
                              variance.est = 2^2,
                              alpha = 0.05,
                              beta = 0.02,
                              alternative = "two.sided")

#sample size calculations for changes in variance
#sample size, one sample
sigma0 <- 2 # variance = 4
sigma1 <- 3 # variance = 9, variance increases case
sigma2 <- 1 # variance = 1, variance decreases case
alpha <- 0.05
beta <- 0.02

#two sided, one sample (testing for a change in either direction)
#use two.sided test for both larger and smaller variance
#take the larger sample size of the two
#first, if variance increases
sample.size.variance.onesample(null.hypothesis.variance = sigma0^2,
                               alternative.hypothesis.variance = sigma1^2,
                               alpha = alpha,
                               beta = beta)
#if variance decreases
sample.size.variance.onesample(null.hypothesis.variance = sigma0^2,
                               alternative.hypothesis.variance = sigma2^2,
                               alpha = alpha,
                               beta = beta)
