#binomial example - manual calculation
#probability of 45 successes in 50 trials given 80% chance of success
p <- .80
q <- 1 - p
r <- 45
n <- 50

#[n!/(r!(n-r)!)]*[p^r]*[q^(n-r)]
factorial(n)/(factorial(r)*factorial(n-r))*(p^r)*(q^(n-r))

#binomial example - dbinom
dbinom(x = 45, size = 50, prob = .8)

#binomial example - table of all possible r values
round.object(table.dist.binomial(n = 50, p = 0.80), 5)

#barplot of binomial distribution
n <- 50
P <- 0.8
#x = 26:n because values less than 26 are 0 and unimportant
data <- dbinom(x = 26:n, size = n, prob = P)
names(data) <- 26:n
barplot(data,
        xlab = "# of Good Parts",
        ylab = "P(G)",
        ylim = c(0,0.15)) #ylim so the y-axis doesn't go too high
cols <- rep("grey", n + 1)

#binomial probability of r >= 45
#pbinom gives P[X > x] for upper tail probabilities
pbinom(q = 44, size = 50, prob = 0.80, lower.tail = F)
