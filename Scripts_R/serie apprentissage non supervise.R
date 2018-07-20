
#Serie apprentissae non supervise
library(arules)
#choisir le dataset Adult
data(Adult)
summary(Adult)
inspect(Adult[1:29])
#Visualisation de l'histogramme
itemFrequencyPlot(Adult)
#Extraire les RA
rules<-apriori(Adult,parameter=list(support=0.01,confidence=0.6))
summary(rules) 
inspect(rules)
#preciser la taille de la regle
rules<-apriori(Adult,parameter=list(support=0.01,minlen=2,maxlen=5,confidence=0.6))
#Afficher les 10 premieres regles
inspect(rules[1:10])
#Ordonner par lift
rules=sort(rules,by="lift")
inspect(rules[1:5])
#Specifier les regles qu'on veut obtenir:
rules.IncomeSmall<-subset(rules,subset=rhs%in%"income=small")
#ordonner par confidence
rules.IncomeSmall<-sort(rules.IncomeSmall,by="confidence")
summary(rules.IncomeSmall)
inspect(rules.IncomeSmall)
#plus de condition
rules.sub<-subset(rules,subset=rhs%in% "marital-status=Never-married" &lift>2)
#select que les regles avec les items "age=Young" and "workclass=Private" in# the left-hand-side
rules.sub<-subset(rules,subset=lhs %ain% c("age=Young","workclass=Private"))

#Clustering DBSCAN

