data=iris
iris
myreg=glm(data.Species~data.Petal.length,family=binomial(link=logit))
fmla=as.formula(paste("Species ~ ",paste(names(data)[1:4],collapse="+")))
summary(myreg)