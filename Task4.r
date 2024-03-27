library(datasets)
data(airquality)

#plots
x=seq(-2*pi,2*pi,by=0.01)
y=cos(x)

plot(x,y,type='l',lty=1,col='black',ylab='cos')
plot(x,y,type='l',lty=2,col='black',ylab='cos')
plot(x,y,type='p',lty=1,col='black',ylab='cos')
plot(x,y,type='l',lty=1,col='red',ylab='cos')
plot(cos,-2*pi,2*pi)

y=sin(x)
plot(x,y,type='l',lty=1,col='black',ylab='sin')
plot(x,y,type='l',lty=2,col='black',ylab='sin')
plot(x,y,type='p',lty=1,col='black',ylab='sin')
plot(x,y,type='l',lty=1,col='red',ylab='sin')
plot(sin,-2*pi,2*pi)


with(airquality, hist(Temp))
with(airquality, plot(Ozone ~ Temp))

plot(c(0,0),c(0,1),type="l",xlim=c(0,1),axes=F,col=3,lwd=2,xlab = "",ylab="")
lines(c(0,1),c(1,0),col=3,lwd=2)
lines(c(1,0),c(0,0),col=3,lwd=2)