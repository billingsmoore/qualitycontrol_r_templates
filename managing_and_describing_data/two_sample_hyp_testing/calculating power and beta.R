#calculating beta and power
#example 1
#mu = 440, sigma = 10, delta mu = 10, n = 9, conf. = .95
power.mean.t.onesample(sample.size = 9,
                       effect.size = 10,
                       variance.est = 10^2,
                       alpha = 0.05,
                       alternative = "two.sided")

#same data assume sigma is now 2, n = 9, conf = .95
#what power do we need to detect iINCREASE in variance?
power.variance.onesample(sample.size = 9,
                         null.hypothesis.variance = 10^2,
                         alternative.hypothesis.variance = 12^2, #sd plus 2
                         alpha = 0.05,
                         alternative = "two.sided")

#power to detect DECREASE in variance
power.variance.onesample(sample.size = 9,
                         null.hypothesis.variance = 10^2,
                         alternative.hypothesis.variance = 8^2, #sd minus 2
                         alpha = 0.05,
                         alternative = "two.sided")
