#appretissage non supervisee

library(arules)
data("Adult")
summary(Adult)
inspect(Adult[1:2])

#visualisation du histogram
itemFrequencyPlot(Adult)
#extrait les RA
rules = apriori(Adult, parameter = list(support = 0.01, confidence = 0.6))

summary(rules)
inspect(rules)

#presisie la taille de la regle 
rules = apriori(Adult, parameter = list(support = 0.01, minlen = 2, maxlen = 5, confidence = 0.6))

#show 10 first (row)
inspect(rules[1:10])
inspect(rules)

#ordonner par lift
rules1 = sort(rules, by = "lift" ) 

inspect(rules1[1:5])

rules.incomeSmall = subset(rules , subset = rhs%in% "income=small" )
#specifie les regles qu on veut obtenir
rules.incomeSmall = sort(rules.incomeSmall, by = "confidence")

summary(rules.incomeSmall)
inspect(rules.incomeSmall)

#rhs right hand side
rules.sub = subset(rules, subset = rhs %in% "marital-status=Never-married" & lift>2)
rules.sub = sort(rules.sub, by = "confidence")
summary(rules.sub)
inspect(rules.sub)


#select with specific rules in the left hand side
rules.sub = subset(rules, subset = lhs %ain% c("age=Young","workclass=Private"))


help(Adult)