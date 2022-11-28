require(lolcat)
ro <-round.object
nqtr <- function(x,d){noquote(t(round.object(x,d)))}
options(scipen = 999)

#Two Sample Tests for Proportion

#Fisher's Exact Test
proportion.test.twosample.exact.simple(sample.proportion.g1 = 0.18,
                                       sample.size.g1 = 750,
                                       sample.proportion.g2 = 0.12,
                                       sample.size.g2 = 750,
                                       conf.level = 0.99)
#McNemar's Test for Change
#create the contingency table from notes
#create a vector of the counts
#ct <- (a,c,b,d)
ct <- c(56, 56, 4, 4)

#create the 2x2 table
#matrix(ct, nrow = 2)
(ct.new <- matrix(ct, 
                 nrow = 2,
                 dimnames = list("Before" = c("Pass", "Fail"),
                                 "After" = c("Pass", "Fail"))))

#perform McNemar's test
#proportion.test.mcnemar.simple()
#mcnemar.test()
(mcnemar.out <- proportion.test.mcnemar.simple(b = 4, c = 56))
#or
mcnemar.test(ct.new)
