#get five number summary (Min, Q1, median, Q3, Max)
summary(castings$weight)

#make boxplot
boxplot(castings$weight,
        main = "Boxplot of Casting Weight",
        ylab = "Weight")
#boxplot with notch indicating confidence interval
boxplot(castings$weight,
        main = "Boxplot of Casting Weight",
        ylab = "Weight",
        notch = T)

#boxplot to compare groups
#boxplot( y ~ x, data = dataframe)
boxplot(weight ~ mold,
        data = castings3,
        main = "Boxplot of Castings by Mold")