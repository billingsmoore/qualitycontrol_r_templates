#transform data from independent to dependent format
castnew <- transform.independent.format.to.dependent.format(
  fx = weight~mold,
  data = castings3
)

#view current column names
colnames(castnew)

#rename column headings
colnames(castnew)[1:3] <- c("Mold_1", "Mold_2", "Mold_3")

#view new column heading names
View(castnew)

#calcule pearson product-moment correlation coefficient
cor(x = castnew$Mold_1, 
    y = castnew$Mold_2, 
    method="pearson")

#create scatterplot
plot(
  x = castnew$Mold_1, 
  y = castnew$Mold_2, 
  pch = 19,
  cex = 1,
  xlab = "Mold 2",
  ylab = "Mold 1")

abline(lm(castnew$Mold_2~castnew$Mold_1, col="blue", lwd=2))
