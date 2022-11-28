require(lolcat)

nqtr <- function(x,d){noquote(t(round.object(x,d)))}

#set seed
set.seed(133)

#create a distribution with mean of 10 and SD of 2
pop <- rnorm(n  = 50000, mean = 10, sd = 2)

#create a histogram of the population distribution
hist.grouped(pop, anchor.value = 0)

#calculate descriptive statistics of the pop dist
nqtr(summary.continuous(pop, stat.sd=T), 5)

#create Random Sampling Distribution
#
#set sample size to 4
n <- 4

#create number of repeititions
#(number of times we will take a sample size of 4)
reps <- 5000

#Take the random samples from a population with
#mean of 10 and sd of 2
samples <- replicate(reps, rnorm(n, mean = 10, sd =2))
View(samples)

#calculate the avg of each sample (column) of 4
sampleavgs <- colMeans(samples)

#calculate descriptive statistics of the RSD
nqtr(summary.continuous(sampleavgs, stat.sd=T),5)

#create two histograms of the population and the sample averages
#using the same axis to compare

#create a 1 x 2 matrix
dev.off()
layout(matrix(1:2, nrow=2))

#Create both histograms
hist.grouped(pop, xlim=c(0,22), xaxt='n', width.consider = 1)
axis(side = 1, at = seq(0,22,2), labels = seq(0,22,2))

hist.grouped(sampleavgs, xlim=c(0,22), xaxt='n', width.consider = 1)
axis(side = 1, at = seq(0,22,2), labels = seq(0,22,2))
