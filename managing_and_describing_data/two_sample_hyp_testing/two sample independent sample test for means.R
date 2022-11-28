ro <- round.object

#example 1
ro(t.test.twosample.independent.simple(sample.mean.g1 = 00.60,
                                       sample.variance.g1 = 0.0015^2,
                                       sample.size.g1 = 25,
                                       sample.mean.g2 = 0.0090,
                                       sample.variance.g2 = 0.0013^2,
                                       sample.size.g2 = 30,
                                       conf.level = 0.95),6)

#example 2, cap pull data

t.test.twosample.independent(g1 = CapPull2$pull[CapPull2$mold==1],
                             g2 = CapPull2$pull[CapPull2$mold==2])

#make factors
str(CapPull2)
CapPull2$mold <- as.factor(CapPull2$mold)
str(CapPull2)

#Descriptive Summary
summary.continuous(fx = pull~mold, data = CapPull2)

# Data Visualisation
boxplot(pull~mold, data = CapPull2, col="red")

process.group.plot(fx = pull~mold, data = CapPull2)

#Two Sample UNEQUAL VARIANCE t test for Means

#example 3
ro(t.test.twosample.independent.simple(sample.mean.g1 = 75,
                                       sample.variance.g1 = 20^2,
                                       sample.size.g1 = 12,
                                       sample.mean.g2 = 82,
                                       sample.variance.g2 = 9^2,
                                       sample.size.g2 = 12,
                                       conf.level = 0.90))
