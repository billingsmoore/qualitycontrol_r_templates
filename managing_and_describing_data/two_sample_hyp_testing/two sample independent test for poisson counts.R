#Two Sample Independent Test for Poisson Counts
require(lolcat)

#descriptive summary of data (sample size and mean)
summary.impl(Eddycur$Before, stat.n = T, stat.mean = T)
summary.impl(Eddycur$After, stat.n = T, stat.mean = T)

#test for poisson distribution
poisson.dist.test(Eddycur$Before)
poisson.dist.test(Eddycur$After)

#Poisson Test
#Remember that sample count is n times lambda
(count_before <- sum(Eddycur$Before))
(n_before <- length(Eddycur$Before))

(count_after<-sum(Eddycur$After))
(n_after<-length(Eddycur$After))

poisson.test.twosample.simple(sample.count.g1 = count_before,
                              sample.size.g1 = n_before,
                              sample.count.g2 = count_after,
                              sample.size.g2 = n_after)
