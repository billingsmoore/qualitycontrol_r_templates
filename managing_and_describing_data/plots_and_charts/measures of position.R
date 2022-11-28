weight <- c(65,67,36,37,36,57,53,39,38,58)
preform <- data.frame(weight)
View(preform)


#find minimum
min(preform$weight)

#find maximum
max(preform$weight)

#find min and max and 
#the rest of the five number summary
summary(preform$weight)

#find p-th percentile
p <- .30 #for 30th percentile
quantile(x = preform$weight,
         probs = p)