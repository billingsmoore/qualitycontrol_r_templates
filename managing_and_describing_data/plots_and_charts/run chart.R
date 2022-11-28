cfm<-c(68,72,72,74,72,69,75,75,72,73,70,71,71,72,73,72,70,72,73,74)
fans<-data.frame(cfm)
View(fans)

require(lolcat)
spc.run.chart(fans$cfm, 
              main = "Run Chart: Computer Fans", 
              ylab = "CFM",
              pch = 20,
              cex = 2,
              col = "red")
mean(fans$cfm)
abline(h=72)
