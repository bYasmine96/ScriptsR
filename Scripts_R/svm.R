library(e1071)
model <- svm(Species~., data=iris)
model #visualiser le model
newdata = iris[1:2,-5]
newdata #visualiser data
pred <- predict(modedl,newdata)
pred1 <- predict(model,newdata,decision.values = TRUE)
#visualiser (classes by color, SV by crossos
plot(cmdscale(dist(iris[,-5])),col = as.integer(iris[,5]),pch = c("o","+")[1:150 %in%model$index + 1])


#######################
n = dim(iris)[1]
index = sample(n,0.7*n)
Appren = iris[index,]
Test = iris[-index,]
model <- svm(Species~.,data = Appren)
pred2 <- predict(model,Test,decision.values = TRUE)
Test.mod <- cbind(Test,pred2)
Confusion = table(Test.mod$Species,Test.mod$pred2)
Confusion
 head(Test.mod,5)
