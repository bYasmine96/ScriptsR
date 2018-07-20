data=read.table(file.choose(),header=TRUE)
myreg=glm(y~x,family=binomial(link=legit))
summary(myreg)
logit_ypredit=-0.12*x+5.95
plot(data$x,data$y)
points(x,ypredit,col="red")
o=order(x)
points(x[0],ypredit[0],col="red",type="1",lwd=2)
ypredit=exp(logit_ypredit)/(1+exp(logit_ypredit)) #transfo inverse de logit