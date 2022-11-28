require(lolcat)

weight <- c(65,67,36,37,36,57,53,39,38,58)
preform <- data.frame(weight)
View(preform)

#find range of values in data set
range(preform$weight) #gives min and max as vector
rng <- range(preform$weight) #save vector to variable
rng[2] - rng[1] #max minus min for range

#find interquartile range
IQR(preform$weight)

#find standard deviation
sd(preform$weight)
#or, rounded to two decimals
round.object(sd(preform$weight), 2)

#find variance
var(preform$weight)
#or, rounded to two decimals
round.object(var(preform$weight),2)

