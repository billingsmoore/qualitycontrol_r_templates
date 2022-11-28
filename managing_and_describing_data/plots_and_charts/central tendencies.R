weight <- c(65,67,36,37,36,57,53,39,38,58)
preform <- data.frame(weight)
View(preform)

#calculate mean
mean(preform$weight)

#mean for grouped data
#assign grouped frequency to variable
fdcast <- frequency.dist.grouped(castings$weight)

#create vector of midpoints of each class interval
midpts <- fdcast$midpoint

#create vector of the frequency of each class interval
freq <- fdcast$freq

#use weighted mean func to calc mean of grouped data
weighted.mean(x = midpts, w = freq)

#ungrouped mean of casting weight
mean(castings$weight)

#weighted Mean
wt <- c(0.2, 0.4, 0.4)
x <- c(88, 85, 92)
weighted.mean(x=x, w = wt)

#Median
median(preform$weight)

#Mode
table(preform$weight) #gives list with frequencies
#or
sample.mode(preform$weight) #just gives mode
