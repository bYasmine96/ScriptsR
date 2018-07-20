#but est l'intégration de différentes sources de données
de1 = c(2,3,4,1,2,3,5,6,5,4)
de2 = c(1,4,2,3,5,4,6,2,5,3)
lanceur = rep(c("Luc","Kim"),each=5)#pour chaque val il duplique 5 fois
dataEx = data.frame(de1,de2,lanceur)
dataEx
supp = data.frame (de1 =c(2,5), de2 = c(5,6) , lanceur = c("Luc", "Kim"),row.names =paste0("1",11:12))#row.names rename cols
supp
dataEx$de2[7] = NA #integration de val manquante
dataEx$lanceur[3]=NA
dataEx$de1[5]=NA
dataEx
rbind(dataEx, supp)#integration de lignes dans un tableau
dataExlanceurs = data.frame(lateralite =rep(c("gaucher","droitier"),each =5),age=rep(c(22,51),each=5))
dataExlanceurs
cbind(dataEx,dataExlanceurs)#intégration de colonnes dans un taleau
data.frame(dataEx,dataExlanceurs)#meme chose que préédent
lanceurs = data.frame(lanceur=c("Luc","Kim"),lateralite = c ("gaucher","droitier"),age=c(22,51))
lanceurs
merge(dataEx,lanceurs, sort=FALSE, all=TRUE)#jointure
is.na(dataEx)#detection des val manquantes
data = merge(dataEx,lanceurs, sort=FALSE, all=TRUE)
y1 = data[,1]
y2 = data[,2]
y3 = data[,3]
y4 = data[,4]
y5 = data[,5]
y1[is.na(y1)] = mode(y1)#remplace la ou il ya un NA rmplace par le mode quand c'est qualitative
y1
y2[is.na(y2)] = mean(y2,na.rm=TRUE)#remplace la ou il ya NA par le mean quand c'est quantitatif
y2
y5[is.na(y5)] = mean(y5,na.rm=TRUE)
y5

t(dataEx)#transposer un tableau
hist(dataEx[,1])
is.numeric(dataEx[,1])

