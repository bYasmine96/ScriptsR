TD2:Refaire cet exo avec python 
/* x est l'age de 40 personnes , et y est la variable indiquant s'ils ont acheté 
un album de death metal au cours 
un package pour tracer la courbe de ROC-->installer
La pr:Pvalue c'est la proba d'accepter H0
Rque:obtenir 2 etoiles (**) dans la table de regression veut dire que mon
modele est juste.
exmple:
Coefficients:
            Estimate Std. Error z value Pr(>|z|)   
(Intercept)   5.9462     1.9599   3.034  0.00241 **
x            -0.1156     0.0397  -2.912  0.00360 **

/*___________________________________________*/
data=read.table(file.choose(),header=TRUE)
myreg=glm(y~x,data, family=binomial(link=logit))
summary(myreg)
logit_ypredit=-0.12*data$x+5.95
ypredit=exp(logit_ypredit)/(1+exp(logit_ypredit))#transfo inverse de logit
plot(data$x,data$y)
points(data$x,ypredit,col="red")
// a partir de la c'est la matrice de confusion
o=order(data$x)
points(data$x[o],ypredit[o],col="red",type="l",lwd=2)
tau<-0.5
cof<-as.numeric(fitted(myreg)>=tau)
matcof=table(data$y,cof)
matcof
library(epicalc)
lroc1<-lroc(myreg)