require(lolcat)
#create four random samples of size n=30
#with mu = 100, sigma = 1-
d1 <- rnorm(n = 30, mean = 100, sd = 10)
d2 <- rnorm(n = 30, mean = 100, sd = 10)
d3 <- rnorm(n = 30, mean = 100, sd = 10)
d4 <- rnorm(n = 30, mean = 100, sd = 10)

#create a dataframe of all variables
normdata <- data.frame(d1,d2,d3,d4)
View(normdata)

#review summary statistics of all variables
summary.all.variables(normdata, stat.sd=T)

#make output easier to read
nqtr <- function(x,d){
  noquote(t(round.object(x,d)))
}
nqtr(summary.all.variables(normdata, stat.sd=T), 3)

#create histograms of each variable in one plot
#set parameters for graphical output and create matrix
#nrows and ncols
par(mfrow=c(2,2))
hist.grouped(normdata$d1)
hist.grouped(normdata$d2)
hist.grouped(normdata$d3)
hist.grouped(normdata$d4)

#set parameters back to one graph
par(mfrow=c(1,1))
