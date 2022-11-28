# Startup Code
require(lolcat)
require(car)
require(dplyr)
require(flextable)
ro<-round.object
nqtr<-function(x,d){noquote(t(round.object(x, d)))}
options(scipen=999)

# Problem 1 ------------------
# MSA Two App Two Cat
ko <- Kevin.Oscar

(ct.ko.obs<-table(ko$Kevin, ko$Oscar))

(ct.ko.obs <- matrix(
  data = ct.ko.obs,
  nrow = 2, byrow = F,
  dimnames = list(
    "Inspector A" = c("Pass", "Fail"),
    "Inspector B" = c("Pass", "Fail"))))

ko.msa <-
  msa.nominal.concordance(ko$Kevin
                          , ko$Oscar)
sum.ko <- summary(ko.msa)
nqtr(sum.ko$BetweenOperators, 5)
    
    
ICA <- subset(ko, select = c(Oscar, Lab))

# Create a contingency table of observed values
(ct.A<-table(ICA$Oscar, ICA$Lab))
(ct.A <- matrix(
  data = ct.A,
  nrow = 2, byrow = F,
  dimnames = list(
    "Measure 1" = c("Pass", "Fail"),
    "Measure 2" = c("Pass", "Fail"))))


# Use MSA Nominal Internal Consistency
msa.ic.A <-
  msa.nominal.internalconsistency(ICA$Oscar
                                  , ICA$Lab)
msa.ic.A$comparisons

sum.msa.ic.A<-as.data.frame(ro(summary(msa.ic.A),4))
sum.msa.ic.A$Description<-"Statistic"

sum.msa.ic.A %>%
  t() %>% 
  as.data.frame() %>% 
  add_rownames() %>%
  flextable() %>%
  delete_part(part = "header") %>%
  add_header_lines(values = "Int. Cons. Inspector A") %>%
  theme_box()

# Validity

Subject<-c(1:300,1:300,1:300)
Rater<-rep(1:3, each=300)
Rating<-cbind(Kevin.Oscar$Kevin, Kevin.Oscar$Oscar, Kevin.Oscar$Lab)

cor.light.g.onesample(subject = Subject
                      ,rater = Rater
                      ,rating = Rating
                      ,rater.standard = 3)

# Problem 2 -------------
# Two App More Cat
beer <- Beer.Assessment
(ct.beer.obs<-table(beer$Jeff, beer$Steve))

# Group unacceptable categories together
# Create new file 
ops.new<-beer
ops.new[ops.new==1]<-0 # any value equal to 1 becomes a zero
ops.new[ops.new > 1]<-1 # any value greater than 1 becomes a 1

# Create Contingency Table with Collapsed Table
(ct.new.obs<-table(ops.new$Jeff, ops.new$Steve))


# Concordance Summary
msa.new.out<-msa.nominal.concordance(ops.new$Jeff, ops.new$Steve)
msa.new.out$comp.operators

sum.msa.new.out<-ro(summary(msa.new.out),4)
nqtr(sum.msa.new.out$BetweenOperators,4)

# Review Unacceptable Reasons

# Make Acceptable an "NA"
ops.un<-beer
ops.un[ops.un==1]<-NA # any value equal to 1 becomes NA
View(ops.un)

# Contingency Table of Unacceptable Observed Values
(ct.un.obs<-table(ops.un$Jeff, ops.un$Steve))

# Concordance Summary
msa.un.out<-msa.nominal.concordance(measurement1 = ops.un$Jeff
                                    , measurement2 = ops.un$Steve)

msa.un.out$comp.operators$`measurement1 v measurement2`

sum.msa.un.out<-summary(msa.un.out)
nqtr(sum.msa.un.out$BetweenOperators,4)

#Grainy
ops.chunky<-ops.un
ops.chunky[ops.chunky==2]<-0 # any value equal to 2 becomes a zero
ops.chunky[ops.chunky > 2]<-1 # any value greater than 1 becomes a 1
View(ops.chunky)

# Contingency Table of Unacceptable Observed Values
(ct.chunky.obs<-table(ops.chunky$Jeff, ops.chunky$Steve))

# Concordance Summary
msa.chunky.out<-msa.nominal.concordance(measurement1 = ops.chunky$Jeff
                                        ,measurement2 = ops.chunky$Steve)

sum.chunky<-summary(msa.chunky.out)
nqtr(sum.chunky$BetweenOperators,4)

# Metallic (3) vs the Others
ops.streak<-ops.un
ops.streak[ops.streak==3]<-0 # any value equal to 3 becomes a zero
ops.streak[ops.streak!=0]<-1 # any value not =0 becomes a 1
View(ops.streak)

# Contingency Table of Unacceptable Observed Values
(ct.streak.obs<-table(ops.streak$Jeff, ops.streak$Steve))

# Concordance Summary
msa.streak.out<-msa.nominal.concordance(measurement1 = ops.streak$Jeff
                                        ,measurement2 = ops.streak$Steve)

sum.streak<-summary(msa.streak.out)
nqtr(sum.streak$BetweenOperators,4)

# Musty (4) vs the Others
ops.light<-ops.un
ops.light[ops.light==4]<-0 # any value equal to 3 becomes a zero
ops.light[ops.light!=0]<-1 # any value not =0 becomes a 1
View(ops.light)

# Contingency Table of Unacceptable Observed Values
(ct.light.obs<-table(ops.light$Jeff, ops.light$Steve))

# Concordance Summary
msa.light.out<-msa.nominal.concordance(measurement1 = ops.light$Jeff
                                       ,measurement2 = ops.light$Steve)

sum.light<-summary(msa.light.out)
nqtr(sum.light$BetweenOperators,4)
