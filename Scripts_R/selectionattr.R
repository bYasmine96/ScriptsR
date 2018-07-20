library(FSelector)
iris
result= cfs(Species ~., iris)
result 
f <- as.simple.formula(result, "Species")
#########entropie
data(iris)
weights <- information.gain(Species~., iris)
print(weights)
subset <- cutoff.k(weights, 2)
f <- as.simple.formula(subset, "Species") #pour avoir les meilleu
print(f)
weights <- gain.ratio(Species~., iris)
print(weights)
subset <- cutoff.k(weights, 2)
f <- as.simple.formula(subset, "Species")
print(f)
weights <- symmetrical.uncertainty(Species~., iris)
print(weights)
subset <- cutoff.biggest.diff(weights)
f <- as.simple.formula(subset, "Species")
print(f)

###############################################################

data(Sonar)
Sonar
weights <- information.gain(Class~., Sonar)
print(weights)
subset <- cutoff.k(weights, 3)
f <- as.simple.formula(subset, "class") #pour avoir les meilleu
print(f)
library(rpart)
Tree <- rpart(Class~ V9++V11++V12,data=Sonar)
Tree
table(Sonar$class,predict(Tree,Sonar,type="Class"))
table

Tree <- rpart(Class~.,data=Sonar)
Tree
