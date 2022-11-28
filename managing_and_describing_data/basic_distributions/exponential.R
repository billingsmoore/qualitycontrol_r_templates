require(lolcat)
nqtr <- function(x,d){
  noquote(t(round.object(x,d)))
}

#example 1
pexp(q = 60, rate = 1/100, lower.tail = F)

#Shade areas under the exponential curve
#create the exponential curve
x=seq(0,800,length=200)
y=dexp(x,rate = 1/100)
plot(x,y,type="l")

#shade the upper tail area
x=seq(60,800,length=100)
y=dexp(x, rate = 1/100)
polygon(c(60,x,800), c(0,y,0), col="red")

#example 2, when xmin is not zero
pexp(q = (20 - 5), rate = 1 / (50 -5), lower.tail = T)
#OR
pexp.lower(q = 20, low = 5, mean = 50, lower.tail = T)

#Shade areas under the exponential curve
#create the curve
x=seq(0,400,length=200)
y=dexp(x,rate = 1/50)
plot(x,y, type = "l")

#shade the lower tail area from xmin to 20
x=seq(5,20,length=100)
y=dexp(x,rate= 1/50)
polygon(c(5,x,20),c(0,y,0), col="red")

#Test for exponentiality when n <= 100
expdata <- rexp(n = 100, rate = 1/50)
shapiro.wilk.exponentiality.test(expdata)

#test when n > 100
expdata <- rexp(n = 101, rate = 1/50)
shapiro.wilk.exponentiality.test(expdata)#doesnt work here!
shapetest.exp.epps.pulley.1986(expdata)
shapetest.exp.epps.pulley.1986(expdata)