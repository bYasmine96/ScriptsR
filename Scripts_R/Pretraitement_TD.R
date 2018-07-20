cars
cars2 = cars
cars2$dist
cars2$dist*0.3048
str(cars2)
cars2$dist_m=cars2$dist * 0.3048 #créer une colonne dist_m dans cars2
cars2
cars2 = data.frame(cars2, s=cars2$speed) #dupliquer une var
cars2
cars2 = data.frame(cars2, dist_m=cars2$dist *0.3048)#concatener avec new col
cars2

