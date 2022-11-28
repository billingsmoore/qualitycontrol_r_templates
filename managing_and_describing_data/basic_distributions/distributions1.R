#example of binomial probability distribution
table.dist.binomial(n = 2, p = 0.2)

#barplot of binomial probability distribution
n <- 2
P <- 0.2
data <- dbinom(x = 0:n, size = n, prob = P)
names(data) <- 0:n
barplot(data, 
        xlab = "# of Defects", 
        ylab = "P(D)", 
        ylim = c(0,1))

#probability distribution for discrete random variable
(freqdistdp <- round.object(
  frequency.dist.grouped(Daily.Production$V1), 3))
(probdistdp <- freqdistdp[,c("min", "freq", "rel.freq")])
colnames(probdistdp) <- c("Daily Production", "# of Days", "P(DP)")
View(probdistdp)

#probability distribution histogram
hist.grouped(Daily.Production$V1,
             freq = F,
             anchor.value = 50,
             ylim = c(0,0.2))

#expected value of discrete random variable
x <- probdistdp$`Daily Production`
y <- probdistdp$`P(DP)`
weighted.mean(x,y)

#OR
mean(Daily.Production$V1)
