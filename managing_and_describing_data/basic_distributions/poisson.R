#Poisson Distribution - manual calculation
lambda <- 25
x <- 10
(lambda^x/factorial(x))*exp(-lambda)

# poisson example - dpois
dpois(x = 10, lambda = 25)

#poisson example - table
round.object(table.dist.poisson(lambda = 25), 5)
#just the non-zero entries
round.object(table.dist.poisson(lambda = 25)[7:51,], 5)

#barplot of poisson distribution
lambda <- 25
x <- 10
data <- dpois(x = 6:50, lambda = lambda)
names(data) <- 6:50
barplot(data,
        xlab = "Parts per Hour",
        ylab = "P(x)",
        ylim = c(0, 0.10))

#poisson probability of 10 or fewer
ppois(q = 10, lambda = 25, lower.tail = T)

#poisson probability of at least 20 but no more than 30
data <- dpois(x = 6:50, lambda = lambda)
names(data) <- 6:50
barplot(data, 
        xlab = "Parts per Hour",
        ylab = "P(x)",
        ylim = c(0,0.10))
cols <- rep("grey", n + 1)
cols[15:25] <- "red"
barplot(data,
        col = cols,
        xlab = "Parts per Hour",
        ylab = "P(x)",
        ylim = c(0,0.10))
#probability of fewer than 20
(ft20 <- ppois(q = 20, lambda = 25, lower.tail = T))
#probability of fewer than 30
(ft30 <- ppois(q = 30, lambda = 25, lower.tail = T))
#probability of between 20 and 30
ft30-ft20

#poisson distribution testing
#if data is poisson distribution p value will be greater than .5 
poisdist <- rpois(n = 100, lambda = 25)
poisson.dist.test(poisdist)
