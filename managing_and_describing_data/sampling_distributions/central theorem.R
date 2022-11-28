require(lolcat)

nqtr <- function(x,d){noquote(t(round.object(x,d)))}

#set seed
set.seed(101)

#create exponential distribution with mean of 10
#rate is 1 over the mean
popexp <- rexp(n = 50000, rate = 1/10)

#create histogram of the pop dist
hist.grouped(popexp)

#descriptive stats of population distribution
nqtr(summary.continuous(popexp, stat.sd=T), 5)

# create / simulate a random sampling distribution
set.seed(102)

#set sample size to 100
n <- 100

#create number of repetitions
reps <- 1000

#take the random samples from exp pop with a mean of 10
samplesexp <- replicate(reps, rexp(n, rate = 1/10))
View(samplesexp)

#calculate the avgs of each sample of n=100
sampleavgsexp <- colMeans(samplesexp)

#calculate descriptive statistics
nqtr(summary.continuous(sampleavgsexp, stat.sd=T),5)

#create histogram for the RSD of the means
#from the exponential population
hist.grouped(sampleavgsexp)

#create 2 histograms of the complete pop and 
#the sample averages using same axis to compare

#create a 1 x 2 matrix
dev.off() #turn off defaults
layout(matrix(1:2, nrow=2))

hist.grouped(popexp, xlim = c(0,50), xaxt='n',width.consider = 2)
axis(side = 1, at = seq(0,50,5), labels = seq(0,50,5))

hist.grouped(sampleavgsexp, xlim = c(0,50), xaxt='n',width.consider = 2)
axis(side = 1, at = seq(0,50,5), labels = seq(0,50,5))
